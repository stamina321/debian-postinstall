#!/bin/sh

# Améliorer la détection du WIFI et évite les déconnexions

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

sed '/REGDOMAIN/ s/=/=FR/' /etc/default/crda
