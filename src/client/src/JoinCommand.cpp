#include "../include/JoinCommand.h"

JoinCommand::JoinCommand(int socket): Command(socket) {}

int JoinCommand::execute(string name) {
    writeCommand("join", name);
    return executeFeedback(2);
}