// Shir kempinski - 312253719 - ex2

#include "../include/Player.h"
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
<<<<<<< HEAD:Player.cpp
 * function name: chooseSquare
 * input: vector<Square>
 * output: Square
 * operation: get a valid move from the user and returns it
 */
Square Player::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {

}

/**
=======
>>>>>>> 711e55a28fdc8d063a7095cf1f55bb47b301b354:src/Player.cpp
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
