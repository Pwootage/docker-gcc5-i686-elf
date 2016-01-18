#!/bin/bash

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$MYDIR/env.sh"

cd "$SRC_DIR"
tar -xf "$BINUTILS_SRC_FILE"
tar -xf "$GCC_SRC_FILE"
