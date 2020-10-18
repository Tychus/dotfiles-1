#!/bin/bash

SDIR="$HOME/.config/polybar/scripts"

MENU="$(rofi -sep "|" -dmenu -i -p 'Select' -location 3 -columns 1 -xoffset -270 -yoffset 36 -width 10 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 <<< "> OneBar|> TwoBars")"
            case "$MENU" in
				*Feather) $SDIR/style.sh -OneBar ;;
				*Material) $SDIR/style.sh -TwoBars ;;
            esac
