#!/bin/bash
## 1.Encuentra todas las líneas que comienzan con la palabra Nombre:
cat $1 | grep -i nombre:
# -i para ignorar mayus/minus 

##
##2. Encuentra todas las líneas que contienen un número de teléfono en formato XXX-XXX-XXXX.Encuentra todas las líneas que contienen un número de teléfono en formato XXX-XXX-XXXX.
cat regex.txt | grep -E "[0-9]{3}-[0-9]{3}-[0-9]{3}"

Encuentra todas las direcciones de correo electrónico.
cat regex.txt | grep -E "\w+@\w+.\w"

fechas formato dd/mm/aaaa
cat regex.txt | grep -E "[0-9]{2}/[0-9]{2}/[0-9]{4}"


