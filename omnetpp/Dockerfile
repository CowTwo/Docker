FROM cowtwo/omnetpp:3.3

MAINTAINER cowtwo

LABEL Description="Docker image for OMNeT++ Network Simulator"
 
######################################################################################
# Insall needed package for building pahole
######################################################################################
RUN apt-get update
RUN apt-get install -y cmake
RUN apt-get install -y libdw-dev

RUN cd /cowtwo/ && mkdir pahole
COPY pahole/ /cowtwo/pahole

WORKDIR /usr/omnetpp
