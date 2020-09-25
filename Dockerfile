FROM php:7.3-apache

RUN apt-get -y update

## xdebug
#RUN pecl install xdebug
#RUN docker-php-ext-enable xdebug

# MailCatcher
RUN apt-get install -y ruby ruby-dev rubygems libsqlite3-dev
RUN gem install mailcatcher

# PHP Extensions
RUN docker-php-ext-install pdo_mysql 
RUN docker-php-ext-install mysqli

RUN docker-php-ext-install mbstring

RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd

RUN apt-get install -y libldap2-dev
RUN docker-php-ext-install ldap
RUN docker-php-ext-enable ldap

RUN apt-get install -y libxml2-dev
RUN docker-php-ext-install xml && \
RUN docker-php-ext-enable xml

RUN docker-php-ext-install gettext
RUN docker-php-ext-enable gettext

# Enable apache modules
RUN a2enmod rewrite
