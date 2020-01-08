#!/bin/bash

# this symlinks all our config files

configDir=$(pwd)

# not a gurantee this is being executed in right directory but should catch it most times
if ! [ -f setup.sh ]
then
    echo "script must be ran within dotfiles directory in order for proper symlinking"
    exit 1
fi

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

rm ~/.zshrc
ln -s $configDir/.zshrc ~/.zshrc

rm ~/.bash_profile
ln -s $configDir/.bash_profile ~/.bash_profile

rm ~/.bashrc
ln -s $configDir/.bashrc ~/.bashrc

rm ~/.face
ln -s $configDir/.face ~/.face

rm ~/.ideavimrc
ln -s $configDir/.ideavimrc ~/.ideavimrc

rm ~/.inputrc
ln -s $configDir/.inputrc ~/.inputrc

rm ~/.profile
ln -s $configDir/.profile ~/.profile

rm ~/.vimrc
ln -s $configDir/.vimrc ~/.vimrc

rm ~/.xinitrc
ln -s $configDir/.xinitrc ~/.xinitrc

rm ~/.Xresources
ln -s $configDir/.Xresources ~/.Xresources

rm ~/.config/compton.conf
ln -s $configDir/compton.conf ~/.config/compton.conf

rm ~/.config/Code/User/settings.json
ln -s $configDir/settings.json ~/.config/Code/User/settings.json

rm ~/.config/Code/User/keybindings.json
ln -s $configDir/keybindings.json ~/.config/Code/User/keybindings.json

rm /etc/i3status.conf
ln -s $configDir/i3status.conf /etc/i3status.conf

rm ~/.vim/colors/dracula.vim
ln -s $configDir/dracula.vim ~/.vim/colors/dracula.vim

rm ~/.config/xfce4/terminal/terminalrc
ln -s $configDir/terminalrc ~/.config/xfce4/terminal/terminalrc

rm ~/.ssh/config
ln -s $configDir/config-ssh ~/.ssh/config

sudo rm /usr/share/cmus/kalen.theme
sudo ln -s $configDir/kalen.theme /usr/share/cmus/kalen.theme

rm ~/.config/VSCodium/User/settings.json
ln -s $configDir/settings.json ~/.config/VSCodium/User/settings.json

rm ~/.config/VSCodium/User/keybindings.json
ln -s $configDir/keybindings.json ~/.config/VSCodium/User/keybindings.json

# no themes on mac :(
if [ "$machine" == "Linux" ]; then 
    sudo rm -rf /usr/share/themes/Equilux
    sudo cp -r $configDir/Themes/Equilux /usr/share/themes/

    sudo rm -rf /usr/share/icons/Ultra-Flat
    sudo cp -r $configDir/Ultra-Flat /usr/share/icons/
fi
