# Verificar que se proporcionaron los argumentos necesarios
if [ $# -ne 3 ]; then
  echo "Uso: $0 operacion numero1 numero2"
  exit 1
fi

operacion="$1"
num1="$2"
num2="$3"

# Función para realizar las operaciones
realizar_operacion() {
  case $1 in
    +)
      resultado=$((num1 + num2))
      ;;
    -)
      resultado=$((num1 - num2))
      ;;
    \*)
      resultado=$((num1 * num2))
      ;;
    %)
      resultado=$((num1 % num2))
      ;;
    *)
      echo "Operación no válida: $1"
      exit 1
      ;;
  esac
  echo "Resultado de $num1 $operacion $num2 = $resultado"
}

# Llamar a la función con la operación proporcionada
realizar_operacion "$operacion"
exit 0
