#include "../include/ClientPlayer.h"
#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <string.h>
#include <unistd.h>

using namespace std;

ClientPlayer::ClientPlayer(const char *serverIP, int serverPort): Client(serverIP, serverPort) {
}

ClientPlayer::~ClientPlayer() {
}

void ClientPlayer::sendNextMove(char* move) {
	// write the move to the socket
	int n = write(clientSocket, &move, sizeof(char*));
	if (n == -1) {
		throw "Error writing move to socket";
	}
}

int ClientPlayer::readOrder() {
	// read the player's order from the socket
	int order;
	int n = read(clientSocket, &order, sizeof(order));
	if (n == -1) {
		throw "Error reading opponentMove from socket";
	}
	return order;
}

Square ClientPlayer::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {
	// print the moves to the current player
	printPossibleMoves(possibleMoves);
	cout << endl << "Please enter your move, row col:";
	int x,y;
	while (true) {
		cin >> x >> y;
		if (!cin.fail()) {
			Square playersChoice(x,y);
			for (unsigned int i = 0; i < possibleMoves.size(); i++) {
				if (possibleMoves[i] == playersChoice) {
                    char s[2];
					sendNextMove(playersChoice.toString(s));
					return playersChoice;
				}
			}
		}
		cout << endl << "Not a valid choice. Please enter your move row,col:";
		cin.clear();
		cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
	}
}


/**
 * function name: printPossibleMoves
 * input: vector<Square>
 * output: void
 * operation: prints out the moves
 */
void ClientPlayer::printPossibleMoves(vector <Square> moves) {
	cout << "Your possible moves are: ";
	for (unsigned int i = 0; i < moves.size(); i++) {
		if (i != 0) {
			cout << ",";
		}
		moves[i].print();
	}
	cout << endl;
}
