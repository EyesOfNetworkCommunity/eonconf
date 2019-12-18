Summary: eonconf configures the eyesofnetwork tools
Name: eonconf
Version: 5.3
Release: 0.eon
Source: https://github.com/EyesOfNetworkCommunity/%{name}/archive/master.tar.gz#/%{name}-%{version}.tar.gz
BuildRoot: /tmp/%{name}-%{version}
Group: Applications/System
License: GPL

Requires: createrepo
Requires: chrony
Requires: eonweb, grafana, ansible
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
    %{eonconfdir}/backup-manager/backup-managerconf.sh &>/dev/null
    tar zxvf %{eonconfdir}/nagios/logos.tgz -C %{eondir}/nagios/share/images/logos/ &>/dev/null
    cp -arf %{eonconfdir}/thruk/thruk_templates.cfg %{eondir}/nagios/etc/objects/ &>/dev/null
    chown nagios:eyesofnetwork %{eondir}/nagios/etc/objects/thruk_templates.cfg &>/dev/null
    chmod 664 %{eondir}/nagios/etc/objects/thruk_templates.cfg &>/dev/null
    sed -i 's/^Group=nagios/Group=eyesofnetwork/g' /usr/lib/systemd/system/nagios.service
    systemctl daemon-reload
    systemctl restart nagios
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
