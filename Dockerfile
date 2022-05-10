FROM composer:2 as composer
COPY . /app/
RUN  composer install --prefer-dist --no-dev --optimize-autoloader --no-interaction

FROM php:8.0-apache-buster as foundation

RUN apt-get update && apt-get install -y \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

COPY vhost.conf /etc/apache2/sites-available/000-default.conf
COPY ports.conf /etc/apache2/ports.conf

COPY --from=composer  /app/ /app/

RUN a2enmod rewrite
RUN a2enmod remoteip

RUN chown -R www-data:www-data /app

WORKDIR /app

EXPOSE 8080
