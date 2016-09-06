#!/bin/bash

# Put vimrc to the right place
cp vimrc ~/.vimrc

# Creates some directories
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/spell

# Install pathogen first.
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Then install dictionaries
cd ~/.vim/spell
wget http://ftp.vim.org/vim/runtime/spell/fr.latin1.spl
wget http://ftp.vim.org/vim/runtime/spell/fr.latin1.sug
wget http://ftp.vim.org/vim/runtime/spell/fr.utf-8.spl
wget http://ftp.vim.org/vim/runtime/spell/fr.utf-8.sug

# Then install interesting plugins.
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-commentary.git
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/tpope/vim-sensible.git
git clone git://github.com/tpope/vim-endwise.git
git clone git://github.com/tpope/vim-surround.git
git clone git://github.com/tpope/vim-repeat.git
git clone https://github.com/bling/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/yegappan/mru.git
git clone https://github.com/scrooloose/nerdtree.git
git clone --depth=1 https://github.com/scrooloose/syntastic.git
