#!/bin/bash
pcmanfm --set-wallpaper /opt/Atmospheric-Theme/wallpaper.jpg --wallpaper-mode=crop
if ! pgrep plank; then
plank &
fi
if ! pgrep picom; then
picom -f -c -C &
fi
if ! pgrep connman-gtk; then
connman-gtk &
fi