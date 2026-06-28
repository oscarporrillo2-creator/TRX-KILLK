#!/bin/bash
# ========================================================
# INSTALADOR AUTOMÁTICO REVISADO PARA TRX-KILL V1.1.1
# BY: TRX-LILL (2026)
# ========================================================

clear
echo -e "\e[1;31m"
echo "  ====================================================="
echo "         INICIANDO INSTALACIÓN DE TRX-KILL V1.1.1.1"
echo "  ====================================================="
echo -e "\e[0m"

sleep 1

echo -e "\e[1;32m[+] Actualizando paquetes del sistema en Termux...\e[0m"
apt-get update -y && apt-get upgrade -y -o Dpkg::Options::="--force-confnew"

echo -e "\e[1;32m[+] Verificando e instalando Python, Git y utilidades...\e[0m"
pkg install python git psmisc openssh -y

echo -e "\e[1;32m[+] Configurando el entorno de módulos de Python...\e[0m"
pip install --upgrade pip
pip install flask requests phonenumbers

echo -e "\e[1;32m[+] Configurando permisos del script de ejecución...\e[0m"
if [ -f "TRX-KILL" ]; then
    chmod +x TRX-KILL
    echo -e "\e[1;34m[✓] Permisos del ejecutable TRX-KILL aplicados con éxito.\e[0m"
else
    echo -e "\e[1;33m[!] Nota: Asegúrate de que tu archivo se llame 'TRX-KILL' (sin extensión) en la raíz.\e[0m"
fi

echo ""
echo -e "\e[1;32m====================================================="
echo "   ¡INSTALACIÓN COMPLETADA CON ÉXITO!"
echo "   Para iniciar la herramienta ejecuta: python3 TRX-KILL"
echo "=====================================================\e[0m"
