#!/bin/bash
docker run -ti --net host -v /tmp/.X11-unix:/tmp/.X11-unix -v /mnt/datos1/Musica:/root -e DISPLAY=unix$DISPLAY --name clementine oszi/clementine bash

