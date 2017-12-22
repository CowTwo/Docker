FROM cowtwo/jupyter_notebook:v2.0

MAINTAINER CowTwo 

USER root

# Install pycharm
RUN apt-get update && \
    apt-get install -y tesseract-ocr-all


USER $NB_USER