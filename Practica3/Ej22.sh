#!/bin/bash
num=(10 3 5 7 9 3 5 4)
productoria(){
	for i in "${num[@]}"; do
		echo "scale=1;$i*$1" | bc
	done
}

productoria 2

