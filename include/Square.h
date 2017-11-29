// Shir kempinski - 312253719 - ex2

#ifndef SQUARE_H_
#define SQUARE_H_
#include <vector>
using namespace std;

/*
 * a Square has x and y values - location in the board.
 */
class Square {
private:
	int x;
	int y;
	char type;
public:
	Square(int, int);
	void print();
	int getX();
	int getY();
	char getType();
	bool equals(Square);
	void setType(char);
	vector<Square> adaptVectorToGameFormat(vector<Square>);
};

#endif /* SQUARE_H_ */
