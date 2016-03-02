#!/bin/bash

docker run  -v $HOME/Documents:/home/libreoffice/Documents:rw \
            -v /tmp/.X11-unix:/tmp/.X11-unix \
            -e uid=$(id -u) \
            -e gid=$(id -g) \
            -e DISPLAY=unix$DISPLAY \
            --name libreoffice \
            chrisdaish/libreoffice
