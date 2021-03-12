
FROM ubuntu:18.04

MAINTAINER Guiying Zhang

# _____ ____  _____ _____ ____  _   _ ____  _____ _____ ____  
# |  ___|  _ \| ____| ____/ ___|| | | |  _ \|  ___| ____|  _ \ 
# | |_  | |_) |  _| |  _| \___ \| | | | |_) | |_  |  _| | |_) |
# |  _| |  _ <| |___| |___ ___) | |_| |  _ <|  _| | |___|  _ < 
# |_|   |_| \_\_____|_____|____/ \___/|_| \_\_|   |_____|_| \_\


#RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list && rm -Rf /var/lib/apt/lists/* && apt-get update
#RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && rm -Rf /var/lib/apt/lists/* && apt-get update
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list&&apt-get clean&&apt-get update
RUN 	apt-get -y update && \
	apt-get install -y --no-install-recommends \
	apt-utils \
           bzip2 \
           ca-certificates \
           curl \
           locales \
           unzip \
	   tcsh \
           bc \
           tar \
           libgomp1 \
           perl-modules \
           wget \
           curl \
           libsm-dev \
           libx11-dev \
           libxt-dev \
           libxext-dev \
           libglu1-mesa \
           libpython2.7-stdlib \
#added by Guiying Zhang -< libglib2.0-0
	   libglib2.0-0 \
	   libglib2.0-0 \
	   bc \
           libgomp1 \
           libxmu6 \
           libxt6 \
           perl \
           tcsh \
	&& rm -rf /var/lib/apt/lists/*

ENV WKDIR=/app
ENV FREESURFER_HOME=$WKDIR/freesurfer
ENV SUBJECTS_DIR=$FREESURFER_HOME/subjects

ARG PKG_NAME=freesurfer-linux-ubuntu18_x86_64-dev.tar.gz

RUN mkdir $WKDIR

COPY ./$PKG_NAME $WKDIR

RUN /bin/bash -c "cd $WKDIR && \
	tar -zxvpf $PKG_NAME && \
	source $FREESURFER_HOME/SetUpFreeSurfer.sh && \
	apt-get update"
	

