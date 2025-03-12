#!/bin/sh

rm /tmp/lock.png;\
	scrot -F /tmp/lock.png;\
	magick /tmp/lock.png -scale 10% -scale 1000% /tmp/lock.png;\
	i3lock -i /tmp/lock.png
