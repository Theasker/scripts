#!/bin/bash

FILELOG="/var/log/portage/emerges.log"
DIRDOKU="/var/www/localhost/htdocs/dokuwiki/data/pages/logs/emerges"
FECHALARGA=$(date +%c)
FECHACORTA=$(date +%F)

emerge -vtp $1
echo "============================================="
echo "¿Quieres instalar definitivamente el paquete?"
echo "============================================="

read RESPUESTA

if [ "$RESPUESTA" = "y" ]; then
	# Guardamos los paquetes que se van a instalar en un fichero temporal
	emerge -vtp $1 > /tmp/emerge.tmp
	
	# Agregamos los paquetes que se van a instalar al log
	PAQUETE=$(eix $1 | grep "*")
	echo "==============================================================" >> $FILELOG
	echo "$FECHALARGA ---> $PAQUETE" >> $FILELOG
	echo "==============================================================" >> $FILELOG
	cat /tmp/emerge.tmp >> $FILELOG

	# Ahora lo agregamos al fichero de texto de dokuwiki
	# Comprobamos que existe el directorio
	FILE=$DIRDOKU
	if [ -f $FILE ]; then
		echo "el directorio $FILE ya existe"
	else
		mkdir $DIRDOKU
                chmod 0755 $DIRDOKU
                chown apache:apache $DIRDOKU
	fi
	echo "__**$FECHALARGA** ---> **$PAQUETE**__" >> $DIRDOKU/$FECHACORTA.txt
	echo "<file>" >> $DIRDOKU/$FECHACORTA.txt
	emerge -vtp $1 >> $DIRDOKU/$FECHACORTA.txt
	echo "</file>" >> $DIRDOKU/$FECHACORTA.txt
	chmod 644 $DIRDOKU/$FECHACORTA.txt
	chown apache:apache $DIRDOKU/$FECHACORTA.txt
	emerge -va $1
fi
