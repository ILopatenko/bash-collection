#!/bin/bash
#Createing a new Netmaker node (client)

updateAll(){
   sudo apt update && sudo apt upgrade -y
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

echo 'Step 1 - update the system'
updateAll()
  
echo 'Installing Netmaker client'
