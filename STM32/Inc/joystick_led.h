#include "hal_gpio.h"
#include "debugUART.h"

void joystick_init(void);
uint8_t check_joystick(UART_HandleTypeDef* huart1);