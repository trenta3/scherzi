#!/bin/sh

# Casualmente inizia a scrivere alcune lettere come se le scrivesse l'utente
letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789. ";
starttime=$1;


sleep $starttime;
while true; do
	waittime=$(shuf -i 1-60 -n 1);
	random=$(shuf -i 1-64 -n 1);
	xdotool key ${letters:$p:1}
	sleep $waittime;
done
