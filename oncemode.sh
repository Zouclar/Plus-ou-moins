#!/bin/bash
## oncemode.sh for  in /home/abdelf_s/Projet/plusoumoins/abdelf_s
## 
## Made by ABDELFETTAH Sofiane
## Login   <abdelf_s@etna-alternance.net>
## 
## Started on  Tue Nov  4 13:55:44 2014 ABDELFETTAH Sofiane
## Last update Wed Nov  5 18:36:13 2014 ABDELFETTAH Sofiane
##
nombre=$RANDOM
nombre=$[ $nombre%11 ]
echo "~~ Bienvenu dans le jeu du plus ou moins en Once Mode ~~"
echo "Devinez combien: "
echo -n "> "
read rep
a=0
b=0
tour=0
while [[ "$rep" != "$nombre" ]]
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
	if [ $rep -ge 101 ]; then
	    echo "Il faut entrer un nombre entre 1 et 10"
	    echo -n "> "
	    read rep
	fi
	if [ $rep -lt 0 ]; then
	    echo "Il faut entrer un nombre entre 1 et 10"
            echo -n "> "
            read rep
        fi
	if [ $rep -gt $nombre ];then
	    let tour--
        fi
        if [ $rep -lt $nombre ];then
	    let tour--
        fi
        if [ $tour -eq -1 ];then
            source lose.sh
            echo "Le Nombre etait $nombre !"
            source rejouer.sh
        fi
    else
	echo "Il faut entrer un nombre entre 1 et 10"
	fi
    echo -n "> "
    read rep

done

if [[ $a == 0 ]];then
    source win.sh
    source rejouer.sh
fi