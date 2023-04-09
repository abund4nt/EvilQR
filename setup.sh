#!/bin/bash

#Colores
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# Función para manejar la interrupción Ctrl+C
function ctrl_c(){
    echo -e "\n${redColour}[!] Saliendo...${endColour}\n"
    tput cnorm; exit 1
}

trap ctrl_c INT

# Comprobamos si el usuario es root
if [ $(id -u) -ne 0 ]; then
    echo -e "\n${redColour}[!] Debes ejecutar el script como usuario root...${endColour}\n"
    exit 1
fi

echo -e "\n${greenColour}[+]${endColour} ${grayColour}Instalando requirimientos necesarios, favor esperar... ${endColour}"

apt update -y &>/dev/null
apt upgrade -y &>/dev/null
apt install qrencode -y &>/dev/null
apt install imagemagick -y &>/dev/null
chmod +x EvilQR.sh
sleep 1
echo -e "\n${greenColour}[+]${endColour} ${grayColour}Todo instalado correctamente.${endColour} ${redColour}./EvilQR.sh${endColour}"
exit 
