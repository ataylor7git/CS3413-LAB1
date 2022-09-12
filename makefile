CC=gcc
CFLAGS=-Wall -I.
DEPS=hellomake.h
OBJS=hellomake.o hellofunc.o
EXE=hellomake
DFLAGS=-g

hellomake: $(OBJS)
	$(CC) -o $(EXE) $(OBJS) $(CFLAGS)

hellomake.o: hellomake.c $(DEPS)
	$(CC) -c hellomake.c $(CFLAGS)

hellofunc.o:hellofunc.c $(DEPS)
	$(CC) -c hellofunc.c $(CFLAGS)

run:
	./$(EXE)

debug: $(DEPS)
	$(CC) $(DFLAGS) -o hellomake hellomake.c hellofunc.c $(CFLAGS)

clean:
	rm -f $(OBJS)
	rm -f $(EXE)