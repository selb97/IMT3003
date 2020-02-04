#!/bin/bash 

sudo docker rm -f $(sudo docker ps -qa)

sudo docker build -t WebContainer:v9 /home/ubuntu/www

sudo docker run -itd -p 32771:80 --name "container1" --restart always WebContainer:v9

sudo docker run -itd -p 32772:80 --name "container2" --restart always WebContainer:v9

sudo docker run -itd -p 32773:80 --name "container3" --restart always WebContainer:v9

sudo docker run -itd -p 32774:80 --name "container5" --restart always WebContainer:v9

sudo docker run -itd -p 32775:80 --name "container6" --restart always WebContainer:v9

sudo docker run -itd -p 32777:80 --name "container7" --restart always WebContainer:v9

sudo docker run -itd -p 32778:80 --name "container8" --restart always WebContainer:v9
