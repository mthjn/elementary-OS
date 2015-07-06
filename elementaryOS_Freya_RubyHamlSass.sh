#!/bin/sh

# run as root

# -- ruby --
apt-get install rbenv -y


# -- gems --
# -- verbose gem install: $ sudo su -c "gem install $gem"
# get sass for css preprocessing
gem install sass
# get mixin library: vendor prefixes
# also needs to be inst within work dir @see bourbon.io
gem install bourbon
# get haml gem for html preprocessing
gem install haml
# get rails with dependencies manager
gem install bundler
gem install rails


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
cd ~/sass_project1
# feach css @import "bourbon/bourbon"
bourbon install
sass --watch ~/sass_project1

# open vim in another terminal window and start working!

# no auto compile for haml tho
# compile file by file - $ haml file.haml file.html
# or @see https://github.com/mthjn/bash-haml-converter

## -- Read More -- ##
# Syntax Highlight gogleable for sublime, atom, vim
# GUI for compilation: Koala
# compilation in sublime: http://www.hongkiat.com/blog/sublime-text-compiling-sass/
