#!/bin/bash
echo "Elige una opción:"
select opcion in "Archivos" "Condiciones" "Salir"; do
  case $opcion in
    "Archivos")
      echo "Elegiste la categoría: Archivos"
      break
      ;;
    "Condiciones")
      echo "Elegiste la categoría: Condiciones"
      break
      ;;
    "Salir")
      echo "Adiós"
      break
      ;;
    *)
      echo "Opción inválida"
      ;;
  esac
done
