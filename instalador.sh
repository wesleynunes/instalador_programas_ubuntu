#!/bin/bash
#Instalação do sublime text, visual studio code Wordbench, Chrome e pycharm para ubuntu desktop

echo
echo "Script para ubuntu"
echo
echo "Aguarde 2 segundos..."
sleep 2
clear
echo "------Facilitando sua vida no Linux!----------"
echo
####MENU DE PROGRAMAS#####
echo "::Digite o numero e tecle enter ou para cancelar feche no (X)::

1-Update e upgrade
2-Instalar sublime text 3
3-Instalar visual studio code
4-Instalar Workbench ubuntu 14.04 64bits
5-Instalar chrome
"

echo 

####INSTALAÇÃO DE PROGRAMAS#####
read programas

if [ "$programas" = "1" ];
then 
    echo "--- Iniciando update ---"
    sleep 3
	sudo apt-get update 

    echo "--- Iniciando upgrade ---"
    sleep 3
	sudo apt-get -y upgrade    
    echo "--- Fim da Atualização---"

elif [ "$programas" = "2" ];
then
    echo "--- instalando Sublime text 3 ---"
    sleep 3
    sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
    sudo apt-get update
    sudo apt-get install sublime-text-installer 
    echo "--- Fim da instalação do Sublime text  ---" 

elif [ "$programas" = "3" ];
then
    echo "--- instalando visual studio code ---"
    sleep 3
    sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
    sudo apt-get update    
    sudo apt-get install -y ubuntu-make
    umake web visual-studio-code
    echo "--- Fim da instalação do visual studio code  ---"  


elif [ "$programas" = "4" ];
then
    echo "--- instalando Workbench ubuntu 14.04 64bits ---"
    sleep 3     
    wget https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-6.2.5-1ubu1404-amd64.deb -O mysql-workbench-community.deb
    sudo dpkg -i mysql-workbench-community.deb   
    sudo -y apt-get -f install
    echo "--- Fim da instalação do visual studio code  ---"  


elif [ "$programas" = "5" ];
then
    echo "--- instalando Chrome ---"
    sleep 3      
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo -y apt-get -f install
    
fi

####LOOP E VOLTA AO MENU#####
echo "Deseja instalar outro programa? [s/n]"
 read programas2

if [ "$programas2" = "s" ];
then 
 ./instalador.sh
 
else
 exit
fi



