#!/bin/bash

mkdir /mnt/gentoo
mkdir /mnt/gentoo/tmp
mkdir /mnt/gentoo/var
mkdir /mnt/gentoo/var/tmp
mkdir /mnt/gentoo/boot
mkdir /mnt/gentoo/usr
mkdir /mnt/gentoo/usr/portage
mkdir /mnt/gentoo/usr/portage/distfiles
mkdir /mnt/gentoo/usr/src
mkdir /mnt/gentoo/home

chmod 1777 /mnt/gentoo/tmp

mkfs.ext4 /dev/sda15

mount /dev/sda15 /mnt/gentoo
mount /dev/sda2 /mnt/gentoo/boot
mount /dev/sdb3 /mnt/gentoo/tmp
mount /dev/sdb3 /mnt/gentoo/var/tmp



cd /
mount -t proc proc /mnt/gentoo/proc
mount -o bind /dev /mnt/gentoo/dev
#echo "nameserver 80.58.0.33" > /etc/resolv.conf
#echo "nameserver 80.58.32.97" >> /etc/resolv.conf
chroot /mnt/gentoo /bin/bash
env-update && source /etc/profile
export PS1="(chroot) $PS1"

#/dev/sdb2	/mnt/datos1		ext4	noatime			0 2
#/dev/sdc1	/mnt/datos2             ext4	noatime			0 2

#/dev/sda1       /boot                   ext2    noauto,noatime          1 2
#/dev/sda2       none                    swap    sw                      0 0
#/dev/sda14      /                       ext4    noatime                 0 1
#/dev/sdb3		/tmp                    ext2    noatime                 0 1
#/dev/sdb3		/var/tmp                ext2    noatime                 0 1
