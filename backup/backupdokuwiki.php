<?php
date_default_timezone_set('UTC');
$pathinicial = "/var/www/localhost/htdocs/dokuwiki/";
$filename = "backup_".date("Y-m-d.H.i").".tar.gz";
$dir_arch = "/tmp/";
$includes = "/etc/scripts/backup/carpetasdokuwiki";

exec("tar cvz -C $pathinicial conf data/pages data/media lib/plugins lib/tpl -f $dir_arch$filename");
exec("chown theasker:theasker $dir_arch$filename");
?>
