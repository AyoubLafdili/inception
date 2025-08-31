FROM debian:bullseye

RUN << EOF
    apt update
    apt install -y redis
EOF

EXPOSE 6379

ENTRYPOINT ["redis-server", "--protected-mode", "no"]