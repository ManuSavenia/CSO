#!/bin/bash
arreglo=($(find "$HOME" -name "*.doc"))

verArchivo(){
	local parametro="$1"
	for i in ${#arreglo[@]}; do
		if [ "$arreglo[$i]" == "$parametro" ]; then
			cat $parametro
			exit 0
		fi
	done
	exit 5
}

cantidadArchivos(){
	echo La cantidad de archivos con terminacion .doc en /home es ${#arreglo[@]}
	exit 0
}

borrarArchivo(){
	local parametro="$1"
	if [ "${arreglo[@]}" =~ "$parametro" ]; then
		read -p "Quieres eliminar el archivo logicamente [y/n]?" eleccion
		eleccion=$(echo $eleccion)
		if [ "$eleccion" == "y" ]; then
			arreglo=("${arreglo[@]}/$parametro")
		elif [ "$eleccion" == "n" ]; then
			arreglo=("${arreglo[@]}/$parametro")
			rm "$parametro"
		else
			echo Respuesta no valida
		fi
	else
		echo Archivo no encontrado
		exit 10
	fi
}

select opcion in "VerArchivo" "cantidadArchivos" "borrarArchivo"; do
	case $opcion in
		"VerArchivo")
			read -p "Ingresa el nombre del archivo: " nombre
			verArchivo "$nombre"
			;;
		"cantidadArchivos")
			cantidadArchivos
			;;
		"borrarArchivo")
			read -p "Ingresa el nombre del archivo a borrar: " nombreB
			borrarArchivo "$nombreB"
			;;
	esac
done
