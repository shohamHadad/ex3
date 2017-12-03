# Shir Kempinki 312253719
# Shoham Hadad 207595620

a.out: compileAll
	g++ *.o
	rm -f *.o

compileALL: include/*.h src/*.cpp
	g++ -Iinclude/ -c src/*.cpp

run: 
	./a.out

