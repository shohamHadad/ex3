#include "../include/StartCommand.h"

StartCommand:: StartCommand(int socket): socket(socket){}

int StartCommand::execute(string name) {
    writeCommand("start", name);
    return executeFeedback(1);
}
