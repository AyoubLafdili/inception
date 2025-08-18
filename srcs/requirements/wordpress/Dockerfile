FROM debian:12

ARG php_version=8.2

RUN apt update && \
    apt install -y php8.2-fpm \
    mariadb-client \
    curl \
    php-mysql
    
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    touch /var/log/php-fpm.log && \
    chown www-data:www-data /var/log/php-fpm.log

WORKDIR /etc/php/8.2/fpm/pool.d/

RUN rm *

COPY conf/* .
COPY tools/* /usr/local/bin/

USER www-data

ENTRYPOINT ["/usr/local/bin/setup.sh"]