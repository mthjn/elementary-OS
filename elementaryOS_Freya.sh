# elementary OS Freya

# elementary tweaks for Freya
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-get update
sudo apt-get install elementary-tweaks

# startup application
sudo gnome-session-properties

# get cairo dock instead of plank
sudo apt-get install cairo-dock
sudo apt-get install dconf-tools
dconf-editor
#navigate to org - pantheon - cerbere
#remove plank from the array and type in 'cairo-dock'
pkill plank


# @link http://www.neowin.net/forum/topic/1180735-guide-to-make-elementary-os-look-like-xenzen-configuration/
# @link http://lifehacker.com/the-elementary-desktop-1304577213
