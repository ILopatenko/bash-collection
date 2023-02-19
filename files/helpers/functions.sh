#!/bin/bash
#FUNCTIONS Module

update(){
   sudo apt update
}

upgrade(){
   sudo apt upgrade -y
}

updateSilent(){
   update > /dev/null 2>&1 
}

upgradeSilent(){
   upgrade > /dev/null 2>&1 
}

fullUpdateUpgrade(){
   update
   upgrade
}

fullUpdateUpgradeSilent(){
   fullUpdateUpgrade > /dev/null 2>&1
}


oraclePrep(){
   echo ($USER)
}

helloHi(){
   echo "Hello"
}
