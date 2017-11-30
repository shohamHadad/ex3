#include "test_gameLogic.h"

// Test that possibleMoves returns the accurate vector
TEST_F(test_gameLogic, possibleMovesCheck) {
	Player* x = new HumanPlayer('X');
	Player* o = new HumanPlayer('O');
	vector<Square> movesX;
	movesX.push_back(Square(0,1));
	movesX.push_back(Square(1,0));
	movesX.push_back(Square(2,3));
	movesX.push_back(Square(3,2));
	vector<Square> movesO;
	movesO.push_back(Square(0,2));
	movesO.push_back(Square(1,3));
	movesO.push_back(Square(2,0));
	movesO.push_back(Square(3,1));

	// test for human player
	vector<Square> moves = gl.possibleMoves(x,o);
	for (unsigned int i = 0; i < moves.size(); i++) {
		ASSERT_EQ(movesX[i], moves[i]);
	}
	moves = gl.possibleMoves(o,x);
	for (unsigned int i = 0; i < moves.size(); i++) {
		ASSERT_EQ(movesO[i], moves[i]);
	}

	delete o;
	o = new AIPlayer('O', &gl);

	// test for AI player
	moves = gl.possibleMoves(o,x);
	for (unsigned int i = 0; i < moves.size(); i++) {
		ASSERT_EQ(movesO[i], moves[i]);
	}

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
	ASSERT_FALSE(gl.isPossibleMove(0,0,o,x));

	delete o;
	o = new AIPlayer('O', &gl);

	// test for AI player
	ASSERT_TRUE(gl.isPossibleMove(0,1,x,o));
	ASSERT_FALSE(gl.isPossibleMove(0,0,x,o));
	ASSERT_TRUE(gl.isPossibleMove(0,2,o,x));
	ASSERT_FALSE(gl.isPossibleMove(0,0,o,x));

	delete x;
	delete o;
}

// Test that the given direction is valid
TEST_F(test_gameLogic, checkDirectionTest) {
	Player* x = new HumanPlayer('X');
	Player* o = new HumanPlayer('O');

	// test for human player
	ASSERT_TRUE(gl.checkDirection(x,o,0,1,0,1,0));
	ASSERT_FALSE(gl.checkDirection(x,o,0,1,1,1,0));
	ASSERT_TRUE(gl.checkDirection(o,x,1,3,-1,0,0));
	ASSERT_FALSE(gl.checkDirection(o,x,1,3,-1,-1,0));

	delete o;
	o = new AIPlayer('O', &gl);

	//test for AI player
	ASSERT_TRUE(gl.checkDirection(x,o,0,1,0,1,0));
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
	for (int i = 0; i <= gl.getBoard()->getSize(); i++) {
		for (int j = 0; j <= gl.getBoard()->getSize(); j++) {
			gl.getBoard()->setType(i, j, ' ');
		}
	}
	gl.getBoard()->setType(0, 1, 'X');
	gl.getBoard()->setType(2, 1, 'X');
	gl.getBoard()->setType(0, 2, 'O');
	gl.getBoard()->setType(1, 2, 'O');

	// turn the disks
	gl.turnDisks(x, o, Square(0, 4));

	// check that both O's turned
	ASSERT_EQ('X', gl.getBoard()->getType(0, 2));
	ASSERT_EQ('X', gl.getBoard()->getType(1, 2));

	delete o;
	o = new AIPlayer('O', &gl);

	// prepare the board
	for (int i = 0; i <= gl.getBoard()->getSize(); i++) {
		for (int j = 0; j <= gl.getBoard()->getSize(); j++) {
			gl.getBoard()->setType(i, j, ' ');
		}
	}
	gl.getBoard()->setType(0, 1, 'O');
	gl.getBoard()->setType(2, 1, 'O');
	gl.getBoard()->setType(0, 2, 'X');
	gl.getBoard()->setType(1, 2, 'X');

	// turn the disks
	gl.turnDisks(o, x, Square(0, 4));

	// check that both O's turned - now for AI player
	ASSERT_EQ('O', gl.getBoard()->getType(0, 2));
	ASSERT_EQ('O', gl.getBoard()->getType(1, 2));

	delete x;
	delete o;
}

// Test if flipInRightDirection works properly
TEST_F(test_gameLogic, flipInRightDirectionCheck) {
	Player* x = new HumanPlayer('X');
	Player* o = new HumanPlayer('O');

	// prepare the board
	for (int i = 0; i <= gl.getBoard()->getSize(); i++) {
		for (int j = 0; j <= gl.getBoard()->getSize(); j++) {
			gl.getBoard()->setType(i, j, ' ');
		}
	}
	gl.getBoard()->setType(1, 2, 'X');
	gl.getBoard()->setType(2, 1, 'X');
	gl.getBoard()->setType(3, 0, 'O');

	// flip the disks in the right direction
	gl.flipInRightDirection(o, x, 0, 3, -1, 1);

	// check that the right disks were flipped
	ASSERT_EQ('O', gl.getBoard()->getType(1, 2));
	ASSERT_EQ('O', gl.getBoard()->getType(2, 1));

	// check that the rest of the cells didn't change
	for (int i = 0; i <= gl.getBoard()->getSize(); i++) {
		for (int j = 0; j <= gl.getBoard()->getSize(); j++) {
			if (i + j != gl.getBoard()->getSize() - 1) {
				ASSERT_EQ(' ', gl.getBoard()->getType(i, j));
			}
		}
	}

	delete o;
	o = new AIPlayer('O', &gl);

	// prepare the board
	for (int i = 0; i <= gl.getBoard()->getSize(); i++) {
		for (int j = 0; j <= gl.getBoard()->getSize(); j++) {
			gl.getBoard()->setType(i, j, ' ');
		}
	}
	gl.getBoard()->setType(1, 2, 'X');
	gl.getBoard()->setType(2, 1, 'X');
	gl.getBoard()->setType(3, 0, 'O');

	// flip the disks in the right direction
	gl.flipInRightDirection(o, x, 0, 3, -1, 1);

	// check that the right disks were flipped - now for AI player
	ASSERT_EQ('O', gl.getBoard()->getType(1, 2));
	ASSERT_EQ('O', gl.getBoard()->getType(2, 1));

	// check that the rest of the cells didn't change
	for (int i = 0; i <= gl.getBoard()->getSize(); i++) {
		for (int j = 0; j <= gl.getBoard()->getSize(); j++) {
			if (i + j != gl.getBoard()->getSize() - 1) {
				ASSERT_EQ(' ', gl.getBoard()->getType(i, j));
			}
		}
	}

	delete x;
	delete o;
}
