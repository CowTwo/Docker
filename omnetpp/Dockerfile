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
	

