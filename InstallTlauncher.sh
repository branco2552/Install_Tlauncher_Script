#!/bin/sh

# Author : Bryan Cropalatoe
# Copyright (c) https://github.com/branco2552/
# Script follows here:

# Como instalar Minecraft Tlauncher no linux via ShellScript

# declarndo as variaveis
LinkMine="https://tlauncher.org/jar"


# Verifica se já tem o Java Run-time instalado e atualizado

# O comando 'echo' serve como um 'printf' da linguagem C
echo "---------------- Deseja instalar o Minecraft? ----------------"
read RESPOSTA # O 'read' funciona como 'scanf'
if($RESPOSTA == "Sim"){ 

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
    unzip jar


    # Limpa o download feito e só mantem o arquivo do Tlauncher
    rm README-EN.txt README-RUS.txt jar 

    # Faz o Atalho do tlaucher para o Desktop
    echo "[Desktop Entry]\nName=TLauncher\nType=Application\nExec=java -jar TLauncher-2.86.jar\nIcon=system" > ~/Desktop/TLauncher.desktop && sleep 1 && chmod +x ~/Desktop/TLauncher.desktop && nano ~/Desktop/TLauncher.desktop      


    # Incia o Tlauncher
    echo "---------------- Agora vamos abrir ele para você ----------------"
    java -jar TLauncher-2.86.jar


    # Abre a pagina do programa via Firefox ou Chrome
    firefox https://github.com/branco2552/Install_Tlauncher_Script/
    google-chrome https://github.com/branco2552/Install_Tlauncher_Script/
}
else{
    # Abre a pagina do programa via Firefox ou Chrome
    firefox https://github.com/branco2552/Install_Tlauncher_Script/
    google-chrome https://github.com/branco2552/Install_Tlauncher_Script/
    echo "---------------- Tenha um bom dia ou uma Boa noite ----------------"
    poweroff
}
