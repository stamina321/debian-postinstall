#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

apt install -t buster-backports linux-image-amd64 firmware-linux firmware-linux-nonfree firmware-iwlwifi
