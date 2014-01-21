#!/bin/bash

# Variables
CONFIG=$HOME/.config
CACHE=$HOME/.cache
DIR_MAURI=$HOME/.xfce4_mauri

while [ "$OPCION" != 4 ]
do
echo "[1] Crear respaldo"
echo "[2] Restaurar Xfce"
echo "[3] Reiniciar Xfce"
echo "[4] Salir"
read -p "Ingrese una opción: " OPCION
case $OPCION in
    1)  # Antes de borrar hacemos una salva de las carpetas.
	mkdir -p $DIR_MAURI/config/
	mkdir -p $DIR_MAURI/cache/
	
	# Copiamos las carpetas
	cp -Rv $CACHE/Thunar $DIR_MAURI/cache
	cp -Rv $CACHE/xfce4 $DIR_MAURI/cache
	cp -Rv $CACHE/sessions $DIR_MAURI/cache
	cp -Rv $CONFIG/autostart $DIR_MAURI/config
	cp -Rv $CONFIG/xfce4 $DIR_MAURI/config
	cp -Rv $CONFIG/Thunar $DIR_MAURI/config
	cp -Rv $CONFIG/xfce4 $DIR_MAURI/config
	echo "Todos los ficheros han sido salvados"
    ;;
    2) # Restauramos las carpetas
	cp -Rv $DIR_MAURI/cache/Thunar $CACHE/
	cp -Rv $DIR_MAURI/cache/xfce4 $CACHE/
	cp -Rv $DIR_MAURI/cache/sessions $CACHE/
	cp -Rv $DIR_MAURI/config/autostart $CONFIG/
	cp -Rv $DIR_MAURI/config/xfce4 $CONFIG/
	cp -Rv $DIR_MAURI/config/Thunar $CONFIG/
	cp -Rv $DIR_MAURI/config/xfce4 $CONFIG/
	echo "Todos los ficheros han sido restaurados"
    ;;
    3) # Reiniciar Xfce
	# Borramos todas las carpetas relacionadas con Xfce
        rm -Rfv $CACHE/Thunar
	rm -Rfv $CACHE/xfce4
	rm -Rfv $CONFIG/xfce4
	rm -Rfv $CONFIG/Thunar
	rm -Rfv $CONFIG/xfce4
	echo "Xfce ha sido reiniciado. Reinicie la sesión"
        clear
    ;;
    4) echo "Saliendo"
        clear
    ;;
       esac
done
exit 0
