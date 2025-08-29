FROM debian:bullseye

RUN apt update && \
    apt install -y \
    nginx

COPY site/* /var/www/html/

EXPOSE 80

ENTRYPOINT ["nginx"]