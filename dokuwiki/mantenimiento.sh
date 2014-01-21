#!/bin/sh
 
# set the path to your DokuWiki installation here
DOKUWIKI=/var/www/localhost/htdocs/dokuwiki
 
# purge files older than 30 days from the attic
find $DOKUWIKI/data/attic/ -type f -mtime +30 -exec rm -f {} \;
 
# remove stale lock files
find $DOKUWIKI/data/pages/ -name '*.lock' -type f -mtime +1 -exec rm -f {} \;
 
# remove empty directories
find $DOKUWIKI/data/pages/ -depth -type d -empty -exec rmdir {} \;
