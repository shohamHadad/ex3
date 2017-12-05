
#include "../server/Server.h"
using namespace std;
#define MAX_CONNECTED_CLIENTS 2

Server::Server(int port): port(port), serverSocket(0) {
    turns = 0;
    cout << "Server" << endl;
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
        int numberOfClients = 0;
        while (numberOfClients != 2) {
            // Accept a new client connection
            if(numberOfClients == 0) {
                clientSocket = accept(serverSocket, (struct sockaddr *) &clientAddress,
                                      &clientAddressLen);
                cout << "Client connected" << endl;
                if (clientSocket == -1) {
                    throw "Error on accept";
                }
                sendOrder(clientSocket , numberOfClients+1);
            } else {
                clientSocket1 = accept(serverSocket, (struct sockaddr *) &clientAddress,
                                      &clientAddressLen);
                cout << "Client connected" << endl;
                if (clientSocket1 == -1) {
                    throw "Error on accept";
                }
                sendOrder(clientSocket1 , numberOfClients+1);
            }
            numberOfClients++;
        }
        handleClient(clientSocket, clientSocket1);
        // Close communication with the client
        close(clientSocket);
    }

}

void Server::stop(){
    close(serverSocket);
}

void Server:: handleClient(int clientSocket, int clientSocket1){
    Square currentMove = Square(0 ,0);
    while(true) {
        int result;
        if (whosTurn(clientSocket, clientSocket1) == clientSocket) {
            result = recieveMove(currentMove,clientSocket, clientSocket1);
            sendMove(currentMove, clientSocket1);
        } else{
            result = recieveMove(currentMove,clientSocket1, clientSocket);
            sendMove(currentMove, clientSocket);
        }
        if(result == 1){
            break;
        }
        turns ++;
    }
}

/**
 * function name: recieveMove
 * input: Square currentMove,int clientSocket, int clientSocket1
 * output: int
 * operation: Read new exercise current move
 */
int Server:: recieveMove(Square currentMove,int clientSocket, int clientSocket1)const{
    //Read new exercise current move.
    int n = read(clientSocket, &currentMove, sizeof(Square));
    if (n == -1) {
        cout << "Error reading currentMove"<< endl;
        return 1;
    }
    if(n == 0) {
        cout << "Client disconnected" << endl;
        return 1;
    }
}

/**
 * function name: sendMove
 * input: Square currentMove, int clientSocket1
 * output: void
 * operation: Write the result back to the client
 */
void Server:: sendMove(Square currentMove, int clientSocket1)const{
    // Write the result back to the client
     int n = write(clientSocket1, &currentMove, sizeof(Square));
     if (n == -1) {
         cout << "Error writing to socket" << endl;
         return;
     }
}

/**
 * function name: whosTurn
 * input: 2 clientSockets
 * output: clientSocket
 * operation: returns the clientSocket who's turn it is
 */
int Server::whosTurn(int first, int second) {
    if (turns % 2 == 0) {
        return first;
    }
    return second;
}

/**
 * function name: sendOrder
 * input: clientSocket, order
 * output: void
 * operation: Write to clientSocket who kind of player you are.
 */
void Server::sendOrder(int clientSocket, int order){
    // Write who kind of player you are.
    int n = write(clientSocket, &order, sizeof(order));
    if (n == -1) {
        cout << "Error writing to socket" << endl;
        return;
    }
}