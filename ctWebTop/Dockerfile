FROM debian:bullseye

LABEL Description="ctWebTop"

RUN apt-get update
#++ Just for test xeyes w/ xpra
RUN apt-get install -y x11-apps
#--
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y xpra
RUN DEBIAN_FRONTEND=noninteractive apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
RUN apt-get install -y xfce4-terminal
#++ Because there is no display connected to your instance, disable the display manager service on your instance
RUN systemctl disable lightdm.service
#-- 
#++ Install the full suite of Linux desktop applications, including the Firefox browser, LibreOffice office application suite, and the Evince PDF viewer
RUN apt install --assume-yes task-xfce-desktop
#--
#++ For Chinese input
RUN apt install -y ibus-chewing
#--
#++ 
RUN apt install -y vim 
RUN apt install -y less 
RUN apt install -y bat
#--
