#include "bno085.h"

// I2C SHTP command to reset the IMU 
uint8_t BNO085_RESET_CMD[5] = {
    0x05, // Length LSB
    0x00, // Length MSB
    0x01, // Channel: executable
    0x00, // Sequence number
    0x01  // Reset
}; // Reset command

// I2C SHTP command to request the IMU's product ID as part of the boot-up sequence
uint8_t BNO085_GET_PRODUCT_ID_CMD[6] = {
    0x06, // Length LSB
    0x00, // Length MSB
    0x02, // Channel: sensor hub control
    0x00, // Sequence number
    0xF9, // Request Product ID
    0x00};

// I2C SHTP command to enable the IMU's rotation vector mode
uint8_t BNO085_ROT_VEC_EN_CMD[21] = {
    0x15,                   // Length LSB
    0x00,                   // Length MSB
    0x02,                   // Channel: sensor hub control
    0x00,                   // Sequence number
    0xFD,                   // Set Feature Command
    0x05,                   // Report ID for Rotation Vector
    0x00,                   // Feature flags (default)
    0x00, 0x00,             // Change sensitivity (default)
    0x10, 0x27, 0x00, 0x00, // Report interval (5 ms, in microseconds)
    0x00, 0x00, 0x00, 0x00, // Batch interval (default)
    0x00, 0x00, 0x00, 0x00  // Sensor-specific configuration (default)
};

// I2C SHTP command to request information on the IMU's current mode configuration
uint8_t BNO085_GET_FEAT_REQ_CMD[6] = {
    0x06, // Length LSB
    0x00, // Length MSB
    0x02, // Channel: sensor hub control
    0x00, // Sequence number
    0xFE, // Get Feature Request
    0x05  // Rotation Vector ID
};

// I2C SHTP command to clear any IMU reorientation settings
uint8_t BNO085_CLEAR_TARE_CMD[16] = {
    0x10,                   // Length LSB (16 bytes total)
    0x00,                   // Length MSB
    0x02,                   // Channel: sensor hub control
    0x00,                   // Sequence number
    0xF2,                   // Command Request
    0x00,                   // Sequence number (for command)
    0x03,                   // Tare Command (0x03)
    0x02,                   // Subcommand: Set Reorientation (0x02)
    0x00, 0x00, 0x00, 0x00, // Set all tare values to 0x00
    0x00, 0x00, 0x00, 0x00 
};

// I2C SHTP command to set the current IMU orientaiton as the new zero orientation
uint8_t BNO085_TARE_NOW_CMD[16] = {
    0x10,                   // Length LSB (16 bytes total)
    0x00,                   // Length MSB
    0x02,                   // Channel: sensor hub control
    0x00,                   // Sequence number
    0xF2,                   // Command Request
    0x00,                   // Sequence number (for command)
    0x03,                   // Tare Command (0x03)
    0x00,                   // Subcommand: Tare Now (0x00)
    0x07,                   // Tare all axes (X, Y, Z)
    0x00,                   // Rotation Vector (0x00)
    0x00, 0x00, 0x00, 0x00, // Reserved (set to 0)
    0x00, 0x00              // Reserved (set to 0)
};

// I2C SHTP command to save the latest tare opertaion to the IMU's flash memory
uint8_t BNO085_PERSIST_TARE_CMD[16] = {
    0x10,                   // Length LSB (16 bytes total)
    0x00,                   // Length MSB
    0x02,                   // Channel: sensor hub control
    0x00,                   // Sequence number
    0xF2,                   // Command Request
    0x00,                   // Sequence number (for command)
    0x03,                   // Tare Command (0x03)
    0x01,                   // Subcommand: Persist Tare (0x01)
    0x00,                   // Reserved (set to 0)
    0x00,                   // Reserved (set to 0)
    0x00, 0x00, 0x00, 0x00, // Reserved (set to 0)
    0x00, 0x00              // Reserved (set to 0)
};

/**
 * @brief Initializes GPIO and I2C2 interface for communication with the BNO085 IMU.
 * 
 * Configures SDA (PB14), SCL (PB13), and a status LED (PB3). 
 * Sets I2C timing and starts the peripheral. LED blinks on failure.
 * 
 * @param hi2c2 Pointer to I2C2 handle structure.
 */
void stm_bno085_i2c_init(I2C_HandleTypeDef *hi2c2)
{
    // GPIO initialization
    __HAL_RCC_GPIOB_CLK_ENABLE();

    // Initialize pin as I2C2_SDA with an internal pull-up resistor
    GPIO_InitTypeDef initStrPB14 = {GPIO_PIN_14, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
    HAL_GPIO_Init(GPIOB, &initStrPB14); 

    // Initialize pin as I2C2_SCL with an internal pull-up resistor
    GPIO_InitTypeDef initStrPB13 = {GPIO_PIN_13, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
    HAL_GPIO_Init(GPIOB, &initStrPB13);

    // Initialize pin as I2C status LED
    GPIO_InitTypeDef initStrPB3 = {GPIO_PIN_3, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOB, &initStrPB3);


    // I2C peripheral initialization
    __HAL_RCC_I2C2_CLK_ENABLE(); // Enable I2C2 clock

    // Configure I2C2 peripheral for standard 7-bit addressing at 100kHz
    hi2c2->Instance = I2C2;
    hi2c2->Init.Timing = (0x13 << 0) | (0x0F << 8) | (0x2 << 16) | (0x4 << 20) | (0x1 << 28); // Set I2C2 timing register
    hi2c2->Init.OwnAddress1 = 0;
    hi2c2->Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
    hi2c2->Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;

    // Detect peripheral initialization errors
    if (HAL_I2C_Init(hi2c2) != HAL_OK)
    {
        while (1)
        {
            HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_3); // Flash LED indicator 
            HAL_Delay(250);
        }
    }
    HAL_Delay(100);  // Wait for peripheral to stabilize
}

/**
 * @brief Clears the receive buffer by continuously reading until no data is returned.
 * 
 * Useful during device boot-up, reset, or any extended delay to clear residual messages.
 * 
 * @param hi2c2 Pointer to I2C2 handle structure.
 */
void bno085_clr_buf(I2C_HandleTypeDef *hi2c2)
{
    uint8_t buf[32];
    do
    {
        HAL_I2C_Master_Receive(hi2c2, BNO08X_I2C_ADDR, buf, sizeof(buf), BNO08X_I2C_DELAY);
    } while (buf[0] != 0x00);
}

/**
 * @brief Fully initializes the BNO085 IMU and configures it for rotation vector output.
 * 
 * Sends reset and configuration commands to the BNO085, verifies correct setup,
 * and enables an LED to indicate successful initialization.
 * 
 * @param hi2c2 Pointer to I2C2 handle structure.
 */
void bno085_init(I2C_HandleTypeDef *hi2c2)
{
    // Disable LED to indicate initialization in process
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, GPIO_PIN_RESET);

    // Reset IMU
    HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_RESET_CMD, sizeof(BNO085_RESET_CMD), BNO08X_I2C_DELAY*10);
    HAL_Delay(1000);        // Allow time for device restart
    bno085_clr_buf(hi2c2);  // Read data printed on device boot-up

    // Request product ID
    HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_GET_PRODUCT_ID_CMD, sizeof(BNO085_GET_PRODUCT_ID_CMD), BNO08X_I2C_DELAY);
    bno085_clr_buf(hi2c2);  // Read product ID

    // Configure IMU into rotation vector mode
    uint8_t feat_req[21];
    do
    {
        // Tell IMU to enable vector rotation
        HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_ROT_VEC_EN_CMD, sizeof(BNO085_ROT_VEC_EN_CMD), BNO08X_I2C_DELAY);
        // Request IMU configuration data
        HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_GET_FEAT_REQ_CMD, sizeof(BNO085_GET_FEAT_REQ_CMD), BNO08X_I2C_DELAY);
        // Read/store current IMU configuration
        HAL_I2C_Master_Receive(hi2c2, BNO08X_I2C_ADDR, feat_req, sizeof(feat_req), BNO08X_I2C_DELAY);
    } while (!(feat_req[0] == 0x15 && feat_req[4] == 0xFC && feat_req[5] == 0x05 && feat_req[9] == 0x10)); // Repeat until properly configured

    // Enable status LED to indicate successful initialization
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, GPIO_PIN_SET);
}

/**
 * @brief Reads the current quaternion rotation vector from the BNO085.
 * 
 * Verifies the data packet format before extracting and returning qi, qj, qk, and qr.
 * 
 * @param hi2c2 Pointer to I2C2 handle structure.
 * @param qi Pointer to store quaternion i component.
 * @param qj Pointer to store quaternion j component.
 * @param qk Pointer to store quaternion k component.
 * @param qr Pointer to store quaternion real (r) component.
 * @return uint8_t Returns 0 on success, 1 on I2C error.
 */
uint8_t bno085_read_rotation_vector(I2C_HandleTypeDef *hi2c2, volatile int16_t *qi, volatile int16_t *qj, volatile int16_t *qk, volatile int16_t *qr)
{
    // Buffer for incoming data
    uint8_t data[32];

    // Read latest IMU data
    HAL_StatusTypeDef i2c_status = HAL_I2C_Master_Receive(hi2c2, BNO08X_I2C_ADDR, data, sizeof(data), HAL_MAX_DELAY); 
    
    // If I2C interaction unsuccessful, return error status
    if (i2c_status != HAL_OK)
    {   return 1;   }

    // If received data is a valid rotation vector packet, parse it for quaternion data
    if (data[0] == 0x17 && data[1] == 0 && data[4] == 0xFB && data[9] == 0x05)
    {
        *qi = (data[14] << 8) | data[13];
        *qj = (data[16] << 8) | data[15];
        *qk = (data[18] << 8) | data[17];
        *qr = (data[20] << 8) | data[19];
    }

    return 0;
}

/**
 * @brief Clears all IMU orientation offsets (tare values)
 * @param hi2c2 Pointer to I2C handle structure
 * @note This sends a command to reset any active orientation offsets to zero.
 *       Does not affect persistent tare settings stored in flash.
 */
void bno085_clear_tare(I2C_HandleTypeDef *hi2c2)
{
    HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_CLEAR_TARE_CMD, sizeof(BNO085_CLEAR_TARE_CMD), BNO08X_I2C_DELAY);
}

/**
 * @brief Sets current IMU orientation as the new zero reference (run-time tare)
 * @param hi2c2 Pointer to I2C handle structure
 * @note This immediate command makes the current orientation the new reference frame.
 *       Does not affect persistent tare settings stored in flash.
 */
void bno085_tare_now(I2C_HandleTypeDef *hi2c2)
{
    HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_TARE_NOW_CMD, sizeof(BNO085_TARE_NOW_CMD), BNO08X_I2C_DELAY);
}

/**
 * @brief Saves current tare orientation to flash for persistent storage
 * @param hi2c2 Pointer to I2C handle structure
 * @note Persists the last tare setting to survive reboots.
 *       Only works for Rotation Vector and Geomagnetic Rotation Vector.
 */
void bno085_tare_persist(I2C_HandleTypeDef *hi2c2)
{
    HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_PERSIST_TARE_CMD, sizeof(BNO085_PERSIST_TARE_CMD), BNO08X_I2C_DELAY);
}
