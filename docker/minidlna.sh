#!/bin/bash

docker run -d --net=host --name minidlna -v /mnt/datos2:/media \
    -e MINIDLNA_MEDIA_DIR=/media \
    -e MINIDLNA_LISTENING_IP=192.168.0.5 \
    -e MINIDLNA_PORT=8200 \
    -e MINIDLNA_FRIENDLY_NAME=theasker \
    bobrik/minidlna
