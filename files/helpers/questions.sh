#!/bin/bash
#QUESTIONS MAIN MODULE

source ./files/helpers/colors.sh
source ./files/helpers/functions.sh
source ./files/modules/oracle/oracleMain.sh


askQuestion(){
   echo -e "${qstn}"
   while true; do
      read -p "$1" yn
      case $yn in
         [Yy]* ) return 0;;
         [Nn]* ) return 1;;
         * ) echo "Please answer Y or N.";;
      esac
   done
   echo -e "${Drop}"
}


#UPDATE && UPGRADE
askFullUpdateQ(){
   if askQuestion "1. Do you want to update and upgrade your machine? [y/n] "; then
      echo -e "${don}OK. You want to update your system ...${Drop}"
      if askQuestion "  0.1 Do you want to see the command logs? [y/n] "; then
      echo -e "${don}  OK. You want to see the logs ...${Drop}"
         fullUpdateUpgrade
      else
         echo -e "${skp}  NO. You don't want to see the logs ...${Drop}"
         fullUpdateUpgradeSilent
      fi
      clear -x
      echo -e "${don}OK. Your system was updated ...${Drop}"
      sleep 1
      sl1=$don
   else
      sl1=$skp
      echo -e "${skp}NO. You don't want to update your OS - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askOracleMainQ(){
   if askQuestion "1. Do you want to setup Oracle server? [y/n] "; then
      echo -e "${don}OK. You want to setup your Oracle server ...${Drop}"
      sleep 1
      oracleMainMenu
   else
      sl2=$skp
      echo -e "${skp}NO. You don't want to setup your Oracle server ... - let's go the next step ...${Drop}"
      sleep 1
   fi
}