#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>
#include "hal_gpio.h"
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
volatile uint8_t manual_control = 0;

int gimbal_controller(void)
{
    HAL_Init();                  // Initialize HAL
    motor_init();                // Initialize GPIO pins and peripherals for motor control
    stm_bno085_i2c_init(&hi2c2); // Initialize GPIO pins and peripherals for IMU communication
    bno085_init(&hi2c2);         // Reset, initialize, and configure the IMU
    //joystick_init();             // Initialize joystick

    
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
    My_HAL_GPIO_Init(GPIOA, &initStrPA0);

    __HAL_RCC_SYSCFG_CLK_ENABLE();
    // Configure PA0 for EXTI0
    SYSCFG->EXTICR[0] &= ~(0xF);        // Set EXTI0 output to PA0
    EXTI->IMR |= EXTI_IMR_IM0;          // Enable interrupts on line 0
    EXTI->RTSR |= EXTI_RTSR_TR0;        // Enable rising edge trigger for line 0
    NVIC_EnableIRQ(EXTI0_1_IRQn);       // Enable EXTI0 interrupt
    NVIC_SetPriority(EXTI0_1_IRQn, 0);  // Set priority for EXTI0 to 0 (highest-priority)

    void EXTI0_1_IRQHandler();  // Declare handler for interrupts on lines 0 and 1




    // Initialize gpio pin PA1 for joystick button
    GPIO_InitTypeDef initStrPA1 = {GPIO_PIN_1,
        GPIO_MODE_INPUT,
        GPIO_PULLUP,
        GPIO_SPEED_FREQ_LOW};
    My_HAL_GPIO_Init(GPIOA, &initStrPA1);       

    __HAL_RCC_SYSCFG_CLK_ENABLE();
    // Configure PA1 for EXTI1
    SYSCFG->EXTICR[0] &= ~(0xF << 4);   // Set EXTI0 output to PA1
    EXTI->IMR |= EXTI_IMR_IM1;          // Enable interrupts on line 1
    EXTI->RTSR |= EXTI_RTSR_TR1;        // Enable rising edge trigger for line 1
    NVIC_EnableIRQ(EXTI0_1_IRQn);       // Enable EXTI0 interrupt
    NVIC_SetPriority(EXTI0_1_IRQn, 0);  // Set priority for EXTI0 to 0 (highest-priority)


    __HAL_RCC_ADC1_CLK_ENABLE();

    // PC2 (VRX) and PC3 (VRY) as analog inputs
    GPIO_InitTypeDef analogPins = {
        .Pin = GPIO_PIN_3,
        .Mode = GPIO_MODE_ANALOG,
        .Pull = GPIO_NOPULL
    };
    HAL_GPIO_Init(GPIOC, &analogPins);

    GPIO_InitTypeDef analogPins2 = {
        .Pin = GPIO_PIN_5,
        .Mode = GPIO_MODE_ANALOG,
        .Pull = GPIO_NOPULL
    };
    HAL_GPIO_Init(GPIOA, &analogPins2);

    // PA1 as digital input (override pin)
    GPIO_InitTypeDef dioPin = {
        .Pin = GPIO_PIN_1,
        .Mode = GPIO_MODE_INPUT,
        .Pull = GPIO_PULLUP  // assumes button pulls low when pressed
    };
    HAL_GPIO_Init(GPIOA, &dioPin);

    // ADC config: 8-bit resolution, single conversion
    ADC1->CFGR1 &= ~(ADC_CFGR1_RES | ADC_CFGR1_CONT | ADC_CFGR1_EXTEN);
    ADC1->CFGR1 |= (0b10 << ADC_CFGR1_RES_Pos); // 8-bit resolution

    // ADC calibration
    if (ADC1->CR & ADC_CR_ADEN) {
        ADC1->CR |= ADC_CR_ADDIS;
    }
    while (ADC1->CR & ADC_CR_ADEN);
    ADC1->CR |= ADC_CR_ADCAL;
    while (ADC1->CR & ADC_CR_ADCAL);

    // Enable ADC
    ADC1->CR |= ADC_CR_ADEN;
    while (!(ADC1->ISR & ADC_ISR_ADRDY));









    // Use initial IMU rotation vector as target orientation
    bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr);
    ti = ci;
    tj = cj;
    tk = ck;
    tr = cr;


    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_SET);



    // Main while loop
    while (1)
    {
        if (manual_control)     // Manual mode (joystick control)
        {
            // Continue reading IMU data to keep quaternion data buffer from backing up
            bno085_read_rotation_vector(&hi2c2, &ci, &cj, &ck, &cr);

            //--- Read VRX (PC0, CH10) ---
            ADC1->CHSELR = ADC_CHSELR_CHSEL5;
            ADC1->CR |= ADC_CR_ADSTART;
            while (!(ADC1->ISR & ADC_ISR_EOC));
            uint8_t vrx = ADC1->DR;
            HAL_Delay(1); 
            // --- Read VRY (PC3, CH13) ---
            ADC1->CHSELR = ADC_CHSELR_CHSEL13;
            ADC1->CR |= ADC_CR_ADSTART;
            while (!(ADC1->ISR & ADC_ISR_EOC));
            uint8_t vry = ADC1->DR;

            if(abs(vry-70) >= 60)
            { 
                TIM2->PSC = 40;
            }
            else if(abs(vry-70) >= 40)
            { 
                TIM2->PSC = 70;
            }
            else if(abs(vry-70) >= 40)
            { 
                TIM2->PSC = 249;
            }
        
            if (abs(vry-70) >= 30)
            {
                (vry-70 > 0) ? roll_motor_set_dir(0) : roll_motor_set_dir(1);
                roll_motor_resume();
            }
            else
            {   
                roll_motor_stop();
            }



            if(abs(vrx-70) >= 60)
            { 
                TIM3->PSC = 40;
            }
            else if(abs(vrx-70) >= 40)
            { 
                TIM3->PSC = 80;
            }
            
        
            if (abs(vrx-70) >= 30)
            {
                (vrx-70 > 0) ? yaw_motor_set_dir(0) : yaw_motor_set_dir(1);
                yaw_motor_resume();
            }
            else
            {   
                yaw_motor_stop();
            }
        

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
            roll_motor_set_speed_direction(err_roll);
            yaw_motor_set_speed_direction(err_yaw);
            
            HAL_Delay(2);
        }
    }
}

void EXTI0_1_IRQHandler()
{
    static uint32_t last_interrupt_time_pa1 = 0;
    static uint32_t last_interrupt_time_pa0 = 0;
    uint32_t current_time = HAL_GetTick();

    // Check EXTI1 (PA1 Joystick Button)
    if (EXTI->PR & EXTI_PR_PR1) 
    {
        EXTI->PR |= EXTI_PR_PR1; // clear pending flag

        if (current_time - last_interrupt_time_pa1 > 200) 
        {
            last_interrupt_time_pa1 = current_time;

            manual_control = !manual_control;

            if (!manual_control) 
            {
                ti = ci;
                tj = cj;
                tk = ck;
                tr = cr;
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_RESET);
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_SET);
            } else 
            {
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_SET);
                HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_RESET);
            }
        }
    }

    // Check EXTI0 (PA0 User Button)
    if (EXTI->PR & EXTI_PR_PR0) 
    {
        EXTI->PR |= EXTI_PR_PR0; // clear pending flag

        if (current_time - last_interrupt_time_pa0 > 200) 
        {
            last_interrupt_time_pa0 = current_time;

            roll_motor_stop();
            yaw_motor_stop();

            while (1);
        }
    }
}
