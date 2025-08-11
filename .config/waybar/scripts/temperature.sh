#!/bin/bash
output=$(sensors | grep 'Package id 0' | awk '{print $4}' |  sed 's/+//; s/\..*//')
echo "{\"text\" : \"$output\"}"

