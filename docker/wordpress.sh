#!/bin/bash
docker run -it -v /home/theasker/Descargas:/mnt/descargas --name descargas debian /bin/false
docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -d mysql
docker run --name wordpress --volumes-from descargas --link mysql:mysql -p 8080:80 -d wordpress
