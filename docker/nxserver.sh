#!/bin/bash

docker run -d -p 222:22 -v /etc:/mnt:ro -v /home:/home:rw ensky/ubuntu-nxserver-xfce
