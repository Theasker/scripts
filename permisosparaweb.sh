#!/bin/sh
# Script para cambiar los permisos de archivos y directorios que cuelgan del dado como parametro
# http://forums.gentoo.org/viewtopic-p-6882540.html

DIR=$1

find $DIR -type d -exec chmod 770 {} \; 
find $DIR -type f -exec chmod 660 {} \;
