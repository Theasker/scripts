#!/bin/bash
# Este script notifica cuando un fichero es creado, modificado o eliminado en /etc.

DIR="/etc"
DIRLOG="/var/log/inotify"
DIRDOKU="/var/www/localhost/htdocs/dokuwiki/data/pages/logs"

exec inotifywait -mrq --format '%w%f %e' -e create -e delete -e modify $DIR | \
  while read line
  do
	FECHA=$(date +%c)
	echo $FECHA $line >> $DIRLOG/etc.log
	touch /tmp/etc.log.txt
	echo "<file>" > /tmp/etc.log.txt
	cat $DIRLOG/etc.log >> /tmp/etc.log.txt
	echo "</file>" >> /tmp/etc.log.txt
	mv /tmp/etc.log.txt $DIRDOKU
	chmod 644 $DIRDOKU/etc.log.txt
	chown apache:apache $DIRDOKU/etc.log.txt
	
	echo $FECHA $line
  done 