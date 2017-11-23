// Shir kempinski - 312253719 - ex2

#ifndef GAME_H_
#define GAME_H_
#include "GameLogic.h"
#include "Player.h"
#include "stdlib.h"

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
};

#endif /* GAME_H_ */
