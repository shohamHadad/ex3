#ifndef TEST_AIPLAYER_H_
#define TEST_AIPLAYER_H_

#include "AIPlayer.h"
#include "Player.h"
#include "HumanPlayer.h"
#include <vector>
#include <iostream>
#include "gtest/gtest.h"

using namespace std;

class test_aiPlayer: public testing::Test {
public:
	test_aiPlayer(): gl(new GameLogic(new Board(8))), ai(AIPlayer('O', gl)) {}
	virtual void SetUp() {
		cout << "Setting up" << endl;
		Player* x = new HumanPlayer('X');
		gl->turnDisks(x, &ai, Square(3,4));
		delete x;
	}
	virtual void TearDown() {
		cout << "Tearing down" << endl;
		delete gl;
	}
protected:
	GameLogic* gl;
	AIPlayer ai;
};

#endif /* TEST_AIPLAYER_H_ */
