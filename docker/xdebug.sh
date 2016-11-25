#!/bin/bash
docker run -d -p 80:80 --name xdebug -v /home/theasker/code:/var/www/html tommylau/xdebug
