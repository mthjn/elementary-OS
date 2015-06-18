#!/bin/sh
# Design & Graphics Tools - elementary OS Freya





# krita, photoshop alternative

sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt-get update
sudo apt-get install krita
# If error:  Essential application components could not be found.
#           This might be an installation issue.
#           Try restarting, running kbuildsycoca4.exe or reinstalling.
# .. install libs
sudo apt-get install kdelibs-bin
sudo apt-get install kdelibs5-data
sudo apt-get install kdelibs5-plugins


# GIMP image manipulation program

sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update && sudo apt-get install gimp


# InkScape vector graphics editor

sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt-get update
sudo apt-get install inkscape
