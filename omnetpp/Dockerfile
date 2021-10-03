FROM cowtwo/omnetpp:3.2

MAINTAINER cowtwo

LABEL Description="Docker image for OMNeT++ Network Simulator"
 
######################################################################################
# "git init" on inet source code, to facilitate personal-modification tracking
######################################################################################
WORKDIR /usr/omnetpp/inet/
RUN git config --global user.email "ct@test" && git config --global user.name "cowtwo"
RUN git init && git add --all && git commit -m "initialize git tracking"

######################################################################################
# Insall kcachegrind and massif-visualizer
######################################################################################
RUN apt-get update
RUN apt-get install -y kcachegrind
RUN apt-get install -y massif-visualizer

WORKDIR /usr/omnetpp
