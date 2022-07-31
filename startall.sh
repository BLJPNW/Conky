#!/usr/bin/env bash

# Script to start all Lux HUD conky widgets.
# As you can see below all conky processes gets killed
# first before running since this is a collection that takes
# up the whole desktop. Feel free to modify this for you needs.
# Author: Mikael Luxwarp Carlsson mikael.m.carlsson@gmail.com https://connumin.com
# License: ISC.

# Let the desktop load for a few seconds before running
sleep 5

# Kill all current conky processes.
killall -9 conky

# Starting all lux-hud conky widgets.
conky -d -c ~/.config/conky/sysinfo.conf
#conky -d -c ~/.config/conky/memory.conf
conky -d -c ~/.config/conky/disks.conf
conky -d -c ~/.config/conky/cpu.conf
conky -d -c ~/.config/conky/network.conf
conky -d -c ~/.config/conky/processes.conf
conky -d -c ~/.config/conky/log.conf
#conky -d -c ~/.config/conky/clock.conf
