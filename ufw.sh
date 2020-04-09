#!/bin/sh

# voir https://wiki.debian.org/Uncomplicated%20Firewall%20%28ufw%29

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

# activer le par-feu
ufw enable

# configuration par defaut
#ufw default deny incoming
#ufw default allow outgoing

ufw status verbose

exit 0
