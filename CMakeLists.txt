cmake_minimum_required(VERSION 3.8)
project(ex3old)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        AIPlayer.cpp
        AIPlayer.h
        Board.cpp
        Board.h
        Game.cpp
        Game.h
        GameLogic.cpp
        GameLogic.h
        HumanPlayer.cpp
        HumanPlayer.h
        main.cpp
        Player.cpp
        Player.h
        Square.cpp
        Square.h)

add_executable(ex3old ${SOURCE_FILES})