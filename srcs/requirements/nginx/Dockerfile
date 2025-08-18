FROM debian:12

RUN apt update && \
    apt install -y nginx \
    openssl && \
    openssl req -x509 -new -noenc -out /etc/ssl/certs/selfcert.pem -keyout /etc/ssl/certs/privkey.pem \
    -subj "/C=MA/ST=:khouribga/L=khouribga/O=inception/CN=alafdili.42.fr" && \
    touch /run/nginx.pid && \
    chown -R www-data:www-data /etc/ssl/certs/*

EXPOSE 443

COPY conf/* /etc/nginx/

ENTRYPOINT ["nginx"]