FROM cowtwo/jupyter_notebook:v2.1

MAINTAINER CowTwo 

USER root

# download latest pytube into /cowtwo/pytube_20181104 
# and then install it
RUN cd /cowtwo && \
    mkdir pytube_20181104 && \
	cd pytube_20181104 && \
    git clone git://github.com/nficano/pytube.git && \
	cd pytube && \
	python setup.py install

# Python install PyQt5 to facilitate matplot in bash env
RUN pip install PyQt5

# Python install bitstruct for structure pack / unpack
RUN pip install bitstruct

USER $NB_USER
