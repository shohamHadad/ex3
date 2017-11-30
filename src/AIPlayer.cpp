#include "../include/AIPlayer.h"


AIPlayer::AIPlayer(char type, GameLogic* gl): Player(type){
    gameLogic = gl;
}

AIPlayer::~AIPlayer() {
}

/**
 * function name: chooseSquare
 * input: vector<Square>
 * output: Square
 * operation: get a valid move from the user and returns it
 */
Square AIPlayer::chooseSquare(vector<Square> possibleMoves, Player* current, Player* opponent) {
	vector <Square> opponentMoves;
    vector<int> grade;
    vector<int> gradeFinal;
    int xBefore, xAfter;
    // go over possibleMoves
    for (unsigned int i = 0; i < possibleMoves.size(); i++) {
        GameLogic gCopy(*getGameLogic());
        // turn the disks of the i'th move
        gCopy.turnDisks(current, opponent, possibleMoves[i]);
        // create possible moves vector for the opponent for the i'th move
        opponentMoves = gCopy.possibleMoves(opponent, current);
        xBefore = gCopy.getBoard()->numOfX();
        // go over the opponent's moves
        for (unsigned int j = 0; j < opponentMoves.size(); j++) {
            GameLogic gCopy1(gCopy);

            //  boardCopy1.print();
            // turn the disks of the j'th move
            gCopy1.turnDisks(opponent, current, opponentMoves[j]);
          //  boardCopy1.print();
            xAfter = gCopy1.getBoard()->numOfX();
            // if the j'th move increases the number of x's
            if (xAfter >= xBefore) {
            	// grade the move as the number of the added x's
                grade.push_back(xAfter - xBefore);
            } else {
            	// grade it as 0
                grade.push_back(0);
            }
        }
        // if it's not the first iteration
        if (!grade.empty()) {
            int max = grade[0];
            // go over the current grades
            for (unsigned int k = 0; k < grade.size(); k++) {
            	// update the max grade
                if (grade[k] > max) {
                    max = grade[k];
                }
            }
            // push the max grade as this possible move's grade
            gradeFinal.push_back(max);
       }
//        }
    }
    int possibleMove = 0;
    if (!gradeFinal.empty()) {
        int min = gradeFinal[0];
        for (unsigned int k = 0; k < gradeFinal.size(); k++) {
            if (gradeFinal[k] < min) {
                possibleMove = k;
            }
        }

    }
     return possibleMoves[possibleMove];
}

GameLogic *AIPlayer::getGameLogic() const {
    return gameLogic;
}

GameLogic *AIPlayer::getGameLogicCopy() const {
    return gameLogicCopy;
}
