#include <iostream>
#include "player.hpp"

int main(int argc, char* argv[]){
	std::cout << "Hello World!" << std::endl;
	Player p = Player(100);
	if(p.is_healthy())
		std::cout << "The player looks like being really healty!" << std::endl;
	else
		std::cout << "Something is wrong..." << std::endl;
	return 0;
}
