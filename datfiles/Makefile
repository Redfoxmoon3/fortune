SRCS = fortunes fortunes2 startrek zippy recipes fortunes-o limerick fortunes2-o
BLDS = $(addsuffix .dat,$(SRCS))

STRFILE ?= ../strfile/strfile

all : $(BLDS)

install :
	mkdir -p $(DESTDIR)$(PREFIX)/share/fortune
	install -m0644 $(SRCS) $(BLDS) $(DESTDIR)$(PREFIX)/share/fortune/

# Bug in strfile means we can't use -r
%.dat:%
	$(STRFILE) $< $@

clean :
	$(RM) *.dat
