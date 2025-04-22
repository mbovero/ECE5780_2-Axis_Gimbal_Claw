#include <stm32f0xx_hal.h>
#include "main.h"
#include <assert.h>
#include "hal_gpio.h"
#include "bno085.h"
#include "motor_control.h"
#include "quaternion.h"
#include "debugUART.h"
#include "config.h"


// UART handle for UART1
UART_HandleTypeDef huart1;
static int uart_loop_counter = 0;

void joystick_init(void){
    HAL_Init();


    debugUART_init(&huart1);     // Initialize GPIO pins and peripherals for UART debugging


    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();
    __HAL_RCC_ADC1_CLK_ENABLE();

    // PC6–PC9 as output LEDs
    GPIO_InitTypeDef leds = {
        .Pin = GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9,
        .Mode = GPIO_MODE_OUTPUT_PP,
        .Pull = GPIO_NOPULL,
        .Speed = GPIO_SPEED_FREQ_LOW
    };
    HAL_GPIO_Init(GPIOC, &leds);

    // PC0 (vx) and PC3 (vy) as analog inputs
    GPIO_InitTypeDef analogPins = {
        .Pin = GPIO_PIN_0 | GPIO_PIN_3,
        .Mode = GPIO_MODE_ANALOG,
        .Pull = GPIO_NOPULL
    };
    HAL_GPIO_Init(GPIOC, &analogPins);

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



}


// int joystick_led(void) {
//     HAL_Init();


//     debugUART_init(&huart1);     // Initialize GPIO pins and peripherals for UART debugging


//     __HAL_RCC_GPIOA_CLK_ENABLE();
//     __HAL_RCC_GPIOC_CLK_ENABLE();
//     __HAL_RCC_ADC1_CLK_ENABLE();

//     // PC6–PC9 as output LEDs
//     GPIO_InitTypeDef leds = {
//         .Pin = GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9,
//         .Mode = GPIO_MODE_OUTPUT_PP,
//         .Pull = GPIO_NOPULL,
//         .Speed = GPIO_SPEED_FREQ_LOW
//     };
//     HAL_GPIO_Init(GPIOC, &leds);

//     // PC0 (vx) and PC3 (vy) as analog inputs
//     GPIO_InitTypeDef analogPins = {
//         .Pin = GPIO_PIN_0 | GPIO_PIN_3,
//         .Mode = GPIO_MODE_ANALOG,
//         .Pull = GPIO_NOPULL
//     };
//     HAL_GPIO_Init(GPIOC, &analogPins);

//     // PA1 as digital input (override pin)
//     GPIO_InitTypeDef dioPin = {
//         .Pin = GPIO_PIN_1,
//         .Mode = GPIO_MODE_INPUT,
//         .Pull = GPIO_PULLUP  // assumes button pulls low when pressed
//     };
//     HAL_GPIO_Init(GPIOA, &dioPin);

//     // ADC config: 8-bit resolution, single conversion
//     ADC1->CFGR1 &= ~(ADC_CFGR1_RES | ADC_CFGR1_CONT | ADC_CFGR1_EXTEN);
//     ADC1->CFGR1 |= (0b10 << ADC_CFGR1_RES_Pos); // 8-bit resolution

//     // ADC calibration
//     if (ADC1->CR & ADC_CR_ADEN) {
//         ADC1->CR |= ADC_CR_ADDIS;
//     }
//     while (ADC1->CR & ADC_CR_ADEN);
//     ADC1->CR |= ADC_CR_ADCAL;
//     while (ADC1->CR & ADC_CR_ADCAL);

//     // Enable ADC
//     ADC1->CR |= ADC_CR_ADEN;
//     while (!(ADC1->ISR & ADC_ISR_ADRDY));

uint8_t check_joystick(UART_HandleTypeDef* huart1){
    
    // If PA1 is LOW (button pressed), override and turn on all LEDs
    if (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_1) == GPIO_PIN_RESET) {
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9, GPIO_PIN_SET);
        return 1;
    }

    // --- Read vx (PC0, CH10) ---
    ADC1->CHSELR = ADC_CHSELR_CHSEL10;
    ADC1->CR |= ADC_CR_ADSTART;
    while (!(ADC1->ISR & ADC_ISR_EOC));
    uint8_t vx = ADC1->DR;

    // --- Read vy (PC3, CH13) ---
    ADC1->CHSELR = ADC_CHSELR_CHSEL13;
    ADC1->CR |= ADC_CR_ADSTART;
    while (!(ADC1->ISR & ADC_ISR_EOC));
    uint8_t vy = ADC1->DR;

    // Reset LEDs
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9, GPIO_PIN_RESET);

    // vx LED logic
    if (vx < 20) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);
    if (vx > 80) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET);

    // vy LED logic
    if (vy < 20) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);
    if (vy > 80) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);



    if (++uart_loop_counter >= 25) {
        uart_print_int(&huart1, ((int16_t)vx));
        //uart_print_int(&huart1, ((int16_t)vy));
        uart_loop_counter = 0;
    }
    return 0;
}
    // while (1) {
    //     // If PA1 is LOW (button pressed), override and turn on all LEDs
    //     if (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_1) == GPIO_PIN_RESET) {
    //         HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9, GPIO_PIN_SET);
    //         continue;
    //     }

    //     // --- Read vx (PC0, CH10) ---
    //     ADC1->CHSELR = ADC_CHSELR_CHSEL10;
    //     ADC1->CR |= ADC_CR_ADSTART;
    //     while (!(ADC1->ISR & ADC_ISR_EOC));
    //     uint8_t vx = ADC1->DR;

    //     // --- Read vy (PC3, CH13) ---
    //     ADC1->CHSELR = ADC_CHSELR_CHSEL13;
    //     ADC1->CR |= ADC_CR_ADSTART;
    //     while (!(ADC1->ISR & ADC_ISR_EOC));
    //     uint8_t vy = ADC1->DR;

    //     // Reset LEDs
    //     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9, GPIO_PIN_RESET);

    //     // vx LED logic
    //     if (vx < 20) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);
    //     if (vx > 80) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET);

    //    // vy LED logic
    //     if (vy < 20) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);
    //     if (vy > 80) HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);



    //     if (++uart_loop_counter >= 25) {
    //         uart_print_int(&huart1, ((int16_t)vx));
    //         //uart_print_int(&huart1, ((int16_t)vy));
    //         uart_loop_counter = 0;
    //     }

    
