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
    echo -e "\n${redColour}[!] Debes ejecutar el script como usuario root...${endColour}"
    exit 1
fi

if [[ -z $1 ]] || [[ -z $2 ]] || [[ -z $3 ]] || [[ -z $4 ]] || [[ -z $5 ]] || [[ -z $6 ]] ; then
 echo -e " "
 echo -e "${redColour}                   (0 0)${endColour}"
 echo -e "${redColour}           ---oOO-- (_) ----oOO---${endColour}"
 echo -e "${redColour}         ╔═════════════════════════╗${endColour}"
 echo -e "${redColour}         ║         EvilQR..♥       ║${endColour}"
 echo -e "${redColour}         ╚═════════════════════════╝${endColour}"
 echo -e "${redColour}            -------------------${endColour}"
 echo -e "${redColour}                  |__|__|${endColour}"
 echo -e "${redColour}                   || ||${endColour}"
 echo -e "${redColour}                  ooO Ooo${endColour}\n"
 echo -e "${yellowColour}github.com/abund4nt${endColour}"
 echo -e "\n${yellowColour}Uso: ./EvilQR.sh${endColour} ${greenColour}--nameimage${endColour} ${yellowColour}MyQr.png${endColour} ${greenColour}--url${endColour} ${yellowColour}www.web.com${endColour}"
fi

if [[ $1 == "--nameimage" ]] && [[ $3 == "--url" ]] ; then
 qrencode -o $2 $4
 echo -e "\n${redColour}[+]${endColour} ${grayColour}QR creado correctamente${endColour} ${redColour}ls${endColour}"
fi
