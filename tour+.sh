#!/bin/bash
## tour+.sh for  in /home/abdelf_s/Projet/plusoumoins/abdelf_s
## 
## Made by ABDELFETTAH Sofiane
## Login   <abdelf_s@etna-alternance.net>
## 
## Started on  Tue Nov  4 08:34:50 2014 ABDELFETTAH Sofiane
## Last update Wed Nov  5 18:33:09 2014 ABDELFETTAH Sofiane
##
if [ $rep -lt 0 ]; then
source tourhs.sh

else
echo -e "\033[31mC'est plus !\033[0m"
echo -e "\033[36mil vous reste $tour tour(s) !\033[0m"
let tour--

fi