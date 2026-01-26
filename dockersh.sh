#!/bin/bash

# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl start docker

#docker permission
sudo groupadd docker || true
sudo usermod -aG docker $USER
newgrp docker

# sudo chmod 777 /var/run/docker.sock
# Security warning on chmod 666 
# sudo chmod 666 /var/run/docker.sock

#ssh server
sudo apt install openssh-server

#zerotier
curl -s https://install.zerotier.com | sudo bash

#zt planet
#sudo mkdir docker
#cd ./docker
mkdir ztplanet

sudo cp $HOME/docker/bashscript/docker-compose.yml $HOME/docker/ztplanet

cd $HOME/docker/ztplanet

sudo docker compose up -d


#driver
sudo ubuntu-drivers devices
sudo ubnutu-drivers autoinstall




