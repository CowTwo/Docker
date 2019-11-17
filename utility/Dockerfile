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

#++ Drive : pull from google drive
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:twodopeshaggy/drive
RUN apt-get update
RUN apt-get install -y drive
#--

#++ EasyBlogger
RUN pip install EasyBlogger
RUN apt-get install -y pandoc
#Chinese character font for firefox display correctly 
RUN apt-get install -y ttf-wqy-microhei 
#--

######################################################################################
# "git init" on EasyBlogger source code, to facilitate personal-modification tracking
######################################################################################
WORKDIR /usr/local/lib/python2.7/dist-packages/blogger/
RUN git config --global user.email "ct@test" && git config --global user.name "cowtwo"
RUN git init && git add --all && git commit -m "initialize git tracking"

