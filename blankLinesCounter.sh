#!/bin/bash

CONT=0

while IFS= read -r LINEA
do
N=${#LINEA}

[ $N -eq 0 ] && CONT=$(($CONT+1))

done < $1


echo "Lineas en blanco: $CONT"
