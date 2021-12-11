#!/bin/bash

##Primero vamos a definir una variable en este caso vamos a llamar
##tarea=*.txt  como la variable
##Después usamos for para indexar nuestra variable
##y llamamos a las funciones  para contar flas y columnas
##Para finalizar con echo imprimimos nuestras variables que cuentan
##nuestras filas y columnas, y el archivo con el número de filas y columnas


tarea=*.txt 
for A in $tarea 
do
C=`cat $A | wc -l` 
M=`head -n 1 $A | tr -d " " | tr -d "" | wc -c` 
echo $A $C $M 
done

