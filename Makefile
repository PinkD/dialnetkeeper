CC = gcc
CFLAGS = -lcrypto -Wall

dianetkeeper: dianetkeeper.c
	$(CC) $(CFLAGS) $< -o $(@F)

.PHONY: clean install uninstall

clean:
	-rm *.o dianetkeeper

install:
	@sudo cp /usr/bin/dialnetkeeper dianetkeeper.bak 
	@sudo cp dianetkeeper /usr/bin/

uninstall:
	@sudo cp dianetkeeper.bak /usr/bin/dianetkeeper
