#!/bin/bash

docker run --name=codiad -v /etc/localtime:/etc/localtime:ro -v /mnt/wwwrb:/config:rw -e PGID=33> -e PUID=33>  -p 80:80 linuxserver/codiad

#docker run create	-v /home/theasker/workspace/:/config:rw \
#			-v /etc/localtime:/etc/localtime:ro \
#			-e uid=$(id -u) \
#			-e gid=$(id -g) \
#			-p 80:80 \
#			--name codiad -h codiad \
#			linuxserver/codiad

docker start codiad
