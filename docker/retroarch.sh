#!/bin/bash

docker run \
 -it \
 --rm \
 --net=host \
 -v /etc/localtime:/etc/localtime:ro \
 -e DISPLAY \
 -v ~/.Xauthority:/root/.Xauthority \
 -e PULSE_SERVER=tcp:$(hostname -i):4713 \
 --privileged \
 -v /var/lib/dbus:/var/lib/dbus \
 tukiyo3/retroarch
