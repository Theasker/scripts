#!/bin/bash

DEVICE="/dev/hdc"
IMAGENISO="/tmp/miiso.iso"
# Para ver los dispositivos disponibles
# wodim --devices

# Primero creamos una imagen iso de lo que queremos grabar
genisoimage -R -J -o $IMAGENISO $1

# Grabamos la imagen iso previamente creada
#wodim -v -eject -speed=4 dev=$DEVICE $IMAGENISO
