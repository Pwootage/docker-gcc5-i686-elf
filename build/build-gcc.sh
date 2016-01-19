#!/bin/bash

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$MYDIR/env.sh"


mkdir -p "$GCC_BUILD_DIR"
cd "$GCC_BUILD_DIR"

"$GCC_SRC_DIR/configure" \
  --target=$TARGET \
  --prefix="$PREFIX" \
  --disable-nls \
  --enable-languages=c,c++ \
  --without-headers

make -j 4 all-gcc
make -j 4 all-target-libgcc
make install-gcc
make install-target-libgcc

# Strip binaries
find /usr/local/bin/ -executable -type f | xargs strip --strip-unneeded
find /usr/local/libexec/gcc/i686-elf/5.3.0/ -executable -size +5M -type f | xargs strip --strip-unneeded

#make
#make install-strip
