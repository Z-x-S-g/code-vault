#!/bin/bash
# ============================================================================
# Archivo      : url-activa.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 27/May/2025
# Descripción  : Verifica mediante ping y curl si una url esta activ 
# ============================================================================

if [[ -z "$1" ]]; then
  echo -e "Uso:\n url-activa.sh [URL]"
else
  ping -c 4 "$1" > /dev/null
  ping_status=$?
  if [[ $ping_status == 0 ]]; then
    echo "Ping exitoso"
    if curl -s "$1" > /dev/null; then
      echo "La pagina esta activa y responde a web"
    else
      echo "La pagina no responde via HTTP"
    fi
  else
    echo "La pagina no responde ($ping_status)"
  fi
fi
