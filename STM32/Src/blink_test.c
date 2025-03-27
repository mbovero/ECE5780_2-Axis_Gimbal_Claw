#include <stdint.h>
#include <stdio.h>
#include <stm32f0xx_hal.h>
#include <stm32f0xx_hal_gpio.h>
#include "main.h"

int blink_test(void) {
    
HAL_Init(); // Reset of all peripherals, init the Flash and Systick

//SystemClock_Config(); //Configure the system clock

__HAL_RCC_GPIOC_CLK_ENABLE(); 



GPIO_InitTypeDef GPIO_InitStruct_Red_LED; 
GPIO_InitStruct_Red_LED.Pin = GPIO_PIN_6;
GPIO_InitStruct_Red_LED.Mode = GPIO_MODE_OUTPUT_PP;
GPIO_InitStruct_Red_LED.Pull = GPIO_NOPULL;
GPIO_InitStruct_Red_LED.Speed = GPIO_SPEED_FREQ_LOW;
HAL_GPIO_Init(GPIOC, &GPIO_InitStruct_Red_LED);






while (1) {
    
    HAL_Delay(100);
    HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);

}

}