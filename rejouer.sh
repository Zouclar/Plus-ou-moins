#!/bin/sh
## loseorquit.sh for  in /home/abdelf_s/Projet/plusoumoins/abdelf_s
##
## Made by ABDELFETTAH Sofiane
## Login   <abdelf_s@etna-alternance.net>
##
## Started on  Tue Nov  4 16:17:29 2014 ABDELFETTAH Sofiane
## Last update Wed Nov  5 18:41:29 2014 ABDELFETTAH Sofiane
##

echo "Voulez vous re-jouer ?"
echo "0 = non"
echo "1 = oui"
read rep
if [[ "$rep" == "0" ]]
then
    exit
fi
if [[ "$rep" == "1" ]]
then
    source main.sh
fi