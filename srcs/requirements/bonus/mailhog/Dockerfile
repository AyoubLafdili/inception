FROM debian:bullseye

ADD --chmod=744 https://github.com/mailhog/MailHog/releases/download/v1.0.0/MailHog_linux_amd64 /usr/local/bin/mailhog

EXPOSE 8025

ENTRYPOINT ["mailhog"]