#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

systemctl disable bluetooth.service
systemctl disable ModemManager.service
systemctl disable pppd-dns.service

exit 0
