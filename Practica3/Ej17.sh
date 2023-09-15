#!/bin/bash
for archivo in *
do
	if [ -f "$archivo" ]; then 
		nombre=$(echo "$archivo" | tr '[:lower:][:upper:]' '[:upper:][:lower:]' | tr -d 'aA')
	echo "$nombre"
	fi
done
exit
