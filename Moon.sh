#!/bin/bash

#IDS para verificar la veracidad de los archivos que tengas dentro de tu directorio (Proyecto personal)

function menu() {
  RED='\e[31m'
  GREEN='\e[32m'
  YELLOW='\e[33m'
  BLUE='\e[34m'
  MAGENTA='\e[35m'
  CYAN='\e[36m'
  RESET='\e[0m'
  echo -e "${RED}
  __  __                   
 |  \/  |                  
 | \  / | ___   ___  _ __  
 | |\/| |/ _ \ / _ \| '_ \ 
 | |  | | (_) | (_) | | | |  
 |_|  |_|\___/ \___/|_| |_|   IDS by Mikel Asurmendi
                           
                           
  ${RESET}"

}
 
function extraer_hash() {
  #Funcion con la que saco todos los hashesh de los archivos que hay dentro del directorio
  find ./ -type f -exec shasum -a 256 {} \;
}

# Función que muestra la ayuda
mostrar_ayuda() {
    echo "Uso: $0 [opciones]"
    echo
    echo "Opciones:"
    echo "  --help   Muestra esta ayuda y termina."
    echo "  --ver    Muestra la versión del script."
    echo "  --dir    Especifica el directorio a procesar."
    echo "  --who    Quien se encargo del script"
    echo "  --man    Manual de uso de Moon IDS."
    echo
    echo "Ejemplo:"
    echo "  $0 --dir /ruta/a/tu/directorio"
    echo
}

# Función que muestra la versión
mostrar_version() {
    echo "0.1.0"
}

#Funcion que muestra el autor del script
autor () {
  echo "Mikel Asurmendi"
}

manual () {
  echo -e "Moon al momento de estar desarrolando la aplicacion esta siendo desarrollado con la intencion de tener los hashesh guardados en un fichero y que cuando los lea y no coincidan con los ficheros que haya o falten ficheros, el script actuara enviando mensajes, correos o lo que quiera el usuario final, de momento esta en fase alpha de desarrollo"
}

# Procesar los argumentos
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --help) mostrar_ayuda; exit 0 ;;
        --ver) mostrar_version; exit 0 ;;
        --dir) ls $DIRECTORIO"$2"; exit 0 ;;
        --man) manual; exit 0 ;;
        --who) autor; exit 0 ;;
*) echo "Opción desconocida: $1"; exit 1 ;;
    esac
    shift
done

menu & sleep 5
