
#ifndef TEST_GAMELOGIC_H_
#define TEST_GAMELOGIC_H_

#include "Board.h"
#include "Player.h"
#include "Square.h"
#include <iostream>
#include <gtest/gtest.h>

using namespace std;

class test_gameLogic: public testing::Test {
public:
	test_gameLogic(): gl(new Board(4)) {}
	virtual void SetUp() {
		cout << "Setting up" << endl;
	}
	virtual void TearDown() {
		cout << "Tearing down" << endl;
		gl.~GameLogic();
	}
protected:
	GameLogic gl;
};

#endif /* TEST_GAMELOGIC_H_ */
