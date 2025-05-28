#!/bin/bash
# ============================================================================
# Archivo      : crear-plantilla.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 27/May/2025
# Descripción  : Crea una plantilla para un ejercicio nuevo 
# ============================================================================

#$1 = nombre
#$2 = categoria
#Lo primero que haremos sera que poder crear un archivo y que tenga el texto de arriba modificado

if [[ -z $1 ]] ; then
	echo -e "Uso: \n ./crear-plantilla.sh  [Nombre del archivo]"
else
	touch $1.sh 
fi
