#!/bin/sh

vimdir="$HOME/.vim/"
plugdir="$HOME/.vim/pack/plugins"

mkdir $vimdir

cp vimrc $vimdir

mkdir -p $plugdir ; cd $plugdir ; mkdir 'start' 'opt'

git clone --branch=master --depth=1 https://github.com/mattn/emmet-vim 'opt/emmet-vim'
git clone --depth=1 --branch=release https://github.com/neoclide/coc.nvim 'opt/coc.nvim'
git clone --depth=1 --branch=master https://github.com/morhetz/gruvbox 'start/gruvbox'
git clone --depth=1 --branch=master https://github.com/SirVer/ultisnips 'opt/ultisnips'
git clone --depth=1 --branch=master https://github.com/ravishi/vim-gnu-c 'start/vim-gnu-c'
