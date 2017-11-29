#include "../include/AIPlayer.h"

AIPlayer::AIPlayer(char type, GameLogic* gameLogic): Player(type){
     this->gameLogic = gameLogic;
    this->gameLogicCopy = gameLogic;
    //this->gameLogic1 = new GameLogic((gameLogic->getBoard()));
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
    vector <Square> moves;
    vector<int> grade;
    vector<int> gradeFinal;
    int xBefore, xAfter, y, x;
    Board *board = this->gameLogic->getBoard();
    for (int i = 0; i < possibleMoves.size(); ++i) {
        Board board1(*board);
        this->gameLogicCopy = new GameLogic(&board1);
        this->gameLogicCopy->turnDisks(current, opponent, possibleMoves[i]);
        moves = this->gameLogicCopy->possibleMoves(opponent, current);
        for (int j = 0; j < moves.size(); ++j) {
            xBefore = board1.numOfX();
            this->gameLogicCopy->turnDisks(opponent, current, moves[j]);
            xAfter = board1.numOfX();
            if (xAfter >= xBefore) {
                grade.push_back(xAfter - xBefore);
            } else {
                grade.push_back(0);
            }
        }
        if (!grade.empty()) {
            int max = grade[0];
            for (int i = 0; i < grade.size(); i++) {
                if (grade[i] > max) {
                    max = grade[i];
                }
            }
            gradeFinal.push_back(max);
        }
        int possibleMove = 0;
        if (!gradeFinal.empty()) {
            int min = gradeFinal[0];
            for (int i = 0; i < gradeFinal.size(); i++) {
                if (gradeFinal[i] < min) {
                    possibleMove = i;
                }
            }
            delete gameLogicCopy;
            return possibleMoves[possibleMove];
        }
    }
    return possibleMoves[0];
}