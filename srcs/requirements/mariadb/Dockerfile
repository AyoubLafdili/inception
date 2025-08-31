FROM debian:bullseye

RUN apt update && \
	apt install -y mariadb-server && \
	mkdir /run/mysqld/ && \ 
	touch /run/mariadbd.pid && \
	chown -R mysql:mysql /run/mysqld /run/mariadbd.pid

COPY --chmod=744 tools/* /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/setup.sh"]