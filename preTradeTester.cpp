#include "preTraderClient.h"
#include <string>

std::string host = "localhost";
int port = 5672;
std::string usr = "guest";
std::string passwd = "guest"

int main(int argc, char *argv[]) {
	preTraderClient rbc(host, port, usr, passwd);
	std: string msg;
	std::cin >> msg;
	while (msg != "stop") {
		if (std::isdigit(msg)) {
			rbc.sendmsg(msg);
		} else {
			std::cout << "Not a Number" << std::endl;
		}
		std::cout << "\n\n\n\n\n";
		std::cin >> msg;
	}
}
