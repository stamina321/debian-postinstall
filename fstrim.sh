#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

systemctl enable fstrim.timer
systemctl start fstrim.timer

exit 0
