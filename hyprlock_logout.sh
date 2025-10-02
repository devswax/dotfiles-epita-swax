#!/usr/bin/env bash
if command -v loginctl >/dev/null 2>&1; then
    loginctl terminate-user "$USER"
else
    pkill -KILL -u "$USER"
fi
