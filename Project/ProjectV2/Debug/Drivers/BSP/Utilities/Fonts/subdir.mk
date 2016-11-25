################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Utilities/Fonts/font12.c \
../Drivers/BSP/Utilities/Fonts/font16.c \
../Drivers/BSP/Utilities/Fonts/font20.c \
../Drivers/BSP/Utilities/Fonts/font24.c \
../Drivers/BSP/Utilities/Fonts/font8.c 

OBJS += \
./Drivers/BSP/Utilities/Fonts/font12.o \
./Drivers/BSP/Utilities/Fonts/font16.o \
./Drivers/BSP/Utilities/Fonts/font20.o \
./Drivers/BSP/Utilities/Fonts/font24.o \
./Drivers/BSP/Utilities/Fonts/font8.o 

C_DEPS += \
./Drivers/BSP/Utilities/Fonts/font12.d \
./Drivers/BSP/Utilities/Fonts/font16.d \
./Drivers/BSP/Utilities/Fonts/font20.d \
./Drivers/BSP/Utilities/Fonts/font24.d \
./Drivers/BSP/Utilities/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Utilities/Fonts/%.o: ../Drivers/BSP/Utilities/Fonts/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F746xx -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/CMSIS/Include" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/GUI" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/GUI/inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/GUI/lib" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/BSP" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/BSP/inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/BSP/src" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/BSP/Components" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/BSP/Components/ft5336" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/BSP/Utilities" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/Project/ProjectV2/Drivers/BSP/Utilities/Fonts"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


