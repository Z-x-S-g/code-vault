#!/bin/bash


if [[ -z "$1" ]]; then
  echo -e "Uso:\n url-activa.sh [URL]"
else
  ping -c 4 $1 > /dev/null
  if [[ "$?" == "0" ]]; then
     echo "Ping exitoso"
    curl -s $1 > /dev/null
    if [[ "$?" == "0" ]]; then
      echo "La pagina esta activa y responde a web"
    fi
  else
    echo "La pagina no responde ($?)"  
  fi
fi
