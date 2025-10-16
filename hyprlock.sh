#!/usr/bin/env bash
LOCKFILE="$HOME/afs/.confs/.locktime"
LOGOUT_SCRIPT="$HOME/afs/.confs/hyprlock_logout.sh"

date +%s > "$LOCKFILE"
hyprlock &
HYP_PID=$!

(
    sleep 3600
    if [ -f "$LOCKFILE" ] && ps -p $HYP_PID > /dev/null 2>&1; then
        "$LOGOUT_SCRIPT"
    fi
) &
