#!/bin/bash
while true; do
source /home/ubuntu/discord.sh-1.3/IMT3003_V20_group07-openrc.sh
openstack server start docker > /dev/null
openstack server start db > /dev/null
openstack server start balancer > /dev/null
openstack server start backup > /dev/null
sleep 300;
done;
