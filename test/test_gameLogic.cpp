#include "test_gameLogic.h"

// Test that possibleMoves returns the accurate vector
TEST_F(test_gameLogic, possibleMovesCheck) {
	Player* x = new HumanPlayer('X');
	Player* o = new HumanPlayer('O');
	vector<Square> movesX = {Square(0,1), Square(1,0), Square(2,3), Square(3,2)};
	vector<Square> movesO = {Square(0,2), Square(1,3), Square(2,0), Square(3,1)};

	// test for human player
	ASSERT_EQ(movesX, gl.possibleMoves(x,o));
	ASSERT_EQ(movesO, gl.possibleMoves(o,x));

	delete o;
	Player* o = new AIPlayer('O');

	// test for AI player
	ASSERT_EQ(movesO, gl.possibleMoves(o,x));

	delete x;
	delete o;
}

// Test that the given move is valid
TEST_F(test_gameLogic, isPossibleMovesCheck) {
	Player* x = new HumanPlayer('X');
	Player* o = new HumanPlayer('O');

	// test for human player
	ASSERT_TRUE(gl.isPossibleMove(0,1,x,o));
	ASSERT_FALSE(gl.isPossibleMove(0,0,x,o));
	ASSERT_TRUE(gl.isPossibleMove(0,2,o,x));
	ASSERT_FLASE(gl.isPossibleMove(0,0,o,x));

	delete o;
	Player* o = new AIPlayer('O');

	// test for AI player
	ASSERT_TRUE(gl.isPossibleMove(0,1,x,o));
	ASSERT_FALSE(gl.isPossibleMove(0,0,x,o));
	ASSERT_TRUE(gl.isPossibleMove(0,2,o,x));
	ASSERT_FLASE(gl.isPossibleMove(0,0,o,x));

	delete x;
	delete o;
}

// Test that the given direction is valid
TEST_F(test_gameLogic, checkDirectionTest) {
	Player* x = new HumanPlayer('X');
	Player* o = new HumanPlayer('O');

	// test for human player
	ASSRET_TRUE(gl.checkDirection(x,o,0,1,0,1,0));
	ASSERT_FALSE(gl.checkDirection(x,o,0,1,1,1,0));
	ASSERT_TRUE(gl.checkDirection(o,x,1,3,-1,0,0));
	ASSERT_FALSE(gl.checkDirection(o,x,1,3,-1,-1,0));

	delete o;
	Player* o = new AIPlayer('O');

	//test for AI player
	ASSRET_TRUE(gl.checkDirection(x,o,0,1,0,1,0));
	ASSERT_FALSE(gl.checkDirection(x,o,0,1,1,1,0));
	ASSERT_TRUE(gl.checkDirection(o,x,1,3,-1,0,0));
	ASSERT_FALSE(gl.checkDirection(o,x,1,3,-1,-1,0));

	delete x;
	delete o;
}

// Test if turnDisks workes properly
TEST_F(test_gameLogic, turnDisksCheck) {
	Player* x = new HumanPlayer('X');
	Player* o = new HumanPlayer('O');

	// prepare the board
	for (int i = 0; i <= gl.board->size; i++) {
		for (int j = 0; j <= gl.board->getSize(); j++) {
			gl.board->setType(i, j, " ");
		}
	}
	gl.board->setType(0, 1, 'X');
	gl.board->setType(2, 1, 'X');
	gl.board->setType(0, 2, 'O');
	gl.board->setType(1, 2, 'O');

	// turn the disks
	gl.turnDisks(x, o, Square(0, 4));

	// check that both O's turned
	ASSERT_EQ('X', gl.board->getType(0, 2));
	ASSERT_EQ('X', gl.board->getType(1, 2));

	delete o;
	Player* o = new AIPlayer('O');

	// prepare the board
	for (int i = 0; i <= gl.board->size; i++) {
		for (int j = 0; j <= gl.board->getSize(); j++) {
			gl.board->setType(i, j, " ");
		}
	}
	gl.board->setType(0, 1, 'O');
	gl.board->setType(2, 1, 'O');
	gl.board->setType(0, 2, 'X');
	gl.board->setType(1, 2, 'X');

	// turn the disks
	gl.turnDisks(o, x, Square(0, 4));

	// check that both O's turned - now for AI player
	ASSERT_EQ('O', gl.board->getType(0, 2));
	ASSERT_EQ('O', gl.board->getType(1, 2));

	delete x;
	delete o;
}

// Test if flipInRightDirection works properly
TEST_F(test_gameLogic, flipInRightDirectionCheck) {
	Player* x = new HumanPlayer('X');
	Player* o = new HumanPlayer('O');

	// prepare the board
	for (int i = 0; i <= gl.board->size; i++) {
		for (int j = 0; j <= gl.board->getSize(); j++) {
			gl.board->setType(i, j, " ");
		}
	}
	gl.board->setType(1, 2, 'X');
	gl.board->setType(2, 1, 'X');
	gl.board->setType(3, 0, 'O');

	// flip the disks in the right direction
	gl.flipInRightDirection(o, x, 0, 3, -1, 1);

	// check that the right disks were flipped
	ASSERT_EQ('O', gl.board->getType(1, 2));
	ASSERT_EQ('O', gl.board->getType(2, 1));

	// check that the rest of the cells didn't change
	for (int i = 0; i <= gl.board->size; i++) {
		for (int j = 0; j <= gl.board->getSize(); j++) {
			if (!(i + j = gl.board->size - 1)) {
				ASSERT_EQ(' ', board->getType(i, j));
			}
		}
	}

	delete o;
	Player* o = new AIPlayer('O');

	// prepare the board
	for (int i = 0; i <= gl.board->size; i++) {
		for (int j = 0; j <= gl.board->getSize(); j++) {
			gl.board->setType(i, j, " ");
		}
	}
	gl.board->setType(1, 2, 'X');
	gl.board->setType(2, 1, 'X');
	gl.board->setType(3, 0, 'O');

	// flip the disks in the right direction
	gl.flipInRightDirection(o, x, 0, 3, -1, 1);

	// check that the right disks were flipped - now for AI player
	ASSERT_EQ('O', gl.board->getType(1, 2));
	ASSERT_EQ('O', gl.board->getType(2, 1));

	// check that the rest of the cells didn't change
	for (int i = 0; i <= gl.board->size; i++) {
		for (int j = 0; j <= gl.board->getSize(); j++) {
			if (!(i + j = gl.board->size - 1)) {
				ASSERT_EQ(' ', board->getType(i, j));
			}
		}
	}

	delete x;
	delete o;
}
