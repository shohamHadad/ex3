// Shir kempinski - 312253719 - ex2

#ifndef BOARD_H_
#define BOARD_H_

enum Winner{X, O, tie};

/**
 * the board of the game.
 */
class Board {
private:
	int size;
	void drawLine();
	char** array;

public:
	Board(int s = 8);
	void print();
	~Board();
	char** getArray();
	int getSize();
	bool isEmpty(int, int);
	bool isOutOfBounderies(int, int);
	char getType(int, int);
	bool isboardfull();
	Winner whoWin();
};

#endif /* BOARD_H_ */
