#include <stm32f0xx_hal.h>
#include <assert.h>
#include "main.h"
#include "hal_gpio.h"

void I2C2_Write_IMU(uint8_t *pData, uint16_t len);
uint16_t I2C2_Read_IMU(uint8_t *pData, uint16_t len);

#define BNO08X_I2C_ADDR (0x4A) // 7-bit I2C address for BNO08X
#define SHTP_HEADER_SIZE (4)

int hal_enable = 0;

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

    GPIO_InitTypeDef initStrLEDs = {GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_LOW};
    My_HAL_GPIO_Init(GPIOC, &initStrLEDs); // Initialize PC pins for LED usage

    //My_HAL_GPIO_WritePin(GPIOC, GPIO_)

    // Initialize I2C peripheral
    if (hal_enable)
    {
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
    } else {
        RCC->APB1ENR |= (1 << 22); // Enable system clock to I2C2 in RCC peripheral
        RCC->APB1RSTR |= RCC_APB1RSTR_I2C2RST;  // Assert reset
        RCC->APB1RSTR &= ~RCC_APB1RSTR_I2C2RST; // Deassert reset
        HAL_Delay(1);  // Short delay
        I2C2->TIMINGR = (0x13 << 0) | (0x0F << 8) | (0x2 << 16) | (0x4 << 20) | (0x1 << 28); // Set I2C2 timing register
        I2C2->CR1 |= (1 << 0);      // Enable I2C2
        HAL_Delay(1);  // Wait for peripheral to stabilize
    }


    uint8_t reset_cmd[] = {
        0x05, // Length LSB
        0x00, // Length MSB
        0x01, // Channel: executable
        0x00, // Sequence number
        0x01  // Reset
    }; // Reset command
    if (hal_enable)
    { HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, reset_cmd, sizeof(reset_cmd), HAL_MAX_DELAY);}
    else { I2C2_Write_IMU(reset_cmd, sizeof(reset_cmd)); }
    HAL_Delay(1000);

    

    uint8_t get_product_id[] = {
        0x06, // Length LSB
        0x00, // Length MSB
        0x02, // Channel: sensor hub control
        0x00, // Sequence number
        0xF9, // Request Product ID
        0x00};
    
    if(hal_enable){
        HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, get_product_id, sizeof(get_product_id), HAL_MAX_DELAY);
    }
    else{
        I2C2_Write_IMU(get_product_id, sizeof(get_product_id));
    }
    


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

    // HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);
    // HAL_Delay(2000);

    // DEBUGGING


    uint8_t feat_req[21];
    do
    {
        if (hal_enable)
        {
            HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, enable_rotation_vector, sizeof(enable_rotation_vector), HAL_MAX_DELAY);
            HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, get_feat_req, sizeof(get_feat_req), HAL_MAX_DELAY);
            HAL_I2C_Master_Receive(&hi2c2, 0x4A << 1, feat_req, sizeof(feat_req), HAL_MAX_DELAY);
        } else{
            I2C2_Write_IMU(enable_rotation_vector, sizeof(enable_rotation_vector));
            
            I2C2_Write_IMU(get_feat_req, sizeof(get_feat_req));

            // Check the
            HAL_Delay(10);

            I2C2_Read_IMU(feat_req, sizeof(feat_req));
            // HAL_Delay(10);
            // I2C2_Read_IMU(feat_req, sizeof(feat_req));
            // HAL_Delay(10);
            // I2C2_Read_IMU(feat_req, sizeof(feat_req));
            // HAL_Delay(10);

            // I2C2_Write_IMU(enable_rotation_vector, sizeof(enable_rotation_vector));
            
            // I2C2_Write_IMU(get_feat_req, sizeof(get_feat_req));
            // HAL_Delay(10);

            // I2C2_Read_IMU(feat_req, sizeof(feat_req));

            // Check the
            HAL_Delay(10);

            
        }
        
    } while (!(feat_req[0] == 0x15 && feat_req[4] == 0xFC && feat_req[5] == 0x05 && feat_req[9] == 0x10));
    
    // while(1)
    // {
    // HAL_Delay(500);
    // HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_7);
    // HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_6);
    // }



    while (1)
    {
        uint8_t data[32];
        if (hal_enable)
        {
            HAL_I2C_Master_Receive(&hi2c2, 0x4A << 1, data, sizeof(data), HAL_MAX_DELAY);            
        }
        else{
           I2C2_Read_IMU(data, sizeof(data));
        }
        

        HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_7);

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
     if (len == 0 || len > 255) return;
 
     // Wait for bus to become free
     while (I2C2->ISR & I2C_ISR_BUSY) {}
 
     // Clear any lingering STOP flag
     if (I2C2->ISR & I2C_ISR_STOPF) {
         I2C2->ICR |= I2C_ICR_STOPCF;
     }
 
     // Configure CR2
     I2C2->CR2 = 0;
     I2C2->CR2 |= (BNO08X_I2C_ADDR << 1);    // 7-bit address
     I2C2->CR2 |= (len << I2C_CR2_NBYTES_Pos); // number of bytes
     I2C2->CR2 &= ~I2C_CR2_RD_WRN;           // write mode
     I2C2->CR2 |= I2C_CR2_AUTOEND;           // auto STOP
     I2C2->CR2 |= I2C_CR2_START;             // generate START
 
     for (uint16_t i = 0; i < len; i++) {
         // Wait for TXIS or NACKF
         while (!(I2C2->ISR & (I2C_ISR_TXIS | I2C_ISR_NACKF))) {}
 
         if (I2C2->ISR & I2C_ISR_NACKF) {
             I2C2->ICR |= I2C_ICR_NACKCF;    // Clear NACK
             I2C2->CR2 |= I2C_CR2_STOP;      // Force STOP
             My_HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET); // signal error
             return;
         }
 
         I2C2->TXDR = pData[i];
     }
 
     // Wait for STOPF (Stop condition finished)
     while (!(I2C2->ISR & I2C_ISR_STOPF)) {}
 
     I2C2->ICR |= I2C_ICR_STOPCF; // Clear STOP flag
 }
 

/**
 * @brief  I2C2 read function for BNO08X IMU using SHTP protocol
 * @param  pData: Pointer to buffer where received data will be stored
 * @param  len: Size of the provided buffer in bytes
 * @retval Number of bytes actually read (0 on communication error)
 */
 uint16_t I2C2_Read_IMU(uint8_t *pData, uint16_t len)
 {
     if (len == 0 || len > 255) return 0;
 
     // Wait for bus to become free
     while (I2C2->ISR & I2C_ISR_BUSY) {}
 
     // Clear STOP flag if needed
     if (I2C2->ISR & I2C_ISR_STOPF)
         I2C2->ICR |= I2C_ICR_STOPCF;
 
     // Configure I2C2 for read
     I2C2->CR2 = 0;
     I2C2->CR2 |= (BNO08X_I2C_ADDR << 1);        // Slave address
     I2C2->CR2 |= (len << I2C_CR2_NBYTES_Pos);   // Number of bytes to read
     I2C2->CR2 |= I2C_CR2_RD_WRN;                // Read mode
     I2C2->CR2 |= I2C_CR2_AUTOEND;               // Auto STOP
     I2C2->CR2 |= I2C_CR2_START;                 // Generate START
 
     uint16_t bytes_read = 0;
 
     for (uint16_t i = 0; i < len; i++)
     {
         // Wait for RXNE or NACK
         while (!(I2C2->ISR & (I2C_ISR_RXNE | I2C_ISR_NACKF))) {}
 
         if (I2C2->ISR & I2C_ISR_NACKF)
         {
             I2C2->ICR |= I2C_ICR_NACKCF;
             I2C2->CR2 |= I2C_CR2_STOP;
             return 0;
         }
 
         pData[i] = I2C2->RXDR;
         bytes_read++;
     }
 
     // Wait for STOPF (STOP detected)
     while (!(I2C2->ISR & I2C_ISR_STOPF)) {}
 
     // Clear STOP flag
     I2C2->ICR |= I2C_ICR_STOPCF;
 
     return bytes_read;
 }


 void parse_rot_vec(int16_t *qi, int16_t *qj, int16_t *qk, int16_t *qr, uint8_t *pData, uint16_t len)
 {
    if (pData[0] == 0x17 && pData[1] == 0 && pData[4] == 0xFB && pData[9] == 0x05)
    {
        qi* = (pData[9] << 8) | pData[8];
        
    }
 }