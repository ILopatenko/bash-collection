#!/bin/bash
#ORACLE MAIN

source ./files/helpers/menu.sh
source ./files/helpers/colors.sh
source ./files/modules/oracle/oracleQuestions.sh


oracleMainMenu(){
   sl21=${active}
   printOracleMenu
   oraclePreconditionsQ

   sl22=${active}
   printOracleMenu
   oracleFirstCommandsQ

   sl23=${active}
   printOracleMenu
   oracleNetmakerServer

   sl24=${active}
   printOracleMenu
   oracleNetmakerClient

   sl25=${active}
   printOracleMenu
   nginx

}