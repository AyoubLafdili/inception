FROM debian:bullseye

RUN apt update && apt install -y \
    curl \
    lsb-release \
    gpg && \
    curl -fsSL https://packages.redis.io/gpg \
    | gpg --dearmor \
    -o /usr/share/keyrings/redis-archive-keyring.gpg && \
    chmod 644 /usr/share/keyrings/redis-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" \
    | tee /etc/apt/sources.list.d/redis.list && \
    apt update &&  \
    apt install -y redis

EXPOSE 6379

ENTRYPOINT ["redis-server", "--protected-mode", "no"]