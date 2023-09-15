#!/bin/bash
if [ -e "$1" ] && [ -d "$1" ]; then
	cant=0
	for i in "$1"/*; do
		if [ -f "$i" ];then
			if [ -r "$i" ] && [ -w "$i" ]; then
				cant=$(expr $cant + 1)
			fi
		fi
	done
	echo Cantidad de archivos con permisos de lectura y escritura en $1 son $cant
else
	exit 4
fi
exit 0
