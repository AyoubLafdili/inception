FROM debian:bullseye

RUN apt update && \
    apt install -y \
    php-mysql \
    php

ADD https://www.adminer.org/latest.php /usr/local/bin/adminer.php

EXPOSE 8080

ENTRYPOINT ["php", "-S", "0.0.0.0:8080", "-t", "/usr/local/bin/"]