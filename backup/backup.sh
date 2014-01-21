#!/bin/sh
#Script para creación de backup de los archivos de configuracion

echo Creacion del archivo tar.gz

FECHA=$(date +%F)
FROM="backup@gentoo.org"
TO=theaskerbackup@gmail.com
USUARIO="theaskerbackup"
ASUNTO="backup Theasker64 $FECHA"
MENSAJE="backup del fichero $FICHERO del día $FECHA"
SMTP="smtp.gmail.com"
PASS="prideandjoy"
FICHERO=/backup/$FECHA.Backup.tar.gz
FICHERO2=/backup/$FECHA.Backup.tar.gz_
tar cvz -T /etc/scripts/backup/PathBackup.txt -f $FICHERO 
mv $FICHERO $FICHERO2

echo "Se ha creado el fichero --> $FICHERO_"

# Mandamos el fichero creado por correo a la cuenta de gmail
sendEmail -f $FROM -t $TO -u $ASUNTO -m $MENSAJE -s $SMTP -xu $USUARIO -xp $PASS -a $FICHERO2 -o tls=yes
