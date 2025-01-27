#!/bin/bash

choice=$(echo -e "Yes\nNo" | wofi --show dmenu --height=25% --width=30% --prompt "Confirm restart:")

if [[ "$choice" == "Yes" ]]; then
  systemctl reboot
else
  echo "Shutdown canceled."
fi
