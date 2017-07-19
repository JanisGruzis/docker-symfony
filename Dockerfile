FROM ubuntu:16.04

MAINTAINER Jānis Gruzis

RUN apt-get -y update
RUN apt-get -y upgrade

#PHP
RUN apt-get install -y php php-pear

#Mongo db
RUN pecl install mongodb
RUN echo "extension=mongodb.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`
