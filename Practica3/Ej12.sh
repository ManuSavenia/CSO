if [ $# -ge 2 ]; then
  echo "La suma de los numeros es: `expr $1 + $2`"
  echo "La resta de los numeros es: `expr $1 - $2`"
  echo "La multiplicacion de los numeros es: `expr $1 \* $2`"
  if [ $1 -gt $2 ]; then
    echo "num2 es menor que num1."
    exit
  fi
  echo "El mayor de los numeros es num2 "
  exit
fi
echo "Insuficientes argumentos"
exit
