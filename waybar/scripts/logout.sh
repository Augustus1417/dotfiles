#!/bin/bash

# Use wofi to confirm action (Yes or No)
choice=$(echo -e "Yes\nNo" | wofi --show dmenu --height=25% --width=30% --prompt "Confirm logout:")

# Check the user's choice and act accordingly
if [[ "$choice" == "Yes" ]]; then
  hyprctl dispatch exit # Log out (for Hyprland)
else
  echo "Logout canceled."
fi
