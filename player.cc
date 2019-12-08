#include"player.hpp"

Player::Player(int health_value){
	health = health_value;

}
bool Player::is_healthy(void){
	return health > 0;
}
