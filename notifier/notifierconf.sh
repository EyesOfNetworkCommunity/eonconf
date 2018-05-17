#!/bin/sh

# Define values
eonconfpath=$(readlink -f "$0")
eonconfdir=$(dirname "$eonconfpath")
eondir="/srv/eyesofnetwork"
datadir="$eondir/notifier"
notifierdb="notifier"

# create the notifier database
SERVER=127.0.0.1
PORT=3306
DATABASE="notifier"
MYSQL_ROOTUSER="root"
MYSQL_ROOTPASSWORD="root66"
MYSQL_NOTIFIERUSER="notifierSQL"
MYSQL_NOTIFIERPASSWORD="Notifier66"
DATABASE_STRUCT="/srv/eyesofnetwork/notifier-2.1.2/docs/db/notifier.sql"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "CREATE DATABASE notifier;"
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -D ${DATABASE} < ${DATABASE_STRUCT}
mysql -h${SERVER} -P${PORT} -u${MYSQL_ROOTUSER} -p${MYSQL_ROOTPASSWORD} -e "GRANT ALL PRIVILEGES ON notifier.* TO '${MYSQL_NOTIFIERUSER}'@'localhost' IDENTIFIED BY '${MYSQL_NOTIFIERPASSWORD}';"
