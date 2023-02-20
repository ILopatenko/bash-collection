#!/bin/bash
#COLORS
#https://dev.to/ifenna__/adding-colors-to-bash-scripts-48g4


#TEXT COLORS
Black="\e[1;30m"	
White="\e[1;97m"	
Red="\e[1;91m"	
Green="\e[1;92m"	
Yellow="\e[1;93m"		
Blue="\e[94m"	
Magenta="\e[1;95m"	
Cyan="\e[1;96m"	
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
gbg=$GrayB
fr=${Blue}${BlackB}
frb=${CyanB}
mt=${Yellow}
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
