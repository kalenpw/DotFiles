#!/bin/bash

./_check_proper_dir.sh

cd ..
configDir=$(pwd)

# not a gurantee this is being executed in right directory but should catch it most times

for file in $configDir/DesktopFiles/*.desktop; do
    echo $file
    ln -s $file ~/.local/share/applications
done
