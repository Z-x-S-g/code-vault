#!/bin/bash
# ============================================================================
# Archivo      : mostrando-lineas.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 30/05/25
# Descripción  : Lee un arhivo linea por linea
# ============================================================================
contador=1 
while read -r line 
do 
  echo "$contador : $line"
  contador=$(($contador+1))
done < $1 
