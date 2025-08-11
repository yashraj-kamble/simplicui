#!/bin/bash

# Check if the dock is running
if pgrep -f "nwg-dock-hyprland" > /dev/null; then
    # If it's running, send the SIGUSR1 signal to toggle visibility
    pkill -f nwg-dock-hyprland
else
    # If it's not running, start the dock in the desired mode (e.g., autohide mode -d)
    nwg-dock-hyprland  -i 34  -w 3  -mt 3 -mb 0 -x -c "rofi -show drun" &
fi

