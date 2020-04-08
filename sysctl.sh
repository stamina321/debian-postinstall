#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

/bin/cat << EOF > /etc/sysctl.d/thinkpad.conf
# optimiser swap
vm.swappiness=5
vm.vfs_cache_pressure=50

# désactiver ipv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
EOF

exit 0
