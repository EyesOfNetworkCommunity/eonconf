#!/bin/sh

# pnp4nagios paths
eondir="/srv/eyesofnetwork"
eonconfdir="${eondir}conf/pnp4nagios"
linkdir="${eondir}/pnp4nagios"

# create eon directories
mkdir -p ${linkdir}/var
ln -nsf /etc/pnp4nagios ${linkdir}/etc
ln -nsf /usr/share/nagios/html/pnp4nagios ${linkdir}/html
ln -nsf /var/lib/pnp4nagios ${linkdir}/rra
ln -nsf /var/spool/pnp4nagios ${linkdir}/var/spool
ln -nsf /var/log/pnp4nagios ${linkdir}/var/log

# create pnp4nagios conf
cp -arf ${linkdir}/etc/config.php ${linkdir}/etc/config.php.orig
cat ${eonconfdir}/config.php > ${linkdir}/etc/config.php
mv /etc/httpd/conf.d/pnp4nagios.conf /etc/httpd/conf.d/pnp4nagios.conf.orig
cp -arf ${eonconfdir}/pnp4nagios.conf /etc/httpd/conf.d/
cp -arf ${linkdir}/html/application/models/rrdtool.php ${linkdir}/html/application/models/rrdtool.php.orig
cat ${eonconfdir}/rrdtool.php > ${linkdir}/html/application/models/rrdtool.php
