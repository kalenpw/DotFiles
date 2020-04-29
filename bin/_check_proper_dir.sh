#!/bin/bash

# not a gurantee this is being executed in right directory but should catch it most times
if ! [ -f setup.sh ]
then
    echo "script must be ran within dotfiles directory in order for proper symlinking"
    exit 1
fi
