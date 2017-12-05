#ifndef REMOTEPLAYER_H_
#define REMOTEPLAYER_H_

#include "Player.h"
#include "Client.h"
#include "Square.h"

class RemotePlayer: public Player, public Client {
public:
	RemotePlayer(const char *serverIP, int serverPort);
	Square getNextMove();
	virtual ~RemotePlayer();
};

#endif /* REMOTEPLAYER_H_ */
