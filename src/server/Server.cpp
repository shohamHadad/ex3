
#include "../server/Server.h"
using namespace std;
#define MAX_CONNECTED_CLIENTS 2

Server::Server(int port): port(port), serverSocket(0) {
    cout << "Server" << endl;
    this->capacity = 2;
}

void Server::start() {
    // Create a socket point
    serverSocket= socket(AF_INET, SOCK_STREAM,0);
    if(serverSocket == -1){
        throw "Error opening socket";
    }
    // Assign a local address to the socket
    struct sockaddr_in serverAddress;
    bzero((void*)&serverAddress,sizeof(serverAddress));
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_addr.s_addr = INADDR_ANY;
    serverAddress.sin_port = htons(port);
    if(bind(serverSocket, (struct sockaddr *)& serverAddress, sizeof(serverAddress)) == -1) {
        throw "Error on binding";
    }
    // Start listening to incoming connections
    listen(serverSocket, MAX_CONNECTED_CLIENTS);

    // Define the client socket's structures
    struct sockaddr_in clientAddress;
    socklen_t clientAddressLen;

    while(true) {
        cout << "Waiting for client connections..." << endl;
        // Accept a new client connection
        int clientSocket = accept(serverSocket, (struct sockaddr*)& clientAddress,
                                  &clientAddressLen);
        cout << "Client connected" << endl;
        if(clientSocket == -1){
            throw "Error on accept";
        }

        handleClient(clientSocket);
        // Close communication with the client
        close(clientSocket);
    }
}

void Server::stop(){
    close(serverSocket);
}

void Server:: handleClient(int clientSocket){
    int arg1, arg2;
    char op;

    while(true) {
    // Read new exercise arguments
        int n = read(clientSocket, &arg1, sizeof(arg1));
        if (n == -1) {
            cout << "Error reading arg1"<< endl;
            return;
        }
        if(n == 0) {
            cout << "Client disconnected" << endl;
            return;
        }
        n = read(clientSocket, &op, sizeof(op));
        if(n == -1) {
            cout << "Error reading operator" << endl;
            return;
        }
        n = read(clientSocket, &arg2, sizeof(arg2));
        if (n == -1) {
            cout << "Error reading arg2"<< endl;
            return;
        }
        cout << "Got exercise: " << arg1 << op << arg2 << endl;
        int result = calc(arg1, op, arg2);
        // Write the result back to the client
        n = write(clientSocket, &result, sizeof(result));
        if (n == -1) {
            cout << "Error writing to socket" << endl;
            return;
        }
    }
}