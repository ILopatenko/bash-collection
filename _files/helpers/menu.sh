#!/bin/bash
#MENU SCRIPT
#Contains templates for UI menus

source ./_files/helpers/css.sh

dropLineStyles(){
   sl1=${White}
   sl2=${White}
   sl3=${White}
   sl4=${White}
   sl5=${White}
   sl6=${White}
   sl7=${White}
}


printDefaultMenu7Lines(){
  clear -x
   echo -e "${GrayB}"
   echo -e "                                                   "
   echo -e "     ${BlackB}${frame}*****************************************${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}                                     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}             ${Yellow}$1 $2${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}                                     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}    ${sl1} $11. $3 ${CyanB}     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}    ${sl2} $12. $4 ${CyanB}     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}    ${sl3} $13. $5 ${CyanB}     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}    ${sl4} $14. $6 ${CyanB}     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}    ${sl5} $15. $7 ${CyanB}     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}    ${sl6} $16. $8 ${CyanB}     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}    ${sl7} $17. $9 ${CyanB}     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}**${CyanB}                                     ${frame}**${GrayB}     "
   echo -e "     ${BlackB}${frame}*****************************************${GrayB}     "
   echo -e "                                                   ${Drop}"
   echo ""
   echo ""
   sleep 0.5
}