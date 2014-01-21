#!/bin/sh
# Script para el envío de la ip pública al correo

fecha=$(date +%F%H%M )
from="ip@gentoo.org"
correo="theasker@gmail.com"
subject=$(tail -n1 /var/log/vigicon/livebox.log)
mensaje=$(tail -n1 /var/log/vigicon/livebox.log)
smtp="smtp.gmail.com"
pass="Pride and Joy"

/etc/vigicon/vigicon

sendEmail -f $from -t $correo -u $subject -m $mensaje -s $smtp -xu $correo -xp "Pride and Joy" -o tls=yes
