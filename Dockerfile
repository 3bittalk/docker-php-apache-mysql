FROM php:8.3-apache-bookworm


RUN apt-get update && apt-get install apt-file -y && apt-file update && apt-get install vim wget libzip-dev zip -y

RUN docker-php-ext-install mysqli pdo pdo_mysql zip && docker-php-ext-enable pdo_mysql && a2enmod rewrite

# Add configuration
ADD config/mods-available /etc/apache2/mods-available/

# Add script to run
COPY docker-php-apache-mysql-start /usr/local/bin/

CMD ["docker-php-apache-mysql-start"]
