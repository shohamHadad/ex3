// Shir kempinski - 312253719 - ex2

#ifndef SQUARE_H_
#define SQUARE_H_
#include "Board.h"

using namespace std;

/*
 * a Square has x and y values - location in the board.
 */
class Square {
private:
	int x;
	int y;
public:
	Square(int, int);
	void print();
	int getX();
	int getY();
	bool equals(Square);
};

#endif /* SQUARE_H_ */
