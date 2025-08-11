#!/bin/bash
output=$(fastfetch)
echo "{\"$output\"}"
