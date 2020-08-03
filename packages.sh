#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

#apt install powertop
apt install firmware-linux-nonfree ufw
# verifier que intel-microcode soit installé
apt install vim git secure-delete rsync fonts-ubuntu ttf-mscorefonts-installer
apt install gnome-shell-extension-dashtodock firefox-esr-l10n-fr libreoffice-l10n-fr
apt install openjdk-11-jdk

apt autoremove --purge gnome-games
