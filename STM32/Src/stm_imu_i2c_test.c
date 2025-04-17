#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>
#include "hal_gpio.h"











int stm_imu_i2c_test(void) {
     // 1) Initialize HAL (SysTick etc.)
     HAL_Init();

     // 2) Enable GPIOC, GPIOB, and TIM3 clocks
     __HAL_RCC_GPIOC_CLK_ENABLE();
     __HAL_RCC_GPIOB_CLK_ENABLE();
     __HAL_RCC_TIM3_CLK_ENABLE();
 
     // --- Configure PC6 for PWM (TIM3_CH1) using HAL ---
     GPIO_InitTypeDef GPIO_InitStruct = {0};
     GPIO_InitStruct.Pin       = GPIO_PIN_6;
     GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
     GPIO_InitStruct.Pull      = GPIO_NOPULL;
     GPIO_InitStruct.Speed     = GPIO_SPEED_FREQ_LOW;
     GPIO_InitStruct.Alternate = GPIO_AF0_TIM3;  // AF0 = TIM3_CH1 on PC6
     HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
 
     // --- Configure PC7-MS1, PC8-MS2, PC9-ENABLE, PC10-DIR as digital outputs via HAL ---
     GPIO_InitStruct.Pin   = GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9 | GPIO_PIN_10;
     GPIO_InitStruct.Mode  = GPIO_MODE_OUTPUT_PP;
     GPIO_InitStruct.Pull  = GPIO_NOPULL;
     GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
     HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
     // Set initial outputs low
     //HAL_GPIO_WritePin(GPIOC, GPIO_InitStruct.Pin, GPIO_PIN_RESET);
 
     // 3) Timer3 PWM bitwise setup for PC6 (1 kHz, 50% duty)
     TIM3->PSC    = 79U;  // 8MHz/(79+1) = 100kHz timer clock
     TIM3->ARR    = 99U;  // 100kHz/(99+1) = 1kHz PWM
     // PWM Mode1 on CH1, preload enable
     TIM3->CCMR1 &= ~TIM_CCMR1_OC1M;
     TIM3->CCMR1 |= (6U << TIM_CCMR1_OC1M_Pos) | TIM_CCMR1_OC1PE;
     // 50% duty: CCR1 = (ARR+1)/2
     TIM3->CCR1   = (TIM3->ARR + 1U) >> 1;
     // Enable CH1 output, start counter
     TIM3->CCER |= TIM_CCER_CC1E;
     TIM3->CR1 |= 1;
  
     
    
     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET); // toggle MS1
     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET);   // set MS2
     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_RESET); // clear ENABLE
     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_SET);  // set DIR

     

    GPIO_InitTypeDef initStrPB14 = {GPIO_PIN_14, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
    My_HAL_GPIO_Init(GPIOB, &initStrPB14); // Initialize pin PB14 as I2C2_SDA with an internal pull-up resistor

    GPIO_InitTypeDef initStrPB13 = {GPIO_PIN_13, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
    My_HAL_GPIO_Init(GPIOB, &initStrPB13); // Initialize pin PB13 as I2C2_SCL with an internal pull-up resistor

    
    
    while (1)
    {
       

    }
}

