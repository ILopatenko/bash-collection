#!/bin/bash
#MENU AND COLORS SCRIPT

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
   blb=$BlackB

   #Frame CSS (blue asterics on black background)
   frm=${Blue}${BlackB}

   #Window backgroung
   frb=${CyanB}

   #Menu Title (yellow)
   ult=${Yellow}

   #Default CSS for list items (white text)
   wtd=${White}




printMenu(){
   clear -x
   echo -e "${gbg}"
   echo -e "                                                   "
   echo -e "     ${blb}${frm}*****************************************${gbg}     "
   echo -e "     ${blb}${frm}**${frb}                                     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}             ${ult}$1 $2${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}                                     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}    ${sl1} $11. $3 ${frb}     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}    ${sl2} $12. $4 ${frb}     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}    ${sl3} $13. $5 ${frb}     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}    ${sl4} $14. $6 ${frb}     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}    ${sl5} $15. $7 ${frb}     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}    ${sl6} $16. $8 ${frb}     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}    ${sl7} $17. $9 ${frb}     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}**${frb}                                     ${frm}**${gbg}     "
   echo -e "     ${blb}${frm}*****************************************${gbg}     "
   echo -e "                                                   ${Drop}"
   echo ""
   echo ""
   sleep 0.5
}






dropLineStyles(){
   sl1=${wtd}
   sl2=${wtd}
   sl3=${wtd}
   sl4=${wtd}
   sl5=${wtd}
   sl6=${wtd}
   sl7=${wtd}
}

#MENU PRESETS
#MENU TITLES


   #MAIN MENU TITLES
   mtT="                     "
   mt0="MAIN MENU            "
   mt1="UPDATE AND UPGRADE   "
   mt2="SETUP ORACLE SERVER  "
   mt3="SETUP LOCAL SERVER   "
   mt4="SETUP LOCAL DESKTOP  "
   mt5="SETUP VPN NETMAKET   "
   mt6="INSTALL DOCKER STACK "
   mt7="INSTALL DOCKER APPS  "
   res="       RESERVED      "

    #ORACLE MENU TITLES
   mtT="                     "
   mt10="ORACLE MENU          "
   mt11="PREPARE SSH KEYS     "
   mt12="SETUP ORACLE SERVER  "
   mt13="SETUP LOCAL SERVER   "
   mt14="SETUP LOCAL DESKTOP  "
   mt15="SETUP VPN NETMAKET   "
   mt16="INSTALL DOCKER STACK "
   mt17="INSTALL DOCKER APPS  "
   


printMainMenu(){
   printMenu "0." "$mt0" "$mt1" "$mt2" "$mt3" "$mt4" "$mt5" "$mt6" "$mt7" 
}

printOracleMenu(){
   printMenu "1." "$mt10" "$mt11" "$mt12" "$mt13" "$mt14" "$mt15" "$mt16" "$mt17" 
}