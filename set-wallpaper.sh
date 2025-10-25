#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/.wallpaper"

# Use rofi to select a wallpaper
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | rofi -dmenu -p "Select Wallpaper")

# If a wallpaper was selected, set it with feh
if [[ -n "$SELECTED_WALLPAPER" ]]; then
    sway output "*" bg "$SELECTED_WALLPAPER" fill
fi
