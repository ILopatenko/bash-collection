#!/bin/bash
#MAIN MENU MODULE
#https://dev.to/ifenna__/adding-colors-to-bash-scripts-48g4


#TEXT COLORS
Black="\e[1;30m"	
White="\e[1;97m"	
Red="\e[1;91m"	
Green="\e[1;92m"	
Yellow="\e[1;93m"		
Blue="\e[94m"	
Magenta="\e[1;95m"	
Cyan="\e[1;36m"	
Drop="\e[0m"

#BACKGROUNDS
BlackB="\e[1;40m"	
WhiteB="\e[1;107m"	
RedB="\e[1;41m"	
GreenB="\e[1;42m"	
YellowB="\e[1;43m"		
BlueB="\e[44m"	
MagentaB="\e[1;45m"	
CyanB="\e[1;46m"		
GrayB="\e[1;100m"		

#CUSTOM PRESETS
   #Main Gray Background
   gbg=$GrayB

   #Frame CSS (blue asterics on black background)
   fr=${Blue}${BlackB}

   #Window backgroung
   frb=${CyanB}

   #Menu Title (yellow)
   mt=${Yellow}

   #Default CSS for list items (white text)
   wt=${White}

#MAIN MENU LINES
sl1=${wt}
sl2=${wt}
sl3=${wt}
sl4=${wt}
sl5=${wt}
sl6=${wt}
sl7=${wt}

active=${YellowB}
skp=${Red}
don=${Green}
prt=${Yellow}
qstn=${Yellow}


#ORACLE MENU LINES
sl21=${wt}
sl22=${wt}
sl23=${wt}
sl24=${wt}
sl25=${wt}
sl26=${wt}
sl27=${wt}

#SERVER MENU LINES
sl41=${wt}
sl42=${wt}
sl43=${wt}
sl44=${wt}
sl45=${wt}
sl46=${wt}
sl47=${wt}


#FINAL MENU
ftl1="                          "
ftl2="                         "
ftl3="                         "
ftl4="                                     "
ftl5="    "
ftl6=" "
ftl7="     "
ftl8="   "
ftl9=" "

ftl11="${prt}DO YOU HAVE ANY QUESTIONS?"
ftl12="${prt}MAYBEE IDEAS/SUGGESTIONS?"
ftl13="${prt}PULL REQUESTS ARE WELCOME"
ftl14="${prt}GITHUB.COM/ILOPATENKO/BASH_COLLECTION"
ftl15="${Magenta}HAVE"
ftl16="${Blue}A"
ftl17="${skp}GREAT"
ftl18="${don}DAY"
ftl19="${White}!"




printInitialMenu(){
   clear -x
   echo -e "${gbg}"
   echo -e "                                                  "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}             ${mt}HI THERE!               ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}     ${mt}THIS IS MY BASH SCRIPT     ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}     ${mt}THAT HELPS ME TO DO        ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}     ${mt}BORING STUFF EASILY!       ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "                                                  ${Drop}"
}

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
   echo -e "    ${fr}**${frb}    ${sl21}  2.1. PREPARE TO SSH       ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl22}  2.2. FIRST COMMANDS       ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl23}  2.3. NETMAKER SERVER      ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl24}  2.4. NETMAKER CLIENT      ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl25}  2.5. NGINX SERVER         ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl26}  X. RESERVED  ${frb}                  ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl27}  X. RESERVED  ${frb}                  ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "                                                  ${Drop}"
}

printServerMenu(){
   clear -x
   echo -e "${gbg}"
   echo -e "                                                  "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}        ${mt}4. SERVER MENU:              ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl41}  4.1. MAIN TOOLS           ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl42}  4.2. INSTALL NODEJS       ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl43}  4.3. CONNECT MY NFS       ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl44}  4.4. NETMAKER CLIENT      ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl45}  4.5. DOCKER STACK         ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl46}  X. RESERVED  ${frb}                  ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}    ${sl47}  X. RESERVED  ${frb}                  ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "                                                  ${Drop}"
}

printFinalMenu(){
   clear -x
   echo -e "${gbg}"
   echo -e "                                                  "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}     ${ftl1}      ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}     ${ftl2}  ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}     ${ftl3}  ${frb}     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}${ftl4}${frb}${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}        ${ftl5}  ${ftl6}  ${ftl7}  ${ftl8} ${ftl9}        ${frb}${fr}**${gbg}     "
   echo -e "    ${fr}**${frb}                                     ${fr}**${gbg}     "
   echo -e "    ${fr}*****************************************${gbg}     "
   echo -e "                                                  ${Drop}"
}