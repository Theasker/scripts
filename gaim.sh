#!/bin/bash

#Cambiar estos 5 valores para adecuarlo al sistema
DIRECTORIOS="/home/sonia/.gaim/logs/" #directorios a respaldar
BACKUPDIR=/backup # Directorio donde se guarda el backup (debe existir)
FECHADIR=/backup # Directorio donde se guarda la fecha del último backup completo
TAR=/bin/tar # localización del ejecutable tar (se localiza con whereis tar)

# datos de la cuenta de correo
from="backugaim@gentoo.org"
correo="theasker@gmail.com"
mensaje="backup del fichero $fichero del día $FECHA"
smtp="smtp.gmail.com"
pass="Pride and Joy"

# A partir de aquí no hace falta tocar nada

PATH=/usr/local/bin:/usr/bin:/bin

# cada día se realiza un backup incremental.
# "NUEVO" coge la fecha del backup del día anterior
# para realizar un backup de los archivos creados a partir de la fecha de "NUEVO".

AHORA=`date "+%Y-%m-%d"`

# Actualizar fecha del backup incremental
echo $AHORA > $FECHADIR/ultimafechagaim

# Backup incremental diario - sobrescribe el de la semana anterior

# Obtener fecha del último backup
NUEVO="--newer=`cat $FECHADIR/ultimafechagaim`"
echo "$NUEVO"
$TAR $NUEVO -cf $BACKUPDIR/gaim-$AHORA.tar $DIRECTORIOS
echo "$TAR $NUEVO -cf $BACKUPDIR/gaim-$AHORA.tar $DIRECTORIOS"

sendEmail -f $from -t $correo -u "backup gaim" -m $mensaje -s $smtp -xu $correo -xp "Pride and Joy" -a $BACKUPDIR/gaim-$AHORA.tar -o tls=yes
rm $BACKUPDIR/gaim-$AHORA.tar
