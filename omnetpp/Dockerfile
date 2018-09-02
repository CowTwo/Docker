FROM cowtwo/omnetpp:3.1

MAINTAINER cowtwo

LABEL Description="Docker image for OMNeT++ Network Simulator"
 
######################################################################################
# Env setup for vim
######################################################################################
RUN apt-get install -y cscope
RUN apt-get install -y exuberant-ctags
COPY vimInHome/ /root/
 
######################################################################################
# Install INET
######################################################################################	
RUN cd /usr/omnetpp && mkdir inet
COPY inet/ /usr/omnetpp/inet/
RUN cd /usr/omnetpp/inet/ && ls -alt
# follow build / execution guide in /usr/omnetpp/inet/INSTALL
WORKDIR /usr/omnetpp/inet/
RUN chmod +x ./inet_featuretool
# Type "opp_featuretool -h" for help, 
# Run "opp_featuretool repair" to let INET build matching the same feature combination the IDE is using
RUN opp_featuretool repair
RUN make makefiles
RUN make clean
RUN make MODE=debug
# Make bash script executable
RUN chmod +x ./src/run_inet
RUN chmod +x ./examples/wireless/aggregationtest/run

# Finished, we can test the result by 
# change directory to /usr/omnetpp/inet/examples/wireless/aggregationtest/ and execute ./run

WORKDIR /usr/omnetpp
