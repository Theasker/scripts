#!/bin/bash
docker run -it -e DISPLAY --net=host -v ~/.Xauthority:/root/.Xauthority -e PULSE_SERVER=tcp::4713 --privileged -v /var/lib/dbus:/var/lib/dbus jess/chrome
