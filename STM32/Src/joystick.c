#include "joystick.h"

void joystick_init()
{
    // Initialize gpio pin PA1 for joystick button (SW)
    __HAL_RCC_GPIOA_CLK_ENABLE();
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


    // PC2 (VRX) and PC3 (VRY) as analog inputs
    __HAL_RCC_ADC1_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();
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
}

void joystick_read_vrx_vry(uint8_t *vrx, uint8_t *vry)
{
    //--- Read VRX (PC0, CH10) ---
    ADC1->CHSELR = ADC_CHSELR_CHSEL5;
    ADC1->CR |= ADC_CR_ADSTART;
    while (!(ADC1->ISR & ADC_ISR_EOC));
    *vrx = ADC1->DR;
    HAL_Delay(1); 
    // --- Read VRY (PC3, CH13) ---
    ADC1->CHSELR = ADC_CHSELR_CHSEL13;
    ADC1->CR |= ADC_CR_ADSTART;
    while (!(ADC1->ISR & ADC_ISR_EOC));
    *vry = ADC1->DR;
}
