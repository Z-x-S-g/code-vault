#!/bin/bash
# ============================================================================
# Archivo      : leviathan-bruteforce.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 31/05/25
# Descripción  : Creo un codigo para hacer fuerza bruta para un wargame (overthewire leviathan)
# ============================================================================
for i in {0001..9999}
do
  $1 $i
done
