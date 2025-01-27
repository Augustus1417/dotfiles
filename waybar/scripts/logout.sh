#!/bin/bash

choice=$(echo -e "Yes\nNo" | wofi --show dmenu --height=25% --width=30% --prompt "Confirm logout:")

if [[ "$choice" == "Yes" ]]; then
  hyprctl dispatch exit
else
  echo "Logout canceled."
fi
