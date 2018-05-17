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
