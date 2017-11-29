// 312253719 Shir Kempinski ex3

#ifndef AIPLAYER_H_
#define AIPLAYER_H_
#include "Player.h"
#include <iostream>
using namespace std;

class AIPlayer : public Player {
public:
	AIPlayer(char);
	virtual ~AIPlayer();
	Square chooseSquare(vector<Square>);
};

#endif /* AIPLAYER_H_ */
