#ifndef CLIENTPLAYER_H_
#define CLIENTPLAYER_H_

#include "Client.h"
#include "Player.h"
#include "Square.h"
#include <limits>

class ClientPlayer: public Client,  public Player {
public:
	ClientPlayer(const char *serverIP, int serverPort);
	void sendNextMove(int x, int y);
	int readOrder();
	Square chooseSquare(vector<Square>, Player*, Player*);
	void printPossibleMoves(vector <Square> moves);
	void waitForOtherPlayer();
	void waitForOtherPlayerMove();
	virtual ~ClientPlayer();
};

#endif /* CLIENTPLAYER_H_ */
