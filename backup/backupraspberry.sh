#!/bin/sh

FECHA=$(date +%F)
DIRBACKUP="/mnt/datos1/backup/raspberrypi/"
#SERVEROOT="/srv/http"
SERVEROOT="/var/www/"

# Backup de /etc de la Raspberry Pi =======================================================
DIRBACKUP=/mnt/datos1/backup/raspberrypi/ETC
FICHERO=$DIRBACKUP/$FECHA.Raspberry_etc.tar.gz
echo "... Generando el fichero $FICHERO"
# realizamos la copia de seguridad del directorio /etc de la Raspberry
#rsync --progress --relative --delete -vrae 'ssh -p 2223 -l root' 192.168.0.70:/etc $DIRBACKUP
rsync -vrae 'ssh -p 2223 -l root' --delete 192.168.0.70:/etc $DIRBACKUP
# comprimimos el directorio /etc
tar cvz $DIRBACKUP/etc -f $FICHERO
chown theasker:theasker $FICHERO
# =========================================================================================

# Backup de dokuwiki de DAW ===============================================================
DIRBACKUP=/mnt/datos1/backup/raspberrypi/DAW
FICHERO=$DIRBACKUP/$FECHA.Raspberry_dokuwiki_DAW.tar.gz
DAWLOCAL=/var/www/localhost/htdocs/daw/
echo "... Generando el fichero $FICHERO"
# realizamos la copia de seguridad del directorio /var/www/dokuwiki (DAW) de la Raspberry
#rsync --progress --delete -vrae 'ssh -p 2223 -l root' 192.168.0.70:$SERVEROOT/dokuwiki $DIRBACKUP
rsync -vrae 'ssh -p 2223 -l root' --delete 192.168.0.70:$SERVEROOT/dokuwiki $DIRBACKUP

# comprimimos el directorio /etc
tar cvz -C $DIRBACKUP/dokuwiki/ conf data/pages data/media lib/tpl lib/plugins -f $FICHERO
chown theasker:theasker $FICHERO

# hago una imagen para poder usarla en este ordenador
rsync --progress --delete -vra $DIRBACKUP/dokuwiki/ $DAWLOCAL
chown -R apache:apache $DAWLOCAL
chown -R apache:apache $DIRBACKUP
find $DIRBACKUP -type d -exec chmod 770 {} \; 
find $DIRBACKUP -type f -exec chmod 660 {} \;
# =========================================================================================

# Backup de dokuwiki de de howtos =========================================================
DIRBACKUP=/mnt/datos1/backup/raspberrypi/HOWTOS
FICHERO=$DIRBACKUP/$FECHA.Raspberry_dokuwiki_howto.tar.gz
HOWTOLOCAL=/var/www/localhost/htdocs/dokuwiki/
echo "... Generando el fichero $FICHERO"
# realizamos la copia de seguridad del directorio /var/www/maslinux (Howtos) de la Raspberry
#rsync --progress --delete -vrae 'ssh -p 2223 -l root' 192.168.0.70:$SERVEROOT/maslinux $DIRBACKUP
rsync -vrae 'ssh -p 2223 -l root' --delete 192.168.0.70:$SERVEROOT/maslinux $DIRBACKUP

# comprimimos el directorio /etc 
tar cvz -C $DIRBACKUP/maslinux/ conf data/pages data/media lib/tpl lib/plugins -f $FICHERO
chown theasker:theasker $FICHERO

# hago una imagen para poder usarla en este ordenador
rsync --progress --delete -vra $DIRBACKUP/maslinux/ $HOWTOLOCAL
chown -R apache:apache $HOWTOLOCAL
chown -R apache:apache $DIRBACKUP
find $DIRBACKUP -type d -exec chmod 770 {} \; 
find $DIRBACKUP -type f -exec chmod 660 {} \;
# =========================================================================================

