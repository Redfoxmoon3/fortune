PREFIX ?= /usr/local

SUBDIRS = fortune strfile datfiles

all :
	for subdir in $(SUBDIRS); do $(MAKE) -C $$subdir PREFIX=$(PREFIX); done

install : all
	for subdir in $(SUBDIRS); do $(MAKE) -C $$subdir DESTDIR=$(DESTDIR) PREFIX=$(PREFIX) install; done

clean :
	for subdir in $(SUBDIRS); do $(MAKE) -C $$subdir clean; done

