#!/bin/sh

# appliance group and use
APPLIANCEGRP="eyesofnetwork"

# nagios paths
eondir="/srv/eyesofnetwork"
eonconfdir="${eondir}conf/nagios"
linkdir="${eondir}/nagios"

# create eon directories
mkdir -p ${linkdir}/{bin,var}

ln -nsf /etc/nagios ${linkdir}/etc
ln -nsf /usr/lib64/nagios/plugins/ ${linkdir}/plugins
ln -sf /usr/bin/nagiostats ${linkdir}/bin/nagiostats
ln -sf /usr/sbin/nagios ${linkdir}/bin/nagios
ln -nsf /usr/share/nagios/html/ /srv/eyesofnetwork/nagios/share
ln -nsf /var/log/nagios ${linkdir}/var/log
ln -nsf /var/spool/nagios/ /srv/eyesofnetwork/nagios/var/log/spool
ln -nsf /var/spool/nagios/cmd/ ${linkdir}/var/log/rw

# create nagios conf
mv /etc/httpd/conf.d/nagios.conf /etc/httpd/conf.d/nagios.conf.orig
cp -arf ${eonconfdir}/nagios.conf /etc/httpd/conf.d/
rsync -Pavz ${eonconfdir}/etc/ --delete ${linkdir}/etc/

# user
/usr/sbin/usermod -g ${APPLIANCEGRP} -G apache nagios &>/dev/null

# rights
chown -R nagios:${APPLIANCEGRP} ${linkdir}*
chown -R nagios:${APPLIANCEGRP} /etc/nagios
chown -R nagios:${APPLIANCEGRP} /var/log/nagios
chmod -R 775 /etc/nagios

# services
systemctl enable nagios.service &>/dev/null
systemctl start nagios.service &>/dev/null
