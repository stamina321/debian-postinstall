#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

file=/etc/default/grub

# modification du mofier
sed -i "/GRUB_TIMEOUT/ s/^/#/" $file
sed -i "/GRUB_CMDLINE_LINUX_DEFAULT/ s/^/#/" $file
sed -i "/#GRUB_CMDLINE_LINUX_DEFAULT/a GRUB_CMDLINE_LINUX_DEFAULT=\"quiet splash\"" $file

# ajouter au fichier
/bin/cat << EOF >> $file

# Désactiver l'entrée Windows
GRUB_DISABLE_OS_PROBER=true

# Pas de fond d'écran
GRUB_BACKGROUND=""

# Masquer GRUB
GRUB_TIMEOUT=0
GRUB_TIMEOUT_STYLE=hidden
GRUB_HIDDEN_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT_QUIET=true
EOF

# Mettre à jour GRUB
update-grub2

exit 0
