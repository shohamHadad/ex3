#ifndef HUMANPLAYER_H_
#define HUMANPLAYER_H_
#include "Player.h"
#include <iostream>
#include <limits>
using namespace std;

class HumanPlayer : public Player {
public:
	virtual HumanPlayer(char);
	~HumanPlayer();
	Square chooseSquare(vector<Square>, Player* current, Player* opponent);
	void printPossibleMoves(vector <Square> moves);
};

#endif /* HUMANPLAYER_H_ */
