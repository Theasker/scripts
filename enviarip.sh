#!/bin/bash
# /usr/local/bin/ipext
# Envia un e-mail si ha cambiado la IP externa del router.

# Función para Enviar el e-mail.
# (Para adjuntar un archivo usar "-a /path/archivo".)
function enviar_email
{
sendEmail \
-f ip@gmail.com \
-t theasker@gmail.com \
-u "IP externa router del currelo" \
-m "La IP externa actual del router del trabajo es: \n$IPEXTERNA" \
-s smtp.gmail.com \
-xu theasker@gmail.com \
-xp "Pride and Joy"
}

# Se toma la IP externa directamente del router con un script expect,
# y se guarda.
IPEXTERNA=$(tomar_ipext.exp | grep ppp0 | cut -d" " -f17)
echo $IPEXTERNA > ~/ipExterna

# Se envia el e-mail si la IP obtenida es distinta de la anterior o si
# no existe IP anterior.
if [ -f ~/ipExterna.ant ]; then
IPANTERIOR=$(cat ~/ipExterna.ant)

if [ $IPANTERIOR != $IPEXTERNA ]; then
enviar_email
fi
else
enviar_email
fi

cp ~/ipExterna ~/ipExterna.ant

# Fin script.
