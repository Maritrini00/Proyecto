#!/bin/bash
#comentario
#variables(cadena y entero)
nombre="luis"
#texto y numeros enteros
edad=29
#imprimir variables

#variables complejas (arreglos)
arreglo=(uno dos tres)
echo  $nombre
echo $edad
echo $arreglo
#impr arreglo
echo ${arreglo[*]}
#modificar el valor de una variable
((edad++))
echo $edad
((edad+=1))
#modificar un elemento de un arreglo
arreglo[3]="cuatro"
echo ${arreglo[*]}
#numero de elementos del arreglo
echo ${#arreglo[*]}
#interpolación de cadenas
echo "el numero de elementos en el arreglo es: ${#arreglo[*]}"
echo "el valor es $edad"
echo "el arreglo en la pos 1 tiene un valor de ${arreglo[1]}"
echo "el arreglo en la pos 1 tiene ${#arreglo[1]}"

#valores matematicos
# + - * /...

n1=5
n2=9
n3=$((n1+n2))
echo "el resultado es $n3"

#operadores lógicos
# <(-lt), >(-gt), <=(-le), >=(-ge),  ==(-eq), !=(-ne), -n -z
#estructuras de control
#condicional if,else

if [ $n1 -gt $n2 ]; then 
	echo "$n1 es mayor que $n2"
else
	echo "$n2 es mayor que $n1"
fi

	echo "ejecute algo"
if [ $? -eq 0 ]; then
	echo "ok"
else
	echo "no ok"
fi

#operadores archivo
#-e si existe (arch o carp)
#-f si existe un archivo y no es carpeta
#-s no esta vacio
#-d si es una carpeta
#-r -w -x si se puede leer, escribir, o ejecutar

file="./spt.sh"
if [ -d $file ]; then
	echo "$file existe y es una carpeta"
else
	echo "$file no existe o no es una carpeta"
fi
#operadores logicos (and&& y or||)

if [ -r $file ] && [ -w $file ]; then
	echo " el $file tiene permosos de escritura y lectura"
else
	echo "el $file no tiene permisos"
fi

if [ -r $file ] || [ -x $file ]; then
	echo " el $file tiene permosos de escritura o lectura"
else
	echo "el $file no tiene permisos"
fi

#estuctura de control

case $1 in
	hola )
	echo "bienvenido"
	;;
	adios | bye )
	echo "arioos:("
	;;
	* )
	echo "mi no entender"
	;;
esac

#estucutra de control repetitiva
#do while, for
#while
user=""
while [[ $user != "admin" ]]; do
	#statemnt
	read -p "cual es tu nombre? " user
done
#for
for (( i=0; i<10; i++)); do
	echo "el numero es $i"
done
#for listas
invitados=(pedro juan david jorge maria lulu)
for item in ${invitados[@]}; do
	echo $item 
done

#while read data; do
	#echo $data
#done

suma(){
	echo "hola desde mi funcion"
}

suma

resta(){
	echo $(( $1 - $2 ))
}

total=$(resta 8 9)
echo "resultado $total"

system=`whoami`
echo "el usuario es $system"
#este es de las primeras lecciones de la clase
