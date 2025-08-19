#!/bin/bash

mariadb-install-db

ROOT_PASSWD=$(cat $DB_ROOT_PASSWD_FILE)
USER_PASSWD=$(cat $DB_PASSWD_FILE)

cat << EOF > /run/startupQueries.sql
        ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWD';
        CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$USER_PASSWD';
        GRANT ALL PRIVILEGES ON $DB_NAME.* TO $MYSQL_USER;
        FLUSH PRIVILEGES;
EOF

exec mariadbd