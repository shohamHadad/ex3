#ifndef GAME_H_
#define GAME_H_
#include "GameLogic.h"
#include "HumanPlayer.h"
#include "AIPlayer.h"
#include "ClientPlayer.h"
#include "RemotePlayer.h"
#include "stdlib.h"
#include <iostream>
#include <limits>
using namespace std;


/**
 * the game can be played.
 */
class Game {
private:
	GameLogic* logic;
	Player* X;
	Player* O;

public:
	Game();
	virtual ~Game();
	void play();
	void initialize();
	void assignClientAndRemotePlayers();
};

#endif /* GAME_H_ */
