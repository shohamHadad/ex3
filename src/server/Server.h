//
// Created by shoham on 04/12/17.
//

#ifndef SERVER_H
#define SERVER_H


#include "../client/include/Square.h"
#include <sys/socket.h>
#include<netinet/in.h>
#include<unistd.h>
#include<string.h>
#include<iostream>
#include<stdio.h>

using namespace std;


class Server {

private:
    int serverSocket;
    int port;
    int clientSocket;
    int clientSocket1;
    int turns;

public:
    Server(int port);
    void start();
    void stop();
    void handleClient(int clientSocket, int clientSocket1);
    void sendMove(Square currentMove, int clientSocket1)const;
    int recieveMove(Square currentMove,int clientSocket, int clientSocket1)const;
    int whosTurn(int clientSocket, int clientSocket1);
    void sendOrder(int clientSocket, int order);

};



#endif //SERVER_H
