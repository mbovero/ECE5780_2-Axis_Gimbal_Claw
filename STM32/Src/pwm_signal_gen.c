#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>

int pwm_signal_gen(void) {
    
HAL_Init(); // Reset of all peripherals, init the Flash and Systick

//SystemClock_Config(); //Configure the system clock

__HAL_RCC_GPIOC_CLK_ENABLE(); 
__HAL_RCC_TIM3_CLK_ENABLE();

__HAL_RCC_GPIOB_CLK_ENABLE(); 
__HAL_RCC_TIM16_CLK_ENABLE();
__HAL_RCC_TIM17_CLK_ENABLE();


GPIO_InitTypeDef GPIO_InitStruct_Red_LED; 
GPIO_InitStruct_Red_LED.Pin = GPIO_PIN_6;
GPIO_InitStruct_Red_LED.Mode = GPIO_MODE_AF_PP;
GPIO_InitStruct_Red_LED.Pull = GPIO_NOPULL;
GPIO_InitStruct_Red_LED.Speed = GPIO_SPEED_FREQ_LOW;
GPIO_InitStruct_Red_LED.Alternate = GPIO_AF0_TIM3;
HAL_GPIO_Init(GPIOC, &GPIO_InitStruct_Red_LED);

GPIO_InitTypeDef GPIO_InitStruct_PB8; 
GPIO_InitStruct_PB8.Pin = GPIO_PIN_8;
GPIO_InitStruct_PB8.Mode = GPIO_MODE_AF_PP;
GPIO_InitStruct_PB8.Pull = GPIO_NOPULL;
GPIO_InitStruct_PB8.Speed = GPIO_SPEED_FREQ_LOW;
GPIO_InitStruct_PB8.Alternate = GPIO_AF2_TIM16;
HAL_GPIO_Init(GPIOB, &GPIO_InitStruct_PB8);

GPIO_InitTypeDef GPIO_InitStruct_PB9; 
GPIO_InitStruct_PB9.Pin = GPIO_PIN_9;
GPIO_InitStruct_PB9.Mode = GPIO_MODE_AF_PP;
GPIO_InitStruct_PB9.Pull = GPIO_NOPULL;
GPIO_InitStruct_PB9.Speed = GPIO_SPEED_FREQ_LOW;
GPIO_InitStruct_PB9.Alternate = GPIO_AF2_TIM17;
HAL_GPIO_Init(GPIOB, &GPIO_InitStruct_PB9);







TIM3->PSC = 99;      // Prescaler: 8 MHz → 8 kHz
TIM3->ARR = 50;        // Auto-reload: 8 kHz → 800 Hz
// Clear bits to configure Channel 1 (PC6) as output
TIM3->CCMR1 &= ~(0x3);            // Clear bits 1 and 0
TIM3->CCMR1 |= (0x7 << 4);        // PWM Mode 2 for Channel 1 (bits 6–4)
// Enable output on Channel 1
TIM3->CCER |= 1;                  // Enable channel 1 output
// Set duty cycle for Channel 1 (PC6)
TIM3->CCR1 = 0x9; // or 0x9 depending on which block runs
TIM3->CR1 |= 1; // Enable TIM3 counter (starts PWM)


// TIM16 Configuration
TIM16->PSC = 99;     // 8 MHz / (99 + 1) = 80 kHz
TIM16->ARR = 50;     // 80kHz / 50 = 1.6kHz

TIM16->CCMR1 &= ~(TIM_CCMR1_OC1M);
TIM16->CCMR1 |= (6 << TIM_CCMR1_OC1M_Pos); // PWM mode 1
TIM16->CCMR1 |= TIM_CCMR1_OC1PE;

TIM16->CCR1 = 25; // 50% duty

TIM16->CCER |= TIM_CCER_CC1E;     // Enable CH1 output
TIM16->BDTR |= TIM_BDTR_MOE;      // enable main output
TIM16->CR1 |= TIM_CR1_ARPE;       // Enable ARR preload
TIM16->EGR |= TIM_EGR_UG;         // Force update
TIM16->CR1 |= TIM_CR1_CEN;        // Start timer



// TIM17 Configuration
TIM17->PSC = 99;     
TIM17->ARR = 50;     

TIM17->CCMR1 &= ~(TIM_CCMR1_OC1M);
TIM17->CCMR1 |= (6 << TIM_CCMR1_OC1M_Pos); // PWM mode 1
TIM17->CCMR1 |= TIM_CCMR1_OC1PE;

TIM17->CCR1 = 25; // 50% duty

TIM17->CCER |= TIM_CCER_CC1E;     // Enable CH1 output
TIM17->BDTR |= TIM_BDTR_MOE;      // enable main output
TIM17->CR1 |= TIM_CR1_ARPE;       // Enable ARR preload
TIM17->EGR |= TIM_EGR_UG;         // Force update
TIM17->CR1 |= TIM_CR1_CEN;        // Start timer




while (1) {
    
     
   
}

}