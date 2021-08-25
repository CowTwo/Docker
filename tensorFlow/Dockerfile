FROM tensorflow/tensorflow

MAINTAINER CowTwo

#++ configure tzdata and timezone during build
ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install -y python3-matplotlib
#--
RUN pip install sklearn
RUN pip install opencv-python-headless
     
