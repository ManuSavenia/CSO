#!/bin/bash
pila=()

lenght(){
	longitud=${#pila[@]}
	echo $longitud
}

printP(){
	local longitud=lenght
	for i in "${#pila[@]}"; do
		echo "$i" 
	done
}

push(){
	local elemento="$1"
	pila+=("$elemento")
}
pop(){
	local longitud=lenght
	if [ "$longitud" != "0" ]; then
		local elemento="${pila[$longitud]}"
		unset pila[$(expr $longitud - 1)]
		echo $elemento
	fi
}

push "1"
push "2"
push "3"
push "4"
push "5"
push "6"
push "7"
push "8"
push "9"

lenght

pop
pop
pop

lenght

