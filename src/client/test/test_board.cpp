#include "test_board.h"

// Tests if the size of the board is assigned correctly.
TEST_F(test_board, sizeCheck) {
	EXPECT_EQ(8, b.getSize());
}

// Tests if the empty square check works.
TEST_F(test_board, isEmptySquareCheck) {
	EXPECT_TRUE(b.isEmpty(0,0));
	EXPECT_FALSE(b.isEmpty(4,4));
}

// Tests if the out of boundaries check works.
TEST_F(test_board, isOutOfBounderiesCheck) {
	EXPECT_TRUE(b.isOutOfBounderies(-1,0));
	EXPECT_FALSE(b.isOutOfBounderies(4,4));
}

// Test if the getType Check works.
TEST_F(test_board, getTypeCheck) {
	EXPECT_EQ('O', b.getType(4,4));
	EXPECT_NE('X', b.getType(4,4));
}

// Test if the setType Check works.
TEST_F(test_board, setTypeCheck) {
	b.setType(0,0,'O');
	EXPECT_EQ('O', b.getType(0,0));
	EXPECT_NE(' ', b.getType(0,0));
}

// Test if the board knows it is full.
TEST_F(test_board, isBoardFullCheck) {
	for (int i = 0; i < b.getSize(); i++) {
		for (int j = 0; j < b.getSize(); j++) {
			b.setType(i,j,'X');
		}
	}
	ASSERT_TRUE(b.isBoardFull());
}

// Test if the board knows who won
TEST_F(test_board, whoWinTest) {
	for (int i = 0; i < b.getSize(); i++) {
		for (int j = 0; j < b.getSize(); j++) {
			b.setType(i,j,'X');
		}
	}
	ASSERT_EQ(X, b.whoWin());
	for (int i = 0; i < b.getSize(); i++) {
		for (int j = 0; j < b.getSize(); j++) {
			b.setType(i,j,'O');
		}
	}
	ASSERT_EQ(O, b.whoWin());
	for (int i = 0; i < b.getSize(); i++) {
		for (int j = 0; j < b.getSize(); j++) {
			b.setType(i,j,' ');
		}
	}
	ASSERT_EQ(tie, b.whoWin());
}
