################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/src/stm32746g_discovery.c \
../Drivers/src/stm32746g_discovery_lcd.c \
../Drivers/src/stm32746g_discovery_sdram.c \
../Drivers/src/stm32746g_discovery_ts.c 

OBJS += \
./Drivers/src/stm32746g_discovery.o \
./Drivers/src/stm32746g_discovery_lcd.o \
./Drivers/src/stm32746g_discovery_sdram.o \
./Drivers/src/stm32746g_discovery_ts.o 

C_DEPS += \
./Drivers/src/stm32746g_discovery.d \
./Drivers/src/stm32746g_discovery_lcd.d \
./Drivers/src/stm32746g_discovery_sdram.d \
./Drivers/src/stm32746g_discovery_ts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/src/%.o: ../Drivers/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F746xx -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Inc" -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Drivers/CMSIS/Include" -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Drivers/common" -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Drivers/components" -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Drivers/inc" -I"C:/Users/Tomek/Dropbox/School/Embedded systems/workspace/lcdwda2/Drivers/Utilities/Fonts"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


