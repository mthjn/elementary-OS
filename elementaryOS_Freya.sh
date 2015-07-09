#!/bin/sh
# elementary OS Freya
# run as root

# elementary tweaks for Freya
add-apt-repository ppa:mpstark/elementary-tweaks-daily -y
apt-get update
apt-get install elementary-tweaks -y

# get cairo dock instead of plank
apt-get install cairo-dock -y
apt-get install dconf-tools -y

# get guake terminal
apt-get install guake -y

# get proper text editors
apt-get install vim -y
apt-get install gedit -y
apt-get remove scratch-text-editor -y

# dropbox for wingpanel
git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
bash /tmp/elementary-dropbox/install.sh

# screenlets for desktop
add-apt-repository ppa:screenlets/ppa -y
apt-get update
apt-get install screenlets -y

## SysmonitorScreenlet ClearCalendarScreenlet WidescapeWeatherScreenlet eventCalScreenlet
## CircleClockScreenlet FeedReaderPlusScreenlet NowPlayingScreenlet

# git
apt-get install git -y

# linux performance monitoring tools like perf
apt-get install linux-tools-common -y
apt-get install linux-lts-utopic-tools-common -y
apt-get install linux-lts-utopic-tools-3.16.0-38 -y
apt-get install linux-tools-3.16.0-38-generic -y
apt-get install linux-cloud-tools-3.16.0-38-generic -y
## apt-get install linux-tools-common linux-tools-generic linux-tools-`uname -r`

# get better web browsers
sudo apt-get purge midori-granite -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update
apt-get install google-chrome-stable -y

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
