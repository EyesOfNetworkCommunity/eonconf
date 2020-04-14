#!/bin/sh

# thruk paths
eondir="/srv/eyesofnetwork"
eonconfdir="${eondir}conf/thruk"
linkdir="${eondir}/thruk"

# create eon directories
mkdir -p ${linkdir}
ln -nsf /etc/thruk/ ${linkdir}/etc
ln -nsf /usr/share/thruk/ ${linkdir}/share
ln -nsf /var/log/thruk/ ${linkdir}/log
ln -nsf /var/lib/thruk ${linkdir}/var
ln -nsf /var/cache/thruk/ ${linkdir}/tmp

# thruk bp
cp -arf ${eonconfdir}/thruk_templates.cfg ${eondir}/nagios/etc/objects/
chown nagios:eyesofnetwork ${eondir}/nagios/etc/objects/thruk_templates.cfg
chmod 664 ${eondir}/nagios/etc/objects/thruk_templates.cfg

# create thruk conf
mv /etc/thruk/thruk_local.conf /etc/thruk/thruk_local.conf.orig
cp -arf ${eonconfdir}/thruk_local.conf /etc/thruk/

mv /etc/thruk/cgi.cfg /etc/thruk/cgi.cfg.orig
cp -arf ${eonconfdir}/cgi.cfg /etc/thruk/

rsync -Pavz ${eonconfdir}/EyesOfNetwork/ /usr/share/thruk/themes/themes-available/EyesOfNetwork/
ln -nsf /usr/share/thruk/themes/themes-available/EyesOfNetwork /etc/thruk/themes/themes-available/
ln -nsf ../themes-available/EyesOfNetwork /etc/thruk/themes/themes-enabled/
ln -nsf /srv/eyesofnetwork/eonweb/themes/EONFlatDark/thruk/EONFlatDark/ /etc/thruk/themes/themes-enabled/EONFlatDark
ln -nsf /srv/eyesofnetwork/eonweb/themes/EONFlatLight/thruk/EONFlatLight/ /etc/thruk/themes/themes-enabled/EONFlatLight


mv /etc/httpd/conf.d/thruk_cookie_auth_vhost.conf /etc/httpd/conf.d/thruk_cookie_auth_vhost.conf.orig
echo '' > /etc/httpd/conf.d/thruk_cookie_auth_vhost.conf
mv /etc/httpd/conf.d/thruk.conf /etc/httpd/conf.d/thruk.conf.orig
cp -arf ${eonconfdir}/thruk.conf /etc/httpd/conf.d/

touch /etc/httpd/conf.d/thruk_cookie_auth_vhost.conf
systemctl restart httpd
