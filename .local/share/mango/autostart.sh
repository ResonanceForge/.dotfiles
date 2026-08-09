#!/bin/sh

fcitx5 &
waybar &
swaybg -i Pictures/starfield.png -m fill &
swayidle -w timeout 600 'swaylock -f' timeout 900 'systemctl suspend' &
gammastep -l 39.99949502430241:116.32646283594929 & 2>/dev/null
# dunst &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
