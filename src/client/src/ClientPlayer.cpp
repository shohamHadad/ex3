#include "ClientPlayer.h"
#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <string.h>
#include <unistd.h>

using namespace std;

clientPlayer::clientPlayer(char type, const char *serverIP, int serverPort): Player(type) ,
		serverIP(serverIP), serverPort(serverPort), clientSocket(0) {
	cout << "clientPlayer" << endl;
}

clientPlayer::~clientPlayer() {
}

void clientPlayer::connectToServer() {
	// Create a socket point
	clientSocket = socket(AF_INET, SOCK_STREAM, 0);
	if (clientSocket == -1) {
		throw "Error opening socket";
	}
	// Convert the ip string to a network address
	struct in_addr address;
	if (!inet_aton(serverIP, &address)) {
		throw "Can't parse IP address";
	}
	// Get a hostent structure for the given host address
	struct	hostent	*server;
	server = gethostbyaddr((const void*)&address, sizeof(address), AF_INET);
	if (server == NULL) {
		throw "Host is unreachable";
	}
	// Create a structure for the server address
	struct sockaddr_in serverAddress;
	bzero((char*)&address, sizeof(address));
	serverAddress.sin_family = AF_INET;
	memcpy((char*)&serverAddress.sin_addr.s_addr, (char*)server->h_addr, server->h_length);
	// htons converts values between host and network byte orders
	serverAddress.sin_port = htons(serverPort);
	// Establish a connection with the TCP server
	if (connect(clientSocket, (struct sockaddr*)&serverAddress, sizeof(serverAddress)) == -1) {
		throw "Error connecting to server";
	}
	cout << "Connected to server" << endl;
}

Square clientPlayer::sendNextMove(Square move) {
	// write the move to the socket
	int n = write(clientSocket, &move, sizeof(move));
	if (n == -1) {
		throw "Error writing move to socket";
	}

	// read the opponent's next move from the socket
	Square opponentMove;
	n = read(clientSocket, &opponentMove, sizeof(opponentMove));
	if (n == -1) {
		throw "Error reading opponentMove from socket";
	}
	return opponentMove;
}
