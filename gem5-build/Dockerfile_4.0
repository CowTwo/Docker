FROM cowtwo/gem5_build:3.0

MAINTAINER cowtwo

LABEL Description="Docker image for gem5"


# Compile gem5 as a library
WORKDIR /usr/local/src/gem5
RUN scons --with-cxx-config --without-python --without-tcmalloc build/ARM/libgem5_opt.so --force-lto

# Build the CoSim example
WORKDIR /usr/local/src/gem5/util/tlm
RUN scons
