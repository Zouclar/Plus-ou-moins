#!/bin/bash
## blindmode.sh for  in /home/abdelf_s/Projet/plusoumoins/abdelf_s
## 
## Made by ABDELFETTAH Sofiane
## Login   <abdelf_s@etna-alternance.net>
## 
## Started on  Tue Nov  4 13:39:16 2014 ABDELFETTAH Sofiane
## Last update Wed Nov  5 18:39:09 2014 ABDELFETTAH Sofiane
##
nombre=$RANDOM
nombre=$[ $nombre%101 ]
echo "~~ Bienvenu dans le jeu du plus ou moins en Blind Mode ~~"
echo "Devinez combien: "
echo -n "> "
read rep
a=0
b=0
tour=19

while [[ "$rep" -ne "$nombre" ]]
do
    if [[ "$rep" == "exit" ]];then
        a=1
        source lose.sh
	source rejouer.sh
	exit 1
    fi
    if [[ "$rep" == "cheat" ]]
    then
	source cheat.sh
    fi
    echo "Ce n'est Pas Ca !"   
    echo -e "\033[36mil vous reste $tour tours !\033[0m"
    let tour--
    if [ $tour -eq -1 ]
    then
	source lose.sh
	echo "Le Nombre etait $nombre !"
	source rejouer.sh
    fi
    echo -n "> "
    read rep
done

if [[ $a == 0 ]];then
    source win.sh
    source rejouer.sh
fi