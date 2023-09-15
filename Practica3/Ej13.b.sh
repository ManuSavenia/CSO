#!/bin/bash

# Menú interactivo
select opcion in "Listar" "DondeEstoy" "QuienEsta" "Salir"; do
  case $opcion in
    "Listar")
      echo "`ls`"
      exit
      ;;
    "DondeEstoy")
      echo "`pwd`"
      exit
      ;;
    "QuienEsta")
      echo "`whoami`"
      exit
      ;;
    "Salir")
      echo "Saliendo del menú..."
      break
      ;;
    *)
      echo "Opción no válida"
      ;;
  esac
done
exit
