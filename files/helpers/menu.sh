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
   echo -e "    ${fr}**${frb}    ${sl1}  1. UPDATE AND UPGRADE    ${frb}      ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl2}  2. SETUP ORACLE SERVER         ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl3}  3. SETUP DESKTOP               ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl4}  4. SETUP SERVER                ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl5}  5. INSTALL DOCKER STACK        ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl6}  6. INSTALL DOCKER APPS         ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl7}  X. RESERVED                    ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "                                                  "


   echo -e "${Drop}"
}

printMainMenu