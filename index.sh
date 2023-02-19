#!/bin/bash
#Main Script
#git clone https://github.com/ilopatenko/bash-collection
#sudo bash /bash-collection/a/indexA.sh

source ./files/colors.sh
source ./files/functions.sh
source ./files/menu.sh
source ./files/questions.sh

#RENDER 0 - UPDATE
#User will be able to update/upgrade the system
style0=$active
printMainMenu
askFullUpdateQ

#RENDER 1 - ORACLE
#User will be able to setup Oracle server (prepare ssh connection, swap file, install soft etc.)
style1=$active
printMainMenu
askOracleMainQ

#RENDER 2 - DESKTOP
#User will be able to setup a work computer (with UI: Linux Mint/Ubuntu/Debian) 
style2=$active
printMainMenu
