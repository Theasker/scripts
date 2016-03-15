#!/bin/bash

docker run -d \
	-v /etc/localtime:/etc/localtime:ro \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY \
	--volumes-from descargas \
	--name gimp \
	jess/gimp
