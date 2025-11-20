FROM wordpress:php8.2-apache

RUN set -eux; \
    pecl install redis && docker-php-ext-enable redis

COPY config/php.ini /usr/local/etc/php/
