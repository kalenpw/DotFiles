#!/bin/bash

#laptop unique settings

configDir="/home/kalenpw/Documents/DotFiles"

rm /home/kalenpw/.zshrc
sudo ln -s $configDir/.zshrc /home/kalenpw/.zshrc

rm /home/kalenpw/.config/i3/config
sudo ln -s $configDir/config-i3Thinkpad /home/kalenpw/.config/i3/config

rm /home/kalenpw/.config/compton.conf
sudo ln -s $configDir/compton.conf /home/kalenpw/.config/compton.conf

sudo rm /etc/i3status.conf
sudo ln -s $configDir/i3status.conf /etc/i3status.conf


