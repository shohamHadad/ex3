#ifndef TEST_BOARD_H_
#define TEST_BOARD_H_

#include "../include/Board.h"
#include <iostream>
#include "gtest/gtest.h"

using namespace std;

class test_board: public testing::Test {
public:
	test_board(): b(8) {}

	virtual void SetUp() {
		cout << "Setting up" << endl;
	}
	virtual void TearDown() {
		cout << "Tearing down" << endl;
	}
protected:
	Board b;
};

#endif /* TEST_BOARD_H_ */
