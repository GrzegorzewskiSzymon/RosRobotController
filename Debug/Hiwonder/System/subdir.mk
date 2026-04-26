################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hiwonder/System/app.c \
../Hiwonder/System/battery_handle.c \
../Hiwonder/System/oled_handle.c \
../Hiwonder/System/packet_handle.c 

OBJS += \
./Hiwonder/System/app.o \
./Hiwonder/System/battery_handle.o \
./Hiwonder/System/oled_handle.o \
./Hiwonder/System/packet_handle.o 

C_DEPS += \
./Hiwonder/System/app.d \
./Hiwonder/System/battery_handle.d \
./Hiwonder/System/oled_handle.d \
./Hiwonder/System/packet_handle.d 


# Each subdirectory must supply rules for building sources it contributes
Hiwonder/System/%.o Hiwonder/System/%.su Hiwonder/System/%.cyclo: ../Hiwonder/System/%.c Hiwonder/System/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Hiwonder/Chassis -I../Hiwonder/Misc -I../Hiwonder/Peripherals -I../Hiwonder/Portings -I../Hiwonder/System -I../Hiwonder/USB_HOST -I../Third_Party/Fusion/Fusion -I../Third_Party/Lw -I../Third_Party/RTT -I../Third_Party/U8g2 -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Hiwonder-2f-System

clean-Hiwonder-2f-System:
	-$(RM) ./Hiwonder/System/app.cyclo ./Hiwonder/System/app.d ./Hiwonder/System/app.o ./Hiwonder/System/app.su ./Hiwonder/System/battery_handle.cyclo ./Hiwonder/System/battery_handle.d ./Hiwonder/System/battery_handle.o ./Hiwonder/System/battery_handle.su ./Hiwonder/System/oled_handle.cyclo ./Hiwonder/System/oled_handle.d ./Hiwonder/System/oled_handle.o ./Hiwonder/System/oled_handle.su ./Hiwonder/System/packet_handle.cyclo ./Hiwonder/System/packet_handle.d ./Hiwonder/System/packet_handle.o ./Hiwonder/System/packet_handle.su

.PHONY: clean-Hiwonder-2f-System

