#!/bin/sh

# run as root

# install ruby
apt-get install rbenv -y

# following or $ sudo su -c "gem install haml"
# get sass gem
gem install sass
# get haml gem
gem install haml



# get package manager for vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# install the package manager with syntax highlighters for css and sass
cd ~

cat >> .vimrc << EOF
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
call vundle#end()
filetype plugin indent on
EOF

# install plugins from vimrc via terminal
# or launch vim and tell the man to :PluginInstall
vim +PluginInstall +qall

## set currently watched directory
mkdir ~/sass_project1
sass --watch ~/sass_project1

# open vim in another terminal window and start working!

# no auto compile for haml tho
# do file by file   $ haml file.haml file.html

## -- Read More -- ##
# Syntax Highlight gogleable for sublime, atom, vim
# GUI for compilation: Koala
# compilation in sublime: http://www.hongkiat.com/blog/sublime-text-compiling-sass/
