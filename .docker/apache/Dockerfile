# Builds an Image from Docker PHP 8.0 - Apache Official Repository https://hub.docker.com/_/php
FROM php:8.0-apache

# Updating, Upgrading and Installing image libraries to our Apache Server
RUN apt update && apt upgrade -y

# Installing and enabling MYSQLI extension for mysqli commands
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

# Clearing cache with "apt clean" and remove recursively cached information on directories below
RUN apt clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Installing a2enmod allowing to rewrite URL through .htaccess file
RUN a2enmod rewrite

# Copy our Application relative files (web/) to Apache Container public folder (/var/www/html/)
COPY web/ /var/www/html/