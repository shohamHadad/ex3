cmake_minimum_required(VERSION 3.8)
project(advancedProgramming1)

#set(CMAKE_CXX_STANDARD 98)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lpthread")

include_directories(src lib/googletest-release-1.8.0/googletest/include)
include_directories(lib/googletest-release-1.8.0/googlemock/include)

set(SOURCE_FILES include/Board.h src/GameLogic.cpp include/GameLogic.h include/Game.h
        src/Game.cpp  src/Player.cpp include/Player.h src/HumanPlayer.cpp include/HumanPlayer.h
	src/AIPlayer.cpp include/AIPlayer.h src/Board.cpp src/Square.cpp
        include/Square.h)

set(TEST_FILES Tests/Tests.cpp src/Board.cpp)

add_executable(game ${SOURCE_FILES} src/main.cpp)
