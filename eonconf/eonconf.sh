#!/bin/sh
#
########################################################################################################################
# call eonconf.sh with a specified list a tools to configure : 
# - eonconf.sh cacti eonweb lilac mk-livestatus nagios nagvis notifier pnp4nagios thruk glpi ocsinventory-reports backup-manager
#
# each of the potential tools should respect the name following convention :
# - /srv/eyesofnetworkconf/${tool_name}/${tool_name}conf.sh
########################################################################################################################

# --- apache document root
if [ -d "/srv/eyesofnetwork/eonweb" ]; then
	sed -i 's/^DocumentRoot.*/DocumentRoot\ \"\/srv\/eyesofnetwork\/eonweb\"/g' /etc/httpd/conf/httpd.conf
elif [ -d "/srv/eyesofnetwork/glpi" ]; then
	sed -i 's/^DocumentRoot.*/DocumentRoot\ \"\/srv\/eyesofnetwork\/glpi\"/g' /etc/httpd/conf/httpd.conf
elif [ -d "/srv/eyesofnetwork/ocsinventory-reports" ]; then
        sed -i 's/^DocumentRoot.*/DocumentRoot\ \"\/srv\/eyesofnetwork\/ocsinventory-reports\/ocsreports\"/g' /etc/httpd/conf/httpd.conf
fi

# --- php configuration
TZONE=`ls -l /etc/localtime |awk -F "zoneinfo/" '{print $2}'`
sed -i "s,^;date.timezone.*,date.timezone = \"${TZONE}\",g" /etc/php.ini
sed -i 's/^memory_limit.*/memory_limit = 256M/g' /etc/php.ini
sed -i 's/^max_execution_time.*/max_execution_time = 300/g' /etc/php.ini
sed -i 's/^error_reporting =.*/error_reporting = E_ERROR/g' /etc/php.ini

# --- selinux configuration
sed -i "s,^SELINUX=.*,SELINUX=disabled,g" /etc/selinux/config
setenforce 0

# --- sudoers configuration
if [ "`grep eonweb /etc/sudoers |wc -l`" -eq "0" ] ; then
	sed -i 's/^Defaults    requiretty/#Defaults    requiretty/g' /etc/sudoers
	echo -e "\n# eonweb\napache ALL=NOPASSWD:/bin/systemctl * snmptt,/bin/systemctl * snmptrapd,/bin/systemctl * snmpd,/bin/systemctl * nagios,/bin/systemctl * gedd,/usr/bin/nmap" >> /etc/sudoers
fi

# --- snmp configuration
sed -i 's/public/EyesOfNetwork/g' /etc/snmp/snmpd.conf
sed -i 's/.1.3.6.1.2.1.1/.1./g' /etc/snmp/snmpd.conf
echo "ignoreauthfailure yes
authCommunity log,execute,net EyesOfNetwork
traphandle default /srv/eyesofnetwork/snmptt/bin/snmptthandler" > /etc/snmp/snmptrapd.conf

# --- check mysql daemon is up and running, set the root password
if [ ! -n "`systemctl status mariadb | grep pid`" ]; then
        systemctl start mariadb
fi
mysqladmin -u root password 'root66'

# --- create timezone tables
mysql_tzinfo_to_sql /usr/share/zoneinfo |mysql --password=root66 mysql

# --- create ged database
mysql -u root --password=root66 < /srv/eyesofnetwork/ged/etc/bkd/ged-init.sql

# --- apache user must belong to eyesofnetwork group too
usermod -g apache -G apache,eyesofnetwork apache

#-----------------------------------------------------------------------------------------------------------------------
# components configuration, loop on command line arguments
#-----------------------------------------------------------------------------------------------------------------------
for i in `echo $*`; do
	countrpm=`rpm -qa |grep ${i} |wc -l`
	if [ -f /srv/eyesofnetworkconf/${i}/${i}conf.sh ] && [ $countrpm -gt 0 ] ; then
		/bin/sh /srv/eyesofnetworkconf/${i}/${i}conf.sh;
	fi
done

# --- backup configuration
for i in `find /var/lib/mysql/* -type d |awk -F "/" '{print $5}' |grep -v test |grep -v performance_schema` ; do BDDS="$i $BDDS" ; done
sed -i "s/^export BM_MYSQL_DATABASES*.*/export BM_MYSQL_DATABASES=\"$BDDS\"/g" /etc/backup-manager.conf

/srv/eyesofnetworkconf/eonconf/issue.sh		> /dev/null 2>&1

# -- create repos
mkdir -p /srv/eyesofnetworkrepo/base		> /dev/null 2>&1
createrepo /srv/eyesofnetworkrepo/base		> /dev/null 2>&1
mkdir -p /srv/eyesofnetworkrepo/updates		> /dev/null 2>&1
createrepo /srv/eyesofnetworkrepo/updates	> /dev/null 2>&1
mkdir -p /srv/eyesofnetworkrepo/extras		> /dev/null 2>&1
createrepo /srv/eyesofnetworkrepo/extras	> /dev/null 2>&1

# --- ensure apache down
systemctl stop httpd            > /dev/null 2>&1
killall httpd			> /dev/null 2>&1

# --- ensure boot sequence 
systemctl disable firewalld 	> /dev/null 2>&1
systemctl enable gedd		> /dev/null 2>&1
systemctl enable httpd		> /dev/null 2>&1
systemctl enable mariadb	> /dev/null 2>&1
systemctl enable nagios		> /dev/null 2>&1
systemctl enable npcd		> /dev/null 2>&1
systemctl enable chronyd	> /dev/null 2>&1
systemctl enable rsyslog 	> /dev/null 2>&1
systemctl enable snmpd 		> /dev/null 2>&1
systemctl enable snmptrapd	> /dev/null 2>&1
systemctl enable snmptt 	> /dev/null 2>&1

# --- services status
systemctl stop firewalld 	> /dev/null 2>&1
systemctl restart mariadb	> /dev/null 2>&1
systemctl restart rsyslog	> /dev/null 2>&1
systemctl restart chronyd 	> /dev/null 2>&1
systemctl restart nagios 	> /dev/null 2>&1
systemctl restart npcd		> /dev/null 2>&1
systemctl restart gedd 		> /dev/null 2>&1
systemctl restart snmpd 	> /dev/null 2>&1
systemctl restart snmptrapd 	> /dev/null 2>&1
systemctl restart snmptt 	> /dev/null 2>&1
systemctl restart httpd 	> /dev/null 2>&1

# --- network
systemctl restart network 	> /dev/null 2>&1

# --- firewall 
firewall-cmd --permanent --add-service ssh	> /dev/null 2>&1
firewall-cmd --permanent --add-service http	> /dev/null 2>&1
firewall-cmd --permanent --add-service https 	> /dev/null 2>&1
firewall-cmd --reload				> /dev/null 2>&1

# --- remove the sysv eonconf script from the boot sequence
systemctl disable eonconf
