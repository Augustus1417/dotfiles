#!/bin/bash

# Use wofi to confirm action (Yes or No)
choice=$(echo -e "Yes\nNo" | wofi --show dmenu --prompt "Confirm shutdown:")

# Check the user's choice and act accordingly
if [[ "$choice" == "Yes" ]]; then
  systemctl poweroff
else
  echo "Shutdown canceled."
fi
