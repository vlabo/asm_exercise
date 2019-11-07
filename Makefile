CC=clang
ASM=/usr/local/bin/nasm
LINK=ld
CFLAGS=-I. -g -Wl,-no_pie
ASMFLAGS = -f macho64 -g

%.o: %.asm $(DEPS)
	$(ASM) -o $@ $< $(ASMFLAGS)

sandbox: exercises.o main.c
	$(CC) -o sandbox main.c exercises.o $(CFLAGS)

clean :
	rm *.o sandbox