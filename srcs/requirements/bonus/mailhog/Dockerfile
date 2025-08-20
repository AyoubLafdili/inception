FROM debian:bookworm

WORKDIR /usr/local/bin/

RUN apt update && \
    apt install -y \
    curl && \
    curl -Lo mailhog \
    https://github.com/mailhog/MailHog/releases/download/v1.0.0/MailHog_linux_amd64 && \
    chmod +x mailhog

EXPOSE 8025

ENTRYPOINT ["mailhog"]