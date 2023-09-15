#!/bin/bash
usuarios=($(getent group users | cut -d: -f 4 | tr ',' ' ' ))
n=$2

imprimir(){
	echo "Nombres de ususarios del grupo users: "
	for usuario in "${usuarios[@]}"; do
		echo "$usuario"
	done
}

long(){
	echo "La longitud del arreglo es ${#usuarios[@]}"
}

retornar(){
	if [ "$n" -gt "${#usuarios[@]}" ]; then
		echo "No hay tantos usuarios"
	else
		echo "${usuarios[n]}"
	fi
}

case $1 in 
	"b")
		retornar
		;;
	"l")
		long
		;;
	"i")
		imprimir
		;;
	"?")
		exit 1
		;;
esac
exit 0
