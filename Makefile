P=hello
OBJECTS=
CFLAGS = -g -Wall -O3
LDLIBS=

all: $(P)
	./$(P)

$(P): $(OBJECTS)
