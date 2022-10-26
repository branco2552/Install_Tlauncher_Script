#!/bin/sh

# Author : Bryan Cropalatoe
# Copyright (c) https://github.com/branco2552/
# Script follows here:

# Como instalar Minecraft Tlauncher no linux via ShellScript

# declarndo as variaveis
LinkMine="https://tlauncher.org/jar"


# Verifica se já tem o Java Run-time instalado e atualizado

# Começa a instalação do java run-time
echo "---------------- Vamos agora instalar o java run-time no seu linux ----------------"
sudo apt install default-jre -y
echo "Java Run-Time instalado..."

# Verifica se já tem o Tlaucher instalado e atualizado

# Faz o Download do Tlaucher 
echo "Fazendo Download do Tlauncher..."
wget $LinkMine
echo "Tlauncher baixado..."

# Faz o unzip do Tlaucher
unzip jar -All


# Limpa o download feito e só mantem o arquivo do Tlauncher


# Faz o Atalho do tlaucher para o Desktop
echo -e "[Desktop Entry]\nName=TLauncher\nType=Application\nExec=java -jar TLauncher-2.86.jar -y\nIcon=system" > ~/Desktop/TLauncher.desktop && sleep 1 && chmod +x ~/Desktop/TLauncher.desktop && nano ~/Desktop/TLauncher.desktop && exit        


# Incia o Tlauncher
echo "---------------- Agora vamos abrir ele para você ----------------"
java -jar TLauncher-2.86.jar -y


# Abre a pagina do programa via Firefox ou Chrome
firefox https://github.com/branco2552/Install_Tlauncher_Script/
google-chrome https://github.com/branco2552/Install_Tlauncher_Script/
