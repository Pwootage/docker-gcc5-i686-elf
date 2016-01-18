#!/bin/bash

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$MYDIR/env.sh"

mkdir -p "$SRC_DIR"
wget -nv -O "$SRC_DIR/$BINUTILS_SRC_FILE" "$BINUTILS_SRC_URL"
wget -nv -O "$SRC_DIR/$GCC_SRC_FILE" "$GCC_SRC_URL"
