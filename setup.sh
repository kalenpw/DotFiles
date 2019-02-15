#!/bin/bash

# this symlinks all our config files

# all systems

configDir="/home/kalenpw/Documents/DotFiles"

rm /home/kalenpw/.bash_profile
sudo ln -s $configDir/.bash_profile /home/kalenpw/.bash_profile

rm /home/kalenpw/.bashrc
sudo ln -s $configDir/.bashrc /home/kalenpw/.bashrc

rm /home/kalenpw/.face
sudo ln -s $configDir/.face /home/kalenpw/.face

rm /home/kalenpw/.ideavimrc
sudo ln -s $configDir/.ideavimrc /home/kalenpw/.ideavimrc

rm /home/kalenpw/.inputrc
sudo ln -s $configDir/.inputrc /home/kalenpw/.inputrc

rm /home/kalenpw/.profile
sudo ln -s $configDir/.profile /home/kalenpw/.profile

rm /home/kalenpw/.vimrc
sudo ln -s $configDir/.vimrc /home/kalenpw/.vimrc

rm /home/kalenpw/.xinitrc
sudo ln -s $configDir/.xinitrc /home/kalenpw/.xinitrc

rm /home/kalenpw/.Xresources
sudo ln -s $configDir/.Xresources /home/kalenpw/.Xresources




