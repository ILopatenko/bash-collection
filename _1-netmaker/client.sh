#!/bin/bash
#Createing a new Netmaker node (client)

updateAll(){
   (sudo apt update && sudo apt upgrade -y) > /dev/null 2>&1
}

reboot(){
   sudo reboot
}

turnoff(){
   sudo shutdown now
}

installation(){
sudo curl -sL 'https://apt.netmaker.org/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/netclient.asc
sudo curl -sL 'https://apt.netmaker.org/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/netclient.list
sudo apt update
sudo dnf install netclient
sudo ip -br -c a
}

clear -x
echo 'Start running script' $0
echo ''
echo 'Step 1 - updating the system'
updateAll
echo ''
echo 'Step 2 - installing Netmaker client'
installation
