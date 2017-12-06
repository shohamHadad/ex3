#include "../include/RemotePlayer.h"
#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <string.h>
#include <unistd.h>

RemotePlayer::RemotePlayer(const char *serverIP, int serverPort): Client(serverIP, serverPort) {
}

RemotePlayer::~RemotePlayer() {
}

Square RemotePlayer::getNextMove() {
	// read the opponent's next move from the socket
	Square nextMove = Square(0,0);
	int n = read(clientSocket, &nextMove, sizeof(nextMove));
	if (n == -1) {
		throw "Error reading opponentMove from socket";
	}
	return nextMove;
}

Square RemotePlayer::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {
	return getNextMove();
}
