FORTDIR?=	$(PREFIX)/share/fortune
CFLAGS+=	-I../strfile -DFORTDIR=\"$(FORTDIR)\"
LDFLAGS+=	-lbsd

fortune : fortune.c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

install :
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m0755 fortune $(DESTDIR)$(PREFIX)/bin/
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man6
	install -m0644 fortune.6 $(DESTDIR)$(PREFIX)/share/man/man6/

clean :
	$(RM) fortune
