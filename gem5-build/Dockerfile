FROM cowtwo/gem5_build:4.1

MAINTAINER cowtwo

LABEL Description="Docker image for gem5"

######################################################################################
# Env setup for cscope + vim
######################################################################################
RUN apt-get install -y cscope
WORKDIR /root
RUN mkdir .vim
RUN cd .vim
RUN mkdir plugin
COPY cscope_plugin/ /root/.vim/plugin/
 
WORKDIR /usr/local/src/gem5
