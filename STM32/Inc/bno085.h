#ifndef BNO085_H
#define BNO085_H

#include <stdint.h>
#include "stm32f0xx_hal.h"

#define BNO08X_I2C_ADDR     (0x4A << 1)  // 7-bit I2C address shifted for HAL
#define BNO08X_I2C_DELAY    100     // ms delay used for stm to imu i2c communication wait times

// Function declarations
void stm_bno085_i2c_init(I2C_HandleTypeDef *hi2c2);
void bno085_clr_buf(I2C_HandleTypeDef *hi2c2);
void bno085_init(I2C_HandleTypeDef *hi2c2);
void bno085_enable_rotation_vector(I2C_HandleTypeDef *hi2c2);
//TODO change to signed?
uint8_t bno085_read_rotation_vector(I2C_HandleTypeDef *hi2c2, int16_t *qi, int16_t *qj, int16_t *qk, int16_t *qr);
void bno085_clear_tare(I2C_HandleTypeDef *hi2c2);
void bno085_tare_now(I2C_HandleTypeDef *hi2c2);
void bno085_tare_persist(I2C_HandleTypeDef *hi2c2);

// I2C SHTP commands
extern uint8_t BNO085_RESET_CMD[5];
extern uint8_t BNO085_GET_PRODUCT_ID_CMD[6];
extern uint8_t BNO085_ROT_VEC_EN_CMD[21];
extern uint8_t BNO085_GET_FEAT_REQ_CMD[6];
extern uint8_t BNO085_TARE_NOW_CMD[16];
extern uint8_t BNO085_PERSIST_TARE_CMD[16];


#endif // BNO08X_H