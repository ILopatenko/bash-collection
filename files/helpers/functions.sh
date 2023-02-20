#!/bin/bash
#FUNCTIONS


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

dockerStack(){
   wget https://gitlab.com/bmcgonag/docker_installs/-/raw/main/install_docker_nproxyman.sh
   chmod +X install_docker_nproxyman.sh
   sudo bash install_docker_nproxyman.sh
}
