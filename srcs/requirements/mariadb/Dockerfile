FROM debian:bookworm

RUN apt update && \
	apt install -y mariadb-server

COPY tools/* /usr/local/bin/

RUN mkdir /run/mysqld/ && \ 
	touch /run/mariadbd.pid && \
	chown -R mysql:mysql /run/mysqld /run/mariadbd.pid

ENTRYPOINT ["/usr/local/bin/setup.sh"]