#!/bin/sh
# Execute as root
# Design & Graphics Tools - elementary OS Freya





# krita, photoshop alternative

add-apt-repository ppa:kubuntu-ppa/backports -y
apt-get update
apt-get install krita -y
# If error:  Essential application components could not be found.
#           This might be an installation issue.
#           Try restarting, running kbuildsycoca4.exe or reinstalling.
# .. install libs
apt-get install kdelibs-bin -y
apt-get install kdelibs5-data -y
apt-get install kdelibs5-plugins -y


# GIMP image manipulation program

add-apt-repository ppa:otto-kesselgulasch/gimp -y
apt-get update
apt-get install gimp -y


# InkScape vector graphics editor

add-apt-repository ppa:inkscape.dev/stable -y
apt-get update
apt-get install inkscape -y
