#!/bin/bash
# Muove il mouse circolarmente. Si chiama con Raggio e Velocità e Numero di secondi tra un giro e l'altro

R=$1;
speed=$2;
waittime=$3;

for (( ; ; ))
do
	for ((i=0;i<360;i++))
	do
		xdotool mousemove_relative -p -- $(echo "$i*$speed"|bc -l) $(echo "$R*$speed"|bc -l);
	done
	sleep $waittime;
done
