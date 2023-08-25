# debian-postinstall

## debian backports

    # add debian backports
    $ echo deb http://deb.debian.org/debian buster-backports main contrib non-free | sudo tee /etc/apt/sources.list.d/buster-backports.list
    # update packages list
    $ sudo apt update
    # install latest kernel
    $ sudo apt -t buster-backports install linux-image-amd64
    # install latest firmware
    $ sudo apt install -t buster-backports firmware-linux firmware-linux-nonfree

## From Buster (10) to Bullseye (11)

To migrate from Buster to Bullseye do this.
Note: the security repository has been rename.

    -- update the system
    # sudo apt update
    # sudo apt full-upgrade
    # sudo reboot
    -- make a copy of the sources.list
    # sudo cp /etc/apt/sources.list /etc/apt/sources.list.save10
    -- edit the sources.list
    # sudo sed -i 's/buster\/updates/bullseye-security/' /etc/apt/sources.list
    # sudo sed -i 's/buster/bullseye/' /etc/apt/sources.list
    -- migrate the system
    # sudo apt update
    # sudo apt full-upgrade
    # sudo reboot
    -- clean obsolete package
    # sudo apt autoremove --purge

## From Bullseye (11) to Bookworm (12)

*Note: in this release introduce th new repo non-free-firmware.*

To upgrade the system from Bullseye to Bookworm do:

    -- first update the system
    # sudo apt update
    # sudo apt full-upgrade
    # sudo reboot
    -- make a copy of the sources.list
    # sudo cp /etc/apt/sources.list /etc/apt/sources.list.bkp11
    -- then edit the sources.list
    # sudo sed -i 's/bullseye/bookworm/' /etc/apt/sources.list
    # sudo sed -i 's/non-free/non-free non-free-firmware/g' /etc/apt/sources.list
    -- now migrate the system
    # sudo apt update
    # sudo apt full-upgrade
    # sudo reboot
    -- finally clean obsolete package
    # sudo apt autoremove --purge

