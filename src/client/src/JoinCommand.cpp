#include "../include/JoinCommand.h"

JoinCommand::JoinCommand(int socket): socket(socket){}

int JoinCommand::execute(string name) {
    writeCommand("join", name);
    return executeFeedback(2);
}