#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

# désactiver wayland
sed -i "/WaylandEnable/a WaylandEnable=false" /etc/gdm3/daemon.conf

# désactiver la liste des utilisateurs
sed -i "/disable-user-list/a disable-user-list=true" /etc/gdm3/greeter.dconf-defaults

exit 0
