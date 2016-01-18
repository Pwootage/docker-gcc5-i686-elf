# Set up gcc5 for cross-compiling

FROM ubuntu:15.10

RUN apt-get update && apt-get install -y \
  wget \
  curl \
  bzip2 \
  gcc \
  g++ \
  make \
  bison \
  flex \
  libgmp-dev \
  libmpfr-dev \
  libisl-dev \
  libcloog-isl-dev \
  libmpc-dev \
  texinfo

# Copy scripts as we go to cache better
# Get src
COPY build/ /build/
RUN /build/get-src.sh && \
  /build/extract-src.sh && \
  /build/build-binutils.sh && \
  /build/build-gcc.sh && \
  rm -rf /build

# Cleanup uneeded packages
RUN apt-get purge -y \
  wget \
  curl \
  bzip2 \
  make \
  bison \
  flex \
  libgmp-dev \
  libmpfr-dev \
  libisl-dev \
  libcloog-isl-dev \
  libmpc-dev \
  texinfo && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*
