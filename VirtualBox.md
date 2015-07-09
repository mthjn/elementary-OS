### elementary on virtual box with windows host  


* fixed disk size 50GB+ !!
* [download guest additions](https://www.virtualbox.org/wiki/Downloads) - already comes with newer VBox versions
* VT-x/AMD-V enabled
* VBox admin: **C:\Program Files...\Oracle\...\VBoxGuestAdditions.iso** as CD / sec master
* start guest
* open files, check if VBoxGuestAdditions mounted or mount it
* terminal  

      cd /media/$USER
      cd VBOX*
      sudo sh ./VBoxLinuxAdditions.run



* restart guest
