FROM debian:12

RUN apt update && \
	apt install -y mariadb-server \
	mariadb-client

COPY conf/* /etc/mysql/mariadb.conf.d/
COPY tools/* /usr/local/bin/

RUN mkdir /run/mysqld/ && \ 
	touch /run/mariadbd.pid && \
	chown -R mysql:mysql /run/mysqld /run/mariadbd.pid

ENTRYPOINT ["/usr/local/bin/setup.sh"]