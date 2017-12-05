#include "RemotePlayer.h"

RemotePlayer::RemotePlayer(const char *serverIP, int serverPort): Client(serverIP, serverPort,
		clientSocket) {
}

RemotePlayer::~RemotePlayer() {
}

Square RemotePlayer::getNextMove() {
	// read the opponent's next move from the socket
	Square nextMove;
	n = read(clientSocket, &nextMove, sizeof(nextMove));
	if (n == -1) {
		throw "Error reading opponentMove from socket";
	}
	return nextMove;
}

Square RemotePlayer::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {
	return getNextMove();
}
