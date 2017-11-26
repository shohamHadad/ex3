// Shir kempinski - 312253719 - ex2

#include "Game.h"

/**
 * function name: Game
 * input: void
 * output: new game object
 * operation: constructor
 */
Game::Game() {
	this->logic = new GameLogic(new Board(4));
	this->X = new Player('X');
	this->O = new Player('O');
}

/**
 * function name: ~Game
 * input: void
 * output: void
 * operation: destructor
 */
Game::~Game() {
	delete this->logic;
	delete this->X;
	delete this->O;
}

/**
 * function name: play
 * input: void
 * output: void
 * operation: activates the game loop
 */
void Game::play() {
	while (!logic->gameShouldStop(X, O)) {
		Player* current;
		Player* opponent;
		if (logic->whosTurn(X,O)->equals(X)) {
			current = X;
			opponent = O;
		} else {
			current = O;
			opponent = X;
		}
		logic->playOneTurn(current, opponent);
	}
	logic->endGame();
}
