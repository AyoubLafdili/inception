FROM debian:bullseye

RUN apt update && \
    apt install -y \ 
    curl \
    mariadb-client \
    php7.4-fpm \
    php-mysql && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    rm /etc/php/7.4/fpm/pool.d/* && \
    mkdir /run/php/ && touch /run/php/php7.4-fpm.pid && \
    chown www-data:www-data /run/php/php7.4-fpm.pid

USER www-data

COPY tools/* /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/setup.sh"]