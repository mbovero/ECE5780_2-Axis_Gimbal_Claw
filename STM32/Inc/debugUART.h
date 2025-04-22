#ifndef DEBUGUART_H
#define DEBUGUART_H

#include "stm32f0xx_hal.h"

void debugUART_init(UART_HandleTypeDef *huart1);
void uart_print_int(UART_HandleTypeDef *huart1, int16_t val);
void uart_send_string(const char *s);

#endif // DEBUGUART_H