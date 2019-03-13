FROM php:7.1-fpm

RUN apt-get update \
&& apt-get install -y libmemcached-dev \
    zlib1g-dev \
    git

RUN git clone https://github.com/php-memcached-dev/php-memcached /usr/src/php/ext/memcached \
      && cd /usr/src/php/ext/memcached && git checkout -b php7 origin/php7 \
      && docker-php-ext-configure memcached \
      && docker-php-ext-install pdo pdo_mysql memcached
