#/bin/bash

# this symlinks all our config files

# not a gurantee this is being executed in right directory but should catch it most times
if ! [ -f setup.sh ]
then
    echo "script must be ran within dotfiles directory in order for proper symlinking"
    exit 1
fi

cd ..
configDir=$(pwd)


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

rm ~/.config/xfce4/terminal/terminalrc
ln -s $configDir/terminalrc ~/.config/xfce4/terminal/terminalrc

rm ~/.ssh/config
ln -s $configDir/config-ssh ~/.ssh/config
chmod 600 ~/.ssh/config

#sudo rm /usr/share/cmus/kalen.theme
#sudo ln -s $configDir/kalen.theme /usr/share/cmus/kalen.theme

rm ~/.config/Code/User/settings.json
ln -s $configDir/settings.json ~/.config/Code/User/settings.json

rm ~/.config/Code/User/keybindings.json
ln -s $configDir/keybindings.json ~/.config/Code/User/keybindings.json

# fish functions
#mkdir -p ~/.config/fish/functions
#for file in $configDir/FishFunctions/*.fish; do
#    filename=${file#$configDir/FishFunctions}
#    rm ~/.config/fish/functions$filename
#    ln -s $file ~/.config/fish/functions
#done
#echo "Installed fish function"

# vim colorschemes
for file in $configDir/VimThemes/*.vim; do
    filename=${file#$configDir/VimThemes}
    rm ~/.vim/colors$filename
    ln -s $file ~/.vim/colors$fileName
done
echo "Installed vim colorschemes"



