#!/bin/sh
#Script para copia de seguridad de los permisos del servidor web

echo Creacion del archivo tar.gz

FECHA=$(date +%F)
DIR="/var/www/localhost/htdocs/"
FICHBACKUP="/backup/chmod.txt"
FROM="backup@gentoo.org"
TO=theaskerbackup@gmail.com
USUARIO="theaskerbackup"
ASUNTO="backup permisos $FECHA"
MENSAJE="backup de los permisos de /var/www/localhost/htdocs del día $FECHA"
SMTP="smtp.gmail.com"
PASS="prideandjoy"

# se crea el fichero con todos los permisos
find $DIR ! -type l -exec stat --format="%a %n" "{}" \; > $FICHBACKUP

tar cvz $FICHBACKUP -f /backup/$FECHA.chmod.tar.gz 

# Mandamos el fichero creado por correo a la cuenta de gmail

sendEmail -f $FROM -t $TO -u $ASUNTO -m $MENSAJE -s $SMTP -xu $USUARIO -xp $PASS -a $FICHBACKUP -o tls=yes

# Para restaurar los permisos ejecutar 

# tar xvf /backup/archivo.tar.gz
# while read LINE; do PERMS=${LINE%% *}; FILE=${LINE#* }; chmod $PERMS "$FILE"; done < chmod.txt
