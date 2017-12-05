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

public:
    Server(int port);
    ~Server();
    void start();
    void stop();
    void handleClient(int clientSocket);
    Square passMove(Square currentMove)const;

};



#endif //SERVER_H
