// Shir kempinski - 312253719 - ex2

#include "Square.h"
#include <vector>
#include "stdlib.h"

#ifndef PLAYER_H_
#define PLAYER_H_

/**
 * Player can be from type X or type O.
 */
class Player {
protected:
	char type;
public:
	Player(char);
	virtual Square chooseSquare(vector<Square>);
	virtual ~Player();
	char getType();
	bool equals(Player*);
};

#endif /* PLAYER_H_ */
