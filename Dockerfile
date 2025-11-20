# -------------------------------------------------------------
#  Dockerfile – WordPress custom (PHP 8.2 + Redis extension)
#  Faz duas coisas:
#    1. Instala e habilita a extensão nativa PhpRedis via PECL
#    2. Copia o php.ini otimizado que está em config/php.ini
# -------------------------------------------------------------

FROM wordpress:php8.2-apache

RUN set -eux; \
    pecl install redis && docker-php-ext-enable redis

COPY config/php.ini /usr/local/etc/php/
