#!/bin/sh

#apt install powertop
apt install firmware-linux-nonfree ufw
apt install vim git secure-delete rsync fonts-ubuntu ttf-mscorefonts-installer
apt install gnome-shell-extension-dashtodock firefox-esr-l10n-fr libreoffice-l10n-fr
apt install openjdk-11-jdk

apt autoremove --purge gnome-games
