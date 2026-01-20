#!/bin/sh

ibus-daemon -drx &
feh --bg-fill Pictures/starfield.png
/home/friz/.local/share/dwm/sysstatus.sh &
xautolock -time 12 -locker "slock" -detectsleep &
redshift -l 34.36046329567342:118.33996667935915 &
picom &
# dunst &
/usr/lib/xfce4/notifyd/xfce4-notifyd
