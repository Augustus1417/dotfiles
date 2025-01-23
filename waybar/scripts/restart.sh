#!/bin/bash

# Use wofi to confirm action (Yes or No)
choice=$(echo -e "Yes\nNo" | wofi --show dmenu --height=25% --width=30% --prompt "Confirm restart:")

# Check the user's choice and act accordingly
if [[ "$choice" == "Yes" ]]; then
  systemctl reboot
else
  echo "Shutdown canceled."
fi
