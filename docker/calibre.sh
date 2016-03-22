#!/bin/bash

docker run -it --name="RDP-Calibre" \
 -e EDGE="0" \
 -e WIDTH="1280" \
 -e HEIGHT="720" \
 -v "${HOME}/Calibre Library/":"/home/theasker/Calibre Library" \
 -v "${HOME}/.config/calibre":"/home/theasker/.config/calibre" \
 -p 8080:8080 \
 -p 8081:8081 \
 aptalca/docker-rdp-calibre

#-v /etc/localtime:/etc/localtime:ro \
