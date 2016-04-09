#!/bin/bash

# Scriptino che blocca il terminale fino a quando non si inserisce la password giusta
# Di per sè assomiglia però molto ad un terminale

password=;
goodtry=cose;

while [ "$goodtry" != "$password" ]; do
	echo -n "$USERNAME@$(hostname):$(pwd)\$ "
	read goodtry
done
