### Team Members
* Miles Bovero
* Lawrence Ponce
* Brian Stites
* Burke Dambly
  
# 2-Axis Gimbal System using BNO085 and TMC2209

This project implements a 2-axis gimbal system powered by NEMA 17 stepper motors, a custom TMC2209 stepper driver, and the BNO085 IMU, all controlled by an STM32F0 microcontroller. The system supports both **manual joystick control** and **automatic gimbal stabilization** using quaternion feedback from the IMU.


## Features

- **Automatic stabilization** using BNO085 quaternion output (Rotation Vector).
- **Manual override mode** via joystick input.
- **Custom driver logic** for TMC2209 stepper controllers (no libraries).
- **Status indication** using onboard LEDs:
  - 🟢 **Green**: System ready
  - 🟡 **Yellow**: Manual mode
  - 🔴 **Red**: Gimbal stabilization mode
 

## Hardware

- **Parts List** https://docs.google.com/spreadsheets/d/1ASUmAiZSFDpc-IezaZOCM-j6GSmX4DIoBAKoNAnrK8I/edit?gid=0#gid=0
- **BOM** https://docs.google.com/spreadsheets/d/1F1Fa0VNCSiJDzJphaV6HfyEmqR7Gyjhc7J4WnCEqq48/edit?usp=sharing

## Control Logic

- System starts in **gimbal mode**. The initial orientation is stored as the target.
- A button press toggles between **manual** and **gimbal** mode.
- In **manual mode**, the joystick directly sets direction and speed of the motors.
- In **gimbal mode**, real-time quaternion feedback from the IMU drives motors to minimize roll and yaw error.
- A secondary button (`PA0`) acts as a **kill switch**, freezing the system until reset.

## Project Structure

- `main.c` – Main loop, system initialization, and mode control logic.
- `bno085.c/h` – IMU I2C interface and quaternion parsing logic.
- `motor_control.c/h` – Low-level motor driver setup and PWM control for TIM2 and TIM3.
- `quaternion.c/h` – Roll and yaw error computation from quaternion deltas.
- `gimbal_controller.c/h` – Core application logic for managing gimbal behavior, mode switching, LED indicators, and overall control flow between manual and automatic stabilization.
- `joystick.c/h` – ADC interface for reading joystick analog input.

## Capabilities

- Real-time stabilization on **roll and yaw axes** using quaternion feedback from the BNO085 IMU.
- Smooth and responsive **manual control** through a 2-axis joystick.
- Intelligent speed scaling and jitter prevention based on calculated orientation error.
- Mode switching with hardware debouncing: easily toggle between manual and gimbal modes.
- Visual mode indication via red (manual) and yellow (gimbal) LEDs, and a green LED for system readiness.
- **Kill switch functionality** to safely disable the system at any time.

### Limitations

- The current mechanical setup limits **full-range roll rotation**. Due to the gimbal frame geometry, the roll axis cannot rotate completely while maintatining yaw logic without mechanical interference.
- All quaternion math is handled using **fixed-point arithmetic**, which prioritizes performance on the STM32F0 but limits precision.


## Setup

1. **Wiring:**
   - Connect SDA/SCL of BNO085 to I2C2 (`PB14`/`PB13`).
   - Connect joystick outputs to ADC pins (`PC3`/`PA3`).
   - Wire EN, STEP, DIR, MS1, MS2 of each TMC2209 to GPIOs as defined in `motor_control.c`.

2. **Flashing:**
   - Use Platformio in VS Code to Flash board.
   - Run `platformio run -e gimbal_controller -t upload` in the Platformio terminal.

3. **Start Sequence:**
   - Wait for the **green LED** to turn on (IMU ready).
   - Press joystick button to toggle modes.
   - Use the kill switch (`PA0`) to halt the system if needed.


## Notes
- Tare operations are handled at startup: the current orientation is set as the reference frame.
- Quaternion values are in **Q14 format** and processed using fixed-point arithmetic to avoid floating-point dependency.
