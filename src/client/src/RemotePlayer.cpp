#include "../include/RemotePlayer.h"
#include <unistd.h>
#include <iostream>

RemotePlayer::RemotePlayer(const char *serverIP, int serverPort): Client(serverIP, serverPort) {
}

RemotePlayer::~RemotePlayer() {
}

Square RemotePlayer::getNextMove() {
	// read the opponent's next move from the socket
	int x, y;
	int n = read(clientSocket, &x, sizeof(x));
	if (n == -1) {
		throw "Error reading opponentMove from socket";
	}
	n = read(clientSocket, &y, sizeof(y));
	if (n == -1) {
		throw "Error reading opponentMove from socket";
	}
	Square nextMove = Square(x,y);
	return nextMove;
}

Square RemotePlayer::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {
    waitForOtherPlayerMove();
    return getNextMove();
}

void RemotePlayer::waitForOtherPlayerMove() {
    cout << "Waiting for other player's move..." << endl;
    // read the server's message
    char* msg;
    int n = read(clientSocket, &msg, sizeof(msg));
    if (n == -1) {
        throw "Error reading msg from socket";
    }
}