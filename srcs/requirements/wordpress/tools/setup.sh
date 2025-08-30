#!/bin/bash

ADMIN_NAME=$(cat $CREDENTIALS_FILE | grep WP_ADMIN_NAME | awk '{print $3}')
ADMIN_PASSWD=$(cat $CREDENTIALS_FILE | grep WP_ADMIN_PASSWD | awk '{print $3}')
USER_NAME=$(cat $CREDENTIALS_FILE | grep WP_USER_NAME | awk '{print $3}')
USER_PASS=$(cat $CREDENTIALS_FILE | grep WP_USER_PASSWD | awk '{print $3}')

wp core download    --path=/mnt/wordpress/

wp config create    --path=/mnt/wordpress \
                    --dbname=$DB_NAME \
                    --dbhost=$DB_HOST \
                    --dbuser=$MYSQL_USER \
                    --dbpass=$(cat $DB_PASSWD_FILE)

wp db create    --path=/mnt/wordpress

wp core install --path=/mnt/wordpress \
                --url=$DOMAIN_NAME \
                --title=$WEBSITE_TITLE \
                --admin_user=$ADMIN_NAME \
                --admin_password=$ADMIN_PASSWD \
                --admin_email=$ADMIN_EMAIL \
                --skip-email

wp user create  $USER_NAME \
                ayoublafdili@gmail.com \
                --path=/mnt/wordpress \
                --user_pass=$USER_PASS \
                --role=author

wp config set   --path=/mnt/wordpress \
                WP_REDIS_HOST redis


wp config set   --path=/mnt/wordpress \
                WP_REDIS_PORT 6379

exec php-fpm7.4 --nodaemonize