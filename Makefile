
CC=cc
CFLAGS=
ASM=nasm
ASMFLAGS=-fbin

BOOTSEC_SRC=src/bootsec.asm

.PHONY: all clean

all: bootsec.bin

bootsec.bin: $(BOOTSEC_SRC)
	$(ASM) $(ASMFLAGS) -o $@ $^

clean:
	rm -f bootsec.bin
