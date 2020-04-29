#/bin/bash

# this symlinks all our config files

cd ..
configDir=$(pwd)

# not a gurantee this is being executed in right directory but should catch it most times
if ! [ -f setup.sh ]
then
    echo "script must be ran within dotfiles directory in order for proper symlinking"
    exit 1
fi

# eventually we can handle linux and mac setups
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
cp $configDir/.face ~/.face

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

sudo rm /etc/i3status.conf
sudo ln -s $configDir/i3status.conf /etc/i3status.conf

rm ~/.config/xfce4/terminal/terminalrc
ln -s $configDir/terminalrc ~/.config/xfce4/terminal/terminalrc

rm ~/.ssh/config
ln -s $configDir/config-ssh ~/.ssh/config
chmod 600 ~/.ssh/config

sudo rm /usr/share/cmus/kalen.theme
sudo ln -s $configDir/kalen.theme /usr/share/cmus/kalen.theme

# fish functions
mkdir -p ~/.config/fish/functions
for file in $configDir/FishFunctions/*.fish; do
    filename=${file#$configDir/FishFunctions}
    rm ~/.config/fish/functions$filename
    ln -s $file ~/.config/fish/functions
done
echo "Installed fish function"

# vim colorschemes
for file in $configDir/VimThemes/*.vim; do
    filename=${file#$configDir/VimThemes}
    rm ~/.vim/colors$filename
    ln -s $file ~/.vim/colors$fileName
done
echo "Installed vim colorschemes"

# no themes on mac :(
if [ "$machine" == "Linux" ]; then 
    sudo rm -rf /usr/share/themes/Equilux
    sudo cp -r $configDir/Themes/Equilux /usr/share/themes/
    sudo chmod -R 777 /usr/share/themes

    sudo rm -rf /usr/share/icons/Ultra-Flat
    sudo cp -r $configDir/Ultra-Flat /usr/share/icons/
    sudo chmod -R 777 /usr/share/icons

    rm ~/.config/VSCodium/User/settings.json
    ln -s $configDir/settings.json ~/.config/VSCodium/User/settings.json

    rm ~/.config/VSCodium/User/keybindings.json
    ln -s $configDir/keybindings.json ~/.config/VSCodium/User/keybindings.json

    rm ~/.config/Code/User/settings.json
    ln -s $configDir/settings.json ~/.config/Code/User/settings.json

    rm ~/.config/Code/User/keybindings.json
    ln -s $configDir/keybindings.json ~/.config/Code/User/keybindings.json
elif [ "$machine" == "Mac" ]; then 
    echo "No specific mac config yet"    
fi

# laptop vs desktop setup
if [ "$1" == "laptop" ]; then
    echo "Setting up laptop \n"
    rm ~/.config/i3/config
    ln -s $configDir/config-i3Thinkpad ~/.config/i3/config

elif [ "$1" == "desktop" ]; then
    # overwrite with desktop one
    echo "Setting up desktop \n"
    sudo rm /etc/i3status.conf
    sudo ln -s $configDir/i3status.conf-desktop /etc/i3status.conf

    rm ~/.config/i3/config
    ln -s $configDir/config-i3Desktop ~/.config/i3/config
else
    echo "Ran generic setup"
    echo "You can use ./setup.sh (laptop|desktop) for specific configs"
fi

