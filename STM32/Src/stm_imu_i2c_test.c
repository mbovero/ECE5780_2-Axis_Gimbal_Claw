// #include <stm32f0xx_hal.h>
// #include <assert.h>
// #include "main.h"
// #include "hal_gpio.h"

// #define BNO08X_I2C_ADDR 0x4A
// #define SHTP_HEADER_SIZE 4

// int hal_enable = 0;
// uint8_t seq_number = 0;

// void I2C2_Write_IMU(uint8_t *pData, uint16_t len);
// void I2C2_Read_IMU(uint8_t *pData, uint16_t len);

// int stm_imu_i2c_test(void) {
//     HAL_Init();

//     My_HAL_RCC_GPIOB_CLK_Enable();
//     My_HAL_RCC_GPIOC_CLK_Enable();

//     GPIO_InitTypeDef sda = {GPIO_PIN_14, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
//     GPIO_InitTypeDef scl = {GPIO_PIN_13, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
//     GPIO_InitTypeDef leds = {GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_LOW};

//     My_HAL_GPIO_Init(GPIOB, &sda);
//     My_HAL_GPIO_Init(GPIOB, &scl);
//     My_HAL_GPIO_Init(GPIOC, &leds);

//     if (!hal_enable) {
//         RCC->APB1ENR |= (1 << 22);
//         I2C2->TIMINGR = 0;
//         I2C2->TIMINGR |= (1 << 28);
//         I2C2->TIMINGR |= (2 << 16);
//         I2C2->TIMINGR |= (4 << 20);
//         I2C2->TIMINGR |= (0x13);
//         I2C2->TIMINGR |= (0xF << 8);
//         I2C2->CR1 |= I2C_CR1_PE;
//     }

//     // === Send Reset Command ===
//     uint8_t reset_cmd[] = {0x05, 0x00, 0x01, seq_number++, 0x01};
//     I2C2_Write_IMU(reset_cmd, sizeof(reset_cmd));

//     HAL_Delay(100); // Give some time for reset to begin

//     // === Poll for first incoming SHTP packet ===
//     uint8_t shtp_input_reg = 0xF9;
//     uint8_t header[4];
//     do {
//         I2C2_Write_IMU(&shtp_input_reg, 1);
//         I2C2_Read_IMU(header, 4);
//         HAL_Delay(10);
//     } while (header[0] == 0xFF || header[0] == 0x00);

//     My_HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET); // indicate boot success

//     // === Send Set Feature Command ===
//     uint8_t enable_rotation_vector[] = {
//         0x15, 0x00,
//         0x02, seq_number++,
//         0xFD, 0x05, // Set Feature for Rotation Vector
//         0x00,       // Feature flags
//         0x00, 0x00, // Sensitivity
//         0x10, 0x27, 0x00, 0x00, // 5ms interval
//         0x00, 0x00, 0x00, 0x00, // Batch interval
//         0x00, 0x00, 0x00, 0x00  // Sensor config
//     };
//     I2C2_Write_IMU(enable_rotation_vector, sizeof(enable_rotation_vector));

//     // === Optional: Wait for Feature Response ===
//     uint8_t input[32] = {0};
//     do {
//         I2C2_Write_IMU(&shtp_input_reg, 1);
//         I2C2_Read_IMU(header, 4);
//         uint16_t payload_len = (header[1] << 8) | header[0];
//         payload_len &= 0x7FFF;

//         if (payload_len > 0 && payload_len < sizeof(input)) {
//             I2C2_Read_IMU(input, payload_len);
//         }

//         HAL_Delay(10);
//     } while (!(input[0] == 0xFC && input[1] == 0x05)); // Feature Response for RotVec

//     My_HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET); // feature enabled

//     // === Poll for data ===
//     while (1) {
//         I2C2_Write_IMU(&shtp_input_reg, 1);
//         I2C2_Read_IMU(header, 4);
//         uint16_t payload_len = (header[1] << 8) | header[0];
//         payload_len &= 0x7FFF;

//         if (payload_len > 0) {
//             uint8_t payload[32] = {0};
//             I2C2_Read_IMU(payload, payload_len);

//             if (payload[0] == 0x05 && payload_len >= 10) {
//                 HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6); // Quaternion received
//             }
//         }

//         HAL_Delay(10);
//     }
// }

// void I2C2_Write_IMU(uint8_t *pData, uint16_t len) {
//     I2C2->CR2 &= ~((0x3FF << 16) | (0x7F << 1));
//     I2C2->CR2 |= (BNO08X_I2C_ADDR << 1);
//     I2C2->CR2 |= len << 16;
//     I2C2->CR2 &= ~(1 << 10);
//     I2C2->CR2 |= (1 << 13);

//     for (uint16_t i = 0; i < len; i++) {
//         while (!(I2C2->ISR & I2C_ISR_TXIS)) {
//             if (I2C2->ISR & I2C_ISR_NACKF) return;
//         }
//         I2C2->TXDR = pData[i];
//     }

//     while (!(I2C2->ISR & I2C_ISR_TC)) {}
//     I2C2->CR2 |= I2C_CR2_STOP;
//     while (I2C2->CR2 & I2C_CR2_STOP) {}
// }

// void I2C2_Read_IMU(uint8_t *pData, uint16_t len) {
//     I2C2->CR2 &= ~((0x3FF << 16) | (0x7F << 1));
//     I2C2->CR2 |= (BNO08X_I2C_ADDR << 1);
//     I2C2->CR2 |= len << 16;
//     I2C2->CR2 |= (1 << 10); // Read
//     I2C2->CR2 |= (1 << 13); // Start

//     for (uint16_t i = 0; i < len; i++) {
//         while (!(I2C2->ISR & I2C_ISR_RXNE)) {
//             if (I2C2->ISR & I2C_ISR_NACKF) return;
//         }
//         pData[i] = I2C2->RXDR;
//     }

//     while (!(I2C2->ISR & I2C_ISR_TC)) {}
//     I2C2->CR2 |= I2C_CR2_STOP;
//     while (I2C2->CR2 & I2C_CR2_STOP) {}
// }
