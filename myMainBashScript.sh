#!/bin/bash
#Main Script

#IMPORT
source ./files/helpers/baseColors.sh
source ./files/helpers/presets.sh
source ./files/helpers/questions.sh
source ./files/helpers/uiMenus.sh
source ./files/modules/oracle/oracleFunctions.sh
source ./files/modules/oracle/oracleQuestions.sh



#RENDER 1 - UPDATE
#User will be able to update/upgrade the system
style1=${active}
printMainMenu
askFullUpdateQ


#RENDER 2 - ORACLE
#User will be able to setup Oracle server
style2=${active}
printMainMenu
askOracleMainQ