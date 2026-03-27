#!/bin/sh

ibus-daemon -drx &
feh --bg-fill Pictures/starfield.png
~/.local/share/dwm/sysstatus.sh &
xautolock -time 15 -locker "slock" -detectsleep &
redshift -l 39.99949502430241:116.32646283594929 &
picom &
# dunst &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
