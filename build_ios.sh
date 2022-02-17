#rm -f -r build_ios
mkdir build_ios
cd build_ios
../configure CFLAGS=-O3 --prefix=/mingw --host=x86_64-w64-mingw32 --build=x86_64-w64-mingw32 --target=aarch64-apple-darwin --with-expat --disable-binutils --disable-ld --disable-gold --disable-gas --disable-gprof --disable-sim --disable-nls --disable-multilib
make -j
