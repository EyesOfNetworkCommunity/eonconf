#!/bin/sh

# Define values
eondir="/srv/eyesofnetwork"
eonconfdir="${eondir}conf/grafana"

# grafana configuration
cp -arf /etc/httpd/conf.d/grafana.conf /etc/httpd/conf.d/grafana.conf.orig
cp -arf /etc/grafana/grafana.ini /etc/grafana/grafana.ini.orig
cat ${eonconfdir}/grafana.conf > /etc/httpd/conf.d/grafana.conf
cat ${eonconfdir}/grafana.ini > /etc/grafana/grafana.ini
