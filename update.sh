#!/bin/bash

echo "Iniciando serviço de atualização"
sleep 2

apt-get update

echo "*********************************************"
echo "            Atualização concluida            "
echo "*********************************************"

sleep 2
clear

echo "Iniciando atualização de programas"
sleep 2

apt-get -y upgrade

echo "*********************************************"
echo "     Programas atualizados com sucesso!      "
echo "*********************************************"

sleep 2
clear

echo "Iniciando atualização do sistema"

apt-get -y dist-upgrade

echo "*********************************************"
echo "       Sistema atualizado com sucesso!       " 
echo "*********************************************"

sleep 2
clear

echo "###################################################"
echo "  Seu sistema e seus programas estão atualizados!  "
echo "###################################################"
