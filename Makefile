#
# In order to execute this "Makefile" just type "make"
#	A. Delis (ad@di.uoa.gr)
#

OBJS	= pugixml.o Menu.o Game.o main.o
SOURCE	= pugixml.cpp Menu.cpp Game.cpp main.cpp
HEADER	= pugiconfig.hpp pugixml.hpp Menu.h Game.h
OUT	= main.o
CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 = 
# -g option enables debugging mode 
# -c flag generates object code for separate files


all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)


# create/compile the individual files >>separately<<
pugixml.o: pugixml.cpp
	$(CC) $(FLAGS) pugixml.cpp -std=c11

Menu.o: Menu.cpp
	$(CC) $(FLAGS) Menu.cpp -std=c11

Game.o: Game.cpp
	$(CC) $(FLAGS) Game.cpp -std=c11

main.o: main.cpp
	$(CC) $(FLAGS) main.cpp -std=c11


# clean house
clean:
	rm -f $(OBJS) $(OUT)