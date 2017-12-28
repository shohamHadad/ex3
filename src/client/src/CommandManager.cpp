
#include "../include/CommandManager.h"

CommandManager::CommandManager(int socket){
    commandsMap["start"] = new StartCommand(socket);
    commandsMap["join"] = new JoinCommand(socket);
    commandsMap["list_games"] = new ListCommand(socket);
}

int CommandManager::executeCommand(string command, string name) {
    Command* commandObj = commandsMap[command];
    return commandObj->execute(name);
}

CommandManager::~CommandsManager() {
    map<string, Command *>::iterator it;
    for (it = commandsMap.begin(); it != commandsMap.end(); it++) {
        delete it->second;
    }
}

vector<string> CommandManager::commandMenu() {
    // get the command type from the user
    int choice = 0;
    do {
        cout << "Please enter your choice:" << endl;
        cout << "   1 to start a new game" << endl;
        cout << "   2 to join an existing game" << endl;
        cout << "   3 to see the list of available games" << endl;
        cin >> choice;
    } while (choice < 1 && choice > 3);
    // match command to choice
    string command;
    vector<string> userInput;
    switch (choice) {
        case 1:
            command = "start";
            break;
        case 2:
            command = "join";
            break;
        // if user chose to see the list, there is no need to take name
        case 3:
            command = "list_games";
            userInput[0] = command;
            userInput[1] = "";
            return userInput;
        default:
            break;
    }
    // get the game's name from user and return the input
    cout << "Please enter your game's name: ";
    string name;
    cin >> name;
    userInput[0] = command;
    userInput[1] = name;
    return userInput;
}