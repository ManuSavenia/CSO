#!/bin/bash

if [ $# -lt 1 ]; then
	exit 1
fi
cant=0
for i in "$#"; do
	if [ $(expr $i%2) ]; then
		continue
	fi
	if [ $($i) -e ]; then
		if [ $($i) -f ]; then
			echo "$i es un archivo"
		else
			if [ $($i) -d ]; then
				echo "$i es un directorio"
			fi
		fi
	else
		cant=$(expr $cant + 1)
	fi
done

echo "La cantidad de archivos inexistentes mandados por parametro es $cant"
