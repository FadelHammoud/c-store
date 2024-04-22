# Use an official PHP runtime as a parent image with Apache
FROM php:7.4-apache

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Install MySQL PDO and mysqli extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Expose port 80 to the outside world
EXPOSE 80
