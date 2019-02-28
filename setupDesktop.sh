#!/bin/bash

configDir="/home/kalenpw/Documents/DotFiles"

sudo rm /etc/i3status.conf
sudo ln -s $configDir/i3status.conf-desktop /etc/i3status.conf

rm /home/kalenpw/.config/i3/config
sudo ln -s $configDir/config-i3Desktop /home/kalenpw/.config/i3/config
