#include "../include/ListCommand.h"

ListCommand::ListCommand(int socket): socket(socket){}

int ListCommand::execute(string name) {
    writeCommand("list_games", name);
    return executeFeedback(-1);
}
