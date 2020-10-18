#!/bin/bash

PDIR="$HOME/.config/polybar"
LAUNCH="polybar-msg cmd restart"
 
if  [[ $1 = "-OneBar" ]]; then
# Removing Old File
rm -rf $PDIR/config $PDIR/launch.sh
# Coping New File
cp -r $PDIR/source/OneBar/* $PDIR
# Restarting polybar
$LAUNCH &

elif  [[ $1 = "-TwoBars" ]]; then
# Removing Old File
rm -rf $PDIR/config $PDIR/launch
# Coping New File
cp -r $PDIR/source/TwoBars/* $PDIR
# Restarting polybar
$LAUNCH &

else
echo "Available options:
OneBar		TwoBars"
fi
