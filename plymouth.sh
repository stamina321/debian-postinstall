#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

# Afficher le splashscreen plymouth un peu plus tôt
echo FRAMEBUFFER=y | sudo tee /etc/initramfs-tools/conf.d/splash
sudo update-initramfs -u

# Changer le theme
plymouth-set-default-theme -R tribar

exit 0
