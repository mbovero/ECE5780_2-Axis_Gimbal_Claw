// #include <stm32f0xx_hal.h>
// #include <assert.h>
// #include "main.h"
// #include "hal_gpio.h"

// void parse_rot_vec(uint16_t *qi, uint16_t *qj, uint16_t *qk, uint16_t *qr, uint8_t *pData, uint16_t len);


// #define BNO08X_I2C_ADDR (0x4A) // 7-bit I2C address for BNO08X
// #define SHTP_HEADER_SIZE (4)

// #define Q_SHIFT       14      // your Q1.15 format
// #define ROLL_THRESH   1500     // tune deadband to taste

// uint16_t qi_target;
// uint16_t qj_target;
// uint16_t qk_target;
// uint16_t qr_target;
// uint8_t target_init = 0;


// // Buffer to store received IMU data
// uint8_t imu_data[14];

// // I2C handle for I2C2
// I2C_HandleTypeDef hi2c2;

// int stm_imu_i2c_main(void)
// {
//     HAL_Init(); // Reset of all peripherals, init the Flash and Systick

//     // Set GPIO modes
//     My_HAL_RCC_GPIOB_CLK_Enable();
//     My_HAL_RCC_GPIOC_CLK_Enable();

//     GPIO_InitTypeDef initStrPB14 = {GPIO_PIN_14, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
//     My_HAL_GPIO_Init(GPIOB, &initStrPB14); // Initialize pin PB14 as I2C2_SDA with an internal pull-up resistor

//     GPIO_InitTypeDef initStrPB13 = {GPIO_PIN_13, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
//     My_HAL_GPIO_Init(GPIOB, &initStrPB13); // Initialize pin PB13 as I2C2_SCL with an internal pull-up resistor

//     GPIO_InitTypeDef initStrLEDs = {GPIO_PIN_6 | GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_LOW};
//     My_HAL_GPIO_Init(GPIOC, &initStrLEDs); // Initialize PC pins for LED usage


//     // Initialize I2C peripheral
//     __HAL_RCC_I2C2_CLK_ENABLE(); // Enable I2C2 clock

//     hi2c2.Instance = I2C2;
//     hi2c2.Init.Timing = (0x13 << 0) | (0x0F << 8) | (0x2 << 16) | (0x4 << 20) | (0x1 << 28); // Set I2C2 timing register
//     hi2c2.Init.OwnAddress1 = 0;
//     hi2c2.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
//     hi2c2.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
//     hi2c2.Init.OwnAddress2 = 0;
//     hi2c2.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
//     hi2c2.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
//     hi2c2.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;

//     if (HAL_I2C_Init(&hi2c2) != HAL_OK)
//     {
//         // Initialization Error
//         while (1)
//             ; // Handle error
//     }
//     HAL_Delay(100);  // Wait for peripheral to stabilize


//     uint8_t reset_cmd[] = {
//         0x05, // Length LSB
//         0x00, // Length MSB
//         0x01, // Channel: executable
//         0x00, // Sequence number
//         0x01  // Reset
//     }; // Reset command

//     HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, reset_cmd, sizeof(reset_cmd), HAL_MAX_DELAY);
//     HAL_Delay(1000);

//     uint8_t get_product_id[] = {
//         0x06, // Length LSB
//         0x00, // Length MSB
//         0x02, // Channel: sensor hub control
//         0x00, // Sequence number
//         0xF9, // Request Product ID
//         0x00};
    
//     HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, get_product_id, sizeof(get_product_id), HAL_MAX_DELAY);

//     uint8_t enable_rotation_vector[] = {
//         0x15,                   // Length LSB
//         0x00,                   // Length MSB
//         0x02,                   // Channel: sensor hub control
//         0x00,                   // Sequence number
//         0xFD,                   // Set Feature Command
//         0x05,                   // Report ID for Rotation Vector
//         0x00,                   // Feature flags (default)
//         0x00, 0x00,             // Change sensitivity (default)
//         0x10, 0x27, 0x00, 0x00, // Report interval (5 ms, in microseconds)
//         0x00, 0x00, 0x00, 0x00, // Batch interval (default)
//         0x00, 0x00, 0x00, 0x00  // Sensor-specific configuration (default)
//     };
//     uint8_t get_feat_req[] = {
//         0x06, // Length LSB
//         0x00, // Length MSB
//         0x02, // Channel: sensor hub control
//         0x00, // Sequence number
//         0xFE, // Get Feature Request
//         0x05  // Rotation Vector ID
//     };

//     uint8_t feat_req[21];
//     do
//     {
//         HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, enable_rotation_vector, sizeof(enable_rotation_vector), HAL_MAX_DELAY);
//         HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, get_feat_req, sizeof(get_feat_req), HAL_MAX_DELAY);
//         HAL_I2C_Master_Receive(&hi2c2, 0x4A << 1, feat_req, sizeof(feat_req), HAL_MAX_DELAY);
//     } while (!(feat_req[0] == 0x15 && feat_req[4] == 0xFC && feat_req[5] == 0x05 && feat_req[9] == 0x10));
    
    
//     while (1)
//     {
//         uint8_t data[32];
//         uint16_t qi;
//         uint16_t qj;
//         uint16_t qk;
//         uint16_t qr;
       
//         HAL_I2C_Master_Receive(&hi2c2, 0x4A << 1, data, sizeof(data), HAL_MAX_DELAY);            
//         parse_rot_vec(&qi, &qj, &qk, &qr, data, sizeof(data));
//         if (!target_init) {
//             qi_target = qi;
//             qj_target = qj;
//             qk_target = qk;
//             qr_target = qr;
//             target_init = 1;
//         }
        
//         else {
            
//             // current quaternion (Q1.15)
//             int16_t ci = (int16_t)qi;
//             int16_t cj = (int16_t)qj;
//             int16_t ck = (int16_t)qk;
//             int16_t cr = (int16_t)qr;
        
//             // target quaternion (Q1.15)
//             int16_t ti = (int16_t)qi_target;
//             int16_t tj = (int16_t)qj_target;
//             int16_t tk = (int16_t)qk_target;
//             int16_t tr = (int16_t)qr_target;
        
//             // sin(roll)_current  = 2*(w*x + y*z)
//             int32_t sin_r_cur = ((int32_t)cr*ci + (int32_t)cj*ck) * 2;
//             // sin(roll)_target   = 2*(w_t*x_t + y_t*z_t)
//             int32_t sin_r_tar = ((int32_t)tr*ti + (int32_t)tj*tk) * 2;
        
//             // bring back to Q1.15
//             sin_r_cur >>= Q_SHIFT;
//             sin_r_tar >>= Q_SHIFT;
        
//             int16_t err = (int16_t)(sin_r_cur - sin_r_tar);
        
//             // PC8 lights when roll > +thresh; PC9 when roll < -thresh
//             My_HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8,
//                 (err >  ROLL_THRESH) ? GPIO_PIN_SET : GPIO_PIN_RESET);
//             My_HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9,
//                 (err < -ROLL_THRESH) ? GPIO_PIN_SET : GPIO_PIN_RESET);
//         }
        

//         HAL_Delay(2); // Delay
//     }
// }


//  void parse_rot_vec(uint16_t *qi, uint16_t *qj, uint16_t *qk, uint16_t *qr, uint8_t *pData, uint16_t len)
//  {
//     if (len >= 21 && pData[0] == 0x17 && pData[1] == 0 && pData[4] == 0xFB && pData[9] == 0x05)
//     {
//         *qi = (pData[14] << 8) | pData[13];
//         *qj = (pData[16] << 8) | pData[15];
//         *qk = (pData[18] << 8) | pData[17];
//         *qr = (pData[20] << 8) | pData[19];
//     }
//  }

