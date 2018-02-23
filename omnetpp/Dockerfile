FROM cowtwo/omnetpp:2.0

MAINTAINER cowtwo

LABEL Description="Docker image for OMNeT++ Network Simulator"

# Install SystemC
RUN cd / && \
    mkdir cowtwo

COPY systemc-2.3.2.tar.gz /cowtwo/

RUN cd /cowtwo && \
	tar -xzvf systemc-2.3.2.tar.gz &&\
	cd systemc-2.3.2 && \
	mkdir /usr/local/systemc232 && \
	mkdir objdir && \
	cd objdir && \
	../configure --prefix=/usr/local/systemc232 && \
	make && \
	make install	
	
# Enable the i386 architecture / Install 32-bit libraries
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libc6:i386 libstdc++6:i386
RUN apt-get install -y libc6-dev-i386

# Install ifconfig / ping
RUN apt-get install -y net-tools iputils-ping

	
	

