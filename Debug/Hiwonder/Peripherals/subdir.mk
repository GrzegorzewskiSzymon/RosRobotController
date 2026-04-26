################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/Peripherals/QMI8658.c \
../Hiwonder/Peripherals/button.c \
../Hiwonder/Peripherals/buzzer.c \
../Hiwonder/Peripherals/encoder_motor.c \
../Hiwonder/Peripherals/key.c \
../Hiwonder/Peripherals/led.c \
../Hiwonder/Peripherals/pwm_servo.c \
../Hiwonder/Peripherals/rgb_spi.c \
../Hiwonder/Peripherals/serial_servo.c 

OBJS += \
./Hiwonder/Peripherals/QMI8658.o \
./Hiwonder/Peripherals/button.o \
./Hiwonder/Peripherals/buzzer.o \
./Hiwonder/Peripherals/encoder_motor.o \
./Hiwonder/Peripherals/key.o \
./Hiwonder/Peripherals/led.o \
./Hiwonder/Peripherals/pwm_servo.o \
./Hiwonder/Peripherals/rgb_spi.o \
./Hiwonder/Peripherals/serial_servo.o 

C_DEPS += \
./Hiwonder/Peripherals/QMI8658.d \
./Hiwonder/Peripherals/button.d \
./Hiwonder/Peripherals/buzzer.d \
./Hiwonder/Peripherals/encoder_motor.d \
./Hiwonder/Peripherals/key.d \
./Hiwonder/Peripherals/led.d \
./Hiwonder/Peripherals/pwm_servo.d \
./Hiwonder/Peripherals/rgb_spi.d \
./Hiwonder/Peripherals/serial_servo.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/Peripherals/%.o Hiwonder/Peripherals/%.su Hiwonder/Peripherals/%.cyclo: ../Hiwonder/Peripherals/%.c Hiwonder/Peripherals/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Hiwonder/Chassis -I../Hiwonder/Misc -I../Hiwonder/Peripherals -I../Hiwonder/Portings -I../Hiwonder/System -I../Hiwonder/USB_HOST -I../Third_Party/Fusion/Fusion -I../Third_Party/Lw -I../Third_Party/RTT -I../Third_Party/U8g2 -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-Peripherals

clean-Hiwonder-2f-Peripherals:
	-$(RM) ./Hiwonder/Peripherals/QMI8658.cyclo ./Hiwonder/Peripherals/QMI8658.d ./Hiwonder/Peripherals/QMI8658.o ./Hiwonder/Peripherals/QMI8658.su ./Hiwonder/Peripherals/button.cyclo ./Hiwonder/Peripherals/button.d ./Hiwonder/Peripherals/button.o ./Hiwonder/Peripherals/button.su ./Hiwonder/Peripherals/buzzer.cyclo ./Hiwonder/Peripherals/buzzer.d ./Hiwonder/Peripherals/buzzer.o ./Hiwonder/Peripherals/buzzer.su ./Hiwonder/Peripherals/encoder_motor.cyclo ./Hiwonder/Peripherals/encoder_motor.d ./Hiwonder/Peripherals/encoder_motor.o ./Hiwonder/Peripherals/encoder_motor.su ./Hiwonder/Peripherals/key.cyclo ./Hiwonder/Peripherals/key.d ./Hiwonder/Peripherals/key.o ./Hiwonder/Peripherals/key.su ./Hiwonder/Peripherals/led.cyclo ./Hiwonder/Peripherals/led.d ./Hiwonder/Peripherals/led.o ./Hiwonder/Peripherals/led.su ./Hiwonder/Peripherals/pwm_servo.cyclo ./Hiwonder/Peripherals/pwm_servo.d ./Hiwonder/Peripherals/pwm_servo.o ./Hiwonder/Peripherals/pwm_servo.su ./Hiwonder/Peripherals/rgb_spi.cyclo ./Hiwonder/Peripherals/rgb_spi.d ./Hiwonder/Peripherals/rgb_spi.o ./Hiwonder/Peripherals/rgb_spi.su ./Hiwonder/Peripherals/serial_servo.cyclo ./Hiwonder/Peripherals/serial_servo.d ./Hiwonder/Peripherals/serial_servo.o ./Hiwonder/Peripherals/serial_servo.su

.PHONY: clean-Hiwonder-2f-Peripherals

