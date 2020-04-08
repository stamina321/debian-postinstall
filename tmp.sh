#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

# mettre /tmp en RAM
mv /usr/share/systemd/tmp.mount /etc/systemd/system/
systemctl enable tmp.mount
