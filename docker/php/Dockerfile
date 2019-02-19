FROM php:7.2-fpm-alpine
WORKDIR /app
RUN apk add --no-cache $PHPIZE_DEPS libzip-dev zip curl composer yarn icu-dev 
RUN docker-php-ext-install pdo_mysql bcmath zip intl
ENV DOCKERIZE_VERSION v0.6.1
RUN wget -q https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
  && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
  && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz