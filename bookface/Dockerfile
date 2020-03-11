# version 0.1
FROM ubuntu:18.04
MAINTAINER Sondre Elstad "sondeb@stud.ntnu.no"
ENV DEBIAN_FRONTEND=noninteractive
RUN sudo apt-get update && sudo apt-get install -y apache2 libapache2-mod-php php-pgsql && sudo apt-get install -y php-memcache

RUN sudo rm /var/www/html/index.html
ADD /code/* /var/www/html/

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

EXPOSE 80
