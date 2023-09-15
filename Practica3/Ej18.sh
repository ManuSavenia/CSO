#!/bin/bash
while [ true ]; do
	sleep 10
	if [ $1 == `whoami` ]; then
		echo "El usuario $1 esta conectado en el sistema"
		exit 0
	fi
done
exit 1
