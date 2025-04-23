#ifndef BNO085_H
#define BNO085_H

#include <stdint.h>
#include "stm32f0xx_hal.h"

#define BNO08X_I2C_ADDR     (0x4A << 1)  // 7-bit I2C address shifted for HAL I2C compatibility
#define BNO08X_I2C_DELAY    100          // Delay (in ms) used between I2C operations with the IMU

// Function declarations

void stm_bno085_i2c_init(I2C_HandleTypeDef *hi2c2);  // Initialize I2C and GPIO for BNO085
void bno085_clr_buf(I2C_HandleTypeDef *hi2c2);       // Clear incoming I2C buffer
void bno085_init(I2C_HandleTypeDef *hi2c2);          // Reset and configure BNO085
void bno085_enable_rotation_vector(I2C_HandleTypeDef *hi2c2);  // Enable rotation vector reporting
uint8_t bno085_read_rotation_vector(I2C_HandleTypeDef *hi2c2, volatile int16_t *qi, volatile int16_t *qj, volatile int16_t *qk, volatile int16_t *qr);  // Read quaternion rotation data
void bno085_clear_tare(I2C_HandleTypeDef *hi2c2);    // Clear current tare orientation
void bno085_tare_now(I2C_HandleTypeDef *hi2c2);      // Set current orientation as tare
void bno085_tare_persist(I2C_HandleTypeDef *hi2c2);  // Save tare settings to non-volatile memory


// I2C SHTP commands

extern uint8_t BNO085_RESET_CMD[5];           // Command to reset IMU
extern uint8_t BNO085_GET_PRODUCT_ID_CMD[6];  // Command to request product ID
extern uint8_t BNO085_ROT_VEC_EN_CMD[21];     // Command to enable rotation vector output
extern uint8_t BNO085_GET_FEAT_REQ_CMD[6];    // Command to request feature report
extern uint8_t BNO085_TARE_NOW_CMD[16];       // Command to apply tare immediately
extern uint8_t BNO085_PERSIST_TARE_CMD[16];   // Command to save tare persistently

#endif // BNO08X_H
