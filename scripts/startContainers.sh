#!/bin/bash 

sudo docker rm -f $(sudo docker ps -qa)

sudo docker build -t w1:6 /home/ubuntu/www1

sudo docker run -itd -p 32770:80 --name "container1" --restart always www1:v6

sudo docker run -itd -p 32772:80 --name "container2" --restart always www1:v6

sudo docker run -itd -p 32774:80 --name "container3" --restart always www1:v6

sudo docker run -itd -p 32776:80 --name "container4" --restart always www1:v6
