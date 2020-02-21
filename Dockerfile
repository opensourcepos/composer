FROM php:7.4.3-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_HOME=/tmp
ENV COMPOSER_VERSION=1.9.3

WORKDIR /app

CMD ["composer"]
