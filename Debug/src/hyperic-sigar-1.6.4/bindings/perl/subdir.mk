################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hyperic-sigar-1.6.4/bindings/perl/Sigar.c 

OBJS += \
./src/hyperic-sigar-1.6.4/bindings/perl/Sigar.o 

C_DEPS += \
./src/hyperic-sigar-1.6.4/bindings/perl/Sigar.d 


# Each subdirectory must supply rules for building sources it contributes
src/hyperic-sigar-1.6.4/bindings/perl/%.o: ../src/hyperic-sigar-1.6.4/bindings/perl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


