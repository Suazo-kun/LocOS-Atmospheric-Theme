#!/bin/bash
if ! pgrep plank; then
killall plank
fi

cp -fR /opt/Atmospheric-Theme/.config/* $HOME/.config
cp -fR /opt/Atmospheric-Theme/.local/* $HOME/.local
cp -fR /opt/Atmospheric-Theme/.themes/* $HOME/.themes
cp -f /opt/Atmospheric-Theme/.config/openbox/lxde-rc.xml $HOME/.config/openbox
pcmanfm --desktop-off
openbox --restart
lxpanelctl restart
sleep 1
pcmanfm --desktop -p LXDE &
sleep 1
sh /opt/Atmospheric-Theme/fondo.sh
