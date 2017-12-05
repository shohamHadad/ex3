#ifndef CLIENTPLAYER_H_
#define CLIENTPLAYER_H_

#include "Client.h"
#include "Player.h"
#include "Square.h"

class ClientPlayer: public Player, public Client {
public:
	ClientPlayer(char type, const char *serverIP, int serverPort);
	void sendNextMove(Square move);
	int readOrder();
	virtual ~ClientPlayer();
};

#endif /* CLIENTPLAYER_H_ */
