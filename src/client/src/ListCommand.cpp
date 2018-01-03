#include "../include/ListCommand.h"

/**
 * function name: ListCommand
 * input: gets a socket, and list of args
 * output: new object of ListCommand
 * operation: constructor
 */
ListCommand::ListCommand(int socket): Command(socket) {}

/**
 * function name: execute
 * input: string name
 * output: int
 * operation: The function write to the client list of rooms game
 */
int ListCommand::execute(string name) {
    writeCommand("list_games", name);
    return executeFeedback(-1);
}
