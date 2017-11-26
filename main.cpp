// Shir kempinski - 312253719 - ex2

#include "Game.h"
using namespace std;

int main() {
	Game* game = new Game();
	game->play();
	delete game;
	return 0;
}
