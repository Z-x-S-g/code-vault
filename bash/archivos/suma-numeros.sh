#!/bin/bash
# ============================================================================
# Archivo      : suma-numeros.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 30/05/25
# Descripción  : Va a buscar y sumar todos los numeros que se encuentren en un archivo
# ============================================================================

total=0
while read line 
do
  if [[ $line =~ ^[0-9]+$ ]]; then
    total=$((total+line))
  else
    echo "Esta linea no es un numero"
  fi
done < $1

echo "el total de la suma de los archivos es $total"

