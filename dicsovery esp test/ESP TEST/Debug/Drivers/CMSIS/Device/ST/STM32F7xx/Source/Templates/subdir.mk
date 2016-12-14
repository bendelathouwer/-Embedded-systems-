################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.o 

C_DEPS += \
./Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/%.o: ../Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F746xx -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/dicsovery esp test/ESP TEST/Inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/dicsovery esp test/ESP TEST/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/dicsovery esp test/ESP TEST/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/dicsovery esp test/ESP TEST/Drivers/CMSIS/Include" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/dicsovery esp test/ESP TEST/Drivers/CMSIS/Device/ST/STM32F7xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


