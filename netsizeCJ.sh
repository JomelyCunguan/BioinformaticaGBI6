#!/bin/bash

##Imprime el título del archivo en el que se va trabajar

echo "Filename: Saavedra2013/$1"

## Para los comandos , primero se crea una variable y se ejecuta
## el archivo.txt

## Después, con cat imprimimos el numero de filas
## y además usamos wc -l para cntar el número de filas
echo "Number of rows:"
cat $1 | wc -l

## Después, usamos head -n 1 para imprimir únicamente la primera columna
## concatenamos con | de desaparcer los espacios que nos pide eliminar
## usamos tr -d entre los caracteres |
## Y para finalizar usamos wc -c para contar el número de columnas
echo "Number of columns:"
head -n 1 $1 | tr -d " " | tr -d "" | wc -c
