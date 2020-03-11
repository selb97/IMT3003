#!/bin/bash

source IMT3003_V20_group07-openrc.bash

#Ubuntu Server 18.04 LTS (Bionic Beaver) amd64
#t1.small

openstack server create --image 1676adb4-9657-42ed-b31f-b3907cbcd697 --flavor 114f5c26-66f9-44b1-8992-bc9347285725 --key-name managerKey $1

sleep 60

IP=$(openstack server show $1 | awk 'FNR == 13 {print $4}' | awk -F'=' '{print $2}')

until ssh -o "StrictHostKeyChecking=no" -t ubuntu@$IP "echo 'Connected!'"; do
	sleep 5
done

scp -o "StrictHostKeyChecking=no" installDatabase.bash ubuntu@$IP:

ssh -o "StrictHostKeyChecking=no" -t ubuntu@$IP "sudo chmod +x installDatabase.bash"
ssh -o "StrictHostKeyChecking=no" -t ubuntu@$IP "./installDatabase.bash"

