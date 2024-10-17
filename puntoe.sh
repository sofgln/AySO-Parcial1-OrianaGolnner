#!/bin/bash

#información del total de memoria RAM
grep "MemTotal" /proc/meminfo > Filtro_Basico.txt

#  fabricante del chassis
sudo dmidecode -t chassis | grep "Manufacturer" >> Filtro_Basico.txt

# Mostrar el contenido del archivo Filtro_Basico.txt
cat Filtro_Basico.txt
