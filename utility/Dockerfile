FROM ubuntu
MAINTAINER CowTwo

RUN apt-get update && apt-get install -y kwrite
RUN DEBIAN_FRONTEND=noninteractive apt-get install wireshark -y
RUN apt-get install -y shotwell
RUN apt-get install -y vim
RUN apt-get install -y less
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gtkwave

#++ install for python markdown editor/viewer
RUN apt-get update
RUN apt-get install -y firefox
RUN apt-get install -y python-pip
RUN pip install markdown-editor
#--

#++ vim related
RUN apt-get install -y cscope
RUN apt-get install -y exuberant-ctags
RUN apt-get install -y curl
RUN apt-get install -y git
#--

#++ plantuml
RUN apt-get install -y plantuml
RUN apt-get install -y eog
#--

