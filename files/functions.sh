#!/bin/bash
#Functions Module

source ./colors.sh
source ./menu.sh

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
