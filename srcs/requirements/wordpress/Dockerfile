FROM debian:bullseye

RUN apt update && \
    apt install -y \ 
    curl \
    mariadb-client \
    php8.2-fpm \
    php-mysql && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    rm /etc/php/8.2/fpm/pool.d/*

USER www-data

COPY tools/* /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/setup.sh"]