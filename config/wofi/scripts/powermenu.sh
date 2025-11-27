#!/usr/bin/env bash

entries="⇠ Logout\n Lock\n⟲ Reboot\n⏻ Shutdown"

selected=$(echo -e $entries|wofi --width 250 --height 210 --xoffset=1660 --yoffset=0 --prompt=leaving? --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    ~/afs/.confs/hyprlock_logout.sh;;
  lock)
    ~/afs/.confs/hyprlock.sh;;
  reboot)
    exec systemctl reboot -i;;
  shutdown)
    exec systemctl poweroff -i;;
esac
