################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/Portings/IIC.c \
../Hiwonder/Portings/button_porting.c \
../Hiwonder/Portings/buzzer_porting.c \
../Hiwonder/Portings/chassis_porting.c \
../Hiwonder/Portings/imu_porting.c \
../Hiwonder/Portings/led_porting.c \
../Hiwonder/Portings/lwmem_porting.c \
../Hiwonder/Portings/motor_porting.c \
../Hiwonder/Portings/packet_porting.c \
../Hiwonder/Portings/pwm_servo_porting.c \
../Hiwonder/Portings/sbus_porting.c \
../Hiwonder/Portings/serial_servo_porting.c \
../Hiwonder/Portings/u8g2_porting.c 

OBJS += \
./Hiwonder/Portings/IIC.o \
./Hiwonder/Portings/button_porting.o \
./Hiwonder/Portings/buzzer_porting.o \
./Hiwonder/Portings/chassis_porting.o \
./Hiwonder/Portings/imu_porting.o \
./Hiwonder/Portings/led_porting.o \
./Hiwonder/Portings/lwmem_porting.o \
./Hiwonder/Portings/motor_porting.o \
./Hiwonder/Portings/packet_porting.o \
./Hiwonder/Portings/pwm_servo_porting.o \
./Hiwonder/Portings/sbus_porting.o \
./Hiwonder/Portings/serial_servo_porting.o \
./Hiwonder/Portings/u8g2_porting.o 

C_DEPS += \
./Hiwonder/Portings/IIC.d \
./Hiwonder/Portings/button_porting.d \
./Hiwonder/Portings/buzzer_porting.d \
./Hiwonder/Portings/chassis_porting.d \
./Hiwonder/Portings/imu_porting.d \
./Hiwonder/Portings/led_porting.d \
./Hiwonder/Portings/lwmem_porting.d \
./Hiwonder/Portings/motor_porting.d \
./Hiwonder/Portings/packet_porting.d \
./Hiwonder/Portings/pwm_servo_porting.d \
./Hiwonder/Portings/sbus_porting.d \
./Hiwonder/Portings/serial_servo_porting.d \
./Hiwonder/Portings/u8g2_porting.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/Portings/%.o Hiwonder/Portings/%.su Hiwonder/Portings/%.cyclo: ../Hiwonder/Portings/%.c Hiwonder/Portings/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Hiwonder/Chassis -I../Hiwonder/Misc -I../Hiwonder/Peripherals -I../Hiwonder/Portings -I../Hiwonder/System -I../Hiwonder/USB_HOST -I../Third_Party/Fusion/Fusion -I../Third_Party/Lw -I../Third_Party/RTT -I../Third_Party/U8g2 -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-Portings

clean-Hiwonder-2f-Portings:
	-$(RM) ./Hiwonder/Portings/IIC.cyclo ./Hiwonder/Portings/IIC.d ./Hiwonder/Portings/IIC.o ./Hiwonder/Portings/IIC.su ./Hiwonder/Portings/button_porting.cyclo ./Hiwonder/Portings/button_porting.d ./Hiwonder/Portings/button_porting.o ./Hiwonder/Portings/button_porting.su ./Hiwonder/Portings/buzzer_porting.cyclo ./Hiwonder/Portings/buzzer_porting.d ./Hiwonder/Portings/buzzer_porting.o ./Hiwonder/Portings/buzzer_porting.su ./Hiwonder/Portings/chassis_porting.cyclo ./Hiwonder/Portings/chassis_porting.d ./Hiwonder/Portings/chassis_porting.o ./Hiwonder/Portings/chassis_porting.su ./Hiwonder/Portings/imu_porting.cyclo ./Hiwonder/Portings/imu_porting.d ./Hiwonder/Portings/imu_porting.o ./Hiwonder/Portings/imu_porting.su ./Hiwonder/Portings/led_porting.cyclo ./Hiwonder/Portings/led_porting.d ./Hiwonder/Portings/led_porting.o ./Hiwonder/Portings/led_porting.su ./Hiwonder/Portings/lwmem_porting.cyclo ./Hiwonder/Portings/lwmem_porting.d ./Hiwonder/Portings/lwmem_porting.o ./Hiwonder/Portings/lwmem_porting.su ./Hiwonder/Portings/motor_porting.cyclo ./Hiwonder/Portings/motor_porting.d ./Hiwonder/Portings/motor_porting.o ./Hiwonder/Portings/motor_porting.su ./Hiwonder/Portings/packet_porting.cyclo ./Hiwonder/Portings/packet_porting.d ./Hiwonder/Portings/packet_porting.o ./Hiwonder/Portings/packet_porting.su ./Hiwonder/Portings/pwm_servo_porting.cyclo ./Hiwonder/Portings/pwm_servo_porting.d ./Hiwonder/Portings/pwm_servo_porting.o ./Hiwonder/Portings/pwm_servo_porting.su ./Hiwonder/Portings/sbus_porting.cyclo ./Hiwonder/Portings/sbus_porting.d ./Hiwonder/Portings/sbus_porting.o ./Hiwonder/Portings/sbus_porting.su ./Hiwonder/Portings/serial_servo_porting.cyclo ./Hiwonder/Portings/serial_servo_porting.d ./Hiwonder/Portings/serial_servo_porting.o ./Hiwonder/Portings/serial_servo_porting.su ./Hiwonder/Portings/u8g2_porting.cyclo ./Hiwonder/Portings/u8g2_porting.d ./Hiwonder/Portings/u8g2_porting.o ./Hiwonder/Portings/u8g2_porting.su

.PHONY: clean-Hiwonder-2f-Portings

