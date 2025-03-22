#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>

int pwm_signal_gen(void) {
    
HAL_Init(); // Reset of all peripherals, init the Flash and Systick

SystemClock_Config(); //Configure the system clock

__HAL_RCC_GPIOC_CLK_ENABLE(); // Enable the GPIOC clock in the RCC


// Configure PC7 as output
GPIO_InitTypeDef GPIO_InitStruct; 
GPIO_InitStruct.Pin = GPIO_PIN_7 | GPIO_PIN_6;
GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
GPIO_InitStruct.Pull = GPIO_NOPULL;
GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);



HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET); // Start PC6 high


while (1) {
    HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_7);
    HAL_Delay(500);
    } 
}

