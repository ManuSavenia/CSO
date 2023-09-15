#!/bin/bash

# Verificar si se proporcionó un nombre de archivo/directorio como parámetro
if [ $# -ne 1 ]; then
  echo "Uso: $0 nombre_archivo_o_directorio"
  exit 1
fi

nombre="$1"

# Verificar si el archivo/directorio existe
if [ -e "$nombre" ]; then
  # Verificar si es un archivo
  if [ -f "$nombre" ]; then
    echo "$nombre es un archivo."
  # Verificar si es un directorio
  elif [ -d "$nombre" ]; then
    echo "$nombre es un directorio."
  else
    echo "$nombre existe pero no es ni un archivo ni un directorio."
  fi
else
  # Si no existe, crear un directorio con el nombre proporcionado
  mkdir "$nombre"
  echo "Se creó el directorio $nombre."
fi
exit
