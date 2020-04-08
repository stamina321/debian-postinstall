#!/bin/sh

file=/etc/modprobe.d/thinkpad.conf

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

# créer le fichier
/bin/cat << EOF > $file
## blacklist

# webcam
blacklist uvcvideo

# bluetooth
blacklist btusb
blacklist bluetooth

# virtualisation
#blacklist kvm
EOF

exit 0
