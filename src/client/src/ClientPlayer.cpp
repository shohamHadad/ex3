#include "../include/ClientPlayer.h"
#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <string.h>
#include <unistd.h>

using namespace std;
/**
 * function name: ClientPlayer
 * input: the server IP, server port
 * output: new object of ClientPlayer
 * operation: constructor
 */
ClientPlayer::ClientPlayer(const char *serverIP, int serverPort): Client(serverIP, serverPort) {
}

/**
 * function name: ~ClientPlayer
 * input: void
 * output: delete ClientPlayer
 * operation: delete constructor
 */
ClientPlayer::~ClientPlayer() {
}

/**
 * function name: sendNextMove
 * input: int x, int y
 * output: void
 * operation: the function write the move of player to the socket
 */
void ClientPlayer::sendNextMove(int x, int y) {
    int xCpy = x;
    int yCpy = y;
	// write the move to the socket
	int n = write(clientSocket, &xCpy, sizeof(int));
	if (n == -1) {
		throw "Error writing move to socket";
	}
    n = write(clientSocket, &yCpy, sizeof(int));
    if (n == -1) {
        throw "Error writing move to socket";
    }
}
/**
 * function name: readOrder
 * input: void
 * output: int
 * operation: the function read the player's order from the socket
 */
int ClientPlayer::readOrder() {
	// read the player's order from the socket
	int order;
	int n = read(clientSocket, &order, sizeof(order));
	if (n == -1) {
		throw "Error reading opponentMove from socket";
	}
	return order;
}

/**
 * function name: chooseSquare
 * input: vector of possible move of player, player current and player oppoent
 * output: the square that player choose. 
 * operation: 
 */
Square ClientPlayer::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {
	cout << type << ": It's your move. ";
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
					sendNextMove(playersChoice.getX(), playersChoice.getY());
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
 * function name: Board
 * input: the board's size
 * output: new object of board
 * operation: constructor
 */
void ClientPlayer::noMove(Player* current, Player* opponent) {
    cout << current->getType() << " Has no possible moves. Play passes back to " << opponent->getType() << endl;
    int noMove = -2;
    int n = write(clientSocket, &noMove, sizeof(int));
    if (n == -1) {
        throw "Error writing move to socket";
    }
}
/**
 * function name: Board
 * input: the board's size
 * output: new object of board
 * operation: constructor
 */
void ClientPlayer::endGame() {
	int end = -1;
	int n = write(clientSocket, &end, sizeof(int));
	if (n == -1) {
		throw "Error writing move to socket";
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

void ClientPlayer::waitForOtherPlayer() {
	cout << "Waiting for other player to join..." << endl;
	// read the server's message
	int msg;
	int n = read(clientSocket, &msg, sizeof(msg));
	if (n == -1) {
		throw "Error reading msg from socket";
	}
}

Square ClientPlayer::getNextMove() {
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
	return Square(x,y);
}
