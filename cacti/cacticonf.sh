#!/bin/sh

# Define values
eonconfpath=$(readlink -f "$0")
eonconfdir=$(dirname "$eonconfpath")
eondir="/srv/eyesofnetwork"
datadir="$eondir/cacti"
cactidb="cacti"

# cacti configuration
ln -sf /usr/share/cacti/ ${datadir}
cp -arf ${datadir}/include/config.php ${datadir}/include/config.php.orig
cat ${eonconfdir}/httpd/conf.d/cacti.conf > /etc/httpd/conf.d/cacti.conf
cat ${eonconfdir}/my.cnf.d/cacti.cnf > /etc/my.cnf.d/cacti.cnf

# edit database
SERVER=127.0.0.1
PORT=3306
DATABASE="cacti"
MYSQL_ROOTUSER="root"
MYSQL_ROOTPASSWORD="root66"
MYSQL_CACTIUSER="cacti"
MYSQL_CACTIPASSWORD="cacti66"
DATABASE="/usr/share/doc/cacti-1.2.5/cacti.sql"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "CREATE DATABASE cacti;"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -D ${DATABASE} < ${DATABASE_STRUCT}
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "GRANT ALL PRIVILEGES ON ${DATABASE}.* TO '${MYSQL_CACTIUSER}'@'localhost' IDENTIFIED BY '${MYSQL_CACTIPASSWORD}';"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "GRANT SELECT ON mysql.time_zone_name TO ${MYSQL_CACTIUSER}@localhost IDENTIFIED BY '${MYSQL_CACTIPASSWORD}';"

# restart Database

systemctl restart mariadb
