// Shir kempinski - 312253719 - ex2

#include "Board.h"
#include <iostream>
using namespace std;

/**
 * function name: Board
 * input: the board's size
 * output: new object of board
 * operation: constructor
 */
Board::Board(int s) {
	size = s;
	// initialize the array
	array = new char*[size];
	for (int i = 0; i < size; i++) {
		array[i] = new char[size];
		for (int j = 0; j < size; j++) {
			array[i][j] = ' ';
		}
	}
	array[size/2 - 1][size/2 - 1] = 'O';
	array[size/2][size/2] = 'O';
	array[size/2 - 1][size/2] = 'X';
	array[size/2][size/2 - 1] = 'X';
}

/**
 * function name: ~Board
 * input: void
 * output: void
 * operation: destructor
 */
Board::~Board() {
	for (int i = 0; i < size; i++) {
			delete array[i];
	}
	delete array;
}

/**
 * function name: drawLine
 * input: void
 * output: void
 * operation: draws the separate line in the board.
 */
void Board::drawLine() {
	for (int i = 0; i < size * 4 + 2; i++) {
		cout << "-";
	}
	cout << endl;
}

/**
 * function name: print
 * input: void
 * output: void
 * operation: print out the board
 */
void Board::print() {
	for (int i = 0; i < size + 1; i++) {
		for (int j = 0; j < size + 1; j++) {
			if (i == 0) {
				if (j == 0) {
					continue;
				}
				cout << " | " << j;
				if (j == 8) {
					cout << " |" << endl;
					drawLine();
					continue;
				}
			} else if (j == 0) {
				cout << i << "|";
			} else {
				cout << " " << this->array[i - 1][j - 1] << " |";
			}
			if (j == 8) {
				cout << endl;
				drawLine();
			}
		}
	}
}

/**
 * function name: getArray
 * input: void
 * output: 2D array of chars
 * operation: returns the board's array
 */
char** Board::getArray() {
	return array;
}

/**
 * function name: isEmpty
 * input: x and y indexes of the board's array
 * output: boolean
 * operation: checks if the given location is empty
 */
bool Board::isEmpty(int x, int y){
	if (array[x][y] == ' ') {
		return true;
	}
	return false;
}

/**
 * function name: isOutOfBounderies
 * input: x and y indexes
 * output: boolean
 * operation: checks if the given location is out of the array's boundaries
 */
bool Board::isOutOfBounderies(int x, int y){
	if (x < 0 || x >= size || y < 0 || y >= size) {
		return true;
	}
	return false;
}

/**
 * function name: get type
 * input: x and y indexes
 * output: char
 * operation: returns the state of the given location in the array
 */
char Board::getType(int x, int y) {
	return array[x][y];
}

/**
 * function name: isBoardFull
 * input: void
 * output: boolean
 * operation: checks if the board is full
 */
bool Board::isboardfull() {
	for (int i = 0; i < size; i++) {
		for (int j = 0; j < size; j++) {
			if (array[i][j] == ' ') {
				return false;
			}
		}
	}
	return true;
}

/**
 * function name: getSize
 * input: void
 * output: int
 * operation: returns the board's size
 */
int Board::getSize() {
	return size;
}

/**
 * function name: whoWin
 * input: void
 * output: Winner
 * operation: checks who won - X, O or it's a tie.
 */
Winner Board::whoWin() {
	int x = 0;
	int o = 0;
	for (int i = 0; i < size; i++) {
		for (int j = 0; j < size; j++) {
			if (array[i][j] == 'X') {
				x++;
			} else if (array[i][j] == 'O') {
				o++;
			}
		}
	}
	if (x > o) {
		return X;
	} else if (o > x) {
		return O;
	} else {
		return tie;
	}
}
