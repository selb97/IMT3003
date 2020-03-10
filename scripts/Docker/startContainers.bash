#!/bin/bash 

sudo docker rm -f $(sudo docker ps -qa)

sudo docker build -t webcontainer:v1 /home/ubuntu/bookface

sudo docker run -itd -p 32771:80 --name "container1" --restart always webcontainer:v1

sudo docker run -itd -p 32772:80 --name "container2" --restart always webcontainer:v1

sudo docker run -itd -p 32773:80 --name "container3" --restart always webcontainer:v1

sudo docker run -itd -p 32774:80 --name "container4" --restart always webcontainer:v1

sudo docker run -itd -p 32775:80 --name "container5" --restart always webcontainer:v1

sudo docker run -itd -p 32776:80 --name "container6" --restart always webcontainer:v1

sudo docker run -itd -p 32777:80 --name "container7" --restart always webcontainer:v1

sudo docker run -itd -p 32778:80 --name "container8" --restart always webcontainer:v1

sudo docker run --name=memcache -p 11211:11211 -d memcached memcached -m 128
