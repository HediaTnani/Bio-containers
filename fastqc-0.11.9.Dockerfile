
##########################fastqc-0.11.9###########################
FROM    ubuntu:latest
MAINTAINER Hédia Tnani <hediatnani0@gmail.com>

RUN     cd /tmp \
&&      apt-get update \
&&      apt-get install -y openjdk-11-jre-headless \
&&      apt-get install -y libfindbin-libs-perl \
&&      apt-get install -y wget unzip \
&&      wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip \
&&      unzip fastqc_v0.11.9.zip \
&&      cd FastQC \
&&      chmod 755 fastqc \
&&      cd .. \
&&      mv FastQC /opt/fastqc \
&&      ln -s /opt/fastqc/fastqc /usr/local/bin \
&&      cd / \
&&      apt autoremove -y wget \
&&      rm -rf /tmp/* \
&&      rm -rf /var/lib/apt/list/*

LABEL   tool=fastqc version=0.11.9

WORKDIR /data
