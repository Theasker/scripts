FROM progrium/busybox
MAINTAINER Theasker <theasker@gmail.com>
RUN opkg-install wget bash git libstdcpp && \
    wget https://nodejs.org/dist/v4.1.0/node-v4.1.0-linux-x64.tar.gz --no-check-certificate && \
    gunzip -d node-v4.1.0-linux-x64.tar.gz && \
    tar -xf node-v4.1.0-linux-x64.tar && \
    rm -f /lib/libpthread.so.0 && \
    ln -s /lib/libpthread-2.18.so /lib/libpthread.so.0 && \
    rm node-v4.1.0-linux-x64.tar && \
    mv /node-v4.1.0-linux-x64 node
ENV PATH=$PATH:/node/bin
