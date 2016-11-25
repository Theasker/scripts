#!/bin/bash
docker run -d --net host -v /home/theasker/code:/code -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.mysql-workbench:/root/.mysql/workbench -e DISPLAY=unix$DISPLAY --name mysql-workbench jdecool/mysql-workbench
