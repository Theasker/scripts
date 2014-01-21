#!/bin/sh
#Script para enviar el fichero que se pasa como parámetro

FECHA=$(date +%F)
FROM="backup@gentoo.org"
TO=theasker@gmail.com
USUARIO="theaskerbackup"
ASUNTO="fichero $1"
MENSAJE="el fichero $FICHERO ha sido enviado el día $FECHA"
SMTP="smtp.gmail.com"
PASS="prideandjoy"
FICHERO=$1

echo "Enviando el fichero: $FICHERO"

# Mandamos el fichero creado por correo a la cuenta de gmail
sendEmail -f $FROM -t $TO -u $ASUNTO -m $MENSAJE -s $SMTP -xu $USUARIO -xp $PASS -a $FICHERO -o tls=yes
