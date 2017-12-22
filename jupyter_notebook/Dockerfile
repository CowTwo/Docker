FROM cowtwo/jupyter_notebook:v2.0

MAINTAINER CowTwo 

USER root

# Install tesseract-ocr
RUN apt-get update && \
    apt-get install -y tesseract-ocr-all

# Copy pytube into /cowtwo/pytube
RUN cd /cowtwo && \
    mkdir pytube-6.2.2

COPY pytube-6.2.2/ /cowtwo/pytube-6.2.2/

# Install textract (with cowtwo's modification)
RUN cd /cowtwo/pytube-6.2.2/ && \
    python setup.py install	

USER $NB_USER