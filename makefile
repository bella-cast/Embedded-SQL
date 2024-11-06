DB2PATH = /home/db2inst2/sqllib
# The following compile and link options are for the gcc
CC=gcc

CFLAGS=-I$(DB2PATH)/include 
#LIBS=-L$(DB2PATH)/lib -R$(DB2PATH)/lib -ldb2
LIBS=-L$(DB2PATH)/lib -ldb2


all: check courserep

check: check.sqc util.o
	db2 connect to cs348
	db2 prep check.sqc bindfile
	db2 bind check.bnd
	db2 connect reset
	$(CC) $(CFLAGS) -c check.c 
	$(CC) $(CFLAGS) -o check check.o util.o $(LIBS)

courserep: courserep.sqc util.o
	db2 connect to cs348
	db2 prep courserep.sqc bindfile
	db2 bind courserep.bnd
	db2 connect reset
	$(CC) $(CFLAGS) -c courserep.c 
	$(CC) $(CFLAGS) -o courserep courserep.o util.o $(LIBS)

clean:
	rm -f check check.c check.o check.bnd
	rm -f courserep courserep.c courserep.o courserep.bnd

util.o : util.c
	$(CC) -w -c util.c $(CFLAGS)

