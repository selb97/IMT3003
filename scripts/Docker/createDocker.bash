#!/bin/bash

source IMT3003_V20_group07-openrc.bash

#Ubuntu Server 18.04 LTS (Bionic Beaver) amd64
#m1.tiny

openstack server create --image 1676adb4-9657-42ed-b31f-b3907cbcd697 --flavor 3d0d6b55-971e-4fe6-9c90-f9c059ff70ca --key-name managerKey $1

sleep 60

IP=$(openstack server show $1 | awk 'FNR == 13 {print $4}' | awk -F'=' '{print $2}')

until ssh -o "StrictHostKeyChecking=no" -t ubuntu@$IP "echo 'Connected!'"; do
	sleep 5
done

scp -o "StrictHostKeyChecking=no" installDocker.bash ubuntu@$IP:

ssh -o "StrictHostKeyChecking=no" -t ubuntu@$IP "sudo chmod +x installDocker.bash"
ssh -o "StrictHostKeyChecking=no" -t ubuntu@$IP "./installDocker.bash"


scp -o "StrictHostKeyChecking=no" /home/ubuntu/IMT3003/bookface ubuntu@$IP:

scp -o "StrictHostKeyChecking=no" startContainers.bash ubuntu@$IP:

ssh -o "StrictHostKeyChecking=no" -t ubuntu@$IP "sudo chmod +x startContainers.bash"
ssh -o "StrictHostKeyChecking=no" -t ubuntu@$IP "./startContainers.bash"
