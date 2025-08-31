FROM  debian:bullseye

RUN apt update && \
    apt install -y vsftpd 

RUN mkdir /var/run/empty/

COPY --chmod=744 tools/* /usr/local/bin/

COPY conf/* /etc/

ENTRYPOINT ["/usr/local/bin/startup.sh"]