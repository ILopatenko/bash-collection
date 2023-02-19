#!/bin/bash
#Oracle Module

#COLORS
{

   Color_Off='\033[0m'       # Text Reset

   # Bold
   BBlack='\033[1;30m'       # Black
   BRed='\033[1;31m'         # Red
   BGreen='\033[1;32m'       # Green
   BYellow='\033[1;33m'      # Yellow
   BBlue='\033[1;34m'        # Blue
   BPurple='\033[1;35m'      # Purple
   BCyan='\033[1;36m'        # Cyan
   BWhite='\033[1;37m'       # White

   # Underline
   UBlack='\033[4;30m'       # Black
   URed='\033[4;31m'         # Red
   UGreen='\033[4;32m'       # Green
   UYellow='\033[4;33m'      # Yellow
   UBlue='\033[4;34m'        # Blue
   UPurple='\033[4;35m'      # Purple
   UCyan='\033[4;36m'        # Cyan
   UWhite='\033[4;37m'       # White

   # Background
   On_Black='\033[40m'       # Black
   On_Red='\033[41m'         # Red
   On_Green='\033[42m'       # Green
   On_Yellow='\033[43m'      # Yellow
   On_Blue='\033[44m'        # Blue
   On_Purple='\033[45m'      # Purple
   On_Cyan='\033[46m'        # Cyan
   On_White='\033[47m'       # White

   # Bold High Intensity
   BIBlack='\033[1;90m'      # Black
   BIRed='\033[1;91m'        # Red
   BIGreen='\033[1;92m'      # Green
   BIYellow='\033[1;93m'     # Yellow
   BIBlue='\033[1;94m'       # Blue
   BIPurple='\033[1;95m'     # Purple
   BICyan='\033[1;96m'       # Cyan
   BIWhite='\033[1;97m'      # White

   #CSS MENU ELEMENTS
   frame=${On_Black}${BIPurple}
   defbg=${On_White}
   winbg=${On_Cyan}
   bbg=${On_Black}

   #CSS MENU LINES
   active=${On_Yellow}${BIBlack}
   default=${BIWhite}
   success=${BIGreen}
   skipped=${BIRed}
   part=${BIYellow}
   termQuestion=${BIYellow}
   termLogs=${default}
   menuTitle=${BIYellow}

   #CSS VARIABLES MAIN MENU
   style1=${default}
   style2=${default}
   style3=${default}
   style4=${default}
   style5=${default}
   style6=${default}
   style7=${default}
   
   #CSS VARIABLES DESKTOP MENU MENU
   style21=${default}
   style22=${default}
   style23=${default}
   style24=${default}
   style25=${default}
   style26=${default}
   style27=${default}
   
   #CSS VARIABLES DESKTOP MENU MENU
   style31=${default}
   style32=${default}
   style33=${default}
   style34=${default}
   style35=${default}
   style36=${default}
   style37=${default}
}

#MAIN MENU RENDER
printOracleMenu(){
   clear -x
   echo ""
   echo -e "${defbg}                                                ${bbg}"
   echo -e "${defbg}                                                ${bbg}"
   echo -e "${defbg}     ${frame}#####################################${defbg}      ${bbg}"
   echo -e "${defbg}     ${frame}##${winbg}                                 ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}          ${menuTitle}ORACLE MENU:           ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                 ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style1} 1. Preconditions for ssh ${winbg}     ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style2} 2. Setup Oracle Server ${winbg}       ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style3} 3. Setup Server ${winbg}              ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style4} 4. My personal NFS Ryzen ${winbg}     ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style5} 5. Docker Stack ${winbg}              ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style6} 6. Docker Soft ${winbg}               ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}  ${style7} X. RESERVED ${winbg}                  ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                 ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                 ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}#####################################${defbg}      ${bbg}"
   echo -e "${defbg}                                                ${bbg}"
   echo -e "${defbg}                                                ${bbg}"
   echo -e "${Color_Off}"
   sleep 1
}

printOracleMenu