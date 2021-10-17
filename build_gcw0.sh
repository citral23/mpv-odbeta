#!/bin/sh
export PATH=$PATH:/opt/gcw0-toolchain/usr/bin:/opt/gcw0-toolchain/bin:/opt/gcw0-toolchain/mipsel-gcw0-linux-uclibc/sysroot/usr/include:/opt/gcw0-toolchain/mipsel-gcw0-linux-uclibc/sysroot/usr/lib
export TARGET=mipsel-linux
export CC=mipsel-linux-gcc
export DEST_OS=linux
#export CFLAGS="-O3 -ffast-math -mplt -mno-shared"  
export LDFLAGS="$CFLAGS"
export PKG_CONFIG_PATH=/opt/gcw0-toolchain/mipsel-gcw0-linux-uclibc/sysroot/usr/lib/pkgconfig
./waf configure --disable-debug-build --enable-sdl2
./waf build
/opt/gcw0-toolchain/mipsel-gcw0-linux-uclibc/bin/strip build/mpv
