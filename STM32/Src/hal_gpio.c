#include <stdint.h>
#include <stm32f0xx_hal.h>
#include <stm32f0xx_hal_gpio.h>

void My_HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
    
    for (uint32_t current_pin = 0; current_pin < 16; current_pin++)
    {
        if ((GPIO_Init->Pin & (1 << current_pin)) != 0)     // Only modify the specified GPIO pins
        {
            GPIOx->MODER &= ~(0x3 << (current_pin*2));      // Clear pin's MODER reg bits
            GPIOx->MODER |= ((GPIO_Init->Mode & GPIO_MODE) << (current_pin*2));     // OR in provided pin MODE reg configuration

            GPIOx->OTYPER &= ~(0x1 << current_pin);         // Clear pin's OTYPER reg bits
            GPIOx->OTYPER |= ((GPIO_Init->Mode & OUTPUT_TYPE) << current_pin);      // OR in provided pin OTYPER reg configuration

            GPIOx->PUPDR &= ~(0x3 << (current_pin*2));      // Clear pin's PUPDR reg bits
            GPIOx->PUPDR |= (GPIO_Init->Pull << (current_pin*2));       // OR in provided pin PUPDR reg configuration

            GPIOx->OSPEEDR &= ~(0x3 << (current_pin*2));    // Clear pin's OSPEEDR reg bits
            GPIOx->OSPEEDR |= (GPIO_Init->Speed << (current_pin*2));    // OR in provided pin OSPEEDR reg configuration

            if (current_pin < 8)
            {
                GPIOx->AFR[0] &= ~(0xF << (current_pin*4));   // Clear pin's AFRL reg bits
                GPIOx->AFR[0] |= (GPIO_Init->Alternate << (current_pin*4));       // OR in provided pin AFRL reg configuration
            }
            else
            {
                GPIOx->AFR[1] &= ~(0xF << (current_pin*4));   // Clear pin's AFRH reg bits
                GPIOx->AFR[1] |= (GPIO_Init->Alternate << ((current_pin-8)*4));       // OR in provided pin AFRH reg configuration
            }
        }
    }

}

/*
void My_HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin)
{
}
*/

GPIO_PinState My_HAL_GPIO_ReadPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
    if ((GPIOx->IDR & GPIO_Pin) != 0)
    {   return GPIO_PIN_SET;    }
    else
    {   return GPIO_PIN_RESET;  }
}

void My_HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
{
    // Set or reset specified pin(s) using lower or upper half of BSRR reg, respectively
    if (PinState == GPIO_PIN_SET)
    {   GPIOx->BSRR = GPIO_Pin;    }
    else
    {   GPIOx->BSRR = GPIO_Pin << 16;    }

}

void My_HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
    // Identify specified GPIO pin(s) that are high and set them low, 
    // and identify specified GPIO pin(s) that are low and set them high
    GPIOx->BSRR = ((GPIOx->ODR & GPIO_Pin) << 16) | (~(GPIOx->ODR) & GPIO_Pin);
}

void PA0_RISING_EDGE_INTERRUPT_Enable()
{
    SYSCFG->EXTICR[0] &= ~(0xF);  // EXTI0 outputs from PA0
    EXTI->IMR |= 0x1;             // Enable interrupts on line 0
    EXTI->RTSR |= 0x1;            // Enable rising edge trigger for line 0
}