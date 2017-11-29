// 312253719 Shir Kempinski ex3

#ifndef AIPLAYER_H_
#define AIPLAYER_H_
#include "Player.h"
#include "GameLogic.h"
#include "Square.h"
#include <iostream>
using namespace std;

class AIPlayer : public Player {
private:
	GameLogic* gameLogic;
	GameLogic *gameLogicCopy;
	//Board board;
public:
	AIPlayer(char ,GameLogic*);
	virtual ~AIPlayer();
	Square chooseSquare(vector<Square>, Player*, Player*);
};

#endif /* AIPLAYER_H_ */
