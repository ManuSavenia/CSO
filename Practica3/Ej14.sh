#!/bin/bash

# Verificar si se proporcionaron suficientes argumentos
if [ $# -lt 3 ]; then
  echo "Uso: $0 directorio [-a|-b] CADENA"
  exit 1
fi

# Directorio y cadena
directorio="$1"
opcion="$2"
cadena="$3"

# Verificar si el directorio existe
if [ ! -d "$directorio" ]; then
  echo "El directorio $directorio no existe."
  exit 1
fi

# Iterar sobre los archivos en el directorio
for archivo in "$directorio"/*; do
  if [ -f "$archivo" ]; then
    # Obtener el nombre del archivo sin la ruta
    nombre_archivo=$(basename "$archivo")

    # Renombrar el archivo según la opción
    if [ "$opcion" = "-a" ]; then
      nuevo_nombre="${nombre_archivo}${cadena}"
    elif [ "$opcion" = "-b" ]; then
      nuevo_nombre="${cadena}${nombre_archivo}"
    else
      echo "Opción no válida. Use -a o -b."
      exit 1
    fi

    # Renombrar el archivo
    mv "$archivo" "$directorio/$nuevo_nombre"
    echo "Renombrado: $archivo -> $directorio/$nuevo_nombre"
  fi
done

echo "Renombrado completado."

