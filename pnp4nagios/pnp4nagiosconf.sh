#!/bin/sh

# pnp4nagios paths
eondir="/srv/eyesofnetwork"
eonconfdir="${eondir}conf/pnp4nagios"
linkdir="${eondir}/pnp4nagios"

# create eon directories
mkdir -p ${linkdir}
ln -sf /etc/pnp4nagios ${linkdir}/etc
ln -sf /usr/share/nagios/html/pnp4nagios ${linkdir}/html
ln -sf /var/lib/pnp4nagios ${linkdir}/rra

# create pnp4nagios conf
mv /etc/httpd/conf.d/pnp4nagios.conf /etc/httpd/conf.d/pnp4nagios.conf.orig
cp -arf ${eonconfdir}/pnp4nagios.conf /etc/httpd/conf.d/

