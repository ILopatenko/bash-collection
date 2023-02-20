#!/bin/bash
#MAIN MENU MODULE
source ./colors.sh


printMainMenu(){
   clear -x
   echo -e "${gbg}"
   echo -e "                                                  "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}             ${mt}MAIN MENU:              ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl1}  1. UPDATE AND UPGRADE     ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl2}  2. SETUP ORACLE SERVER    ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl3}  3. SETUP DESKTOP          ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl4}  4. SETUP SERVER           ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl5}  5. INSTALL DOCKER STACK   ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl6}  6. INSTALL DOCKER APPS    ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl7}  X. RESERVED  ${frb}                  ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "                                                  ${Drop}"
}


printOracleMenu(){
   clear -x
   echo -e "${gbg}"
   echo -e "                                                  "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}           ${mt}ORACLE MENU:              ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl21}  1. PREPARE TO SSH         ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl22}  2. FIRST COMMANDS         ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl23}  3. NETMAKER SERVER        ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl24}  4. NETMAKER CLIENT        ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl25}  5. NGINX SERVER           ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl26}  X. RESERVED  ${frb}                  ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "                                                  ${Drop}"
}