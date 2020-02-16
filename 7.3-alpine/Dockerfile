FROM php:7.3-alpine AS base

RUN apk add bash
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN mv /root/.symfony/bin/symfony /usr/local/bin/symfony
RUN chmod +x /usr/local/bin/symfony

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --filename=composer --install-dir=/usr/local/bin
RUN mkdir /.composer
RUN chmod -Rf 777 /.composer

ENTRYPOINT bash symfony $@