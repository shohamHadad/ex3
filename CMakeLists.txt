cmake_minimum_required(VERSION 3.8)
project(ex3)

set(CMAKE_CXX_STANDARD 98)

set(SOURCE_FILES
        src/AIPlayer.cpp
        include/AIPlayer.h
        src/Board.cpp
        include/Board.h
        src/Game.cpp
        include/Game.h
        src/GameLogic.cpp
        include/GameLogic.h
        src/HumanPlayer.cpp
        include/HumanPlayer.h
        src/main.cpp
        src/Player.cpp
        include/Player.h
        src/Square.cpp
        include/Square.h)

add_executable(ex3 ${SOURCE_FILES} src/main.cpp)
