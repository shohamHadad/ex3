/*
 * HumanPlayer.cpp
 *
 *  Created on: Nov 26, 2017
 *      Author: shir
 */

#include "HumanPlayer.h"

HumanPlayer::HumanPlayer(char type): Player(type) {
}

HumanPlayer::~HumanPlayer() {
}


/**
 * function name: chooseSquare
 * input: vector<Square>
 * output: Square
 * operation: get a valid move from the user and returns it
 */
Square HumanPlayer::chooseSquare(vector<Square> possibleMoves) {
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

