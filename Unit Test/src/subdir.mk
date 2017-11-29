################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/AIPlayer.cpp \
../src/Board.cpp \
../src/Game.cpp \
../src/GameLogic.cpp \
../src/HumanPlayer.cpp \
../src/Player.cpp \
../src/Square.cpp 

OBJS += \
./src/AIPlayer.o \
./src/Board.o \
./src/Game.o \
./src/GameLogic.o \
./src/HumanPlayer.o \
./src/Player.o \
./src/Square.o 

CPP_DEPS += \
./src/AIPlayer.d \
./src/Board.d \
./src/Game.d \
./src/GameLogic.d \
./src/HumanPlayer.d \
./src/Player.d \
./src/Square.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/home/shir/workspace/Reversi/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


