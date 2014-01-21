#!/bin/sh
#Script para creaci�n de backup

# Montamos el disco de destiono
mkdir /mnt/destino
mount /dev/sdb2 /mnt/destino
DESTINO="/mnt/destino/backup/"

mkdir /mnt/

/dev/sda1       /mnt/windows            ntfs-3g force,ro                0 0
/dev/sdb2       /mnt/datos1             ext4    noatime                 0 2
/dev/sdc1       /mnt/datos2             ntfs-3g users                   0 1

/dev/sda2       /boot                   ext2    noauto,noatime          1 2
/dev/sda3       none                    swap    sw                      0 0
/dev/sda5       /                       ext4    noatime                 0 1
/dev/sda6       /usr/portage            ext2    noatime                 0 1
/dev/sda7       /usr/portage/distfiles  ext2    noatime                 0 1
/dev/sda8       /var                    ext4    noatime                 0 1
/dev/sda9       /usr/src                ext2    noatime                 0 1
/dev/sda10      /tmp                    ext2    noatime                 0 1
/dev/sda10      /var/tmp                ext2    noatime                 0 1
/dev/sda11      /home                   ext4    noatime,user_xattr                 0 2

/dev/dvdrw/       /mnt/dvdrw/             auto    noauto,users,gid=100,umask=007  0 0

