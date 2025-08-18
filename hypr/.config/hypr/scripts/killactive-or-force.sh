#/!bin/bash
active_window=$(hyprctl -j activewindow | jq .class -r)
# Lists of apps that should be force killed
force_killable=("Zoom Workplace" "zoom")

if [[ ${force_killable[@]} =~ $active_window ]]; then
  hyprctl dispatch forcekillactive
else
	hyprctl dispatch killactive
fi

