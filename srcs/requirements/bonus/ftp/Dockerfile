FROM  debian:bullseye

RUN apt update && \
    apt install -y vsftpd 

RUN useradd ftpuser && \
    usermod -d /mnt/wordpress/ -G www-data ftpuser && \
    echo "ftpuser:test" | chpasswd && \
    mkdir /var/run/empty/

COPY conf/* /etc/

ENTRYPOINT ["vsftpd"]