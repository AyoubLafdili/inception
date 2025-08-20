FROM debian:bookworm

RUN apt update && \
    apt install -y \
    curl

ENTRYPOINT ["curl", "-L", "-o", "/mnt/wordpress/adminer.php", "https://www.adminer.org/latest.php"]