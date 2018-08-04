FROM cowtwo/gem5_build:4.1

MAINTAINER cowtwo

LABEL Description="Docker image for gem5"

######################################################################################
# Env setup for vim
######################################################################################
RUN apt-get install -y cscope
RUN apt-get install -y exuberant-ctags
COPY vimInHome/ /root/
 
WORKDIR /usr/local/src/gem5
