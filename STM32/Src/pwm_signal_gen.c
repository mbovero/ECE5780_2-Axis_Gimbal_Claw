#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>

int pwm_signal_gen(void) {
    
HAL_Init(); // Reset of all peripherals, init the Flash and Systick

//SystemClock_Config(); //Configure the system clock

__HAL_RCC_GPIOC_CLK_ENABLE(); 
__HAL_RCC_TIM3_CLK_ENABLE();



GPIO_InitTypeDef GPIO_InitStruct_Red_LED; 
GPIO_InitStruct_Red_LED.Pin = GPIO_PIN_6;
GPIO_InitStruct_Red_LED.Mode = GPIO_MODE_AF_PP;
GPIO_InitStruct_Red_LED.Pull = GPIO_NOPULL;
GPIO_InitStruct_Red_LED.Speed = GPIO_SPEED_FREQ_LOW;
GPIO_InitStruct_Red_LED.Alternate = GPIO_AF0_TIM3;
HAL_GPIO_Init(GPIOC, &GPIO_InitStruct_Red_LED);

GPIO_InitTypeDef GPIO_InitStruct_Blue_LED; 
GPIO_InitStruct_Blue_LED.Pin = GPIO_PIN_7;
GPIO_InitStruct_Blue_LED.Mode = GPIO_MODE_OUTPUT_PP;
GPIO_InitStruct_Blue_LED.Pull = GPIO_NOPULL;
GPIO_InitStruct_Blue_LED.Speed = GPIO_SPEED_FREQ_LOW;
HAL_GPIO_Init(GPIOC, &GPIO_InitStruct_Blue_LED);



TIM3->PSC = 0x3E7;      // Prescaler: 8 MHz → 8 kHz
TIM3->ARR = 0xA;        // Auto-reload: 8 kHz → 800 Hz

// Clear bits to configure Channel 1 (PC6) as output
TIM3->CCMR1 &= ~(0x3);            // Clear bits 1 and 0
TIM3->CCMR1 |= (0x7 << 4);        // PWM Mode 2 for Channel 1 (bits 6–4)

// Enable output on Channel 1
TIM3->CCER |= 1;                  // Enable channel 1 output

// Set duty cycle for Channel 1 (PC6)
TIM3->CCR1 = 0x9; // or 0x9 depending on which block runs

TIM3->CR1 |= 1; // Enable TIM3 counter (starts PWM)

int down = 1;
while (1) {
    HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_7);
    HAL_Delay(100);

    if(down){
        TIM3->CCR1 -= 1;
    } 
    else{
        TIM3->CCR1 += 1;
    }

    if(TIM3->CCR1 == 1){
        down = 0;
    }

    if(TIM3->CCR1 == 9){
        down = 1;
    }

}

}