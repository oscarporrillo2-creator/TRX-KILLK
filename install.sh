#!/bin/bash
# ========================================================
# INSTALADOR AUTOMÁTICO REVISADO PARA TRX-KILL V1.1.1
# BY: TRX-LILL (2026)
#RFH:OPEN CLL
# ========================================================

clear
echo -e "\e[1;31m"
echo "  ====================================================="
echo "         INICIANDO INSTALACIÓN DE TRX-KILL V1.1.1.1
echo "  ====================================================="
echo -e "\e[0m"

sleep 1

echo -e "\e[1;32m[+] Actualizando paquetes del sistema en Termux...\e[0m"
# Forzamos la no-interactividad para evitar las molestas preguntas de configuración antigua
apt-get update -y && apt-get upgrade -y -o Dpkg::Options::="--force-confnew"

echo -e "\e[1;32m[+] Verificando e instalando Python y Git...\e[0m"
pkg install python git -y

echo -e "\e[1;32m[+] Configurando el entorno de módulos de Python...\e[0m"
pip install --upgrade pip

echo -e "\e[1;32m[+] Instalando dependencias requeridas (phonenumbers, requests)...\e[0m"
pip install phonenumbers requests

echo -e "\e[1;32m[+] Configurando permisos del script de ejecución...\e[0m"
if [ -f "TRX-KILL" ]; then
    chmod +x TRX-KILL
    echo -e "\e[1;34m[✓] Permisos del ejecutable TRX-KILL aplicados con éxito.\e[0m"
else
    echo -e "\e[1;33m[!] Nota: Asegúrate de que tu archivo se llame 'TRX-KILL' (sin extensión) en la raíz.\e[0m"
fi

echo ""
echo -e "\e[1;32m====================================================="
echo "   ¡INSTALACIÓN COMPLETADA CON ÉXITO POR TRX-LILL!"
echo "   Para iniciar la herramienta ejecuta: python TRX-KILL"
echo "=====================================================\e[0m"
