#!/bin/bash
# ============================================================================
# Archivo      : crear-backup.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 29/05/25
# Descripción  : copia todos los archivos .txt de un directorio dado a una carpeta backup con la fecha en el nombre
# ============================================================================

backup="backup$(date +%d%m%y)"
if [[ -e "$backup" ]]; then
  echo "Agregando al directorio"
else
  mkdir "$backup"
fi
find $1 -type f -name "*.txt" -exec cp -n -v {} $backup/ \;
