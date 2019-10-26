# In order to execute this "Makefile" just type "make"
# If you're getting a permission denied error (cannot write out main.o), try "sudo make" instead...

OBJS	= main.o
SOURCE	= main.cpp
HEADER	= Attack.h Container.h Creature.h Item.h Room.h Trigger.h header.h
OUT	= main
CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 =
# -g option enables debugging mode
# -c flag generates object code for separate files


all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)


# create/compile the individual files >>separately<<
main.o: main.cpp
	$(CC) $(FLAGS) main.cpp -std=c11


# clean house
clean:
	rm -f $(OBJS) $(OUT)

# To run the program, use ./main
