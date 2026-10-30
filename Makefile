CXX = g++
CXXFLAGS = -O2 -Wall
SFML_LIBS = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

all: pacman

pacman: src/pacman.cpp
	$(CXX) $(CXXFLAGS) src/pacman.cpp -o pacman $(SFML_LIBS)

gerador: src/geradorMatriz.cpp
	$(CXX) $(CXXFLAGS) src/geradorMatriz.cpp -o gerador

clean:
	rm -f pacman gerador