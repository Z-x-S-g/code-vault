#!/bin/bash
# ============================================================================
# Archivo      : one-liners.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 30/05/25
# Descripción  : Aqui van los codigos donde el ejercicio se puede resolver desde consola usando un one liner
# ============================================================================

#Mostrar permisos de todos los archivos en una carpeta
ls -lA | awk '$1 !~ /^d/ { print "Los permisos del archivo", $NF, "Son", $1 }'

#Detectar líneas duplicadas en un archivo de texto
cat [archivo] | sort | uniq --all-repeated=separate
