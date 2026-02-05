# CC means compiler. We are choosing gcc as our main compiler.
CC=gcc

# CFlags is for flags that be will used with the compiler.
CFLAGS = -c -Wall

# Target for all. 'make all' will trigger all other make commands.
all: prog

prog: main.o isEven.o isOdd.o
	$(CC) main.o isEven.o isOdd.o -o prog


#main.o/isEven.o/isOdd.o are object files made by the compiler. They are exectuables yet.
main.o: main.c isEven.h isOdd.h
		$(CC) $(CFLAGS) main.c


isEven.o: isEven.c
		$(CC) $(CFLAGS) isEven.c


isOdd.o: isOdd.c
		$(CC) $(CFLAGS) isOdd.c

clean:
	rm -rf *.o
