#!/bin/bash

# Check if amixer is installed
if ! command -v amixer &> /dev/null
then
    exit 1
fi

# Get the current mute status (look for [off] in the status)
current_status=$(amixer get Master | grep -oP '\[.*\]' | grep -E '(\[off\])')

# Toggle the mute status
if [[ -n "$current_status" ]]; then
    amixer set Master unmute > /dev/null 2>&1
else
    amixer set Master mute > /dev/null 2>&1
fi

