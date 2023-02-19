#!/bin/bash
#UI Menus Module

source ./files/helpers/baseColors.sh
source ./files/helpers/presets.sh


#MAIN MENU
printMainMenu(){
   clear -x
   echo ""
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}     ${frame}#########################################${defbg}     ${bbg}"
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}              ${menuTitle}MAIN MENU:             ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style1} 1. Update / Upgrade  ${winbg}           ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style2} 2. Oracle Server ${winbg}               ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style3} 3. Setup Desktop/laptop ${winbg}        ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style4} 4. Setup Server ${winbg}                ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style5} 5. My personal NFS Ryzen ${winbg}       ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style6} 6. Docker Stack ${winbg}                ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style7} 7. Docker Soft ${winbg}                 ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style8} X. RESERVED ${winbg}                    ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}#########################################${defbg}     ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${Color_Off}"
   sleep 1
}


#MAIN MENU
printOracleMenu(){
   clear -x
   echo ""
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}     ${frame}#########################################${defbg}     ${bbg}"
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}            ${menuTitle}ORACLE MENU:             ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}   ${style11} 1.1. Preconditions for SSH  ${winbg}     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}   ${style12} 1.2. Oracle Server ${winbg}              ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}   ${style13} 1.3. Setup Desktop/laptop ${winbg}       ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}   ${style14} 1.4. Setup Server ${winbg}               ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}   ${style15} 1.5. My personal NFS Ryzen ${winbg}      ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}   ${style16} 1.6. Docker Stack ${winbg}               ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}   ${style17} 1.7. Docker Soft ${winbg}                ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}   ${style18} X. RESERVED ${winbg}                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}#########################################${defbg}     ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${Color_Off}"
   sleep 1
}