FROM php:5.6.29-apache
RUN apt-get update && docker-php-ext-install pdo mysql
EXPOSE 80
#ADD ./html /var/www/html
CMD apache2 -D FOREGROUND