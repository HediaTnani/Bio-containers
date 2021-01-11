FROM      alpine

RUN         cd /tmp \
&&      wget https://github.com/alexdobin/STAR/archive/2.7.7a.tar.gz \
&&      tar xf 2.7.7a.tar.gz \
&&      cd STAR-2.7.7a \
&&      cp bin/Linux_x86_64_static/* /usr/local/bin \
&&      cd / \
&&      rm -rf /tmp/*

LABEL     tool=star version=2.7.7a

WORKDIR /data
~                            
