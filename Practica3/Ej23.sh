#!/bin/bash
num=(1 2 3 4 5 6 7 8 9)
cantI=0
for i in ${num[@]}; do
	aux=$i
	if [ "$(expr $aux % 2)" -eq "0" ]; then
		echo "$i"
	else
		cantI=$(expr "$cantI" + 1)
	fi
done
echo "$cantI"
exit 0
