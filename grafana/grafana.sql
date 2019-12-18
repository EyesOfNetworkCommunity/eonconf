/* Create nagios commands for nagflux */
INSERT INTO `nagios_command`(name,line,description)
SELECT 'process-host-perfdata-file-nagflux','/bin/mv /var/log/nagios/host-perfdata /var/log/nagios/spool/nagfluxperfdata/$TIMET$.perfdata.host','process-host-perfdata-file-nagflux' from dual
WHERE NOT EXISTS (SELECT id FROM `nagios_command` WHERE name='process-host-perfdata-file-nagflux');
SELECT @host := `id` FROM `nagios_command` WHERE name='process-host-perfdata-file-nagflux';

INSERT INTO `nagios_command`(name,line,description)
SELECT 'process-service-perfdata-file-nagflux','/bin/mv /var/log/nagios/service-perfdata /var/log/nagios/spool/nagfluxperfdata/$TIMET$.perfdata.service','process-service-perfdata-file-nagflux' FROM dual
WHERE NOT EXISTS (SELECT id FROM `nagios_command` WHERE name='process-service-perfdata-file-nagflux');
SELECT @service := `id` FROM `nagios_command` WHERE name='process-service-perfdata-file-nagflux';

/* Set nagios global configuration for nagflux */
UPDATE `nagios_main_configuration` SET
process_performance_data=1,
host_perfdata_file='/var/log/nagios/host-perfdata',
host_perfdata_file_template='DATATYPE::HOSTPERFDATA\tTIMET::$TIMET$\tHOSTNAME::$HOSTNAME$\tHOSTPERFDATA::$HOSTPERFDATA$\tHOSTCHECKCOMMAND::$HOSTCHECKCOMMAND$',
host_perfdata_file_mode='a',
host_perfdata_file_processing_interval=15,
host_perfdata_file_processing_command=@host,
service_perfdata_file='/var/log/nagios/service-perfdata',
service_perfdata_file_template='DATATYPE::SERVICEPERFDATA\tTIMET::$TIMET$\tHOSTNAME::$HOSTNAME$\tSERVICEDESC::$SERVICEDESC$\tSERVICEPERFDATA::$SERVICEPERFDATA$\tSERVICECHECKCOMMAND::$SERVICECHECKCOMMAND$',
service_perfdata_file_mode='a',
service_perfdata_file_processing_interval=15,
service_perfdata_file_processing_command=@service;

/* Set nagios action_url configuration */
UPDATE `nagios_host_template` SET action_url='/grafana/dashboard/script/histou.js?host=$HOSTNAME$' WHERE action_url LIKE '%histou%' or action_url LIKE '%pnp4nagios%';
UPDATE `nagios_host` SET action_url='/grafana/dashboard/script/histou.js?host=$HOSTNAME$&service=$SERVICEDESC$' WHERE action_url LIKE '%histou%' or action_url LIKE '%pnp4nagios%';
UPDATE `nagios_service_template` SET action_url='/grafana/dashboard/script/histou.js?host=$HOSTNAME$&service=$SERVICEDESC$' WHERE action_url LIKE '%histou%' or action_url LIKE '%pnp4nagios%';
UPDATE `nagios_service` SET action_url='/grafana/dashboard/script/histou.js?host=$HOSTNAME$&service=$SERVICEDESC$' WHERE action_url LIKE '%histou%' or action_url LIKE '%pnp4nagios%';
