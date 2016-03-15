#!/bin/bash

docker run -it -d -p 80:80 -e uid=$(id -u) -e gid=$(id -g) --name cloud9 -h cloud9 -v /mnt/wwwrb/:/workspace/ kdelfour/cloud9-docker
