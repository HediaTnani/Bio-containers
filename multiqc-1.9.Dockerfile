FROM    python:3-slim

MAINTAINER Hédia Tnani "hediatnani0@gmail.com"

#########################
# Software: multiqc
# Software Version: 1.9
# Software Website : https://multiqc.info/
#########################
RUN     pip install multiqc==1.9 pandoc

LABEL   tool=multiqc version=1.9

WORKDIR /data
