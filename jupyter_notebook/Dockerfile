# 使用官方的 jupyter/scipy-notebook 執行環境作為基本的 Docker 影像
FROM jupyter/scipy-notebook

MAINTAINER CowTwo 

USER root

# Install prerequisite for textract
RUN apt-get update && \
    apt-get install -y swig libpulse-dev libxml2-dev libxslt1-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy textract into /cowtwo/textract
RUN cd / && \
    mkdir cowtwo && \
    cd cowtwo && \
    mkdir textract-1.6.1

COPY textract-1.6.1/ /cowtwo/textract-1.6.1/

# Install textract (with cowtwo's modification)
RUN cd /cowtwo/textract-1.6.1/ && \
    python setup.py install

USER $NB_USER