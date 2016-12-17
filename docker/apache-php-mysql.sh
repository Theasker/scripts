#!/bin/bash

docker run --name mysql -h mysql -e MYSQL_ROOT_PASSWORD=Theasker -d mysql/mysql-server:5.7
docker run -d -p 80:80 --link mysql --name apachephp -h apachephp -v /home/theasker/code:/var/www/html php:7.0-apache
