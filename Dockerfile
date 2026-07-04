FROM php:8.1-apache

RUN docker-php-ext-install pdo_mysql && a2enmod rewrite

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html/uploads

EXPOSE 80
