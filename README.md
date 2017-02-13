# fortune

This code was torn directly out of OpenBSD 5.7's source package ~~and modified
to build on [Alpine Linux](http://alpinelinux.org) against
[libbsd](http://libbsd.freedesktop.org) 0.7.0.~~ modified to not rely on libbsd,
and use arc4random from LibreSSL instead. Please see `LICENSE` for
details.

## Differences

The two C source files, `strfile.c` and `fortune.c`, have had
`#include <sys/types.h>` added near the top of the file. Additionally, all of
the `Makefile`s have been replaced to work with GNU Make.

~~Notably, there is no option to disable "offensive" fortunes. Just erase the
`fortune-o`, `fortune2-o`, and `limerick` files from the `datfiles` directory
and remove the references from `datfiles/Makefile`.~~ invoke Makefile-o to
get the "offensive" fortunes.

## When cross compiling

Invoke make in datfiles on the target to generate datafiles.

## Known Issues

- [ ] *strfile* fails with a segmentation fault in random mode (the `-r` flag)

