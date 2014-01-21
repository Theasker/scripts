#!/bin/sh
#Script para creacion de backup de los archivos de configuracion

FECHA=$(date +%F)

cd /etc
git status
git add .
git status
git commit -m "Commit del día $FECHA"
