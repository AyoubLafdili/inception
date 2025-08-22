FROM debian:bullseye

RUN apt update && \
    apt install -y \
    curl \
    php \ 
    php-mysql && \
    curl -Lo /usr/local/bin/adminer.php https://www.adminer.org/latest.php

EXPOSE 8080

ENTRYPOINT ["php", "-S", "0.0.0.0:8080", "-t", "/usr/local/bin/"]