#!/bin/bash
docker run -it -v /home/theasker/code:/var/www/html --name www debian /bin/false
docker run -d -p 80:80 --name php -v /home/theasker/code:/var/www/html php:7-apache

