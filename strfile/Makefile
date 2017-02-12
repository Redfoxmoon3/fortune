LDFLAGS+= -lcrypto

strfile : strfile.c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

install :
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m0755 strfile $(DESTDIR)$(PREFIX)/bin/
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man8
	install -m0644 strfile.8 $(DESTDIR)$(PREFIX)/share/man/man8/

clean :
	$(RM) strfile
