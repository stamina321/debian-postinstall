#!/bin/sh

# Installer les backports

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

cat << EOF >> /etc/apt/sources.list
# Debian Buster Backports
deb http://deb.debian.org/debian buster-backports main contrib non-free
EOF
