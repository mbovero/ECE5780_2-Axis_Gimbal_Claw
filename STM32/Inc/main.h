#pragma once
#include <stdint.h>

int pwm_signal_gen(void);

int blink_test(void);

int joystick_led(void);

int stm_imu_i2c_test(void);

void My_HAL_RCC_GPIOA_CLK_Enable();
void My_HAL_RCC_GPIOB_CLK_Enable();
void My_HAL_RCC_GPIOC_CLK_Enable();


