#!/bin/sh

eonfile="/srv/eyesofnetworkconf/backup-manager/backup-manager.conf"
conffile="/etc/backup-manager.conf"

cp -arf ${conffile} ${conffile}.orig 
cat ${eonfile}  > ${conffile} 
