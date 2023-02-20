#!/bin/bash
#MAIN SCRIPT

#IMPORT
source ./files/helpers/colors.sh
source ./files/helpers/menu.sh
source ./files/helpers/questions.sh
source ./files/helpers/modules/oracle/oracleMain.sh


#RENDER 1 - UDDATE AND UPGRADE
sl1=${active}
printMainMenu
askFullUpdateQ

#RENDER 2 - ORACLE
sl2=${active}
printMainMenu
askOracleMainQ


#RENDER 3 - DESKTOP
sl3=${active}
printMainMenu
