#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>
#include "hal_gpio.h"
#include "bno085.h"
#include "motor_control.h"
#include "quaternion.h"
#include "debugUART.h"
#include "config.h"

// Parsed and Q14-formatted quaternion data representing TARGET orientation
volatile int16_t ti, tj, tk, tr;    

// Parsed and Q14-formatted quaternion data representing CURRENT orientation
volatile int16_t ci, cj, ck, cr;

// I2C handle for I2C2
I2C_HandleTypeDef hi2c2;

// UART handle for UART1
UART_HandleTypeDef huart1;
static int uart_loop_counter = 0;

// Status bit indicating current gimbal mode
volatile uint8_t manual_control = 0;

int gimbal_controller(void)
{
    HAL_Init();                  // Initialize HAL
    motor_init();                // Initialize GPIO pins and peripherals for motor control
    stm_bno085_i2c_init(&hi2c2); // Initialize GPIO pins and peripherals for IMU communication
    bno085_init(&hi2c2);         // Reset, initialize, and configure the IMU
    debugUART_init(&huart1);     // Initialize GPIO pins and peripherals for UART debugging

    // Initialize pin as status LED
    GPIO_InitTypeDef initStrPB4_5 = {GPIO_PIN_4 | GPIO_PIN_5, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOB, &initStrPB4_5);


 
    // Initialize user button PA0 as system kill switch
    GPIO_InitTypeDef initStrPA0 = {GPIO_PIN_0,
        GPIO_MODE_INPUT,
        GPIO_PULLDOWN,
        GPIO_SPEED_FREQ_LOW};
    My_HAL_GPIO_Init(GPIOA, &initStrPA0);             // Initialize pin PA0 (USER Button)

    __HAL_RCC_SYSCFG_CLK_ENABLE();
    SYSCFG->EXTICR[0] &= ~(0xF);        // EXTI0 outputs from PA0
    EXTI->IMR |= EXTI_IMR_IM0;          // Enable interrupts on line 0
    EXTI->RTSR |= EXTI_RTSR_TR0;        // Enable rising edge trigger for line 0
    NVIC_EnableIRQ(EXTI0_1_IRQn);       // Enable EXTI0 interrupt
    NVIC_SetPriority(EXTI0_1_IRQn, 0);  // Set priority for EXTI0 to 0 (highest-priority)


    // Initialize gpio pin PA1 for joystick button
    GPIO_InitTypeDef initStrPA1 = {GPIO_PIN_1,
        GPIO_MODE_INPUT,
        GPIO_PULLUP,
        GPIO_SPEED_FREQ_LOW};
    My_HAL_GPIO_Init(GPIOA, &initStrPA1);       


    // Configure PA1 for EXTI1
    SYSCFG->EXTICR[0] &= ~(0xF << 4);    // Clear EXTI1[7:4]
    SYSCFG->EXTICR[0] |= (0x0 << 4);     // Set EXTI1 to PA1 (0x0)
    EXTI->IMR |= EXTI_IMR_IM1;           // Enable interrupts on line 0
    EXTI->RTSR |= EXTI_RTSR_TR1;         // Enable rising edge trigger for line 0
    NVIC_EnableIRQ(EXTI0_1_IRQn);        // Already shared with EXTI0
    NVIC_SetPriority(EXTI0_1_IRQn, 0);


    void EXTI0_1_IRQHandler();  // Declare handler for line 0 interrupt





    // Use initial IMU rotation vector as target orientation
    bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr);
    ti = ci;
    tj = cj;
    tk = ck;
    tr = cr;

    // Main while loop
    while (1)
    {

        if (++uart_loop_counter >= 500) {
            uart_print_int(&huart1, ti);
            uart_print_int(&huart1, tj);
            uart_print_int(&huart1, tk);
            uart_print_int(&huart1, tr);
            uart_loop_counter = 0;
        }



        if (manual_control)     // Manual mode
        {
            bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr);





        }
        else    // Gimbal Mode
        {   
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_SET);
            // Attempt to read quaternion data from IMU
            if (bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr))
            {
                // If communication fails, stop rotating motors
                roll_motor_stop();
                yaw_motor_stop();
                continue;
            }

            // Compute errors for each axis of rotation
            int16_t err_roll  = compute_roll_error(cr, ci, cj, ck, tr, ti, tj, tk);
            int16_t err_yaw   = compute_yaw_error(cr, ci, cj, ck, tr, ti, tj, tk);

            // if (++uart_loop_counter >= 100) {
            //     uart_print_int(&huart1, err_roll);
            //     uart_loop_counter = 0;
            // }
            if(!manual_control){
                roll_motor_set_speed_direction(err_roll);
                yaw_motor_set_speed_direction(err_yaw);
            }
            

            HAL_Delay(2); // TODO remove or change?
        }
    }
}

void EXTI0_1_IRQHandler()
{
    // Check EXTI0 (PA0 User Button)
    if (EXTI->PR & EXTI_PR_PR0) {
        EXTI->PR |= EXTI_PR_PR0; // clear pending flag

        manual_control = !manual_control;
    
        // If entering gimbal mode, set new target orientation
        if (!manual_control)
        {                    
            // Current quaternion to be store after gimbal moves...
            // int16_t ci, cj, ck, cr;
            // while (!ci)
            // {
            //     bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr);
            // }
            ti = ci;
            tj = cj;
            tk = ck;
            tr = cr;
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_RESET);
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_SET);
        }
        else if(manual_control)    // If entering manual mode
        { 
            roll_motor_stop();
            yaw_motor_stop();

            
            
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_SET);
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_RESET);
        }
    }

    // Check EXTI1 (PA1 Joystick Button)
    if (EXTI->PR & EXTI_PR_PR1) {
        EXTI->PR |= EXTI_PR_PR1; // clear pending flag
        // your code for PA1 interrupt
        roll_motor_stop();
        yaw_motor_stop();

        while(1);
    }
}
