# In order to execute this "Makefile" just type "make"
# If you're getting a permission denied error (cannot write out main.o), try "sudo make" instead...

OBJS	= kenyondunnet.o zork.o
SOURCE	= kenyondunnet.cpp zork.cpp
HEADER	= Attack.h Container.h Creature.h Item.h Room.h Trigger.h header.h
OUT	= kenyondunnet zork
LFLAGS	 = 
# -g option enables debugging mode
# -c flag generates object code for separate files

all: kenyondunnet zork

# create/compile the individual files >>separately<<

kenyondunnet zork: $(OBJS)
	$(CC) -o $@ $^ $(LFLAGS)

%.o: %.c $(HEADER)
	$(CC) -c -o $@ $< $(LFLAGS)

# clean this house

clean:
	rm -f $(OBJS) $(OUT)

# To run the customized dunnet program, use ./kenyondunnet
# To run the original Zork program, use ./zork
