// Shir kempinski - 312253719 - ex2

#include "Board.h"
#include "Square.h"
#include "Player.h"
#include "Game.h"
using namespace std;

int main() {
	Game* game = new Game();
	game->play();
	delete game;
	return 0;
}
