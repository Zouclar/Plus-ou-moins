#!/bin/bash
## hardmode.sh for  in /home/abdelf_s/Projet/plusoumoins/abdelf_s
## 
## Made by ABDELFETTAH Sofiane
## Login   <abdelf_s@etna-alternance.net>
## 
## Started on  Tue Nov  4 08:43:11 2014 ABDELFETTAH Sofiane
## Last update Wed Nov  5 18:34:08 2014 ABDELFETTAH Sofiane
##
nombre=$RANDOM
nombre=$[ $nombre%101 ]
echo "~~ Bienvenu dans le jeu du plus ou moins ~~"
echo "Devinez combien: "
echo -n "> "
read rep
a=0
tour=4

while [[ $rep != $nombre ]]
do
    if [[ "$rep" == "exit" ]];then
        a=1
        source lose.sh
        source rejouer.sh
        exit 1
    fi
    if [[ "$rep" == "cheat" ]];then
        source cheat.sh
    fi
    if [[ $rep =~ [0-9]+ ]]; then
        if [ $rep -gt $nombre ];then
            source tour-.sh
        fi
        if [ $rep -lt $nombre ];then
            source tour+.sh
        fi
	if [ $tour -eq -1 ];then
            source lose.sh
            echo "Le Nombre etait $nombre !"
            source rejouer.sh
	fi
    else
    echo "Veuillez entrer un nombre compris entre 0 et 1000"
    fi
    echo -n "> "
    read rep

done

if [[ $a == 0 ]];then
    source win.sh
    source rejouer.sh
fi
