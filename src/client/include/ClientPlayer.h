#ifndef CLIENTPLAYER_H_
#define CLIENTPLAYER_H_

#include "HumanPlayer.h"
#include "Square.h"

class clientPlayer: public HumanPlayer {
public:
	clientPlayer(char type, const char *serverIP, int serverPort);
	void connectToServer();
	Square sendNextMove(Square move);
	virtual ~clientPlayer();
private:
	const char *serverIP;
	int serverPort;
	int clientSocket;
};

#endif /* CLIENTPLAYER_H_ */
