#!/bin/bash
# ============================================================================
# Archivo      : imprimir-por-lineas.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 29/05/25
# Descripción  : Muestra cada línea con su número
# ============================================================================

ln=$(wc -l $1 | awk {'print $1'})

#echo $ln
for i in  $(seq 1 $ln);
do
  echo "$i"
  batcat -n -r $i $1 
done
