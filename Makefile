# In order to execute this "Makefile" just type "make"
# If you're getting a permission denied error (cannot write out main.o), try "sudo make" instead...

OBJS	= kenyondunnet.o zork.o
SOURCE	= kenyondunnet.cpp zork.cpp
HEADER	= Attack.h Container.h Creature.h Item.h Room.h Trigger.h header.h
OUT	= kenyondunnet zork
CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 =
# -g option enables debugging mode
# -c flag generates object code for separate files


all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)


# create/compile the individual files >>separately<<
kenyondunnet.o: kenyondunnet.cpp
	$(CC) $(FLAGS) kenyondunnet.cpp -std=c11
zork.o: zork.cp
	$(CC) $(FLAGS) zork.cpp -std=c11


# clean house
clean:
	rm -f $(OBJS) $(OUT)

# To run the customized dunnet program, use ./kenyondunnet
# To run the original Zork program, use ./zork
