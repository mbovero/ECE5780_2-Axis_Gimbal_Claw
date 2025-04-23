#include <stm32f0xx_hal.h>
#include "main.h"
#include "bno085.h"
#include "motor_control.h"
#include "quaternion.h"
#include "config.h"
#include "joystick.h"

// Parsed and Q14-formatted quaternion data representing TARGET orientation
volatile int16_t ti, tj, tk, tr;    

// Parsed and Q14-formatted quaternion data representing CURRENT orientation
volatile int16_t ci, cj, ck, cr;

// I2C handle for I2C2
I2C_HandleTypeDef hi2c2;

// Status bit indicating current gimbal mode
volatile uint8_t manual_control = 0;    // System starts in gimbal mode by default

/**
 * @brief  Main control loop for managing the gimbal system.
 *
 * This function handles both manual and automatic (gimbal mode) operation of the gimbal. 
 * It initializes necessary peripherals, including motor control, IMU (BNO085), joystick interface, 
 * and LED indicators. The function continuously reads joystick input for manual control or IMU data 
 * for gimbal mode, calculates orientation errors, and adjusts motor movement to stabilize the gimbal.
 * 
 * In manual mode, the joystick directly controls motor movement. In gimbal mode, the system reads 
 * quaternion data from the IMU, computes errors in the system’s orientation, and adjusts motor speed 
 * and direction to minimize these errors.
 * 
 * @retval None
 */
int gimbal_controller(void)
{
    HAL_Init();                  // Initialize HAL
    motor_init();                // Initialize GPIO pins and peripherals for motor control
    stm_bno085_i2c_init(&hi2c2); // Initialize GPIO pins and peripherals for IMU communication
    bno085_init(&hi2c2);         // Reset, initialize, and configure the IMU
    joystick_init();             // Initialize GPIO pins and peripherals for joystick interface

    
    // Initialize PB4 as manual mode LED indicator and PB5 as gimbal mode LED indicator
    __HAL_RCC_GPIOB_CLK_ENABLE();
    GPIO_InitTypeDef initStrPB4_5 = {GPIO_PIN_4 | GPIO_PIN_5, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOB, &initStrPB4_5);

    // Initialize PA0 (USER Button) as system kill switch
    __HAL_RCC_GPIOA_CLK_ENABLE();
    GPIO_InitTypeDef initStrPA0 = {GPIO_PIN_0,
                                    GPIO_MODE_INPUT,
                                    GPIO_PULLDOWN,
                                    GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOA, &initStrPA0);

    // Configure PA0 for EXTI0
    __HAL_RCC_SYSCFG_CLK_ENABLE();
    SYSCFG->EXTICR[0] &= ~(0xF);        // Set EXTI0 output to PA0
    EXTI->IMR |= EXTI_IMR_IM0;          // Enable interrupts on line 0
    EXTI->RTSR |= EXTI_RTSR_TR0;        // Enable rising edge trigger for line 0
    NVIC_EnableIRQ(EXTI0_1_IRQn);       // Enable EXTI0 interrupt
    NVIC_SetPriority(EXTI0_1_IRQn, 0);  // Set priority for EXTI0 to 0 (highest-priority)

    void EXTI0_1_IRQHandler();  // Declare handler for interrupts on lines 0 and 1



    // Use initial IMU rotation vector as target orientation
    bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr);
    ti = ci;
    tj = cj;
    tk = ck;
    tr = cr;

    // Turn on LED indicator for gimbal mode
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_SET);


    // Main while loop
    while (1)
    {
        if (manual_control)     // Manual mode (joystick control)
        {
            // Continue reading from IMU to keep rotation vector quaternion data buffer clear
            bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr);

            // Read analog joystick inputs
            uint8_t vrx, vry;
            joystick_read_vrx_vry(&vrx, &vry);

            // Change motors' speed and direction based on joystick inputs
            roll_motor_set_speed_dir_manual(vry);
            yaw_motor_set_speed_dir_manual(vrx);
        }
        else    // Gimbal Mode
        {   
            // Attempt to read quaternion data from IMU
            if (bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr))
            {
                // If communication fails, stop rotating motors to prevent damage to system
                roll_motor_stop();
                yaw_motor_stop();
                continue;
            }

            // Compute errors for roll and yaw axes
            int16_t err_roll  = compute_roll_error(cr, ci, cj, ck, tr, ti, tj, tk);
            int16_t err_yaw   = compute_yaw_error(cr, ci, cj, ck, tr, ti, tj, tk);

            // Change motors' speed and direction based on calculated error
            roll_motor_set_speed_dir_gimbal(err_roll);
            yaw_motor_set_speed_dir_gimbal(err_yaw);
            
            HAL_Delay(2);
        }
    }
}

/**
 * @brief  External interrupt handler for EXTI lines 0 and 1.
 * 
 * Handles two types of events:
 * - EXTI1 (PA1 - Joystick button): Toggles between manual and gimbal control modes with debouncing.
 * - EXTI0 (PA0 - User button): Acts as a kill switch to halt the system indefinitely.
 * 
 * Updates LED indicators accordingly and ensures safe motor control transitions.
 */
void EXTI0_1_IRQHandler()
{
    // Initialize variables for button debouncing
    static uint32_t last_interrupt_time_pa1 = 0;
    static uint32_t last_interrupt_time_pa0 = 0;
    uint32_t current_time = HAL_GetTick();

    // Check EXTI1 (PA1 Joystick Button)
    if (EXTI->PR & EXTI_PR_PR1) 
    {
        EXTI->PR |= EXTI_PR_PR1; // Clear pending flag

        if (current_time - last_interrupt_time_pa1 > 200) // Debouncing
        {
            last_interrupt_time_pa1 = current_time;

            // Toggle operation mode (gimbal <--> manual)
            manual_control = !manual_control;

            if (!manual_control) 
            {
                // When transitioning from manual mode to gimbal mode, update target orientation
                ti = ci;
                tj = cj;
                tk = ck;
                tr = cr;
                
                // Disable manual mode LED indicator, and enable gimbal mode LED indicator
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_RESET);
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_SET);
            } else 
            {
                // Enable manual mode LED indicator, and disable gimbal mode LED indicator
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_SET);
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_RESET);
            }
        }
    }


    // Check EXTI0 (PA0 User Button kill switch)
    if (EXTI->PR & EXTI_PR_PR0) 
    {
        EXTI->PR |= EXTI_PR_PR0; // Clear pending flag

        if (current_time - last_interrupt_time_pa0 > 200)   // Debouncing
        {
            last_interrupt_time_pa0 = current_time;

            // Stop all motors
            roll_motor_stop();
            yaw_motor_stop();

            // Stop the system forever (system reset required to resume)
            while (1);
        }
    }
}
