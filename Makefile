DESTDIR     = 
prefix      = /usr
USRBINDIR   = $(DESTDIR)$(prefix)/bin

CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)gcc
INSTALL = install

all : ciso
ciso : ciso.o
	$(CC) -g -o ciso ciso.o -lz -lzopfli

ciso.o : ciso.c
	$(LD) -g -o ciso.o -c ciso.c

install :
	$(INSTALL) -m 755 ciso $(USRBINDIR)/ciso

clean:
	rm -rf *.o ciso
