#!/bin/bash
#docker run -it -v /home/theasker/code:/var/www/html --name vol_htmlcode debian /bin/false
#docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -d mysql
docker run -d -p 80:80 --name php --link mysql:mysql --volumes-from vol_htmlcode theasker/php:5.6
