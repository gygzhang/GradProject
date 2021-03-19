FROM centos:7.2.1511

MAINTAINER Guiying Zhang <gygzhang@foxmail.com>

RUN yum install -y \
    libGLU \
    libXmu \
    perl \
    tcsh \
    which \
    bzip2 \
    ca-certificates \
    curl \
    locales \
    unzip \
    tcsh \
    bc \
    tar \
    ＃ｕｂｕｎｔｕ
    libgomp1 \
    #for the centos 
    libgomp \
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
    yum clean all

ENV WKDIR=/app
ENV FREESURFER_HOME=$WKDIR/freesurfer
ENV SUBJECTS_DIR=$FREESURFER_HOME/subjects

ENV PKG_NAME=freesurfer-linux-centos7_x86_64-7.1.1.tar.gz

RUN mkdir $WKDIR

COPY $PKG_NAME onlaunch.sh $WKDIR/

RUN cd $WKDIR && tar -zxvpf $PKG_NAME && cd $FREESURFER_HOME

RUN /bin/bash -c 'chmod +x $WKDIR/onlaunch.sh'

CMD /bin/bash -c "$WKDIR/onlaunch.sh" ;/bin/bash

