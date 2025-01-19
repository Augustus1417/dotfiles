#!/bin/bash

# Use wofi to confirm action (Yes or No)
choice=$(echo -e "Yes\nNo" | wofi --show dmenu --prompt "Confirm restart:")

# Check the user's choice and act accordingly
if [[ "$choice" == "Yes" ]]; then
  systemctl reboot
else
  echo "Shutdown canceled."
fi
