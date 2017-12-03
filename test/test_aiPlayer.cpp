#include "test_aiPlayer.h"

TEST_F(test_aiPlayer, getMaxCheck) {
	vector<int> vec (4,100);
	vec[1] = 101;
	int max = ai.getMax(vec);
	ASSERT_EQ(max, 101);
}

TEST_F(test_aiPlayer, getMinIndexCheck) {
	vector<int> vec (4,100);
	vec[1] = 0;
	int minIndex = ai.getMinIndex(vec);
	ASSERT_EQ(minIndex, 1);
}

TEST_F(test_aiPlayer, chooseSquareCheck) {
	Player* x = new HumanPlayer('X');
	vector<Square> moves = gl->possibleMoves(&ai, x);
	Square nextMove = ai.chooseSquare(moves, &ai, x);
	ASSERT_EQ(Square(3, 3), nextMove);
	delete x;
}
