#!/usr/bin/env bash
date +%s > "$HOME/afs/.confs/.locktime"
hyprlock &
(
    sleep 3600
    if [ -f "$HOME/afs/.confs/.locktime" ]; then
        "$HOME/afs/.confs/hyprlock_logout.sh"
    fi
) &
