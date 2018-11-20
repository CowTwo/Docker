FROM cowtwo/gsrcreposdk:v1.0

MAINTAINER cowtwo

LABEL Description="Google Cloud SDK + gitk"

######################################################################################
# Env setup for vim and copy .bashrc
######################################################################################
RUN apt-get install -y vim
RUN apt-get install -y cscope
RUN apt-get install -y exuberant-ctags
COPY vimInHome/ /root/
