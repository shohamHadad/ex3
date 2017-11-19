// Shir kempinski - 312253719 - ex2

#include "Player.h"
#include <iostream>
#include <limits>
using namespace std;

/**
 * function name: Player
 * input: char
 * output: new object of player
 * operation: constructor
 */
Player::Player(char type): type(type) {
}

/**
 * function name: ~Player
 * input: void
 * output: void
 * operation: destructor
 */
Player::~Player(){}

/**
 * function name: chooseSquare
 * input: vector<Square>
 * output: Square
 * operation: get a valid move from the user and returns it
 */
Square Player::chooseSquare(vector<Square> possibleMoves) {
	cout << endl << "Please enter your move, row col:";
	int x,y;
	while (true) {
		cin >> x >> y;
		if (!cin.fail()) {
			Square playersChoice(x,y);
			for (int i = 0; i < possibleMoves.size(); i++) {
				if (possibleMoves[i].equals(playersChoice)) {
					return playersChoice;
				}
			}
		}
		cout << endl << "Not a valid choice. Please enter your move row,col:";
		cin.clear();
		cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
	}
}

/**
 * function name: getType
 * input: void
 * output: char
 * operation: the player's type (X or O)
 */
char Player::getType() {
	return type;
}

/**
 * function name: equals
 * input: Player*
 * output: boolean
 * operation: checks if the other player equals to this player.
 */
bool Player::equals(Player* other) {
	if (this->type == other->type) {return true;}
	return false;
}
