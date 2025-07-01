#!/bin/bash

WALLPAPER_DIR="$HOME/.config/hypr/lockscreen/"
HYPRLOCK_CONFIG="$HOME/.config/hypr/hyprlock.conf"

RANDOM_IMAGE=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) | shuf -n 1)

sed -i -E "s|^(\\s*path\\s*=).*|\1 $RANDOM_IMAGE|" "$HYPRLOCK_CONFIG"

hyprlock

#loginctl lock-session
