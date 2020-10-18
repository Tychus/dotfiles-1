#!/bin/bash

PDIR="$HOME/.config/polybar"
LAUNCH="bspc wm -r"
 
if  [[ $1 = "-OneBar" ]]; then
# Removing Old File
rm -rf $PDIR/config $PDIR/launch.sh
# Coping New File
cp -r $PDIR/OneBar/* $PDIR
# Restarting polybar
$LAUNCH &

elif  [[ $1 = "-TwoBars" ]]; then
# Removing Old File
rm -rf $PDIR/config $PDIR/launch
# Coping New File
cp -r $PDIR/TwoBars/* $PDIR
# Restarting polybar
$LAUNCH &

else
echo "Available options:
OneBar		TwoBars"
fi
