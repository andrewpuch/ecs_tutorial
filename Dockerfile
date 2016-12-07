FROM ubuntu:16.04

MAINTAINER AWS Tutorial Series

# Update and install apache
RUN apt-get update 
RUN apt-get install apache2 -y

# Setup apache
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/log/apache2/apache2.pid

# Put the html page on the box
COPY ./index.html /var/www/html/index.html

EXPOSE 80
