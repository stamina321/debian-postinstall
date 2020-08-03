# debian-postinstall

## debian backports

  #add debian backports
  $ echo deb http://deb.debian.org/debian buster-backports main contrib non-free | sudo tee /etc/apt/sources.list.d/buster-backports.list
  #update packages list  
  $ sudo apt update
  #install latest kernel
  $ sudo apt -t buster-backports install linux-image-amd64
  #install latest firmware
  $ sudo apt install -t buster-backports firmware-linux firmware-linux-nonfree
