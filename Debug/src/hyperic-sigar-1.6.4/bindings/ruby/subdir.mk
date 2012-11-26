################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hyperic-sigar-1.6.4/bindings/ruby/rbsigar.c 

OBJS += \
./src/hyperic-sigar-1.6.4/bindings/ruby/rbsigar.o 

C_DEPS += \
./src/hyperic-sigar-1.6.4/bindings/ruby/rbsigar.d 


# Each subdirectory must supply rules for building sources it contributes
src/hyperic-sigar-1.6.4/bindings/ruby/%.o: ../src/hyperic-sigar-1.6.4/bindings/ruby/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


