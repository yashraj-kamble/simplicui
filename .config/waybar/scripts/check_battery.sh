#!/bin/bash

# Get battery percentage (assuming the battery is BAT0, adjust if needed)
battery=$(cat /sys/class/power_supply/BAT0/capacity)

# Define the critical threshold (e.g., 10%)
critical_threshold=5

# Check if battery is less than or equal to the critical threshold
if [ "$battery" -le "$critical_threshold" ]; then
    # Send a notification about critical battery level
    notify-send "⚠️ Critical Battery Level!" "      Battery is at ${battery}%!" -t 3000
fi




