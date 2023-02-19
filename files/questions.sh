#!/bin/bash
#Questions Module

source ./functions.sh
source ./files/submenu/oracle.sh
#MAIN TEMPLATE
askQuestion(){
   echo -e "${termQuestion}"
   while true; do
      read -p "$1" yn
      case $yn in
         [Yy]* ) return 0;;
         [Nn]* ) return 1;;
         * ) echo "Please answer Y or N.";;
      esac
   done
   echo -e "${Color_Off}"
}

userInputAndConfirmationserverIP(){
   echo -e "${termQuestion}"
   read -p 'Enter server IP: ' serverIP
   if askQuestion "Does your server have IP $serverIP? [y/n] "; then
      echo -e "${success}OK. Confirmed. Server IP is $serverIP ${Color_Off}"
   else
      echo -e "${skipped}NO. Enter your server IP${Color_Off}"
      userInputAndConfirmation
   fi
}

#UPDATE && UPGRADE
askFullUpdateQ(){
   if askQuestion "0. Do you want to update and upgrade your machine? [y/n] "; then
      echo -e "${success}OK. You want to update your system ...${Color_Off}"
      if askQuestion "  0.1 Do you want to see the command logs? [y/n] "; then
      echo -e "${success}  OK. You want to see the logs ...${Color_Off}"
         fullUpdateUpgrade
      else
         echo -e "${skipped}  NO. You don't want to see the logs ...${Color_Off}"
         fullUpdateUpgradeSilent
      fi
      clear -x
      echo -e "${success}OK. Your system was updated ...${Color_Off}"
      sleep 1
      style0=$success
   else
      style0=$skipped
      echo -e "${skipped}NO. You don't want to update your OS - let's go the next step ...${Color_Off}"
      sleep 1
   fi
}

askOracleMainQ(){
   if askQuestion "1. Do you want to setup Oracle server? [y/n] "; then
      echo -e "${success}OK. You want to setup your Oracle server ...${Color_Off}"
      useOracleSubMenu
   else
      style1=$skipped
      echo -e "${skipped}NO. You don't want to setup your Oracle server ... - let's go the next step ...${Color_Off}"
   fi
}