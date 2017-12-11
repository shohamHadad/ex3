#include "../include/RemotePlayer.h"

RemotePlayer::RemotePlayer() {
}

RemotePlayer::~RemotePlayer() {
}

Square RemotePlayer::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {
	cout << "Waiting for other player's move..." << endl;
	return opponent->getNextMove();
}