#!/bin/sh

# backup-manager paths
eonfile="/srv/eyesofnetworkconf/backup-manager/backup-manager.conf"
conffile="/etc/backup-manager.conf"

# update backup repository
mkdir -p /var/archives &>/dev/null 
mv /var/backup-manager/* /var/archives/ &>/dev/null
rm -rf /var/backup-manager &>/dev/null

# update backup config
cp -arf ${conffile} ${conffile}.orig 
cat ${eonfile}  > ${conffile} 

# update databases list
for i in `find /var/lib/mysql/* -type d |awk -F "/" '{print $5}' |grep -v test |grep -v performance_schema` ; do BDDS="$i $BDDS" ; done
sed -i "s/^export BM_MYSQL_DATABASES*.*/export BM_MYSQL_DATABASES=\"${BDDS%?}\"/g" ${conffile}
