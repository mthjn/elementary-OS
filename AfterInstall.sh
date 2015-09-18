#!/bin/sh
# elementary OS Freya
# run as root
cd /home/$USER
# git
sudo apt-get install git -y

# get guake terminal
sudo apt-get install guake -y

# get proper text editors
sudo apt-get install vim -y
sudo apt-get install gedit -y
sudo apt-get remove scratch-text-editor -y

# get openvpn network manager config
sudo apt-get -y install network-manager-openvpn

#get mysql
sudo apt-get install php5-mysql -y
sudo apt-get install mysql-server-5.6 -y
sudo apt-get update && apt-get upgrade -y
#get adminer
sudo mkdir /usr/share/adminer
sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
sudo ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php

# dropbox
# wget -O dropbox.tar.gz "http://www.dropbox.com/download/?plat=lnx.x86_64"
# tar -xvzf dropbox.tar.gz
# ~/.dropbox-dist/dropboxd

# dropbox for wingpanel
git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
bash /tmp/elementary-dropbox/install.sh

# linux performance monitoring tools like perf
sudo apt-get install linux-tools-common -y
sudo apt-get install linux-lts-utopic-tools-common -y
sudo apt-get install linux-lts-utopic-tools-3.16.0-38 -y
sudo apt-get install linux-tools-3.16.0-38-generic -y
sudo apt-get install linux-cloud-tools-3.16.0-38-generic -y
## apt-get install linux-tools-common linux-tools-generic linux-tools-`uname -r`

# get better web browsers
sudo apt-get purge midori-granite -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y
# get terminal text web browser
# @see screenshot
sudo apt-get install w3m -y


# elementary tweaks for Freya
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily -y
sudo apt-get update
sudo apt-get install elementary-tweaks -y

# get glx dock / cairo dock instead of plank
# this fixes the bug in old cairo dock which crashes on right click
sudo add-apt-repository ppa:cairo-dock-team/ppa -y
sudo apt-get update 
sudo apt-get install cairo-dock cairo-dock-plug-ins -y

sudo apt-get install dconf-tools -y

# screenlets for desktop
sudo add-apt-repository ppa:screenlets/ppa -y
sudo apt-get update
sudo apt-get install screenlets -y

## SysmonitorScreenlet ClearCalendarScreenlet WidescapeWeatherScreenlet eventCalScreenlet
## CircleClockScreenlet FeedReaderPlusScreenlet NowPlayingScreenlet



#### -------  manual
# startup applications:
## $ sudo gnome-session-properties
## $ dconf-editor
## navigate to org - pantheon - cerbere
## add guake
## remove plank from the array and type in 'cairo-dock'
## $ pkill plank

# @link http://www.neowin.net/forum/topic/1180735-guide-to-make-elementary-os-look-like-xenzen-configuration/
# @link http://lifehacker.com/the-elementary-desktop-1304577213
# @link http://aruizca.com/my-steps-to-setup-elementaryos-freya/
