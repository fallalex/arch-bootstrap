#!/usr/bin/bash
curl -s "https://www.archlinux.org/mirrorlist/?country=US&country=CA&protocol=https&use_mirror_status=on" > /etc/pacman.d/mirrorlist.backup
sed -e 's/^#Server/Server/' -e '/^#/d' /etc/pacman.d/mirrorlist.backup | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist

