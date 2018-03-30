#!/bin/sh

# thruk paths
eondir="/srv/eyesofnetwork"
eonconfdir="${eondir}conf/thruk"
linkdir="${eondir}/thruk"

# create eon directories
mkdir -p ${linkdir}
ln -sf /etc/thruk/ ${linkdir}/etc
ln -sf /usr/share/thruk/ ${linkdir}/share
ln -sf /var/log/thruk/ ${linkdir}/log
ln -sf /var/lib/thruk ${linkdir}/var
ln -sf /var/cache/thruk/ ${linkdir}/tmp

# create thruk conf
mv /etc/thruk/thruk_local.conf /etc/thruk/thruk_local.conf.orig
cp -arf ${eonconfdir}/thruk_local.conf /etc/thruk/

mv /etc/thruk/cgi.cfg /etc/thruk/cgi.cfg.orig
cp -arf ${eonconfdir}/cgi.cfg /etc/thruk/

rsync -Pavz ${eonconfdir}/EyesOfNetwork/ /usr/share/thruk/themes/themes-available/EyesOfNetwork/
ln -sf /usr/share/thruk/themes/themes-available/EyesOfNetwork /etc/thruk/themes/themes-available/
ln -sf ../themes-available/EyesOfNetwork /etc/thruk/themes/themes-enabled/

mv /etc/httpd/conf.d/thruk.conf /etc/httpd/conf.d/thruk.conf.orig
cp -arf ${eonconfdir}/thruk.conf /etc/httpd/conf.d/
