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
	this->X = new HumanPlayer('X');
}

/**
 * function name: ~Game
 * input: void
 * output: void
 * operation: destructor
 */
Game::~Game() {
	delete logic;
	delete X;
	delete O;
}

/**
 * function name: initialize
 * input: void
 * output: void
 * operation: get the user's chosen opponent and initialize the game with it
 */
void Game::initialize() {
	cout << "Welcome to Reversi!" << endl << "If you want to play against another human, enter 'H'"
	<< endl	<< "If you want to play against the computer, enter 'C'" << endl;
	char c;
	cin >> c;
	while (c != 'H' && c != 'C') {
		cout << "Please choose between 'H' and 'C'" << endl;
		cin >> c;
	}
	if (c == 'C') {
		this->O = new AIPlayer('O', logic);
	}
	if (c == 'H') {
		this->O = new HumanPlayer('O');
	}
}


/**
 * function name: play
 * input: void
 * output: void
 * operation: activates the game loop
 */
void Game::play() {
	logic->printBoard();
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
