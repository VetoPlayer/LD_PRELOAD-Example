all: player preloaded_lib main_binary
	LD_LIBRARY_PATH=. ./main
	LD_PRELOAD=libpreloaded.so LD_LIBRARY_PATH=. ./main

player: player.cc player.hpp
	g++ player.cc player.hpp -Wall -shared -fPIC -o libplayer.so

preloaded_lib: preload.cc player.hpp
	g++ preload.cc player.hpp -shared -std=c++11 -fPIC -o libpreloaded.so

main_binary: main.cc
	g++ main.cc -I/home/andre/Desktop/LD_Preload_Experiment/ -L/home/andre/Desktop/LD_Preload_Experiment/ -lplayer -o main


clean:
	rm main libplayer.so libpreloaded.so

