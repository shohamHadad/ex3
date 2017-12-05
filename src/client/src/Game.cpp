#include "../include/Game.h"

/**
 * function name: Game
 * input: void
 * output: new game object
 * operation: constructor
 */
Game::Game() {
	this->logic = new GameLogic(new Board(8));
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
	cout << "Welcome to Reversi!" << endl << "Choose an opponent type:"	<< endl	<<
			"1. a human local player" << endl << "2. an AI player" << endl << "3. a remote player"
			<< endl;
	int choice;
	cin >> choice;
	while (choice != 1 && choice != 2 && choice != 3) {
		cout << "Please choose 1, 2 or 3" << endl;
		cin >> choice;
	}
	switch (choice) {
	case 1:
		X = new HumanPlayer('X');
		O = new HumanPlayer('O');
		break;
	case 2:
		X = new HumanPlayer('X');
		O = new AIPlayer('O', logic);
		break;
	case 3:
		try {
			ClientPlayer* cp = new ClientPlayer('O', "127.0.0.1", 8000);
			cp->connectToServer();
			this->O = cp;
		} catch (const char *msg) {
			cout << "Failed to connect to server. Reason: " << msg << endl;
			exit(-1);
		}
		assignClientAndRemotePlayers();
		break;
	default:
		break;
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



void Game::assignClientAndRemotePlayers() {
	try {
		ClientPlayer* cp = new ClientPlayer("127.0.0.1", 8000);
		RemotePlayer* rp = new RemotePlayer("127.0.0.1", 8000);
		cp->connectToServer();
		rp->connectToServer();
		int cpOrder = cp->readOrder();
		if (cpOrder == 1) {
			X = cp;
			O = rp;
		} else {
			O = cp;
			X = rp;
		}
		X->setType('X');
		O->setType('O');
	} catch (const char *msg) {
		cout << "Failed to connect to server. Reason: " << msg << endl;
		exit(-1);
	}
}
