#!/bin/bash
sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get -y update

sudo apt-get -y install docker-ce

sudo docker run hello-world
docker swarm join --token SWMTKN-1-00lazi3z99sqpv7gr8ss2syb76svlyumgrfqemokf3shcqckyd-enyvlmojidadmunlbl56wgbe9 192.168.128.63:2377
sudo mkdir -p /etc/docker/certs.d/master:5000
sudo cp ~IMT3003/registry_certs/domain.cert /etc/docker/certs.d/manager:5000/ca.crt
sudo service docker restart
#sudo echo "192.168.130.196 master" >> /etc/hosts
echo "192.168.130.196 master" | sudo tee -a /etc/hosts
sudo docker pull manager:5000/webcontainer:v1
