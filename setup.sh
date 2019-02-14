#!/bin/bash

# this symlinks all our config files

# all systems
rm /home/kalenpw/.bash_profile
sudo ln -s /home/kalenpw/Documents/Config/.bash_profile /home/kalenpw/.bash_profile

rm /home/kalenpw/.bashrc
sudo ln -s /home/kalenpw/Documents/Config/.bashrc /home/kalenpw/.bashrc

rm /home/kalenpw/.face
sudo ln -s /home/kalenpw/Documents/Config/.face /home/kalenpw/.face

rm /home/kalenpw/.ideavimrc
sudo ln -s /home/kalenpw/Documents/Config/.ideavimrc /home/kalenpw/.ideavimrc

rm /home/kalenpw/.inputrc
sudo ln -s /home/kalenpw/Documents/Config/.inputrc /home/kalenpw/.inputrc

rm /home/kalenpw/.profile
sudo ln -s /home/kalenpw/Documents/Config/.profile /home/kalenpw/.profile

rm /home/kalenpw/.vimrc
sudo ln -s /home/kalenpw/Documents/Config/.vimrc /home/kalenpw/.vimrc

rm /home/kalenpw/.xinitrc
sudo ln -s /home/kalenpw/Documents/Config/.xinitrc /home/kalenpw/.xinitrc

rm /home/kalenpw/.Xresources
sudo ln -s /home/kalenpw/Documents/Config/.Xresources /home/kalenpw/.Xresources




