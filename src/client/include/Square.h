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

	bool operator ==(const Square &other) const;

	void setType(char);
};

#endif /* SQUARE_H_ */
