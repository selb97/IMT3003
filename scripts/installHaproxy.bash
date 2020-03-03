#!/bin/bash
sudo add-apt-repository -y ppa:vbernat/haproxy-2.1
sudo apt update
sudo apt upgrade -y
sudo apt install -y haproxy socat
