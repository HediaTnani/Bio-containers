FROM ubuntu:latest

MAINTAINER Hédia Tnani "hediatnani0@gmail.com"

#########################
# Software: trimmomatic
# Software Version: 0.39
# Software Websit: http://www.usadellab.org/cms/?page=trimmomatic
# Description: A flexible read trimming tool for Illumina NGS data
#########################

## Install Trimmomatic
RUN     cd /tmp \
&&      apt-get update \
&&      apt-get install -y openjdk-11-jre-headless \
&&      apt-get install -y wget unzip \
&&      wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.39.zip \
&&      unzip Trimmomatic-0.39.zip \
&&      mv Trimmomatic-0.39 /opt/trimmomatic \
&&      ln -s /opt/trimmomatic/trimmomatic-0.39.jar /opt/trimmomatic/trimmomatic.jar \
&&      cd / \
&&      apt autoremove -y wget unzip \
&&      rm -rf /tmp/* \
&&      rm -rf /var/lib/apt/lists/*

LABEL tool=trimmomatic version=0.39

WORKDIR /data
