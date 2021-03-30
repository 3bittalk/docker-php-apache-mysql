FROM php:8.0.3-apache-buster

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql && a2enmod rewrite

COPY docker-php-apache-mysql-start /usr/local/bin/

CMD ["docker-php-apache-mysql-start"]
