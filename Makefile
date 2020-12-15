
# If you don't have gcc, try cc instead, if it is an ANSI compiler.

CC=gcc

.PHONY : test clean

wordplay : wordplay.c
	$(CC) -O2 -o wordplay wordplay.c

test :
	./wordplay persiangulf && \
	./wordplay anagramming -lx && \
	./wordplay tomservocrow -n3m8 && \
	./wordplay persiangulf -ld3m10 -f /usr/share/dict/words && \
	./wordplay soylentgreen -n3w stolen -f /usr/share/dict/words && \
	./wordplay soylentgreen -n3 -w stolen -f /usr/share/dict/words && \
	./wordplay soylentgreen -n3f /usr/share/dict/words -w stolen && \
	./wordplay soylentgreen -n3 -f /usr/share/dict/words -w stolen && \
	./wordplay university -slx && \
	./wordplay trymeout -s && \
	./wordplay trymeout -v && \
	cat words721.txt /usr/share/dict/words | sort -u | ./wordplay trymeout -f -

clean :
	rm wordplay

