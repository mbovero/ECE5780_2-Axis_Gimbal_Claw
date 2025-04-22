// #include <stm32f0xx_hal.h>
// #include "main.h"
// #include <assert.h>
// #include "hal_gpio.h"



// void parse_rot_vec(uint16_t *qi, uint16_t *qj, uint16_t *qk, uint16_t *qr, uint8_t *pData, uint16_t len);


// // Constants
// #define BNO08X_I2C_ADDR    (0x4A << 1)  // 7-bit I2C address shifted for HAL
// #define Q_SHIFT            14
// #define ROLL_THRESH        750        // Threshold to start moving
// #define MAX_ROLL_ERROR     5000        // Error at max speed
// #define MIN_PSC            10           // Fastest speed (higher PWM frequency)
// #define MAX_PSC            30           // Slowest speed
// #define DEADBAND           1750         // Error range where motor stops

// #define PITCH_THRESH       1500
// #define YAW_THRESH         1500

// // Target quaternion (initialized on first reading)
// uint16_t qi_target = 0, qj_target = 0, qk_target = 0, qr_target = 0;
// uint8_t target_init = 20;


// // I2C handle for I2C2
// I2C_HandleTypeDef hi2c2;

// // --- Helper: Compute sin(angle) error for roll/pitch/yaw ---
// int16_t compute_angle_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck,
//                            int16_t tr, int16_t ti, int16_t tj, int16_t tk,
//                            uint8_t axis) {
//     int32_t sin_cur, sin_tar;

//     switch (axis) {
//         case 0: // Roll:  2*(w*x + y*z)
//             //sin_cur = ((int32_t)cr * ci + (int32_t)cj * ck) * 2;
               //sin_tar = ((int32_t)tr * ti + (int32_t)tj * tk) * 2;
//             return (int16_t)(((sin_cur - sin_tar)) >> Q_SHIFT);
//         case 1: // Pitch: 2*(w*y - z*x)
//             sin_cur = ((int32_t)cr * cj - (int32_t)ck * ci) * 2;
//             sin_tar = ((int32_t)tr * tj - (int32_t)tk * ti) * 2;
//             break;
//         case 2: // Yaw:   2*(w*z + x*y)
//             sin_cur = ((int32_t)cr * ck + (int32_t)ci * cj) * 2;
//             sin_tar = ((int32_t)tr * tk + (int32_t)ti * tj) * 2;
//             return (int16_t)((-(sin_cur - sin_tar)) >> Q_SHIFT);
//         default:
//             return 0;
//     }

//     return (int16_t)((sin_cur - sin_tar) >> Q_SHIFT);
// }


// int motor_test_i2c(void) {
//      // 1) Initialize HAL (SysTick etc.)
//      HAL_Init();

//      // 2) Enable GPIOC, GPIOB, and TIM3 clocks
//      __HAL_RCC_GPIOA_CLK_ENABLE();
//      __HAL_RCC_GPIOC_CLK_ENABLE();
//      __HAL_RCC_GPIOB_CLK_ENABLE();
//      __HAL_RCC_TIM3_CLK_ENABLE();
 
//      // --- Configure PC6 for PWM (TIM3_CH1) using HAL ---
//      GPIO_InitTypeDef GPIO_InitStruct = {0};
//      GPIO_InitStruct.Pin       = GPIO_PIN_6;
//      GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
//      GPIO_InitStruct.Pull      = GPIO_NOPULL;
//      GPIO_InitStruct.Speed     = GPIO_SPEED_FREQ_LOW;
//      GPIO_InitStruct.Alternate = GPIO_AF0_TIM3;  // AF0 = TIM3_CH1 on PC6
//      HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
 
//      // --- Configure PC7-MS1, PC8-MS2, PC9-ENABLE, PC7-DIR as digital outputs via HAL ---
//      GPIO_InitStruct.Pin   = GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9;
//      GPIO_InitStruct.Mode  = GPIO_MODE_OUTPUT_PP;
//      GPIO_InitStruct.Pull  = GPIO_NOPULL;
//      GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
//      HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

//      GPIO_InitStruct.Pin   = GPIO_PIN_8;
//      GPIO_InitStruct.Mode  = GPIO_MODE_OUTPUT_PP;
//      GPIO_InitStruct.Pull  = GPIO_PULLDOWN;
//      GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
//      HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
//      // Set initial outputs low
//      //HAL_GPIO_WritePin(GPIOC, GPIO_InitStruct.Pin, GPIO_PIN_RESET);
 
//      // 3) Timer3 PWM bitwise setup for PC6 (1 kHz, 50% duty)
//      TIM3->PSC    = 29;  // 8MHz/(79+1) = 100kHz timer clock
//      TIM3->ARR    = 99U;  // 100kHz/(99+1) = 1kHz PWM
//      // PWM Mode1 on CH1, preload enable
//      TIM3->CCMR1 &= ~TIM_CCMR1_OC1M;
//      TIM3->CCMR1 |= (6U << TIM_CCMR1_OC1M_Pos) | TIM_CCMR1_OC1PE;
//      // 50% duty: CCR1 = (ARR+1)/2
//      TIM3->CCR1   = (TIM3->ARR + 1U) >> 1;
//      // Enable CH1 output, start counter
     
//      TIM3->CR1 |= 1;
  
     
    
//      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET); // toggle MS1
//      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);   // set MS2
//      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, GPIO_PIN_RESET); // clear ENABLE
//      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);  // set DIR

     

//     GPIO_InitTypeDef initStrPB14 = {GPIO_PIN_14, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
//     My_HAL_GPIO_Init(GPIOB, &initStrPB14); // Initialize pin PB14 as I2C2_SDA with an internal pull-up resistor

//     GPIO_InitTypeDef initStrPB13 = {GPIO_PIN_13, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
//     My_HAL_GPIO_Init(GPIOB, &initStrPB13); // Initialize pin PB13 as I2C2_SCL with an internal pull-up resistor

//     // Initialize pin as I2C status LED
//     GPIO_InitTypeDef initStrPB3 = {GPIO_PIN_3, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_LOW};
//     My_HAL_GPIO_Init(GPIOB, &initStrPB3);
    


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

//     // Detect peripheral initialization errors
//     if (HAL_I2C_Init(&hi2c2) != HAL_OK)
//     {
//         while (1)
//         {
//             HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_3); // Flash LED indicator 
//             HAL_Delay(250);
//         }
//     }
//     HAL_Delay(100);  // Wait for peripheral to stabilize


//     uint8_t reset_cmd[] = {
//         0x05, // Length LSB
//         0x00, // Length MSB
//         0x01, // Channel: executable
//         0x00, // Sequence number
//         0x01  // Reset
//     }; // Reset command

//     HAL_I2C_Master_Transmit(&hi2c2, BNO08X_I2C_ADDR, reset_cmd, sizeof(reset_cmd), 1000);
//     HAL_Delay(1000);

//     uint8_t get_product_id[] = {
//         0x06, // Length LSB
//         0x00, // Length MSB
//         0x02, // Channel: sensor hub control
//         0x00, // Sequence number
//         0xF9, // Request Product ID
//         0x00};
    
//     uint8_t feat_req[21];
//     do
//     {
//         HAL_I2C_Master_Receive(&hi2c2, BNO08X_I2C_ADDR, feat_req, sizeof(feat_req), 100);
//     } while (!(feat_req[0] == 0x00));
    
        
//     HAL_I2C_Master_Transmit(&hi2c2, 0x4A << 1, get_product_id, sizeof(get_product_id), 100);
    
    
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

//     do
//     {
//         HAL_I2C_Master_Receive(&hi2c2, BNO08X_I2C_ADDR, feat_req, sizeof(feat_req), 100);
//     } while (!(feat_req[0] == 0x00));


//     do
//     {
//         HAL_I2C_Master_Transmit(&hi2c2, BNO08X_I2C_ADDR, enable_rotation_vector, sizeof(enable_rotation_vector), 100);
//         HAL_I2C_Master_Transmit(&hi2c2, BNO08X_I2C_ADDR, get_feat_req, sizeof(get_feat_req), 100);
//         HAL_I2C_Master_Receive(&hi2c2, BNO08X_I2C_ADDR, feat_req, sizeof(feat_req), 100);
//     } while (!(feat_req[0] == 0x15 && feat_req[4] == 0xFC && feat_req[5] == 0x05 && feat_req[9] == 0x10));

//     HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, 1);   
    
//     while (1)
//     {
//         uint8_t data[32];
//         uint16_t qi, qj, qk, qr;
       
//         HAL_StatusTypeDef i2c_status = HAL_I2C_Master_Receive(&hi2c2, 0x4A << 1, data, sizeof(data), HAL_MAX_DELAY);
//         if (i2c_status != HAL_OK)
//         {
//             TIM3->CCER &= ~TIM_CCER_CC1E;
//             continue;
//         }

//         parse_rot_vec(&qi, &qj, &qk, &qr, data, sizeof(data));
//         if (target_init > 0) { 
//             qi_target = qi;
//             qj_target = qj;
//             qk_target = qk;
//             qr_target = qr;
//             target_init--;
//             bno085_tare_orientation(&hi2c2);
//             //target_init = 1;
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
        
//             // Compute errors
//             int16_t err_roll  = compute_angle_error(cr, ci, cj, ck, tr, ti, tj, tk, 0);
//             // int16_t err_pitch = compute_angle_error(cr, ci, cj, ck, tr, ti, tj, tk, 1);
//             // int16_t err_yaw   = compute_angle_error(cr, ci, cj, ck, tr, ti, tj, tk, 2);
                

//             if(err_roll >  ROLL_THRESH)
//             {
//                 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_RESET);  // set DIR
//                 TIM3->CCER |= TIM_CCER_CC1E;
//             }
//             else if (err_roll < -ROLL_THRESH)
//             {
//                 HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);  // reset DIR
//                 TIM3->CCER |= TIM_CCER_CC1E;
//             }
//             else
//             {
//                 TIM3->CCER &= ~TIM_CCER_CC1E;
//             }

//             // // Handle positive and negative errors separately without abs()
//             // if (err_roll > ROLL_THRESH) {
//             //     // Positive error - rotate one direction
//             //     uint16_t psc_value;
//             //     int16_t effective_error = err_roll - ROLL_THRESH;
                
//             //     if (effective_error >= (MAX_ROLL_ERROR - ROLL_THRESH)) {
//             //         psc_value = MIN_PSC; // Max speed
//             //     } else {
//             //         // Linear interpolation between MIN_PSC and MAX_PSC
//             //         psc_value = MAX_PSC - (effective_error * (MAX_PSC - MIN_PSC)) / 
//             //                     (MAX_ROLL_ERROR - ROLL_THRESH);
//             //     }
                
//             //     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_RESET); // Direction 1
//             //     TIM3->PSC = psc_value;
//             //     TIM3->CCER |= TIM_CCER_CC1E; // Enable PWM
//             //     TIM3->EGR = TIM_EGR_UG; // Force timer reload
//             // } 
//             // else if (err_roll < -ROLL_THRESH) {
//             //     // Negative error - rotate opposite direction
//             //     uint16_t psc_value;
//             //     int16_t effective_error = -err_roll - ROLL_THRESH;
                
//             //     if (effective_error >= (MAX_ROLL_ERROR - ROLL_THRESH)) {
//             //         psc_value = MIN_PSC; // Max speed
//             //     } else {
//             //         // Linear interpolation between MIN_PSC and MAX_PSC
//             //         psc_value = MAX_PSC - (effective_error * (MAX_PSC - MIN_PSC)) / 
//             //                     (MAX_ROLL_ERROR - ROLL_THRESH);
//             //     }
                
//             //     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_SET); // Direction 0
//             //     TIM3->PSC = psc_value;
//             //     TIM3->CCER |= TIM_CCER_CC1E; // Enable PWM
//             //     TIM3->EGR = TIM_EGR_UG; // Force timer reload
//             // }
//             // else if (err_roll > DEADBAND) {
//             //     // Small positive error - slowest speed
//             //     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_RESET);
//             //     TIM3->PSC = MAX_PSC;
//             //     TIM3->CCER |= TIM_CCER_CC1E;
//             //     TIM3->EGR = TIM_EGR_UG;
//             // }
//             // else if (err_roll < -DEADBAND) {
//             //     // Small negative error - slowest speed
//             //     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10, GPIO_PIN_SET);
//             //     TIM3->PSC = MAX_PSC;
//             //     TIM3->CCER |= TIM_CCER_CC1E;
//             //     TIM3->EGR = TIM_EGR_UG;
//             // }
//             // else {
//             //     // Within deadband - stop motor
//             //     TIM3->CCER &= ~TIM_CCER_CC1E;
//             // }        
//         }
        

//         HAL_Delay(2); // Delay
//     }
// }

// void parse_rot_vec(uint16_t *qi, uint16_t *qj, uint16_t *qk, uint16_t *qr, uint8_t *pData, uint16_t len)
//  {
//     if (len >= 21 && pData[0] == 0x17 && pData[1] == 0 && pData[4] == 0xFB && pData[9] == 0x05)
//     {
//         *qi = (pData[14] << 8) | pData[13];
//         *qj = (pData[16] << 8) | pData[15];
//         *qk = (pData[18] << 8) | pData[17];
//         *qr = (pData[20] << 8) | pData[19];
//     }
//  }


//  void bno085_tare_orientation(I2C_HandleTypeDef *hi2c2)
//  {
//     uint8_t BNO085_TARE_NOW_CMD[16] = {
//         0x10,                   // Length LSB (16 bytes total)
//         0x00,                   // Length MSB
//         0x02,                   // Channel: sensor hub control
//         0x00,                   // Sequence number
//         0xF2,                   // Command Request
//         0x00,                   // Sequence number (for command)
//         0x03,                   // Tare Command (0x03)
//         0x00,                   // Subcommand: Tare Now (0x00)
//         0x07,                   // Tare all axes (X, Y, Z)
//         0x00,                   // Rotation Vector (0x00)
//         0x00, 0x00, 0x00, 0x00, // Reserved (set to 0)
//         0x00, 0x00, 0x00        // Reserved (set to 0)
//     };
    
//     uint8_t BNO085_PERSIST_TARE_CMD[16] = {
//         0x10,                   // Length LSB (16 bytes total)
//         0x00,                   // Length MSB
//         0x02,                   // Channel: sensor hub control
//         0x00,                   // Sequence number
//         0xF2,                   // Command Request
//         0x00,                   // Sequence number (for command)
//         0x03,                   // Tare Command (0x03)
//         0x01,                   // Subcommand: Persist Tare (0x01)
//         0x00,                   // Reserved (set to 0)
//         0x00,                   // Reserved (set to 0)
//         0x00, 0x00, 0x00, 0x00, // Reserved (set to 0)
//         0x00, 0x00, 0x00        // Reserved (set to 0)
//     };
    

//      // Tell the IMU to treat its current orientation as the new zero orientation
//      HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_TARE_NOW_CMD, sizeof(BNO085_TARE_NOW_CMD), 100);
     
//      // Tell the IMU to save this orientation adjustment for use at next system restart
//      HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_PERSIST_TARE_CMD, sizeof(BNO085_PERSIST_TARE_CMD), 100);


//     //  uint8_t set_reorientation_cmd[] = {
//     //     0xF2,                     // Report ID
//     //     0x00,                     // Sequence number (fill in as needed)
//     //     0x03,                     // Command ID: Tare Command
//     //     0x02,                     // P0: Set Reorientation
    
//     //     (uint8_t)(qi_target & 0xFF),        // P1: X LSB
//     //     (uint8_t)(qi_target >> 8),          // P2: X MSB
    
//     //     (uint8_t)(qj_target & 0xFF),        // P3: Y LSB
//     //     (uint8_t)(qj_target >> 8),          // P4: Y MSB
    
//     //     (uint8_t)(qk_target & 0xFF),        // P5: Z LSB
//     //     (uint8_t)(qk_target >> 8),          // P6: Z MSB
    
//     //     (uint8_t)(qr_target & 0xFF),        // P7: W LSB
//     //     (uint8_t)(qr_target >> 8),          // P8: W MSB
//     // };
//     //     HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, set_reorientation_cmd, sizeof(set_reorientation_cmd), 100);

//  }
 