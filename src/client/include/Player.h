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

    Player(char type = ' ');
	virtual Square chooseSquare(vector<Square>, Player* current, Player* opponent);
	virtual ~Player();
	char getType();
	void setType(char);
	bool equals(Player*);
};

#endif /* PLAYER_H_ */
