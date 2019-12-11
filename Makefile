CC = gcc
FLAGS = -g -Wall

hello_frobber: hello_frobber.o memfrobber.o
	$(CC) $(CFLAGS) -o hello_frobber hello_frobber.o memfrobber.o

hello_frobber.o: hello_frobber.c
	$(CC) $(CFLAGS) -c hello_frobber.c

hello_frobber.c:
	./generate-main.sh > hello_frobber.c

memfrobber.o: memfrobber.c memfrobber.h
	$(CC) $(CFLAGS) -c memfrobber.c

clean:
	$(RM) hello_frobber *.o *~ hello_frobber.c
