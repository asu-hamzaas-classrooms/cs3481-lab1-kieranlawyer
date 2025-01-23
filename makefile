CC = g++
CFLAGS = -g -c -Wall
OBJ = main.o Tools.o
.C.o:
	$(CC) $(CFLAGS) $< -o $@

lab1: $(OBJ)
	$(CC) $(OBJ) -o lab1

run:
	make lab1
	./lab1 

main.o: Tools.h

Tools.o: Tools.h

clean:
	rm $(OBJ) lab1
