cmake_minimum_required(VERSION 3.8)
project(ex3)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
    Board.cpp
    Board.h
    Game.cpp
    Game.h
    GameLogic.cpp
    GameLogic.h
    main.cpp
    Player.cpp
    Player.h
    Square.cpp
    Square.h)

add_executable(ex3 ${SOURCE_FILES})