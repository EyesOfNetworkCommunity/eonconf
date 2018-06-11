#!/bin/sh

eonfile="/srv/eyesofnetworkconf/backup-manager/backup-manager.conf"
conffile="/etc/backup-manager.conf"

cp -arf ${conffile} ${conffile}.orig 
cat ${eonfile}  > ${conffile} 

for i in `find /var/lib/mysql/* -type d |awk -F "/" '{print $5}' |grep -v test |grep -v performance_schema` ; do BDDS="$i $BDDS" ; done
sed -i "s/^export BM_MYSQL_DATABASES*.*/export BM_MYSQL_DATABASES=\"$BDDS\"/g" ${conffile}
