# elementary OS Freya

# elementary tweaks for Freya
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-get update
sudo apt-get install elementary-tweaks

# startup applications
sudo gnome-session-properties

# get cairo dock instead of plank
sudo apt-get install cairo-dock
sudo apt-get install dconf-tools
dconf-editor
#navigate to org - pantheon - cerbere
#remove plank from the array and type in 'cairo-dock'
pkill plank

# screenlets for desktop
sudo add-apt-repository ppa:screenlets/ppa
sudo apt-get update
sudo apt-get install screenlets

## SysmonitorScreenlet ClearCalendarScreenlet WidescapeWeatherScreenlet eventCalScreenlet
## CircleClockScreenlet FeedReaderPlusScreenlet NowPlayingScreenlet

# get web browsers
sudo apt-get purge midori-granite
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# @link http://www.neowin.net/forum/topic/1180735-guide-to-make-elementary-os-look-like-xenzen-configuration/
# @link http://lifehacker.com/the-elementary-desktop-1304577213
