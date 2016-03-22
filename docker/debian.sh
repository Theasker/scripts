#!/bin/bash
docker run -it -v /home/theasker/Descargas:/mnt/descargas --name descargas debian /bin/false
docker run -it --name debian --volumes-from descargas -P debian bash
