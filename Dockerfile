FROM php:7.4.3-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_HOME=/tmp
ENV COMPOSER_VERSION=1.9.3

RUN apk add zlib-dev libpng-dev libzip-dev icu-dev oniguruma-dev
RUN docker-php-ext-install gd zip intl mbstring

WORKDIR /app

ENV PATH="/usr/bin:/usr/local/bin:${PATH}"

CMD ["/usr/bin/composer"]
