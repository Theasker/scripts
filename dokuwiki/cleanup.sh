#!/bin/bash

cleanup() {

  # $1 ... full path to data directory of wiki
  # $2 ... number of days after which old files are to be removed

  # purge files older than $2 days from attic and media_attic (old revisions)
  find "$1"/{media_,}attic/ -type f -mtime +$2 -print0 | xargs -0r rm -f

  # remove stale lock files (files which are 1-2 days old)
  find "$1"/locks/ -name '*.lock' -type f -mtime +1 -print0 | xargs -0r rm -f

  # remove empty directories
  find "$1"/{attic,cache,index,locks,media,media_attic,media_meta,meta,pages,tmp}/ \
    -mindepth 1 -type d -empty -print0 | xargs -0r rmdir

  # remove files older than $2 days from the cache
  find "$1"/cache/?/ -type f -mtime +$2 -print0 | xargs -0r rm -f
}

# cleanup DokuWiki installations (path to datadir, number of days)
# some examples:

cleanup /home/user1/htdocs/doku/data    1
cleanup /home/user2/htdocs/mywiki/data  1
cleanup /var/www/superwiki/data         1
