CC= cc
CFLAGS += -O0 -std=gnu99
LDFLAGS += -lm
CPPFLAGS +=

EXES= poc poc_poison poc_vis

all: $(EXES)

clean:
	rm -f $(EXES)

poc: poc.c
	$(CC) -o $@ $+ $(CFLAGS) $(LDFLAGS) $(CPPFLAGS)

poc_poison: poc.c
	$(CC) -o $@ $+ $(CFLAGS) $(LDFLAGS) -DPOISON $(CPPFLAGS)

poc_vis: poc.c
	$(CC) -o $@ $+ $(CFLAGS) $(LDFLAGS) -DVISUALIZE $(CPPFLAGS)

.PHONY: all clean
