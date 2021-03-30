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
ln -nsf /usr/lib64/nagios/cgi-bin ${linkdir}/sbin

# create nagios conf
mv /etc/httpd/conf.d/nagios.conf /etc/httpd/conf.d/nagios.conf.orig
cp -arf ${eonconfdir}/nagios.conf /etc/httpd/conf.d/
rsync -Pavz ${eonconfdir}/etc/ --delete ${linkdir}/etc/

# disable Nagios default configuration
cat /dev/null > /srv/eyesofnetwork/nagios/etc/objects/localhost.cfg
cat /dev/null > /srv/eyesofnetwork/nagios/etc/objects/printer.cfg
cat /dev/null > /srv/eyesofnetwork/nagios/etc/objects/switch.cfg
cat /dev/null > /srv/eyesofnetwork/nagios/etc/objects/templates.cfg
cat /dev/null > /srv/eyesofnetwork/nagios/etc/objects/windows.cfg

# icons
tar zxvf ${eonconfdir}/logos.tgz -C ${linkdir}/share/images/logos/ 

# user
/usr/sbin/usermod -g ${APPLIANCEGRP} -G apache nagios &>/dev/null
/usr/bin/gpasswd -a nagios nagios &>/dev/null

# rights
chown -R nagios:${APPLIANCEGRP} ${linkdir}*
chown -R nagios:${APPLIANCEGRP} /etc/nagios
chown -R nagios:${APPLIANCEGRP} /var/log/nagios
chown -R nagios:${APPLIANCEGRP} /var/spool/nagios
chmod -R 775 /etc/nagios

# lilac conf
su -s /bin/sh -c "php /srv/eyesofnetwork/lilac/exporter/export.php 1" nagios &>/dev/null

# services
sed -i 's/^Group=nagios/Group=eyesofnetwork/g' /usr/lib/systemd/system/nagios.service &>/dev/null
systemctl daemon-reload &>/dev/null
systemctl enable nagios.service &>/dev/null
systemctl restart nagios.service &>/dev/null
