FROM  debian:bullseye

RUN << EOF
    apt update && \
    apt install -y vsftpd 
    mkdir /var/run/empty/
EOF

COPY conf/* /etc/
COPY --chmod=744 tools/* /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/startup.sh"]