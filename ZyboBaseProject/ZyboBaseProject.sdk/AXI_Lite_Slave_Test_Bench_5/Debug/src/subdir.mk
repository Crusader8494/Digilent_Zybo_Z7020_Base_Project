################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/DFTlib.c \
../src/Main.c \
../src/Microphone.c \
../src/RWUART.c \
../src/SSD_Driver.c \
../src/platform.c 

OBJS += \
./src/DFTlib.o \
./src/Main.o \
./src/Microphone.o \
./src/RWUART.o \
./src/SSD_Driver.o \
./src/platform.o 

C_DEPS += \
./src/DFTlib.d \
./src/Main.d \
./src/Microphone.d \
./src/RWUART.d \
./src/SSD_Driver.d \
./src/platform.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


