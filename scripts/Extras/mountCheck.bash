#!/bin/bash

df -h | grep bf


RETVAL=$?
IP=$(hostname -I)

if [ $RETVAL -eq 0 ]
then
sudo service docker start
else
sudo mount -t glusterfs "$IP":bf_config /bf_config
sudo mount -t glusterfs "$IP":bf_images /bf_images
sudo service docker start
fi
