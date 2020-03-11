# version 0.1
FROM ubuntu:18.04
MAINTAINER Sondre Elstad "sondeb@stud.ntnu.no"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2 libapache2-mod-php php-pgsql php-memcache

RUN rm /var/www/html/index.html

RUN rm /var/www/html/index.html
ADD /code/* /var/www/html/

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

EXPOSE 80
