#!/bin/bash
# ========================================================
# INSTALADOR AUTOMÁTICO PARA TRX-KILL
# BY: TRX-LILL (2026)
# ========================================================

clear
echo -e "\e[1;31m"
echo "  ====================================================="
echo "         INICIANDO INSTALACIÓN DE TRX-KILL"
echo "  ====================================================="
echo -e "\e[0m"

sleep 1

echo -e "\e[1;32m[+] Actualizando paquetes del sistema...\e[0m"
pkg update -y && pkg upgrade -y

echo -e "\e[1;32m[+] Instalando Python y dependencias críticas...\e[0m"
pkg install python -y
pkg install git -y

echo -e "\e[1;32m[+] Instalando módulos de Python necesarios...\e[0m"
pip install --upgrade pip
pip install phonenumbers requests

echo -e "\e[1;32m[+] Configurando permisos de ejecución para TRX-KILL...\e[0m"
if [ -f "TRX-KILL" ]; then
    chmod +x TRX-KILL
    echo -e "\e[1;34m[v] Permisos aplicados con éxito.\e[0m"
else
    echo -e "\e[1;31m[!] Error: No se encontró el archivo principal 'TRX-KILL' en la raíz.\e[0m"
fi

echo ""
echo -e "\e[1;33m====================================================="
echo "   ¡INSTALACIÓN COMPLETADA CON ÉXITO POR TRX-LILL!"
echo "   Para iniciar la herramienta ejecuta: ./TRX-KILL"
echo "=====================================================\e[0m"
