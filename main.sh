#!/bin/bash
## main.sh for  in /home/abdelf_s/Projet/plusoumoins/abdelf_s
## 
## Made by ABDELFETTAH Sofiane
## Login   <abdelf_s@etna-alternance.net>
## 
## Started on  Tue Nov  4 09:24:33 2014 ABDELFETTAH Sofiane
## Last update Wed Nov  5 17:57:17 2014 ABDELFETTAH Sofiane
##

source help.sh
source presentation.sh
echo -n "> "
read rep
while [ $rep -ge 0 -o $rep -le 5 ]
do
    if [[ "$rep" == "1" ]]
    then
	source normalmode.sh
    fi
    if [[ "$rep" == "2" ]]
    then
	source hardmode.sh
    fi
    if [[ "$rep" == "3" ]]
    then
	source blindmode.sh
    fi
    if [[ "$rep" == "4" ]]
    then
	source oncemode.sh
    fi
    if [[ "$rep" == "exit" ]]
    then
	exit
    else
	echo "Veuillez entrer un nombre entre 1 et 4"
	echo -n "> "
	read rep
    fi
done