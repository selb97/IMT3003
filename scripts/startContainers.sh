#!/bin/bash 

sudo docker rm -f $(sudo docker ps -qa)

sudo docker build -t WebContainer:v9 /home/ubuntu/www1

sudo docker run -itd -p 32770:80 --name "container1" --restart always WebContainer:v9

sudo docker run -itd -p 32772:80 --name "container2" --restart always WebContainer:v9

sudo docker run -itd -p 32774:80 --name "container3" --restart always WebContainer:v9

sudo docker run -itd -p 32776:80 --name "container4" --restart always WebContainer:v9
