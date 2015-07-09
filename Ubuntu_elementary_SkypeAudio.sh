#!/bin/bash

# on clean install as root
apt-get install pulseaudio
apt-get install pavucontrol -y
wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
dpkg -i skype-install.deb
# unmet dependencies
apt-get -f install -y
dpkg -i skype-install.deb

apt-get update
apt-get upgrade -y
