#!/bin/bash
#Menu Module
source ./colors.sh


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
   echo -e "${defbg}     ${frame}##${winbg}    ${style0} 0. Update / Upgrade  ${winbg}           ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style1} 1. Oracle Server ${winbg}               ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style2} 2. Setup Desktop/laptop ${winbg}        ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style3} 3. Setup Server ${winbg}                ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style4} 4. My personal NFS Ryzen ${winbg}       ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style5} 5. Docker Stack ${winbg}                ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style6} 6. Docker Soft ${winbg}                 ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}    ${style7} X. RESERVED ${winbg}                    ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}#########################################${defbg}     ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${Color_Off}"
   sleep 1
}

#ORACLE MENU
printOracleSuBMenu(){
   clear -x
   echo ""
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}     ${frame}#########################################${defbg}     ${bbg}"
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}            ${menuTitle}ORACLE MENU:             ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style11} 1.1. Preconditions for SSH ${winbg}       ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style12} 1.2. Initial setup ${winbg}               ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style13} 1.3. Netmaker Server ${winbg}             ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style14} 1.4. NginX server ${winbg}                ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style15} 1.X. RESERVED ${winbg}                    ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                     ${frame}##${defbg}     "${bbg}
   echo -e "${defbg}     ${frame}#########################################${defbg}     ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${defbg}                                                   ${bbg}"
   echo -e "${Color_Off}"
   sleep 1
}