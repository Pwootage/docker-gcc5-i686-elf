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

  make all-gcc
  make all-target-libgcc
  make install-gcc
  make install-target-libgcc
