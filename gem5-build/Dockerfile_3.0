FROM cowtwo/gem5_build:2.0

MAINTAINER cowtwo

LABEL Description="Docker image for gem5"

RUN apt-get update

# Install GDB
RUN apt-get install -y build-essential gdb

# Install ECLIPSE CDT (C/C++ Developing Tool)
RUN apt-get install -y eclipse eclipse-cdt g++
