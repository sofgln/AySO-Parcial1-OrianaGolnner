#!/bin/bash


echo "Mi IP Publica es: $(curl -s ifconfig.me)" > ~/parcial1/Filtro_Avanzado.txt

user=$(whoami)
echo "Mi usuario es: $(whoami)" >> ~/parcial1/Filtro_Avanzado.txt

echo "El Hash de mi Usuario es: $(sudo grep $user /etc/shadow | cut -d: -f2)" >> ~/parcial1/Filtro_Avanzado.txt



cat ~/parcial1/Filtro_Avanzado.txt

