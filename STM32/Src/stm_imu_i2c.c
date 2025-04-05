#include <stm32f0xx_hal.h>
#include <assert.h>
#include "main.h"
#include "hal_gpio.h"

#define BNO08X_I2C_ADDR (0x4A << 1) // 7-bit I2C address for BNO08X
#define SHTP_HEADER_SIZE (4)

// Buffer to store received IMU data
uint8_t imu_data[14];

// I2C handle for I2C2
I2C_HandleTypeDef hi2c2;

int stm_imu_i2c_main(void)
{
    HAL_Init(); // Reset of all peripherals, init the Flash and Systick

    // Set GPIO modes
    My_HAL_RCC_GPIOB_CLK_Enable();
    My_HAL_RCC_GPIOC_CLK_Enable();

    GPIO_InitTypeDef initStrPB14 = {GPIO_PIN_14, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
    My_HAL_GPIO_Init(GPIOB, &initStrPB14); // Initialize pin PB14 as I2C2_SDA with an internal pull-up resistor

    GPIO_InitTypeDef initStrPB13 = {GPIO_PIN_13, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
    My_HAL_GPIO_Init(GPIOB, &initStrPB13); // Initialize pin PB13 as I2C2_SCL with an internal pull-up resistor

    GPIO_InitTypeDef initStrPC6 = {GPIO_PIN_6, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_LOW};
    My_HAL_GPIO_Init(GPIOC, &initStrPC6); // Initialize pin PC6 for red LED used for debugging

    // Initialize I2C peripheral
    __HAL_RCC_I2C2_CLK_ENABLE(); // Enable I2C2 clock

    hi2c2.Instance = I2C2;
    hi2c2.Init.Timing = (0x13 << 0) | (0x0F << 8) | (0x2 << 16) | (0x4 << 20) | (0x1 << 28); // Set I2C2 timing register
    hi2c2.Init.OwnAddress1 = 0;
    hi2c2.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
    hi2c2.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
    hi2c2.Init.OwnAddress2 = 0;
    hi2c2.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
    hi2c2.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
    hi2c2.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;

    if (HAL_I2C_Init(&hi2c2) != HAL_OK)
    {
        // Initialization Error
        while (1)
            ; // Handle error
    }

    HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);
    HAL_Delay(2000);

    uint8_t reset_cmd[] = {
        0x05, // Length LSB
        0x00, // Length MSB
        0x01, // Channel: executable
        0x00, // Sequence number
        0x01  // Reset
    }; // Reset command
    HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, reset_cmd, sizeof(reset_cmd), HAL_MAX_DELAY);

    uint8_t get_product_id[] = {
        0x06, // Length LSB
        0x00, // Length MSB
        0x02, // Channel: sensor hub control
        0x00, // Sequence number
        0xF9, // Request Product ID
        0x00};
    HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, get_product_id, sizeof(get_product_id), HAL_MAX_DELAY);

    HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);
    // HAL_Delay(1000);
    uint8_t enable_rotation_vector[] = {
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
    uint8_t get_feat_req[] = {
        0x06, // Length LSB
        0x00, // Length MSB
        0x02, // Channel: sensor hub control
        0x00, // Sequence number
        0xFE, // Get Feature Request
        0x05  // Rotation Vector ID
    };
    uint8_t feat_req[21];
    do
    {
        HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, enable_rotation_vector, sizeof(enable_rotation_vector), HAL_MAX_DELAY);
        HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, get_feat_req, sizeof(get_feat_req), HAL_MAX_DELAY);
        HAL_I2C_Master_Receive(&hi2c2, 0x4A << 1, feat_req, sizeof(feat_req), HAL_MAX_DELAY);
        HAL_Delay(5);
    } while (!(feat_req[0] == 0x15 && feat_req[4] == 0xFC && feat_req[5] == 0x05 && feat_req[9] == 0x10));
    HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);

    while (1)
    {
        uint8_t data[32];
        HAL_I2C_Master_Receive(&hi2c2, 0x4A << 1, data, sizeof(data), HAL_MAX_DELAY);

        if (data[4] == 0x05)
            HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);

        HAL_Delay(1); // Delay
    }
}

/**
 * @brief  I2C2 write function for BNO08X IMU using SHTP protocol
 * @param  pData: Pointer to data to write (includes all SHTP protocol bytes)
 * @param  len: Length of data in bytes
 * @retval None (blocks on error, toggles error LED)
 */
void I2C2_Write_IMU(uint8_t *pData, uint16_t len)
{
    // Wait until STOP bit is cleared and bus is ready
    while (I2C2->CR2 & I2C_CR2_STOP)
    {
    }

    // Configure the transfer
    I2C2->CR2 &= ~((0x3FF << 0) | (0x7F << 16)); // Clear NBYTES and SADD
    I2C2->CR2 |= (BNO08X_I2C_ADDR << 1);         // Set slave address
    I2C2->CR2 |= (len << 16);                    // Set number of bytes to transmit
    I2C2->CR2 &= ~(1 << 10);                     // Set direction to write
    I2C2->CR2 |= (1 << 13);                      // Generate START condition

    // Wait for TXIS (ready to transmit) or NACK (failure)
    while (!(I2C2->ISR & (I2C_ISR_TXIS | I2C_ISR_NACKF)))
    {
    }

    // Handle NACK (no device responding)
    if (I2C2->ISR & I2C_ISR_NACKF)
    {
        I2C2->CR2 |= I2C_CR2_STOP;                // Ensure STOP condition is generated
        My_HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6); // Indicate error
        while (1)
        {
        } // Block
    }

    // Transmit all data bytes
    for (uint16_t i = 0; i < len; i++)
    {
        I2C2->TXDR = pData[i]; // Load data byte

        // Wait until ready for next byte or NACK
        while (!(I2C2->ISR & (I2C_ISR_TXIS | I2C_ISR_NACKF)))
        {
        }

        // Handle NACK during transmission
        if (I2C2->ISR & I2C_ISR_NACKF)
        {
            I2C2->CR2 |= I2C_CR2_STOP; // Ensure STOP condition
            My_HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);
            while (1)
            {
            }
        }
    }

    // Wait for transfer to complete
    while (!(I2C2->ISR & I2C_ISR_TC))
    {
    }

    // Generate STOP condition
    I2C2->CR2 |= I2C_CR2_STOP;
}

/**
 * @brief  I2C2 read function for BNO08X IMU using SHTP protocol
 * @param  pData: Pointer to buffer where received data will be stored
 * @param  len: Size of the provided buffer in bytes
 * @retval Number of bytes actually read (0 on communication error)
 */
uint16_t I2C2_Read_IMU(uint8_t *pData, uint16_t len)
{
    // Wait until STOP bit is cleared and bus is ready
    while (I2C2->CR2 & I2C_CR2_STOP) {}

    // First read just the SHTP header (4 bytes) to determine packet length
    I2C2->CR2 &= ~((0x3FF << 0) | (0x7F << 16)); // Clear NBYTES and SADD
    I2C2->CR2 |= (BNO08X_I2C_ADDR << 1);         // Set slave address
    I2C2->CR2 |= (SHTP_HEADER_SIZE << 16);       // Read SHTP header
    I2C2->CR2 |= (1 << 10);                      // Set direction to read
    I2C2->CR2 |= (1 << 13);                      // Generate START condition

    // Read header bytes
    uint16_t bytes_read = 0;
    for (int i = 0; i < SHTP_HEADER_SIZE; i++)
    {
        // Wait until data received or NACK
        while (!(I2C2->ISR & (I2C_ISR_RXNE | I2C_ISR_NACKF))) {}
        
        if (I2C2->ISR & I2C_ISR_NACKF)
        {
            I2C2->CR2 |= I2C_CR2_STOP;
            My_HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);
            return 0;
        }
        
        pData[i] = I2C2->RXDR;
        bytes_read++;
    }

    // Extract packet length from header (little-endian)
    uint16_t packet_length = (pData[1] << 8) | pData[0];
    
    // Check if this is a continuation packet (bit 15 set)
    if (packet_length & 0x8000)
    {
        packet_length &= 0x7FFF; // Clear continuation bit
    }

    // Calculate remaining bytes we can read (limited by buffer size)
    uint16_t remaining_bytes = (packet_length - SHTP_HEADER_SIZE);
    uint16_t bytes_to_read = (len - SHTP_HEADER_SIZE) < remaining_bytes ? (len - SHTP_HEADER_SIZE) : remaining_bytes;

    if (bytes_to_read > 0)
    {
        // Configure transfer for remaining data we can accept
        I2C2->CR2 &= ~((0x3FF << 0) | (0x7F << 16)); // Clear NBYTES and SADD
        I2C2->CR2 |= (BNO08X_I2C_ADDR << 1);         // Set slave address
        I2C2->CR2 |= (bytes_to_read << 16);          // Set bytes to read
        I2C2->CR2 |= (1 << 10);                      // Set direction to read
        I2C2->CR2 |= (1 << 13);                      // Generate START condition

        // Read available bytes
        for (int i = 0; i < bytes_to_read; i++)
        {
            // Wait until data received or NACK
            while (!(I2C2->ISR & (I2C_ISR_RXNE | I2C_ISR_NACKF))) {}
            
            if (I2C2->ISR & I2C_ISR_NACKF)
            {
                I2C2->CR2 |= I2C_CR2_STOP;
                My_HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);
                return 0;
            }
            
            pData[SHTP_HEADER_SIZE + i] = I2C2->RXDR;
            bytes_read++;
        }
    }

    // Wait for transfer to complete
    while (!(I2C2->ISR & I2C_ISR_TC)) {}

    // Generate STOP condition
    I2C2->CR2 |= I2C_CR2_STOP;

    return bytes_read;
}
