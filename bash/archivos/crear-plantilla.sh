#!/bin/bash
# ============================================================================
# Archivo      : crear-plantilla.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : 27/May/2025
# Descripción  : Crea una plantilla para un ejercicio nuevo 
# ============================================================================

if [[ -z $1 ]] ; then
	echo -e "Uso: \n ./crear-plantilla.sh  [Nombre del archivo]"
else
    read -p "Describe el funcionamiento del codigo " descripcion
    select categorias in "archivos" "condiciones" "funciones" "loops" "procesos" "redes" "otros" "salir"; do
      case $categorias in
        archivos)
          categoria="archivos"
          echo "hola"
          ;;

        condiciones)
          categoria="condiciones"
          ;;
        funciones)
          categoria="funciones"
          ;;
        loops)
          categoria="loops"
          ;;
        procesos)
          categoria="procesos"
          ;;
        redes)
          categoria="redes"
          ;;
        otros)
          categoria="otros"
          ;;
        salir)
          exit 0
          ;;
      esac
      break
    done
    ruta="$HOME/recursos/code-vault/bash/$categoria/"
  touch $ruta/$1.sh
  echo "#!/bin/bash
# ============================================================================
# Archivo      : $1.sh
# GitHub       : https://github.com/Z-x-S-g
# Fecha        : $(date +%d/%m/%y)
# Descripción  : $descripcion
# ============================================================================" >> "$ruta/$1.sh"
  chmod +x $ruta/$1.sh
  read -p "Te gustaria entrar al nuevo archivo? " r
  if [[ "$r" =~ ^[Yy]$ ]]; then
    nvim $ruta/$1.sh
  else
    echo "Tu archivo fue creado en $ruta$1.sh"
  fi
fi
