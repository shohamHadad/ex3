#include "../include/StartCommand.h"

/**
 * function name:StartCommand
 * input: int socket
 * output: new object of StartCommand
 * operation: constructor
 */
StartCommand:: StartCommand(int socket): Command(socket) {}


/**
 * function name: execute
 * input: string name
 * output: int
 * operation: The function write to the server a new name of room
 */
int StartCommand::execute(string name) {
    writeCommand("start", name);
    return executeFeedback(1);
}
