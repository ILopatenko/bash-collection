#!/bin/bash
#Createing a new Netmaker node (client)

updateAll(){
   (sudo apt update && sudo apt upgrade -y) > /dev/null 2>&1
}

dockerComposeNginX(){
   wget https://gitlab.com/bmcgonag/docker_installs/-/raw/main/install_docker_nproxyman.sh
   chmod +X install_docker_nproxyman.sh
   sudo bash install_docker_nproxyman.sh
}

updateAll
dockerComposeNginX