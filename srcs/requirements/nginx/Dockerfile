FROM debian:bullseye

RUN apt update && \
    apt install -y \
    nginx \
    openssl && \
    openssl req -x509 -new -noenc -out /etc/ssl/certs/selfcert.pem -keyout /etc/ssl/certs/privkey.pem \
    -subj "/C=MA/ST=:khouribga/L=khouribga/O=inception/CN=alafdili.42.fr" && \
    chown -R www-data:www-data /etc/ssl/certs/* && \
    touch /run/nginx.pid

EXPOSE 443

ENTRYPOINT ["nginx"]