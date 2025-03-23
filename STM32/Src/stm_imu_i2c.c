#include <stm32f0xx_hal.h>
#include <assert.h>
#include "main.h"
#include "hal_gpio.h"


int stm_imu_i2c_main(void)
{
    HAL_Init(); // Reset of all peripherals, init the Flash and Systick

    // Set GPIO modes
    __HAL_RCC_GPIOB_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();

    GPIO_InitTypeDef initStrPB14 = {GPIO_PIN_14, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
    My_HAL_GPIO_Init(GPIOB, &initStrPB14); // Initialize pin PB11 as I2C2_SDA with an internal pull-up resistor

    GPIO_InitTypeDef initStrPB13 = {GPIO_PIN_13, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
    My_HAL_GPIO_Init(GPIOB, &initStrPB13); // Initialize pin PB13 as I2C2_SCL with an internal pull-up resistor

    // Initialize I2C peripheral
    RCC->APB1ENR |= (1 << 22); // Enable system clock to I2C2 in RCC peripheral
    I2C2->TIMINGR = (0x13 << 0) | (0x0F << 8) | (0x2 << 16) | (0x4 << 20) | (0x1 << 28); // Set I2C2 timing register
    I2C2->CR1 |= (1 << 0);      // Enable I2C2

    I2C2->CR2 &= ~((0x3FF << 0) | (0xFF << 16)); // Clear the NBYTES and SADD bit fields

}