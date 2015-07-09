#!/bin/bash

### just notes ###
# steps to install latest ruby for rails/sinatra with ruby version manager
# Running after sudo su will prompt the multi user installation
cd ~
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo apt-get install curl -y
\curl -L https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
#check
ruby -v
# global gemset
rvm gemset use global
echo "gem: --no-document" >> ~/.gemrc
gem install bundler -V
gem install nokogiri -V
# project specific gemsets
mkdir sinatra
cd sinatra
rvm use ruby-2.2.1@sinatra --ruby-version --create
gem install sinatra -V
gem install capistrano -V
gem install capistrano-ext -V
