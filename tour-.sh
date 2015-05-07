#!/bin/sh
## tour-.sh for  in /home/abdelf_s/Projet/plusoumoins/abdelf_s
## 
## Made by ABDELFETTAH Sofiane
## Login   <abdelf_s@etna-alternance.net>
## 
## Started on  Tue Nov  4 08:38:14 2014 ABDELFETTAH Sofiane
## Last update Wed Nov  5 17:17:31 2014 ABDELFETTAH Sofiane
##
if [ $rep -ge 101 ]; then
source tourhs.sh
    
else 
    echo -e "\033[32mC'est moins !\033[0m"                                 
    echo -e "\033[36mil vous reste $tour tour(s) !\033[0m"                   
    let tour--
fi
