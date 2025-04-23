#include "motor_control.h"
#include "config.h"
#include <math.h>

void motor_init()
{
    // Enable GPIO and TIM3 clocks
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();
    __HAL_RCC_GPIOB_CLK_ENABLE();
    __HAL_RCC_TIM2_CLK_ENABLE();
    __HAL_RCC_TIM3_CLK_ENABLE();
    
    // --- YAW MOTOR INITIALIZATION ---

    // Configure PC6 (STEP) for PWM (TIM3_CH1)
    GPIO_InitTypeDef GPIO_InitStructPWM = {GPIO_PIN_6, 
                                            GPIO_MODE_AF_PP, 
                                            GPIO_NOPULL, 
                                            GPIO_SPEED_FREQ_LOW, 
                                            GPIO_AF0_TIM3};
    HAL_GPIO_Init(GPIOC, &GPIO_InitStructPWM);

    // Configure PC7 (DIR), PC8 (MS1), PC9 (MS2) as digital outputs
    GPIO_InitTypeDef GPIO_InitStructDIO1 = {GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9, 
                                            GPIO_MODE_OUTPUT_PP, 
                                            GPIO_NOPULL, 
                                            GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOC, &GPIO_InitStructDIO1);

    // Configure PA8 (ENN) as a digital output
    GPIO_InitTypeDef GPIO_InitStructDIO2 = {GPIO_PIN_8, 
                                            GPIO_MODE_OUTPUT_PP, 
                                            GPIO_PULLDOWN, 
                                            GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOA, &GPIO_InitStructDIO2);

    

    // Timer3 PWM bitwise setup for PC6 (1 kHz, 50% duty)
    TIM3->PSC = YAW_PWM_ARR;  // timer clock freq = 8MHz/(PSC+1) 
    TIM3->ARR = 79; // 100kHz/(99+1) = 1kHz PWM
    // PWM Mode1 on CH1, preload enable
    TIM3->CCMR1 &= ~TIM_CCMR1_OC1M;
    TIM3->CCMR1 |= (6 << TIM_CCMR1_OC1M_Pos) | TIM_CCMR1_OC1PE;
    // 50% duty: CCR1 = (ARR+1)/2
    TIM3->CCR1 = (TIM3->ARR + 1) >> 1;
    // Enable CH1 output, start counter
    TIM3->CR1 |= 1;
    

    // Set initial outputs to motor driver
        // MS2, MS1 = 1,0: 1/64 microstep resolution
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);     // MS2: 1   
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET);     // MS1: 0
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, GPIO_PIN_RESET);   // ENN: 0
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);     // DIR: 1


    // --- ROLL MOTOR INITIALIZATION ---
    // TODO yaw motor init code
    // Configure PB10 (STEP) for PWM (TIM2_CH3)
    GPIO_InitTypeDef GPIO_InitStructPWM2 = {GPIO_PIN_10, 
                                            GPIO_MODE_AF_PP, 
                                            GPIO_NOPULL, 
                                            GPIO_SPEED_FREQ_LOW, 
                                            GPIO_AF2_TIM2};
    HAL_GPIO_Init(GPIOB, &GPIO_InitStructPWM2);

    // Configure PB2 (DIR), PB1 (MS1), PB0 (MS2) as digital outputs
    GPIO_InitTypeDef GPIO_InitStructDIO3 = {GPIO_PIN_2 | GPIO_PIN_1 | GPIO_PIN_0, 
            GPIO_MODE_OUTPUT_PP, 
            GPIO_NOPULL, 
            GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOB, &GPIO_InitStructDIO3);

    // Configure PC5 (ENN) as a digital output
    GPIO_InitTypeDef GPIO_InitStructDIO4 = {GPIO_PIN_5, 
            GPIO_MODE_OUTPUT_PP, 
            GPIO_PULLDOWN, 
            GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOC, &GPIO_InitStructDIO4);


    // Timer2 PWM bitwise setup for PB10 (1 kHz, 50% duty)
    TIM2->PSC = ROLL_PWM_ARR;  // timer clock freq = 8MHz/(PSC+1) 
    TIM2->ARR = 79; // 100kHz/(99+1) = 1kHz PWM
    // PWM Mode1 on CH1, preload enable
    TIM2->CCMR2 &= ~TIM_CCMR1_OC1M;
    TIM2->CCMR2 |= (6 << TIM_CCMR2_OC3M_Pos) | TIM_CCMR2_OC3PE;
    // 50% duty: CCR1 = (ARR+1)/2
    TIM2->CCR3 = (TIM2->ARR + 1) >> 1;
    // Enable CH1 output, start counter
    TIM2->CR1 |= 1;


    // Set initial outputs to motor driver
        // MS2, MS1 = 0,1: 1/32 microstep resolution
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1, GPIO_PIN_RESET);   // MS2: 0   
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0, GPIO_PIN_SET);     // MS1: 1
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_RESET);   // ENN: 0
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, GPIO_PIN_SET);     // DIR: 1
}

void roll_motor_set_speed_dir_gimbal(int16_t err_roll)
{
    if(abs(err_roll) >= 1000)
    { 
        TIM2->PSC = 70;
    }
    else if(abs(err_roll) >= 500)
    { 
        TIM2->PSC = 80;
    }
    else if(abs(err_roll) >= 100)
    { 
        TIM2->PSC = 249;
    }

    if (abs(err_roll) >= 100)
    {
        (err_roll > 0) ? roll_motor_set_dir(0) : roll_motor_set_dir(1);
        roll_motor_resume();
    }
    else
    {   
        roll_motor_stop();
    }
}

void roll_motor_set_speed_dir_manual(uint8_t vry)
{
    if(abs(vry-70) >= 60)
    { 
        TIM2->PSC = 40;
    }
    else if(abs(vry-70) >= 40)
    { 
        TIM2->PSC = 70;
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
}

void roll_motor_stop()
{
    TIM2->CCER &= ~TIM_CCER_CC3E;
}

void roll_motor_resume()
{
    TIM2->CCER |= TIM_CCER_CC3E;
}

void roll_motor_set_dir(uint8_t direction)
{
    if (REVERSE_ROLL_DIR)
    {
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, !direction);
    }
    else
    {
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, direction);
    }
}

void yaw_motor_set_speed_dir_gimbal(int16_t err_yaw)
{
    if(abs(err_yaw) >= 1000)
    {   
        TIM3->PSC = 50;
    }
    else if(abs(err_yaw) >= 500)
    { 
        TIM3->PSC = 70;
    }
    else if(abs(err_yaw) >= 100)
    { 
        TIM3->PSC = 249;
    }

    if (abs(err_yaw) >= 100)
    {
        (err_yaw > 0) ? yaw_motor_set_dir(0) : yaw_motor_set_dir(1);
        yaw_motor_resume();
    }
    else
    {   
        yaw_motor_stop();
    }
}

void yaw_motor_set_speed_dir_manual(uint8_t vrx)
{
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

void yaw_motor_stop()
{
    TIM3->CCER &= ~TIM_CCER_CC1E;
}

void yaw_motor_resume()
{
    TIM3->CCER |= TIM_CCER_CC1E;
}

void yaw_motor_set_dir(uint8_t direction)
{
    if (REVERSE_YAW_DIR)
    {
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, !direction);
    }
    else
    {
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, direction);
    }
}
