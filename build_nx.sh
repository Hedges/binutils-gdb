#!/bin/sh
TRG="build_nx"
if [ "$1" ==  "reset" ]
then
	if [ -d "$TRG" ] 
	then
		rm -f -r "$TRG"
	fi
	mkdir "$TRG"
	cd "$TRG"
	../configure CFLAGS=-O3 --prefix=/mingw --host=x86_64-w64-mingw32 --build=x86_64-w64-mingw32 --target=aarch64-apple-darwin --with-expat --disable-binutils --disable-ld --disable-gold --disable-gas --disable-gprof --disable-sim --disable-nls --disable-multilib
else
	if [ ! -d "$TRG" ] 
	then
		mkdir "$TRG"
	fi
	cd "$TRG"
fi
make -j
