Summary: eonconf configures the eyesofnetwork tools
Name: eonconf
Version: 6.0
Release: 6.eon
Source: https://github.com/EyesOfNetworkCommunity/%{name}/archive/master.tar.gz#/%{name}-%{version}.tar.gz
BuildRoot: /tmp/%{name}-%{version}
Group: Applications/System
License: GPL

Requires: createrepo
Requires: chrony
Requires: eonweb >= 6.0-0, grafana, ansible
Requires: mod_ssl
Requires: epel-release, labs-consol-stable, ocsinventory-release 

BuildRequires: systemd
Requires(pre,post): systemd

%define eondir		/srv/eyesofnetwork/
%define eonconfdir	/srv/eyesofnetworkconf/

%description
eonconf.init is executed once at the end of the first boot. It calls all the packages specifics configuration scripts.

%prep
%setup -q -n %{name}-master

%install
mkdir -p %{buildroot}/%{eonconfdir}
mkdir -p %{buildroot}/%{_unitdir}
mkdir -p %{buildroot}/etc/httpd/conf.d/
mkdir -p %{buildroot}/sbin/

mkdir -p %{buildroot}/etc/thruk/themes/themes-enabled/

install -d -m 755 %{buildroot}/%{eonconfdir}
cp -afpvr * %{buildroot}/%{eonconfdir}
rm -rf %{buildroot}/%{eonconfdir}/%{name}.spec
rm -rf %{buildroot}/%{eonconfdir}/README.md
install -m 644 %{name}/%{name}.service %{buildroot}%{_unitdir}/%{name}.service
install -m 644 %{name}/eon.conf %{buildroot}/etc/httpd/conf.d/
ln -sf %{eonconfdir}/%{name}/issue.sh %{buildroot}/sbin/ifup-local

%post
case "$1" in
  1)
    # Initial install
    /usr/sbin/groupadd eyesofnetwork &>/dev/null
    systemctl enable %{name}.service &>/dev/null
    /sbin/ifup-local &>/dev/null
  ;;
  2)
    # Update EON 5.3
    systemctl daemon-reload &>/dev/null
    systemctl disable %{name}.service &>/dev/null
    tar zxvf %{eonconfdir}/nagios/logos.tgz -C %{eondir}/nagios/share/images/logos/ &>/dev/null
    cp -arf %{eonconfdir}/thruk/thruk_templates.cfg %{eondir}/nagios/etc/objects/ &>/dev/null
    chown nagios:eyesofnetwork %{eondir}/nagios/etc/objects/thruk_templates.cfg &>/dev/null
    chmod 664 %{eondir}/nagios/etc/objects/thruk_templates.cfg &>/dev/null
    sed -i 's/^Group=nagios/Group=eyesofnetwork/g' /usr/lib/systemd/system/nagios.service
    systemctl daemon-reload
    systemctl restart nagios

    # Update eonconf 5.3-1
    ln -vsf /srv/eyesofnetwork/eonweb/themes/EONFlatLight/thruk/EONFlatLight /etc/thruk/themes/themes-enabled/EONFlatLight &>/dev/null
    ln -vsf /srv/eyesofnetwork/eonweb/themes/EONFlatDark/thruk/EONFlatDark /etc/thruk/themes/themes-enabled/EONFlatDark &>/dev/null
    ## If update during thruk upgrade
    mkdir -p /tmp/thruk_update/themes
    ln -vsf /srv/eyesofnetwork/eonweb/themes/EONFlatLight/thruk/EONFlatLight /tmp/thruk_update/themes/EONFlatLight &>/dev/null
    ln -vsf /srv/eyesofnetwork/eonweb/themes/EONFlatDark/thruk/EONFlatDark /tmp/thruk_update/themes/EONFlatDark &>/dev/null
    ## Fix auth in thruk
    echo '' > /etc/httpd/conf.d/thruk_cookie_auth_vhost.conf
    #systemctl restart httpd &>/dev/null

    # Update eonconf 5.3-4
    grep -qxF 'Header edit Set-Cookie ^(.*)$ $1;HttpOnly;Secure' /etc/httpd/conf.d/eon.conf || echo 'Header edit Set-Cookie ^(.*)$ $1;HttpOnly;Secure' >> /etc/httpd/conf.d/eon.conf
    grep -qxF 'Header unset Server' /etc/httpd/conf.d/eon.conf || echo 'Header unset Server' >> /etc/httpd/conf.d/eon.conf
    grep -qxF 'ServerSignature Off' /etc/httpd/conf.d/eon.conf || echo 'ServerSignature Off' >> /etc/httpd/conf.d/eon.conf
    grep -qxF 'ServerTokens Prod' /etc/httpd/conf.d/eon.conf || echo 'ServerTokens Prod' >> /etc/httpd/conf.d/eon.conf
    grep -qxF 'Header unset X-Powered-By' /etc/httpd/conf.d/eon.conf || echo 'Header unset X-Powered-By' >> /etc/httpd/conf.d/eon.conf
    grep -qxF 'Header set X-XSS-Protection "1; mode=block"' /etc/httpd/conf.d/eon.conf || echo 'Header set X-XSS-Protection "1; mode=block"' >> /etc/httpd/conf.d/eon.conf
    grep -qxF 'Header set X-Frame-Options: "sameorigin"' /etc/httpd/conf.d/eon.conf || echo 'Header set X-Frame-Options: "sameorigin"' >> /etc/httpd/conf.d/eon.conf

    systemctl restart httpd &>/dev/null

    # Update eonconf 5.3-5
    cat /dev/null >/srv/eyesofnetwork/nagios/etc/objects/localhost.cfg
    cat /dev/null >/srv/eyesofnetwork/nagios/etc/objects/printer.cfg
    cat /dev/null >/srv/eyesofnetwork/nagios/etc/objects/switch.cfg
    cat /dev/null >/srv/eyesofnetwork/nagios/etc/objects/templates.cfg
    cat /dev/null >/srv/eyesofnetwork/nagios/etc/objects/windows.cfg
    ## Adding Nagios in nagios group
    gpasswd -a nagios nagios

  ;;
esac

%preun
systemctl disable %{name}.service &>/dev/null

%clean
rm -rf /tmp/%{name}-%{version}
rm -rf %{buildroot}

%files
%{eonconfdir}
%{_unitdir}/%{name}.service
/etc/httpd/conf.d/eon.conf
/sbin/ifup-local

%changelog
* Thu July 6 2022 Jeremy Hoarau <> - 6.0-0.eon
- Change Spec and disable repo for EON 6.0

* Thu Mar 30 2021 Sebastien DAVOULT <d@vou.lt> - 5.3-5.eon
- fix nagios default files #22

* Mon Aug 17 2020 Sebastien DAVOULT <d@vou.lt> - 5.3-4.eon
- fix security Headers
 
* Fri Jun 26 2020 Sebastien DAVOULT <d@vou.lt> - 5.3-3.eon
- Fix Nagios 4.4.3 to 4.4.5 auth pb

* Sun Apr 12 2020 Sebastien DAVOULT <d@vou.lt> - 5.3-2.eon
- Fix update conflict with Thruk

* Fri Apr 10 2020 Sebastien DAVOULT <d@vou.lt> - 5.3-1.eon
- add Thruk themes (symlink)
- Fix Thruk auth vHost

* Wed Oct 30 2019 Sebastien DAVOULT <d@vou.lt> - 5.3-0.eon
- add grafana configuration
- add EON IP address in issue.sh

* Thu Oct 11 2018 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.2-6.eon
- add thruk_templates.cfg file

* Tue Jul 24 2018 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.2-5.eon
- fix nagios group

* Tue Jul 17 2018 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.2-4.eon
- add thruk_templates.cfg file
- fix backup manager config

* Thu Jul 05 2018 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.2-3.eon
- add nagios logos

* Mon Jun 11 2018 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.2-2.eon
- fix backup manager config

* Thu May 17 2018 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.2-1.eon
- fix notifier and cacti

* Fri Nov 24 2017 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.2-0.eon
- packaged for EyesOfNetwork appliance 5.2

* Wed Jan 11 2017 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.1-0.eon
- packaged for EyesOfNetwork appliance 5.1

* Mon Jan 18 2016 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 5.0-0.eon
- packaged for EyesOfNetwork appliance 5.0

* Tue Sep 29 2015 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 4.2-0.eon
- packaged for EyesOfNetwork appliance 4.2

* Thu May 08 2014 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 4.1-1.eon
- suppress ntop and shinken fix

* Mon Jan 06 2014 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 4.1-0.eon
- packaged for EyesOfNetwork appliance 4.1

* Thu Apr 25 2013 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 4.0-0.eon
- packaged for EyesOfNetwork appliance 4.0

* Tue Mar 13 2012 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 3.1-0.eon
- packaged for EyesOfNetwork appliance 3.1

* Mon Apr 25 2011 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 3.0-0.eon
- packaged for EyesOfNetwork appliance 3.0

* Wed Jul 28 2010 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 2.2-0.eon
- packaged for EyesOfNetwork appliance 2.2

* Tue Feb 23 2010 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 2.1-0.eon
- packaged for EyesOfNetwork appliance 2.1

* Mon Apr 13 2009 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 2.0-0.eon
- packaged for EyesOfNetwork appliance 2.0

* Mon Feb 23 2009 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 1.2-0.eon
- updated for ndoutils, nagvis and eonweb-1.2

* Thu Sep 25 2008 Jean-Philippe Levy <jeanphilippe.levy@gmail.com> - 1.0-0.eon
- packaged for EyesOfNetwork appliance
