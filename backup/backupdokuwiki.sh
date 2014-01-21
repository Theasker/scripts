#!/bin/sh
#Script para creación de backup de los archivos de los directorios

DIRTEMP="/tmp/"
DIRBASE="/public_html/dokuwiki"
FECHA=$(date +%F)

# backup de dokuwiki en servidor local ###################
DIRBASE="/var/www/localhost/htdocs/dokuwiki/"
FICHERO=/backup/dokuwikilocal/dokulocal.$FECHA.tar.gz
#tar cvz -C $DIRBASE conf data/pages data/media lib/tpl lib/plugins -f  $FICHERO
##########################################################

# backup de dokuwiki nixiweb ###############################
DIRBASE="/public_html/dokuwiki"
FICHERO=/backup/dokunixiweb/dokunixiweb.$FECHA.tar.gz

lftp -u u247059859,Theasker69 ftp://daw.xtrweb.com/ << EOF
mirror $DIRBASE/conf/ $DIRTEMP
mirror $DIRBASE/data/pages/ $DIRTEMP
mirror $DIRBASE/data/media/ $DIRTEMP
mirror $DIRBASE/lib/tpl/ $DIRTEMP
mirror $DIRBASE/lib/plugins/ $DIRTEMP
quit 0
EOF
tar cvz -C $DIRTEMP conf pages media tpl plugins -f  $FICHERO
# eliminamos lod directorios descargados
rm -r /tmp/conf
rm -r /tmp/pages
rm -r /tmp/media
rm -r /tmp/tpl
rm -r /tmp/plugins
##########################################################

# backup de dokuwiki maslinux #######################
FICHERO=/backup/doku000webhost/dokuMasLinux.$FECHA.tar.gz

lftp -u u991424026,Theasker69 31.170.167.216 << EOF
mirror conf/ $DIRTEMP
mirror data/pages/ $DIRTEMP
mirror data/media/ $DIRTEMP
mirror lib/tpl/ $DIRTEMP
mirror lib/plugins/ $DIRTEMP
quit 0
EOF
tar cvz -C $DIRTEMP conf pages media tpl plugins -f  $FICHERO
# eliminamos lod directorios descargados
rm -r /tmp/conf
rm -r /tmp/pages
rm -r /tmp/media
rm -r /tmp/tpl
rm -r /tmp/plugins
##########################################################
