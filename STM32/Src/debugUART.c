#include "debugUART.h"
#include <string.h>

void uart_send_string(const char *s) {
        while (*s) {
            uart_send_char(*s++);
        }
}


void debugUART_init(UART_HandleTypeDef *huart1)
{
    __HAL_RCC_USART1_CLK_ENABLE();
    GPIO_InitTypeDef GPIO_InitStruct3 = {0};
    GPIO_InitStruct3.Pin = GPIO_PIN_9 | GPIO_PIN_10;
    GPIO_InitStruct3.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct3.Pull = GPIO_NOPULL;
    GPIO_InitStruct3.Speed = GPIO_SPEED_FREQ_HIGH;
    GPIO_InitStruct3.Alternate = GPIO_AF1_USART1; // AF1 for USART1 on PA9/PA10
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct3); 

    huart1->Instance = USART1;
    huart1->Init.BaudRate = 9600;
    huart1->Init.Mode = UART_MODE_TX_RX;
    HAL_UART_Init(huart1);
}

void uart_print_int(UART_HandleTypeDef *huart1, int16_t val) 
{
    char buf[12];
    int i = 0;
    buf[i++] = ' ';
    
    if (val == 0) {
        buf[i++] = '0';
    } else {
        if (val == -32768) {
            const char *min_val = "-32768";
            for (int j = 0; min_val[j]; ++j)
                buf[i++] = min_val[j];
        } else {
            if (val < 0) {
                buf[i++] = '-';
                val = -val;
            }

            int start = i;
            while (val > 0 && i < sizeof(buf) - 4) {
                buf[i++] = '0' + (val % 10);
                val /= 10;
            }

            for (int j = start, k = i - 1; j < k; ++j, --k) {
                char tmp = buf[j];
                buf[j] = buf[k];
                buf[k] = tmp;
            }
        }
    }

    buf[i++] = ' ';
    buf[i++] = '\r';
    buf[i++] = '\n';
    HAL_UART_Transmit(huart1, (uint8_t*)buf, i, 10);
}