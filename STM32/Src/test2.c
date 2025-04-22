// #include <stm32f0xx_hal.h>
// #include "main.h"
// #include <assert.h>
// #include "hal_gpio.h"
// #include <string.h>



// void parse_rot_vec(int16_t *qi, int16_t *qj, int16_t *qk, int16_t *qr, uint8_t *pData, uint16_t len);

// void uart_send_string(const char *s) {
//     while (*s) {
//         uart_send_char(*s++);
//     }
// }

// void uart_print_int(UART_HandleTypeDef *huart, int16_t val) {
//     char buf[12]; // Enough for -32768 + space + \r\n + \0
//     int i = 0;
//     buf[i++] = ' ';
//     // Handle zero explicitly
//     if (val == 0) {
//         buf[i++] = '0';
//     } else {
//         if (val == -32768) {
//             // Special case to avoid overflow
//             const char *min_val = "-32768";
//             for (int j = 0; min_val[j]; ++j)
//                 buf[i++] = min_val[j];
//         } else {
//             if (val < 0) {
//                 buf[i++] = '-';
//                 val = -val;
//             }

//             int start = i;
//             while (val > 0 && i < sizeof(buf) - 4) {
//                 buf[i++] = '0' + (val % 10);
//                 val /= 10;
//             }

//             // Reverse digits
//             for (int j = start, k = i - 1; j < k; ++j, --k) {
//                 char tmp = buf[j];
//                 buf[j] = buf[k];
//                 buf[k] = tmp;
//             }
//         }
//     }

//     buf[i++] = ' ';
//     buf[i++] = '\r';
//     buf[i++] = '\n';
//     HAL_UART_Transmit(huart, (uint8_t*)buf, i, 10);
// }

// uint8_t BNO085_PERSIST_TARE_CMD[16] = {
//     0x10,                   // Length LSB (16 bytes total)
//     0x00,                   // Length MSB
//     0x02,                   // Channel: sensor hub control
//     0x00,                   // Sequence number
//     0xF2,                   // Command Request
//     0x00,                   // Sequence number (for command)
//     0x03,                   // Tare Command (0x03)
//     0x01,                   // Subcommand: Persist Tare (0x01)
//     0x00,                   // Reserved (set to 0)
//     0x00,                   // Reserved (set to 0)
//     0x00, 0x00, 0x00, 0x00, // Reserved (set to 0)
//     0x00, 0x00              // Reserved (set to 0)
// };


// // Constants
// #define BNO08X_I2C_ADDR    (0x4A << 1)  // 7-bit I2C address shifted for HAL
// #define Q_SHIFT            14
// #define ROLL_THRESH        200        // Threshold to start moving
// #define PITCH_THRESH       200        // Threshold to start moving
// #define MAX_ROLL_ERROR     5000        // Error at max speed
// #define MIN_PSC            999           // Fastest speed (higher PWM frequency)
// #define MAX_PSC            30           // Slowest speed
// #define DEADBAND           1750         // Error range where motor stops

// #define YAW_THRESH         1500

// // Target quaternion (initialized on first reading)
// uint16_t qi_target = 0, qj_target = 0, qk_target = 0, qr_target = 0;
// uint8_t target_init = 0;


// // I2C handle for I2C2
// I2C_HandleTypeDef hi2c2;

// // --- Helper: Compute sin(angle) error for roll/pitch/yaw ---
// int16_t compute_roll_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck,
//     int16_t tr, int16_t ti, int16_t tj, int16_t tk) {
// // Flip sign if needed for shortest path
// if ((int32_t)cr * tr + (int32_t)ci * ti + (int32_t)cj * tj + (int32_t)ck * tk < 0) {
// tr = -tr; ti = -ti; tj = -tj; tk = -tk;
// }

// // Rotate into relative quaternion: q_rel = q_cur⁻¹ * q_tar
// int32_t rr = (cr * tr + ci * ti + cj * tj + ck * tk) >> Q_SHIFT;
// int32_t ri = (-cr * ti + ci * tr - cj * tk + ck * tj) >> Q_SHIFT;
// // We only care about roll (i-axis), so just use relative r and i

// // Approximate roll angle: sin(roll) ≈ 2 * r * i
// return (int16_t)((2 * rr * ri) >> Q_SHIFT);
// }

// int16_t get_roll_deg(int16_t cr, int16_t ci, int16_t cj, int16_t ck,
//     int16_t tr, int16_t ti, int16_t tj, int16_t tk)
// {
// // Flip signs if dot product is negative
// int32_t dot = (int32_t)cr * tr + (int32_t)ci * ti +
//  (int32_t)cj * tj + (int32_t)ck * tk;
// if (dot < 0) {
// tr = -tr; ti = -ti; tj = -tj; tk = -tk;
// }

// // q_rel = q_current * inverse(q_target)
// int32_t rr = (cr * tr + ci * ti + cj * tj + ck * tk) >> Q_SHIFT;
// int32_t ri = (-cr * ti + ci * tr - cj * tk + ck * tj) >> Q_SHIFT;

// // Use sin(θ) ≈ 2 * r * i
// int32_t sin_val = (2 * rr * ri) >> Q_SHIFT;

// // Small angle approx: θ ≈ sin(θ), so angle in radians (Q14)
// // Convert to degrees: (angle_rad * 180 / π) >> Q_SHIFT
// // Precomputed constant: 180/π ≈ 23456 in Q14
// int32_t angle = (sin_val * 23456) >> Q_SHIFT;

// return (int16_t)angle; // degrees
// }


// int16_t compute_yaw_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck,
//     int16_t tr, int16_t ti, int16_t tj, int16_t tk)
// {
// /*  sin(yaw)  ≃ 2 (r·k + i·j)  */
// int32_t sin_cur = ((int32_t)cr * ck + (int32_t)ci * cj) >> (Q_SHIFT - 1);
// int32_t sin_tar = ((int32_t)tr * tk + (int32_t)ti * tj) >> (Q_SHIFT - 1);

// /*  cos(yaw)  ≃ 1 – 2 (j² + k²)
// = r² + i² – j² – k² for unit quaternions                           */
// int32_t cos_cur = ((int32_t)cr * cr + (int32_t)ci * ci
// - (int32_t)cj * cj - (int32_t)ck * ck) >> Q_SHIFT;
// int32_t cos_tar = ((int32_t)tr * tr + (int32_t)ti * ti
// - (int32_t)tj * tj - (int32_t)tk * tk) >> Q_SHIFT;

// /*  sin(Δψ) = sin_cur·cos_tar – sin_tar·cos_cur  */
// return (int16_t)((sin_cur * cos_tar - sin_tar * cos_cur) >> Q_SHIFT);
// }


// /*  Fixed‑point pitch error (about the Y axis) */
// int16_t compute_pitch_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck,
//     int16_t tr, int16_t ti, int16_t tj, int16_t tk)
// {
// /*  sin(pitch) ≃ 2 (r·j – k·i)  */
// int32_t sin_cur = ((int32_t)cr * cj - (int32_t)ck * ci) >> (Q_SHIFT - 1);
// int32_t sin_tar = ((int32_t)tr * tj - (int32_t)tk * ti) >> (Q_SHIFT - 1);

// /*  cos(pitch) ≃ 1 – 2 (j² + k²)
// = r² + i² – j² – k² for unit quaternions                           */
// int32_t cos_cur = ((int32_t)cr * cr + (int32_t)ci * ci
// - (int32_t)cj * cj - (int32_t)ck * ck) >> Q_SHIFT;
// int32_t cos_tar = ((int32_t)tr * tr + (int32_t)ti * ti
// - (int32_t)tj * tj - (int32_t)tk * tk) >> Q_SHIFT;

// /*  sin(Δθ) = sin_cur·cos_tar – sin_tar·cos_cur  */
// return (int16_t)((sin_cur * cos_tar - sin_tar * cos_cur) >> Q_SHIFT);
// }


// int test(void) {
//      // 1) Initialize HAL (SysTick etc.)
//      HAL_Init();

//      // 2) Enable GPIOC, GPIOB, and TIM3 clocks
//      __HAL_RCC_GPIOA_CLK_ENABLE();
//      __HAL_RCC_GPIOC_CLK_ENABLE();
//      __HAL_RCC_GPIOB_CLK_ENABLE();
//      __HAL_RCC_TIM3_CLK_ENABLE();
//      __HAL_RCC_TIM2_CLK_ENABLE();
//      __HAL_RCC_USART1_CLK_ENABLE();

 
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
//      TIM3->PSC    = 299;  // 8MHz/(79+1) = 100kHz timer clock
//      TIM3->ARR    = 99;  // 100kHz/(99+1) = 1kHz PWM
//      // PWM Mode1 on CH1, preload enable
//      TIM3->CCMR1 &= ~TIM_CCMR1_OC1M;
//      TIM3->CCMR1 |= (6U << TIM_CCMR1_OC1M_Pos) | TIM_CCMR1_OC1PE;
//      // 50% duty: CCR1 = (ARR+1)/2
//      TIM3->CCR1   = (TIM3->ARR + 1U) >> 1;
//      // Enable CH1 output, start counter
     
//      TIM3->CR1 |= 1;
  
     
//      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);   // set MS2
//      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET); // toggle MS1
//      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, GPIO_PIN_RESET); // clear ENABLE
//      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);  // set DIR
     
//      // ----------------------- motor 2 ------------------
//      // --- Configure PB10 for PWM (TIM2_CH3) using HAL ---
//      GPIO_InitTypeDef GPIO_InitStruct2 = {0};
//      GPIO_InitStruct2.Pin       = GPIO_PIN_10;
//      GPIO_InitStruct2.Mode      = GPIO_MODE_AF_PP;
//      GPIO_InitStruct2.Pull      = GPIO_NOPULL;
//      GPIO_InitStruct2.Speed     = GPIO_SPEED_FREQ_LOW;
//      GPIO_InitStruct2.Alternate = GPIO_AF2_TIM2; 
//      HAL_GPIO_Init(GPIOB, &GPIO_InitStruct2);
     
//      // --- Configure PB1-MS1, PB0-MS2, PB2-DIR as digital outputs via HAL ---
//      GPIO_InitStruct2.Pin   = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2;
//      GPIO_InitStruct2.Mode  = GPIO_MODE_OUTPUT_PP;
//      GPIO_InitStruct2.Pull  = GPIO_NOPULL;
//      GPIO_InitStruct2.Speed = GPIO_SPEED_FREQ_LOW;
//      HAL_GPIO_Init(GPIOB, &GPIO_InitStruct2);

//      // PC5-ENN
//      GPIO_InitStruct2.Pin   = GPIO_PIN_5;
//      GPIO_InitStruct2.Mode  = GPIO_MODE_OUTPUT_PP;
//      GPIO_InitStruct2.Pull  = GPIO_PULLDOWN;
//      GPIO_InitStruct2.Speed = GPIO_SPEED_FREQ_LOW;
//      HAL_GPIO_Init(GPIOC, &GPIO_InitStruct2);


//      HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_RESET);   // set MS2
//      HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_SET); // toggle MS1
//      HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5, GPIO_PIN_RESET); // clear ENABLE
//      HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_SET);  // set DIR


     
//      // Timer2 PWM bitwise setup for PB10 (1 kHz, 50% duty)
//      TIM2->PSC    = 299;  // 8MHz/(79+1) = 100kHz timer clock
//      TIM2->ARR    = 49;  // 100kHz/(99+1) = 1kHz PWM
//      // PWM Mode1 on CH3, preload enable
//      TIM2->CCMR2 &= ~TIM_CCMR2_OC3M;
//      TIM2->CCMR2 |= (6U << TIM_CCMR2_OC3M_Pos) | TIM_CCMR2_OC3PE;
//      // 50% duty: CCR1 = (ARR+1)/2
//      TIM2->CCR3   = (TIM2->ARR + 1U) >> 1;
//      // Enable CH3 output, start counter
     
//      TIM2->CR1 |= 1;


//     UART_HandleTypeDef huart1;


//      GPIO_InitTypeDef GPIO_InitStruct3 = {0};
//      GPIO_InitStruct3.Pin = GPIO_PIN_9 | GPIO_PIN_10;
//      GPIO_InitStruct3.Mode = GPIO_MODE_AF_PP;
//      GPIO_InitStruct3.Pull = GPIO_NOPULL;
//      GPIO_InitStruct3.Speed = GPIO_SPEED_FREQ_HIGH;
//      GPIO_InitStruct3.Alternate = GPIO_AF1_USART1; // AF1 for USART1 on PA9/PA10
//      HAL_GPIO_Init(GPIOA, &GPIO_InitStruct3); 

//      huart1.Instance = USART1;
//      huart1.Init.BaudRate = 9600;
//      huart1.Init.WordLength = UART_WORDLENGTH_8B;
//      huart1.Init.StopBits = UART_STOPBITS_1;
//      huart1.Init.Parity = UART_PARITY_NONE;
//      huart1.Init.Mode = UART_MODE_TX_RX;
//      huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
//      huart1.Init.OverSampling = UART_OVERSAMPLING_16;

//      HAL_UART_Init(&huart1);



    

//     GPIO_InitTypeDef initStrPB14 = {GPIO_PIN_14, GPIO_MODE_AF_OD, GPIO_PULLUP, GPIO_SPEED_FREQ_LOW, GPIO_AF5_I2C2};
//     My_HAL_GPIO_Init(GPIOB, &initStrPB14); // Initialize pin PB14 as I2C2_SDA with an internal pull-up resistor // 14 as tx

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

      
    
//     bno085_clear_and_retare(&hi2c2);
//     HAL_Delay(100);
//     //bno085_tare_orientation(&hi2c2);
    
//     HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, 1);


//     //---------------------------------------------------------------------------
//     // MAIN----------------------------------------------------------------------
//     //---------------------------------------------------------------------------

//     static int loop_counter = 0;
//     while (1)
//     {
//         uint8_t data[32];
//         int16_t qi, qj, qk, qr;
        
//         HAL_StatusTypeDef i2c_status = HAL_I2C_Master_Receive(&hi2c2, 0x4A << 1, data, sizeof(data), HAL_MAX_DELAY);
//         if (i2c_status != HAL_OK)
//         {
//             TIM3->CCER &= ~TIM_CCER_CC1E;
//             TIM2->CCER &= ~TIM_CCER_CC3E;
//             continue;
//         }

//         parse_rot_vec(&qi, &qj, &qk, &qr, data, sizeof(data));

//         if (!target_init) { 
            
//             //bno085_tare_orientation(&hi2c2);
//             //HAL_Delay(20);
//             qi_target = qi;
//             qj_target = qj;
//             qk_target = qk;
//             qr_target = qr;
            
//             //target_init--;
//             target_init = 1;
//         }
//         else {

//             // current quaternion (Q1.4)
//             int16_t ci = (int16_t)qi;
//             int16_t cj = (int16_t)qj;
//             int16_t ck = (int16_t)qk;
//             int16_t cr = (int16_t)qr;
        
//             // target quaternion (Q1.14)
//             int16_t ti = (int16_t)qi_target;
//             int16_t tj = (int16_t)qj_target;
//             int16_t tk = (int16_t)qk_target;
//             int16_t tr = (int16_t)qr_target;
        
//             // Compute errors
//             int16_t err_roll  = compute_roll_error(cr, ci, cj, ck, tr, ti, tj, tk);
//             int16_t err_yaw  = compute_yaw_error(cr, ci, cj, ck, tr, ti, tj, tk);
//             int16_t err_pitch  = compute_pitch_error(cr, ci, cj, ck, tr, ti, tj, tk);
//             int16_t roll_out  = get_roll_deg(cr, ci, cj, ck, tr, ti, tj, tk);

//             // char msg[32];
//             // snprintf(msg, sizeof(msg), "err_roll: %d\r\n", err_roll);
//             // HAL_UART_Transmit(&huart1, (uint8_t*)msg, strlen(msg), HAL_MAX_DELAY);

            
//             if (++loop_counter >= 300) {
//                 uart_print_int(&huart1, roll_out);
//                 loop_counter = 0;
//             }
               
           

//             // if((err_yaw >  200) )
//             // {   
//             //     TIM3->PSC = 150;
//             //     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);  // set DIR
//             //     TIM3->CCER |= TIM_CCER_CC1E;
//             // }
//             // else if ((err_yaw < -200) )
//             // {   
//             //     TIM3->PSC = 150;
//             //     HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_RESET);  // reset DIR
//             //     TIM3->CCER |= TIM_CCER_CC1E;
//             // }
//             // else
//             // {
//             //     TIM3->CCER &= ~TIM_CCER_CC1E;
//             // }



            
//             if(err_roll >  200)
//             { 
                

//                 TIM2->PSC = 80;
//                 HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET);  // set DIR
//                 TIM2->CCER |= TIM_CCER_CC3E;
//             }
            
//            else if(err_roll < -200)
//             {
//                 TIM2->PSC = 80;
//                 HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_SET);  // reverse DIR
//                 TIM2->CCER |= TIM_CCER_CC3E;
//             }

//             else
//             {   
                
//                 TIM2->CCER &= ~TIM_CCER_CC3E;
//             }
      
//         }
        

//         HAL_Delay(2); // Delay
//     }
// }

// void parse_rot_vec(int16_t *qi, int16_t *qj, int16_t *qk, int16_t *qr, uint8_t *pData, uint16_t len)
//  {
//     if (len >= 21 && pData[0] == 0x17 && pData[1] == 0 && pData[4] == 0xFB && pData[9] == 0x05)
//     {
//         *qi = (int16_t)((pData[14] << 8) | pData[13]);
//         *qj = (int16_t)((pData[16] << 8) | pData[15]);
//         *qk = (int16_t)((pData[18] << 8) | pData[17]);
//         *qr = (int16_t)((pData[20] << 8) | pData[19]);
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
//         0x00, 0x00              // Reserved (set to 0)
//     };
    
    

//      // Tell the IMU to treat its current orientation as the new zero orientation
//      HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_TARE_NOW_CMD, sizeof(BNO085_TARE_NOW_CMD), 100);
     
//     //  // Tell the IMU to save this orientation adjustment for use at next system restart
//     //  HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, BNO085_PERSIST_TARE_CMD, sizeof(BNO085_PERSIST_TARE_CMD), 100);

//  }

//  void bno085_clear_and_retare(I2C_HandleTypeDef *hi2c2)
// {
//     uint8_t clear_tare_cmd[16] = {
//         0x10, 0x00, 0x02, 0x00,
//         0xF2, 0x00,
//         0x03, 0x02,  // Subcommand: Clear Tare (0x02)
//         0x00, 0x00,
//         0x00, 0x00, 0x00, 0x00,
//         0x00, 0x00, 0x00
//     };

//     HAL_I2C_Master_Transmit(hi2c2, BNO08X_I2C_ADDR, clear_tare_cmd, sizeof(clear_tare_cmd), 100);
//     HAL_Delay(50);  // Give time for clear

//     //bno085_tare_orientation(hi2c2);  // Re-tare at current orientation
// }
 