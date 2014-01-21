
DIRTEMP="/tmp/"
DIRBASE="/public_html/dokuwiki"
FECHA=$(date +%F)

# backup de dokuwiki en 000webhost #######################
FICHERO=/backup/doku000webhost/doku000webhost.$FECHA.tar.gz

lftp -u a2271071,a2271071 theasker.site11.com << EOF
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
