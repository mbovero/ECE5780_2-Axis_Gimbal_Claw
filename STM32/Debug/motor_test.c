#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>
#include "hal_gpio.h"

int stm_imu_i2c_test(void) {
    // 1) Initialize HAL
    HAL_Init();

    // 2) Enable clocks
    __HAL_RCC_GPIOC_CLK_ENABLE();
    __HAL_RCC_GPIOB_CLK_ENABLE();
    __HAL_RCC_TIM3_CLK_ENABLE();

    // 3) Configure PC6 as TIM3_CH1 PWM output
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Pin = GPIO_PIN_6;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF0_TIM3;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    // 4) Configure PC7 (MS1), PC8 (MS2), PC9 (ENABLE), PC10 (DIR) as digital outputs
    GPIO_InitStruct.Pin = GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9 | GPIO_PIN_10;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_PULLDOWN;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    // 5) Set initial control signals
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);  // MS1 = 0 (Full step)
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);  // MS2 = 0 (Full step)
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_SET);   // DIR = 1 (Set direction)
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_RESET);  // ENABLE = 0 (Motor enabled)

    // 6) Setup TIM3 for 1kHz PWM on PC6
    TIM3->PSC = 10;        // 8 MHz / (79+1) = 100 kHz timer clock
    TIM3->ARR = 99;        // 100 kHz / (99+1) = 1 kHz PWM
    TIM3->CCR1 = 50;       // 50% duty cycle

    TIM3->CCMR1 &= ~TIM_CCMR1_OC1M;
    TIM3->CCMR1 |= (6 << TIM_CCMR1_OC1M_Pos) | TIM_CCMR1_OC1PE; // PWM mode 1 + preload
    TIM3->CCER |= TIM_CCER_CC1E;   // Enable output on CH1
    TIM3->CR1 |= TIM_CR1_CEN;      // Enable counter

    while (1) {
        // Loop forever, motor should spin depending on stepper driver and wiring
        HAL_Delay(1000);
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_RESET);   // DIR = 1 (Set direction)
        TIM3->PSC = 10;
        HAL_Delay(1000);
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_SET);   // DIR = 1 (Set direction)
        TIM3->PSC = 5;
    }
}
