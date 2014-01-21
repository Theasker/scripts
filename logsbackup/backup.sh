#!/bin/sh
#Script para creacin de backup

echo Creacion del archivo tar.gz

fecha=$(date +%F)
from="backup@gentoo.org"
correo="theaskergentoo@gmail.com"
mensaje="backup del fichero $fichero del día $fecha"
smtp="smtp.gmail.com"
pass="vaughan"

tar cvz -T /etc/scripts/backup/PathBackup.txt -f /backup/$fecha.BackUp.tar.gz 

fichero=$fecha.Backup.tar.gz
echo El proceso ha terminado
echo Se ha creado el fichero "$fichero"

# Mandamos el fichero creado por correo a la cuenta de gmail

fich="/backup/$fecha.BackUp.tar.gz"
echo "Enviando el fichero $fich"

sendEmail -f $from -t $correo -u "backup $fecha" -m $mensaje -s $smtp -xu $correo -xp $pass -a $fich -o tls=yes
