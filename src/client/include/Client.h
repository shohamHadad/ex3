#ifndef CLIENT_H_
#define CLIENT_H_

class Client {
public:
	Client();
	virtual ~Client();
	void connectToServer();

protected:
	const char* serverIP;
	int serverPort;
	int clientSocket;
};

#endif /* CLIENT_H_ */
