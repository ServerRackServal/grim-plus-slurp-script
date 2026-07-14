#!/bin/bash
# Takes a screenshot using grim and slurp.

filepath="$HOME/Pictures/screenshots/screenshot_$(date +%Y%m%d_%H%M%S).png"

slurp | while read area; do
  grim -t png -l 1 -g "$area" $filepath
done
