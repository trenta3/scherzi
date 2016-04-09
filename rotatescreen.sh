#!/bin/bash

# Ruota lo schermo periodicamente

waittime=$1;

while true; do
	sleep $waittime;
	cosa=$(shuf -i 1-20 -n 1);

	case "$cosa" in
		1)
			xrandr -o left
			;;
		2)
			xrandr -o right
			;;
		*)
			xrandr -o normal
			;;
	esac
done
