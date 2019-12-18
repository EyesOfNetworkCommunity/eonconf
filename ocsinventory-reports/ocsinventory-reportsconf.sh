#!/bin/sh

# Define values
eonconfpath=$(readlink -f "$0")
eonconfdir=$(dirname "$eonconfpath")

# configuration
cp -arf ${eonconfdir}/dbconfig.inc.php /usr/share/ocsinventory-reports/ocsreports/
chown apache:apache /usr/share/ocsinventory-reports/ocsreports/dbconfig.inc.php

# create the ocsweb database
SERVER=127.0.0.1
PORT=3306
DATABASE="ocsweb"
MYSQL_ROOTUSER="root"
MYSQL_ROOTPASSWORD="root66"
MYSQL_OCSUSER="ocs"
MYSQL_OCSPASSWORD="ocs"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "CREATE DATABASE ocsweb;"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -D ${DATABASE} <  ${eonconfdir}/ocsweb-eon.sql
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "GRANT ALL PRIVILEGES ON ocsweb.* TO '${MYSQL_OCSUSER}'@'localhost' IDENTIFIED BY '${MYSQL_OCSPASSWORD}';"
