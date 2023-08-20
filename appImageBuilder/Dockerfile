FROM python:3.9.16-bullseye

LABEL Description="AppImage Builder Env"

RUN apt-get update

# install AppImage builder tools
RUN apt-get install -y binutils coreutils desktop-file-utils fakeroot fuse libgdk-pixbuf2.0-dev patchelf python3-pip python3-setuptools squashfs-tools strace util-linux zsync
RUN pip3 install appimage-builder

# download qt-appimage-template and related package for building this app
# (and then we can use appimagebuilder to build appImage for this app for example)
RUN apt-get install -y  git cmake zlib1g-dev qtdeclarative5-dev qml-module-qtquick2 qml-module-qtquick-window2 qml-module-qtquick-layouts qml-module-qtquick-layouts qml-module-qtquick-controls2
RUN mkdir -p /appImageExample
RUN cd /appImageExample && git clone https://www.opencode.net/azubieta/qt-appimage-template.git 
RUN cd /appImageExample/qt-appimage-template && cmake . -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr
WORKDIR /appImageExample/qt-appimage-template
# then we can 'make' the application
# Check appImage note for illustration of further steps 
 
