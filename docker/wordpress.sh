#!/bin/bash

docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -d mysql
docker run --name wordpress --link mysql:mysql -p 8080:80 -d wordpress
