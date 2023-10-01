FROM node:18-bullseye-slim

LABEL Description="firebase sdk (based on node:18-bullseye-slim)"

RUN apt-get update

# install firefox, java
RUN apt-get install -y firefox-esr default-jre

# install firebase-tools
RUN npm install -g firebase-tools

 
