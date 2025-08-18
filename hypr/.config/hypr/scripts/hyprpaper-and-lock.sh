#/!bin/bash
while ! hyprctl hyprpaper listloaded > /dev/null 2>&1; do 
	echo "Hyprpaper not yet loaded, waiting .1s"	
	sleep 0.1
done

hyprctl hyprpaper unload all &&
(hyprlock || hyprctl dispatch exit)

