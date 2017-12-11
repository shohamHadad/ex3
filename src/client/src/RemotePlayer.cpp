#include "../include/RemotePlayer.h"
/**
 * function name: RemotePlayer()
 * input: void
 * output: new RemotePlayer
 * operation: constctor
 */
RemotePlayer::RemotePlayer() {
}

/**
 * function name: ~RemotePlayer()
 * input: void
 * output: delete RemotePlayer
 * operation: delete constctor
 */
RemotePlayer::~RemotePlayer() {
}

/**
 * function name: chooseSquare()
 * input: vector<Square>
 * output: Square
 * operation: the function return the next move of the player
 */
Square RemotePlayer::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {
	cout << "Waiting for other player's move..." << endl;
	return opponent->getNextMove();
}
