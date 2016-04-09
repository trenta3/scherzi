#!/bin/sh

# Script che quando lanciato chiede che tipo di disturbo si vuole dare alla povera vittima
# e si occupa di fare tutti gli scherzi
echo "*** Superscherzi v 0.1 ***"


# Spinmouse con timer.
# Default: ./spinmouse.sh 4 1 60
echo "### SPINMOUSE"
echo "Muove il mouse di moto circolare ad intermittenza"
echo -n "Lo vuoi aggiungere? [Y/N] "
read resp

case "$resp" in
	y)
	Y)
		$spinmouse=yes;
		;;
	*)
		$spinmouse=no;
esac

# Aggiungiamo tutto quanto al .profile e/o al .bashrc del malcapitato
