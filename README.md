# ECE5780_2-Axis_Gimbal
### Team Members
* Miles Bovero
* Lawrence Ponce
* Brian Stites
* Burke Dambly
  
# 2-Axis Gimbal System using BNO085 and TMC2209

This project implements a 2-axis gimbal system powered by NEMA 17 stepper motors, a custom STM32F0-based driver, and the BNO085 IMU. The system supports both **manual joystick control** and **automatic gimbal stabilization** using quaternion feedback from the IMU.

## Features

- **Automatic stabilization** using BNO085 quaternion output (Rotation Vector).
- **Manual override mode** via joystick input.
- **Custom driver logic** for TMC2209 stepper controllers (no libraries).
- **Status indication** using onboard LEDs:
  - 🟢 **Green**: System ready
  - 🔴 **Red**: Gimbal stabilization mode
  - 🟡 **Yellow**: Manual Mode

## Hardware

- STM32F0 microcontroller
- 2 × NEMA 17 stepper motors
- 2 × TMC2209 stepper drivers (custom configured)
- BNO085 IMU (I2C communication)
- 1 × Joystick module (2-axis with button)
- GPIO-connected LED indicators

## Control Logic

- System starts in **gimbal mode**. The initial orientation is stored as the target.
- A button press toggles between **manual** and **gimbal** mode.
- In **manual mode**, the joystick directly sets direction and speed of the motors.
- In **gimbal mode**, real-time quaternion feedback from the IMU drives motors to minimize roll and yaw error.
- A secondary button (PA0) acts as a **kill switch**, freezing the system until reset.

## Project Structure

- `main.c` – Main loop, system initialization, and mode control logic.
- `bno085.c/h` – IMU I2C interface and quaternion parsing logic.
- `motor_control.c/h` – Low-level motor driver setup and PWM control for TIM2 and TIM3.
- `quaternion.c/h` – Roll and yaw error computation from quaternion deltas.
- `joystick.c/h` – ADC interface for reading joystick analog input.

## Setup

1. **Wiring:**
   - Connect SDA/SCL of BNO085 to I2C2 (PB14/PB13).
   - Connect joystick outputs to ADC pins (PC3/PA3).
   - Wire EN, STEP, DIR, MS1, MS2 of each TMC2209 to GPIOs as defined in `motor_control.c`.

2. **Flashing:**
   - Use Platformio in VS Code to Flash board.
   - Make sure to set `PB3` as a status LED; it will blink on I2C failure.

3. **Start Sequence:**
   - Wait for the **green LED** to turn on (IMU ready).
   - Press joystick button to toggle modes.
   - Use the kill switch (PA0) to halt the system if needed.


## Notes
- Tare operations are handled at startup: the current orientation is set as the reference frame.
- Quaternion values are in **Q14 format** and processed using fixed-point arithmetic to avoid floating-point dependency.
- IMU communication is verified using product ID and feature request loops during initialization.
