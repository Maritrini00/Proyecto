#!/bin/bash
echo "Multiplicación de dos números"
num1=""
num2=""
read -p "primer numero para la multiplicación " num1
read -p "segundo numero para la multiplicación " num2


multiplicacion(){
	echo $(( $num1 * $num2 ))
}

total=$(multiplicacion num1 num2)
echo "resultado $total"
#este es otro de la tarea pasada xd
