#!/bin/bash
select opcion in "Ej12" "Ej12.c" "Ej13.a" "Ej13.b" "Ej13.c" "Ej14" "Ej16" "Ej17" "Ej18"; do
	case $opcion in
	  "Ej12")
		  ./Ej12.sh
		  exit
		  ;;
	  "Ej12.c")
		  ./Ej12.c.sh
		  exit
		  ;;
	  "Ej13.a")
		  ./Ej13.a.sh
		  exit
		  ;;
	  "Ej13.b")
		  ./Ej13.b.sh
		  exit
		  ;;
	  "Ej13.c")
		  ./Ej13.c.sh
		  exit
		  ;;
	  "Ej14")
		  ./Ej14.sh
		  exit
		  ;;
	  "Ej16")
		  ./Ej16
		  exit
		  ;;
	  "Ej17")
		  ./Ej17.sh
		  exit
		  ;;
	  "Ej18")
		  ./Ej18.sh
		  exit
		  ;;
	  "Salir")
		  exit
	esac
done
exit
