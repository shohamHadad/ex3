// Shir kempinski - 312253719 - ex2

#ifndef BOARD_H_
#define BOARD_H_
#include "Square.h"
#include <vector>
using namespace std;
enum Winner{X, O, tie};

/**
 * the board of the game.
 */
class Board {
private:
	int size;
	void drawLine();
	//char** array;
	vector< vector<Square*> > array;

public:
	Board(int s = 8);
	void print();
	~Board();
	char getSquaresType(int, int);
	int getSize();
	bool isEmpty(int, int);
	bool isOutOfBounderies(int, int);
	char getType(int, int);
	void setType(int, int, char);
	bool isboardfull();
	Winner whoWin();
};

#endif /* BOARD_H_ */
