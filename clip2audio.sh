#!/bin/bash
# script para copiar lo que hay en el clipboard a un fichero y escucharlo

FICHERO=/tmp/temp.txt

# pasarmos el portapapeles a un fichero de texto
xsel --clipboard > $FICHERO

#convertimos el fichero de texto introducido como parámetro a audio wav
espeak -v mb-es1 -p 99 -s 200 -f $FICHERO -w $FICHERO.wav

#espeak -v mb-us2 -p 99 -s 140 -f $1 -w $1.wav

# convertimos el wav a ogg y eliminamos el wav (media-sound/vorbis-tools)
oggenc $FICHERO.wav -b 32
rm $FICHERO.wav

# reproducimos el archivo ogg
#ogg123 $1.ogg
audacious $FICHERO.ogg &
