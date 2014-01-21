#!/bin/bash
# Este script copia un fichero cuando es creado o modificado 
# en el directorio DIR.

DIR="/home/theasker/.purple/logs/msn/itaca74@gmail.com/"
DIRLOG="/var/log/inotify"
DIRBACKUP="/backup/pidgin/itaca74@gmail.com"

inotifywait -mrq --format '%w%f %e' -e create -e delete -e modify $DIR | \
  while read line
  do
	FECHA=$(date +%c)
	echo $FECHA $line >> $DIRLOG/msn.log
	rsync -a $DIR $DIRBACKUP
  done &
MSN_PID=$!
echo "el pid de inotifywait es: $MSN_PID"
