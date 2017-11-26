// Shir kempinski - 312253719 - ex2

#ifndef GAMELOGIC_H_
#define GAMELOGIC_H_
#include "Board.h"
#include "Player.h"
#include <vector>
using namespace std;

enum GameOver {NoMoreMoves, FullBoard};

/**
 * responsible for the logical flow of the game.
 */
class GameLogic {
private:
	Board* board;
	int turns;
public:
	GameLogic(Board*);
	virtual ~GameLogic();
	vector<Square> possibleMoves(Player*, Player*);
	void printBoard();
	void turnDisks(Player*, Player*, Square);
	bool flipInRightDirection(Player*, Player*, int, int, int, int);
	bool isPossibleMove(int, int, Player*, Player*);
	bool checkDirection(Player*, Player*, int, int, int, int, int);
	void playOneTurn(Player*, Player*);
	bool gameShouldStop(Player*, Player*);
	Player* whosTurn(Player*, Player*);
	GameOver gameStopped(Player*, Player*);
	void endGame();
};

#endif /* GAMELOGIC_H_ */
