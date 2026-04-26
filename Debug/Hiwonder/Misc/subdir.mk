################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/Misc/checksum.c \
../Hiwonder/Misc/log.c \
../Hiwonder/Misc/packet.c \
../Hiwonder/Misc/pid.c \
../Hiwonder/Misc/sbus.c \
../Hiwonder/Misc/syscall.c 

OBJS += \
./Hiwonder/Misc/checksum.o \
./Hiwonder/Misc/log.o \
./Hiwonder/Misc/packet.o \
./Hiwonder/Misc/pid.o \
./Hiwonder/Misc/sbus.o \
./Hiwonder/Misc/syscall.o 

C_DEPS += \
./Hiwonder/Misc/checksum.d \
./Hiwonder/Misc/log.d \
./Hiwonder/Misc/packet.d \
./Hiwonder/Misc/pid.d \
./Hiwonder/Misc/sbus.d \
./Hiwonder/Misc/syscall.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/Misc/%.o Hiwonder/Misc/%.su Hiwonder/Misc/%.cyclo: ../Hiwonder/Misc/%.c Hiwonder/Misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Hiwonder/Chassis -I../Hiwonder/Misc -I../Hiwonder/Peripherals -I../Hiwonder/Portings -I../Hiwonder/System -I../Hiwonder/USB_HOST -I../Third_Party/Fusion/Fusion -I../Third_Party/Lw -I../Third_Party/RTT -I../Third_Party/U8g2 -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-Misc

clean-Hiwonder-2f-Misc:
	-$(RM) ./Hiwonder/Misc/checksum.cyclo ./Hiwonder/Misc/checksum.d ./Hiwonder/Misc/checksum.o ./Hiwonder/Misc/checksum.su ./Hiwonder/Misc/log.cyclo ./Hiwonder/Misc/log.d ./Hiwonder/Misc/log.o ./Hiwonder/Misc/log.su ./Hiwonder/Misc/packet.cyclo ./Hiwonder/Misc/packet.d ./Hiwonder/Misc/packet.o ./Hiwonder/Misc/packet.su ./Hiwonder/Misc/pid.cyclo ./Hiwonder/Misc/pid.d ./Hiwonder/Misc/pid.o ./Hiwonder/Misc/pid.su ./Hiwonder/Misc/sbus.cyclo ./Hiwonder/Misc/sbus.d ./Hiwonder/Misc/sbus.o ./Hiwonder/Misc/sbus.su ./Hiwonder/Misc/syscall.cyclo ./Hiwonder/Misc/syscall.d ./Hiwonder/Misc/syscall.o ./Hiwonder/Misc/syscall.su

.PHONY: clean-Hiwonder-2f-Misc

