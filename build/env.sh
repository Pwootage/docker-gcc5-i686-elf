#!/bin/bash

PREFIX="/usr/local"
TARGET=i686-elf
PATH="$PREFIX/bin:$PATH"

BUILD_DIR="/build"
SRC_DIR="$BUILD_DIR/src"
BUILD_TMP="$BUILD_DIR/tmp"

BINUTILS_VER=2.25
BINUTILS_SRC_FILE="binutils-$BINUTILS_VER.tar.bz2"
BINUTILS_SRC_URL="ftp://ftp.gnu.org/gnu/binutils/$BINUTILS_SRC_FILE"
BINUTILS_SRC_DIR="$SRC_DIR/binutils-$BINUTILS_VER/"
BINUTILS_BUILD_DIR="$BUILD_TMP/binuntils-$BINUTILS_VER/"

GCC_VER=5.3.0
GCC_SRC_FILE="gcc-$GCC_VER.tar.bz2"
GCC_SRC_URL="ftp://ftp.gnu.org/gnu/gcc/gcc-$GCC_VER/$GCC_SRC_FILE"
GCC_SRC_DIR="$SRC_DIR/gcc-$GCC_VER/"
GCC_BUILD_DIR="$BUILD_TMP/gcc-$GCC_VER/"

set -x
