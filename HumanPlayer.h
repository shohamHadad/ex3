// 312253719 Shir Kempinski ex3

#ifndef HUMANPLAYER_H_
#define HUMANPLAYER_H_
#include "Player.h"
#include <iostream>
#include <limits>
using namespace std;

class HumanPlayer : public Player {
public:
	HumanPlayer(char);
	~HumanPlayer();
	Square chooseSquare(vector<Square>);
	void printPossibleMoves(vector <Square> moves);
};

#endif /* HUMANPLAYER_H_ */
