#!/bin/sh

# Define values
eonconfpath=$(readlink -f "$0")
eonconfdir=$(dirname "$eonconfpath")

# glpi configuration
cp -arf /etc/httpd/conf.d/glpi.conf /etc/httpd/conf.d/glpi.conf.orig
cat ${eonconfdir}/config_db.php > /etc/glpi/config_db.php
cat ${eonconfdir}/glpi.conf > /etc/httpd/conf.d/glpi.conf

# create the notifier database
SERVER=127.0.0.1
PORT=3306
DATABASE="glpi"
MYSQL_ROOTUSER="root"
MYSQL_ROOTPASSWORD="root66"
MYSQL_GLPIUSER="glpi"
MYSQL_GLPIPASSWORD="glpi66"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "CREATE DATABASE glpi;"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -D ${DATABASE} <  ${eonconfdir}/glpi-eon.sql
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "GRANT ALL PRIVILEGES ON glpi.* TO '${MYSQL_GLPIUSER}'@'localhost' IDENTIFIED BY '${MYSQL_GLPIPASSWORD}';"
