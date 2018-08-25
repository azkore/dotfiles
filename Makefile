OS := $(shell uname)
ifeq ($(OS),Darwin)
	FORMAT=macho64
	OSFLAGS := -DOSX
else
	FORMAT=elf64
 endif

ASMFLAGS := ${OSFLAGS} -f${FORMAT}

ifeq ($(ASM),yasm)
	ASMFLAGS := ${ASMFLAGS} -gdwarf2
else
	ASM=nasm
	ASMFLAGS := ${ASMFLAGS} -Fdwarf
endif

%.o : %.asm
	$(ASM) ${ASMFLAGS} $< -o $@

% : %.o
	ld $< -o $@

.PHONY : clean
clean:
	$(RM) *.o
	find . -type f -executable ! -name "*.*" -delete
