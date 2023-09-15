#!/bin/bash
# Bucle para generar números del 1 al 100 y calcular sus cuadrados
for ((i=1;i<=100;i++)) do
  cuadrado=$((i * i))
  echo "Número: $i - Cuadrado: $cuadrado"
done
exit 0
