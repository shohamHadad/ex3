a.out: Square.o GameLogic.o Player.o Game.o Board.o main.o
	g++ Square.o GameLogic.o Player.o Game.o Board.o main.o
Square.o: Square.cpp Square.h Board.h
	g++ -c Square.cpp
GameLogic.o: GameLogic.cpp GameLogic.h Board.h Player.h
	g++ -c GameLogic.cpp
Player.o: Player.cpp Player.h Square.h
	g++ -c Player.cpp
Game.o: Game.cpp Game.h GameLogic.h Player.h
	g++ -c Game.cpp
Board.o: Board.cpp Board.h
	g++ -c Board.cpp
main.o: main.cpp Board.h
	g++ -c main.cpp
