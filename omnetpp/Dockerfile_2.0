FROM cowtwo/omnetpp:1.0_Base

MAINTAINER cowtwo

LABEL Description="Docker image for OMNeT++ Network Simulator"

RUN apt-get update

# Install GDB
RUN apt-get install -y build-essential gdb

# Install ECLIPSE CDT (C/C++ Developing Tool)
RUN apt-get install -y eclipse eclipse-cdt g++

#Install openssl (developing version)
RUN apt-get install -y libssl-dev

#Install libconfig-dev (developing version)
RUN apt-get install -y libconfig-dev

#Install Eclipse CDT with Profiling tools
RUN apt-get update
RUN apt-get install -y eclipse-cdt-perf
RUN apt-get install -y eclipse-cdt-valgrind
RUN cp /usr/lib/linux-tools/4.10.0-1009-gcp/*  /usr/bin/

