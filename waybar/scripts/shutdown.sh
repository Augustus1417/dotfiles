#!/bin/bash

choice=$(echo -e "Yes\nNo" | wofi --show dmenu --height=25% --width=30% --prompt "Confirm shutdown:")

if [[ "$choice" == "Yes" ]]; then
  systemctl poweroff
else
  echo "Shutdown canceled."
fi
