#ifndef CLIENTPLAYER_H_
#define CLIENTPLAYER_H_

#include "Client.h"
#include "Player.h"
#include "Square.h"

class ClientPlayer: public Client,  public Player {
public:
	ClientPlayer(const char *serverIP, int serverPort);
	void sendNextMove(Square move);
	int readOrder();
	virtual ~ClientPlayer();
};

#endif /* CLIENTPLAYER_H_ */
