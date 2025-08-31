FROM debian:bullseye

RUN << EOF 
    apt update
    apt install -y curl \
    mariadb-client \
    php7.4-fpm \
    php-mysql
    curl -o /usr/local/bin/wp \
    https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    rm /etc/php/7.4/fpm/pool.d/*
    mkdir /run/php/
    touch /run/php/php7.4-fpm.pid
    chown www-data:www-data /run/php/php7.4-fpm.pid
    chmod +x /usr/local/bin/wp
EOF

COPY --chmod=744 tools/* /usr/local/bin/

USER www-data

ENTRYPOINT ["/usr/local/bin/setup.sh"]