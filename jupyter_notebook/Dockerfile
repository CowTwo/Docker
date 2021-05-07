FROM cowtwo/jupyter_notebook:v2.2

MAINTAINER CowTwo 

USER root

####++ To support matplot showing chinese font
# copy chinese font for matplot
COPY TaipeiSansTCBeta-Regular.ttf /opt/conda/lib/python3.6/site-packages/matplotlib/mpl-data/fonts/ttf/
RUN chmod 664 /opt/conda/lib/python3.6/site-packages/matplotlib/mpl-data/fonts/ttf/TaipeiSansTCBeta-Regular.ttf
# the modified matplotlibrc is created by adding Taipei Sans TC Beta to original matplotlibrc 
COPY matplotlibrc /opt/conda/lib/python3.6/site-packages/matplotlib/mpl-data/matplotlibrc
RUN chmod 664 /opt/conda/lib/python3.6/site-packages/matplotlib/mpl-data/matplotlibrc
# remove matplot cache
RUN rm -rf ~/.cache/matplotlib
####--

####++ Install scrapy
RUN pip install --upgrade pip
RUN pip install Scrapy
####--

USER $NB_USER
