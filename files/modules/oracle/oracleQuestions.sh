#!/bin/bash
#ORACLE QUESTTIONS Module

#source ./files/modules/oracle/oracleFunctions.sh
source ./files/helpers/functions.sh


oraclePreconditionsQ(){
   if askQuestion "  1.1. Do you want to prepare SSH keys for your Oracle server? [y/n] "; then
      echo -e "${success}  OK. You want to prepare SSH keys for your Oracle server ...${Color_Off}"
      fullUpdateUpgrade
      helloHi
      style11=$success
   else
      style11=$skipped
      echo -e "${skipped}  NO. You don't want to setup your Oracle server ... - let's go the next step ...${Color_Off}"
   fi
}