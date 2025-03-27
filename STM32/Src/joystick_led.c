#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>
#include "hal_gpio.h"

int joystick_led(void) {

    HAL_Init();

    __HAL_RCC_GPIOC_CLK_ENABLE();
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_ADC1_CLK_ENABLE();

    // Output LEDs: PC6–PC9
    GPIO_InitTypeDef leds = {
        .Pin = GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9,
        .Mode = GPIO_MODE_OUTPUT_PP,
        .Pull = GPIO_NOPULL,
        .Speed = GPIO_SPEED_FREQ_LOW
    };
    HAL_GPIO_Init(GPIOC, &leds); 

    // Analog input: PC0 (Channel 10)
    GPIO_InitTypeDef analogPin = {
        .Pin = GPIO_PIN_0,
        .Mode = GPIO_MODE_ANALOG,
        .Pull = GPIO_NOPULL,
        .Speed = GPIO_SPEED_FREQ_LOW
    };
    HAL_GPIO_Init(GPIOC, &analogPin); 

    // --- ADC CONFIGURATION ---
    ADC1->CFGR1 &= ~(0b11 << 3);     // Clear resolution bits
    ADC1->CFGR1 |=  (0b10 << 3);     // Set to 8-bit resolution
    ADC1->CFGR1 |=  ADC_CFGR1_CONT; // Continuous mode
    ADC1->CFGR1 &= ~ADC_CFGR1_EXTEN; // Disable hardware triggers

    ADC1->CHSELR = ADC_CHSELR_CHSEL10; // Use channel 10 (PC0)

    // ADC Calibration
    if (ADC1->CR & ADC_CR_ADEN) {
        ADC1->CR |= ADC_CR_ADDIS;
    }
    while (ADC1->CR & ADC_CR_ADEN) {}
    ADC1->CR |= ADC_CR_ADCAL;
    while (ADC1->CR & ADC_CR_ADCAL) {}

    ADC1->CR |= ADC_CR_ADEN;
    while (!(ADC1->ISR & ADC_ISR_ADRDY)) {}

    ADC1->CR |= ADC_CR_ADSTART;

    while (1) {
        while (!(ADC1->ISR & ADC_ISR_EOC)) {}

        uint32_t value = ADC1->DR;

        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_RESET); // Blue
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET); // Blue
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_RESET); // Blue
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_RESET); // Red
       

        if (value < 70) {
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);  // Blue
        } 
        if (value > 150) {
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET);  // Red
        }
        if (value < 30) {
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET);  
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);
        }
        if (value > 200) {
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET);  
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);
            HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);
        }
        
        
    }
}
