#!/bin/bash

#docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY --device /dev/snd --name spotify jess/spotify
#!/bin/bash
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY --net=host -v ~/.Xauthority:/root/.Xauthority --device /dev/snd --privileged jess/spotify
