#!/bin/bash

USER_NAME=$(cat $FTP_CREDINTIALS_FILE | grep FTP_USER | awk '{print $3}')
USER_PASS=$(cat $FTP_CREDINTIALS_FILE | grep FTP_PASSWORD | awk '{print $3}')

useradd $USER_NAME
usermod -d /mnt/wordpress/ -G www-data $USER_NAME
echo "$USER_NAME:$USER_PASS" | chpasswd 

exec vsftpd