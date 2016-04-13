# Dockerfile for saviogl/laravel-base
FROM ubuntu:14.04

# Update and install dependencies
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
	php5 php5-cli php5-mcrypt php5-gd php5-json php5-mysql php5-memcached \
	curl php5-curl git-core 

RUN php5enmod mcrypt

# Grab composer and install it in /usr/local/bin/composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN composer global require "laravel/installer"

ENV PATH ~/.composer/vendor/bin:$PATH
