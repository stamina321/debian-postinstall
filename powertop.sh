#!/bin/sh

file=/etc/rc.local

if [ `id -u` -ne 0 ]; then
    echo "Vous devez être root pour lancer ce script."
    exit 1
fi

# créer le fichier
/bin/cat << EOF > $file
#!/bin/sh

powertop --auto-tune 1>/dev/null 2>&1

exit 0
EOF

# rendre le ficher exécutable
chmod +x $file

exit 0
