# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

#Setup 256 colors
if [ -n "$DISPLAY" ]; then
    export TERM=xterm-256color
fi

. ~/.bashrc
# set PATH so it includes user's private bin directories
export PATH="$HOME/bin:$HOME/.local/bin:$PATH:/home/kalenpw/Documents/ShellScripts"

# dark theme for qt apps
export QT_QPA_PLATFORMTHEME=gtk2

export CALIBRE_USE_SYSTEM_THEME=1
