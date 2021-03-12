#!/bin/sh

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim/
cp ./init.vim ~/.config/nvim/init.vim

echo "\nwhen you open vim do :PlugInstall to install all plugins\n"
