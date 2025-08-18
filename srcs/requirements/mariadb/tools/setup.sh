#!/bin/bash

mariadb-install-db --user=mysql --datadir=/mnt/db/

mariadbd --user=mysql &

sleep 10

ROOT_PASSWD=$(cat $DB_ROOT_PASSWD_FILE)
USER_PASSWD=$(cat $DB_PASSWD_FILE)

mariadb --socket=/run/mysqld/mysqld.sock \
        -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWD';"

mariadb -u root \
        -p$ROOT_PASSWD \
        -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$USER_PASSWD';"

mariadb -u root \
        -p$ROOT_PASSWD \
        -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO $MYSQL_USER;"

mariadb -u root \
        -p$ROOT_PASSWD \
        -e "FLUSH PRIVILEGES"

PID=$(ps -C mariadbd -o pid=)
kill $PID

sleep 10

exec mariadbd --user=mysql