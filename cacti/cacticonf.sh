#!/bin/sh

# define path
eondir="/srv/eyesofnetwork"
eonconfdir="/srv/eyesofnetworkconf/cacti"
datadir="${eondir}/cacti"
cactidb="cacti"

# user / group
APPLIANCEGRP="eyesofnetwork"

# cacti datadir
ln -sf /usr/share/cacti $datadir

# create the cacti database
mysqladmin -u root --password=root66 create ${cactidb}

# create the database content
mysql -u root --password=root66 ${cactidb} < ${eonconfdir}/cacti-eon.sql

# user / group
/usr/sbin/usermod -g ${APPLIANCEGRP} -G apache cacti

# create cacti conf
mv ${datadir}/include/config.php ${datadir}/include/config.php.orig
cp -arf ${eonconfdir}/config.php ${datadir}/include/
mv /etc/httpd/conf.d/cacti.conf /etc/httpd/conf.d/cacti.conf.orig
cp -arf ${eonconfdir}/cacti.conf /etc/httpd/conf.d/

