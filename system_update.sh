#!/bin/bash
# Programa para atualização de distros

clear
echo "***************************************"
echo "********* Atualizar o Sistema *********"
echo "***************************************"
echo ""

sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoremove -y

if [[ $? -ne 0 ]]
  then
      echo
      echo -e "\t\t\t\t\t\t\033[1;31m Erro ao executar o script! \033[0m"
   else 
       echo
       echo -e "\t\t\t\t\t\t\033[1;32m Sistema atualizado!  \033[0m"
fi

sleep 3









