#include "../include/JoinCommand.h"

/**
 * function name: JoinCommand
 * input: gets a socket, and list of args
 * output: new object of JoinCommand
 * operation: constructor
 */
JoinCommand::JoinCommand(int socket): Command(socket) {}

/**
 * function name: execute
 * input: string name
 * output: int
 * operation: The function join the player whit play exist
 */
int JoinCommand::execute(string name) {
    writeCommand("join", name);
    return executeFeedback(2);
}
