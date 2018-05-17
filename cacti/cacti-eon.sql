-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cacti
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aggregate_graph_templates`
--

DROP TABLE IF EXISTS `aggregate_graph_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_graph_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `graph_template_id` int(10) unsigned NOT NULL,
  `gprint_prefix` varchar(64) NOT NULL,
  `graph_type` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `total_type` int(10) unsigned NOT NULL,
  `total_prefix` varchar(64) NOT NULL,
  `order_type` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `graph_template_id` (`graph_template_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Template Definitions for Aggregate Graphs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_graph_templates`
--

LOCK TABLES `aggregate_graph_templates` WRITE;
/*!40000 ALTER TABLE `aggregate_graph_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregate_graph_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregate_graph_templates_graph`
--

DROP TABLE IF EXISTS `aggregate_graph_templates_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_graph_templates_graph` (
  `aggregate_template_id` int(10) unsigned NOT NULL,
  `t_image_format_id` char(2) DEFAULT '',
  `image_format_id` tinyint(1) NOT NULL DEFAULT '0',
  `t_height` char(2) DEFAULT '',
  `height` mediumint(8) NOT NULL DEFAULT '0',
  `t_width` char(2) DEFAULT '',
  `width` mediumint(8) NOT NULL DEFAULT '0',
  `t_upper_limit` char(2) DEFAULT '',
  `upper_limit` varchar(20) NOT NULL DEFAULT '0',
  `t_lower_limit` char(2) DEFAULT '',
  `lower_limit` varchar(20) NOT NULL DEFAULT '0',
  `t_vertical_label` char(2) DEFAULT '',
  `vertical_label` varchar(200) DEFAULT '',
  `t_slope_mode` char(2) DEFAULT '',
  `slope_mode` char(2) DEFAULT 'on',
  `t_auto_scale` char(2) DEFAULT '',
  `auto_scale` char(2) DEFAULT '',
  `t_auto_scale_opts` char(2) DEFAULT '',
  `auto_scale_opts` tinyint(1) NOT NULL DEFAULT '0',
  `t_auto_scale_log` char(2) DEFAULT '',
  `auto_scale_log` char(2) DEFAULT '',
  `t_scale_log_units` char(2) DEFAULT '',
  `scale_log_units` char(2) DEFAULT '',
  `t_auto_scale_rigid` char(2) DEFAULT '',
  `auto_scale_rigid` char(2) DEFAULT '',
  `t_auto_padding` char(2) DEFAULT '',
  `auto_padding` char(2) DEFAULT '',
  `t_base_value` char(2) DEFAULT '',
  `base_value` mediumint(8) NOT NULL DEFAULT '0',
  `t_grouping` char(2) DEFAULT '',
  `grouping` char(2) NOT NULL DEFAULT '',
  `t_unit_value` char(2) DEFAULT '',
  `unit_value` varchar(20) DEFAULT '',
  `t_unit_exponent_value` char(2) DEFAULT '',
  `unit_exponent_value` varchar(5) NOT NULL DEFAULT '',
  `t_alt_y_grid` char(2) DEFAULT '',
  `alt_y_grid` char(2) DEFAULT NULL,
  `t_right_axis` char(2) DEFAULT '',
  `right_axis` varchar(20) DEFAULT NULL,
  `t_right_axis_label` char(2) DEFAULT '',
  `right_axis_label` varchar(200) DEFAULT NULL,
  `t_right_axis_format` char(2) DEFAULT '',
  `right_axis_format` mediumint(8) DEFAULT NULL,
  `t_right_axis_formatter` char(2) DEFAULT '',
  `right_axis_formatter` varchar(10) DEFAULT NULL,
  `t_left_axis_formatter` char(2) DEFAULT '',
  `left_axis_formatter` varchar(10) DEFAULT NULL,
  `t_no_gridfit` char(2) DEFAULT '',
  `no_gridfit` char(2) DEFAULT NULL,
  `t_unit_length` char(2) DEFAULT '',
  `unit_length` varchar(10) DEFAULT NULL,
  `t_tab_width` char(2) DEFAULT '',
  `tab_width` varchar(20) DEFAULT '30',
  `t_dynamic_labels` char(2) DEFAULT '',
  `dynamic_labels` char(2) DEFAULT NULL,
  `t_force_rules_legend` char(2) DEFAULT '',
  `force_rules_legend` char(2) DEFAULT NULL,
  `t_legend_position` char(2) DEFAULT '',
  `legend_position` varchar(10) DEFAULT NULL,
  `t_legend_direction` char(2) DEFAULT '',
  `legend_direction` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`aggregate_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Aggregate Template Graph Data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_graph_templates_graph`
--

LOCK TABLES `aggregate_graph_templates_graph` WRITE;
/*!40000 ALTER TABLE `aggregate_graph_templates_graph` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregate_graph_templates_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregate_graph_templates_item`
--

DROP TABLE IF EXISTS `aggregate_graph_templates_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_graph_templates_item` (
  `aggregate_template_id` int(10) unsigned NOT NULL,
  `graph_templates_item_id` int(10) unsigned NOT NULL,
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `color_template` int(11) NOT NULL,
  `t_graph_type_id` char(2) DEFAULT '',
  `graph_type_id` tinyint(3) NOT NULL DEFAULT '0',
  `t_cdef_id` char(2) DEFAULT '',
  `cdef_id` mediumint(8) unsigned DEFAULT NULL,
  `item_skip` char(2) NOT NULL,
  `item_total` char(2) NOT NULL,
  PRIMARY KEY (`aggregate_template_id`,`graph_templates_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Aggregate Template Graph Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_graph_templates_item`
--

LOCK TABLES `aggregate_graph_templates_item` WRITE;
/*!40000 ALTER TABLE `aggregate_graph_templates_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregate_graph_templates_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregate_graphs`
--

DROP TABLE IF EXISTS `aggregate_graphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_graphs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aggregate_template_id` int(10) unsigned NOT NULL,
  `template_propogation` char(2) NOT NULL DEFAULT '',
  `local_graph_id` int(10) unsigned NOT NULL,
  `title_format` varchar(128) NOT NULL,
  `graph_template_id` int(10) unsigned NOT NULL,
  `gprint_prefix` varchar(64) NOT NULL,
  `graph_type` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `total_type` int(10) unsigned NOT NULL,
  `total_prefix` varchar(64) NOT NULL,
  `order_type` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aggregate_template_id` (`aggregate_template_id`),
  KEY `local_graph_id` (`local_graph_id`),
  KEY `title_format` (`title_format`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Aggregate Graph Definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_graphs`
--

LOCK TABLES `aggregate_graphs` WRITE;
/*!40000 ALTER TABLE `aggregate_graphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregate_graphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregate_graphs_graph_item`
--

DROP TABLE IF EXISTS `aggregate_graphs_graph_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_graphs_graph_item` (
  `aggregate_graph_id` int(10) unsigned NOT NULL,
  `graph_templates_item_id` int(10) unsigned NOT NULL,
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `color_template` int(11) unsigned NOT NULL,
  `t_graph_type_id` char(2) DEFAULT '',
  `graph_type_id` tinyint(3) NOT NULL DEFAULT '0',
  `t_cdef_id` char(2) DEFAULT '',
  `cdef_id` mediumint(8) unsigned DEFAULT NULL,
  `item_skip` char(2) NOT NULL,
  `item_total` char(2) NOT NULL,
  PRIMARY KEY (`aggregate_graph_id`,`graph_templates_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Aggregate Graph Graph Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_graphs_graph_item`
--

LOCK TABLES `aggregate_graphs_graph_item` WRITE;
/*!40000 ALTER TABLE `aggregate_graphs_graph_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregate_graphs_graph_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregate_graphs_items`
--

DROP TABLE IF EXISTS `aggregate_graphs_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_graphs_items` (
  `aggregate_graph_id` int(10) unsigned NOT NULL,
  `local_graph_id` int(10) unsigned NOT NULL,
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aggregate_graph_id`,`local_graph_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Aggregate Graph Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_graphs_items`
--

LOCK TABLES `aggregate_graphs_items` WRITE;
/*!40000 ALTER TABLE `aggregate_graphs_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `aggregate_graphs_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_devices`
--

DROP TABLE IF EXISTS `automation_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_devices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `network_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(17) NOT NULL DEFAULT '',
  `snmp_community` varchar(100) NOT NULL DEFAULT '',
  `snmp_version` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `snmp_port` mediumint(5) unsigned NOT NULL DEFAULT '161',
  `snmp_username` varchar(50) DEFAULT NULL,
  `snmp_password` varchar(50) DEFAULT NULL,
  `snmp_auth_protocol` char(6) DEFAULT '',
  `snmp_priv_passphrase` varchar(200) DEFAULT '',
  `snmp_priv_protocol` char(6) DEFAULT '',
  `snmp_context` varchar(64) DEFAULT '',
  `snmp_engine_id` varchar(64) DEFAULT '',
  `sysName` varchar(100) NOT NULL DEFAULT '',
  `sysLocation` varchar(255) NOT NULL DEFAULT '',
  `sysContact` varchar(255) NOT NULL DEFAULT '',
  `sysDescr` varchar(255) NOT NULL DEFAULT '',
  `sysUptime` int(32) NOT NULL DEFAULT '0',
  `os` varchar(64) NOT NULL DEFAULT '',
  `snmp` tinyint(4) NOT NULL DEFAULT '0',
  `known` tinyint(4) NOT NULL DEFAULT '0',
  `up` tinyint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`),
  KEY `hostname` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table of Discovered Devices';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_devices`
--

LOCK TABLES `automation_devices` WRITE;
/*!40000 ALTER TABLE `automation_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `automation_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_graph_rule_items`
--

DROP TABLE IF EXISTS `automation_graph_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_graph_rule_items` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` smallint(3) unsigned NOT NULL DEFAULT '0',
  `operation` smallint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  `operator` smallint(3) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Automation Graph Rule Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_graph_rule_items`
--

LOCK TABLES `automation_graph_rule_items` WRITE;
/*!40000 ALTER TABLE `automation_graph_rule_items` DISABLE KEYS */;
INSERT INTO `automation_graph_rule_items` VALUES (1,1,1,0,'ifOperStatus',7,'Up'),(2,1,2,1,'ifIP',16,''),(3,1,3,1,'ifHwAddr',16,''),(4,2,1,0,'ifOperStatus',7,'Up'),(5,2,2,1,'ifIP',16,''),(6,2,3,1,'ifHwAddr',16,'');
/*!40000 ALTER TABLE `automation_graph_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_graph_rules`
--

DROP TABLE IF EXISTS `automation_graph_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_graph_rules` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `snmp_query_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `graph_type_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` char(2) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`(171))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Automation Graph Rules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_graph_rules`
--

LOCK TABLES `automation_graph_rules` WRITE;
/*!40000 ALTER TABLE `automation_graph_rules` DISABLE KEYS */;
INSERT INTO `automation_graph_rules` VALUES (1,'Traffic 64 bit Server',1,14,''),(2,'Traffic 64 bit Server Linux',1,14,''),(3,'Disk Space',8,18,'');
/*!40000 ALTER TABLE `automation_graph_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_ips`
--

DROP TABLE IF EXISTS `automation_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_ips` (
  `ip_address` varchar(20) NOT NULL DEFAULT '',
  `hostname` varchar(100) DEFAULT '',
  `network_id` int(10) unsigned DEFAULT NULL,
  `pid` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `thread` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ip_address`),
  KEY `pid` (`pid`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COMMENT='List of discoverable ip addresses used for scanning';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_ips`
--

LOCK TABLES `automation_ips` WRITE;
/*!40000 ALTER TABLE `automation_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `automation_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_match_rule_items`
--

DROP TABLE IF EXISTS `automation_match_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_match_rule_items` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_type` smallint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` smallint(3) unsigned NOT NULL DEFAULT '0',
  `operation` smallint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  `operator` smallint(3) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='Automation Match Rule Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_match_rule_items`
--

LOCK TABLES `automation_match_rule_items` WRITE;
/*!40000 ALTER TABLE `automation_match_rule_items` DISABLE KEYS */;
INSERT INTO `automation_match_rule_items` VALUES (1,1,1,1,0,'h.description',14,''),(2,1,1,2,1,'h.snmp_version',12,'2'),(3,1,3,1,0,'ht.name',1,'Linux'),(4,2,1,1,0,'ht.name',1,'Linux'),(5,2,1,2,1,'h.snmp_version',12,'2'),(6,2,3,1,0,'ht.name',1,'SNMP'),(7,2,3,2,1,'gt.name',1,'Traffic');
/*!40000 ALTER TABLE `automation_match_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_networks`
--

DROP TABLE IF EXISTS `automation_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_networks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poller_id` int(10) unsigned DEFAULT '1',
  `site_id` int(10) unsigned DEFAULT '1',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT 'The name for this network',
  `subnet_range` varchar(1024) NOT NULL DEFAULT '',
  `dns_servers` varchar(128) NOT NULL DEFAULT '' COMMENT 'DNS Servers to use for name resolution',
  `enabled` char(2) DEFAULT '',
  `snmp_id` int(10) unsigned DEFAULT NULL,
  `enable_netbios` char(2) DEFAULT '',
  `add_to_cacti` char(2) DEFAULT '',
  `total_ips` int(10) unsigned DEFAULT '0',
  `up_hosts` int(10) unsigned NOT NULL DEFAULT '0',
  `snmp_hosts` int(10) unsigned NOT NULL DEFAULT '0',
  `ping_method` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The ping method (ICMP:TCP:UDP)',
  `ping_port` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'For TCP:UDP the port to ping',
  `ping_timeout` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The ping timeout in seconds',
  `ping_retries` int(10) unsigned DEFAULT '0',
  `sched_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Schedule type: manual or automatic',
  `threads` int(10) unsigned DEFAULT '1',
  `run_limit` int(10) unsigned DEFAULT '0' COMMENT 'The maximum runtime for the discovery',
  `start_at` varchar(20) DEFAULT NULL,
  `next_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recur_every` int(10) unsigned DEFAULT '1',
  `day_of_week` varchar(45) DEFAULT NULL COMMENT 'The days of week to run in crontab format',
  `month` varchar(45) DEFAULT NULL COMMENT 'The months to run in crontab format',
  `day_of_month` varchar(45) DEFAULT NULL COMMENT 'The days of month to run in crontab format',
  `monthly_week` varchar(45) DEFAULT NULL,
  `monthly_day` varchar(45) DEFAULT NULL,
  `last_runtime` double NOT NULL DEFAULT '0' COMMENT 'The last runtime for discovery',
  `last_started` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the discovery last started',
  `last_status` varchar(128) NOT NULL DEFAULT '' COMMENT 'The last exit message if any',
  `rerun_data_queries` char(2) DEFAULT NULL COMMENT 'Rerun data queries or not for existing hosts',
  PRIMARY KEY (`id`),
  KEY `poller_id` (`poller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores scanning subnet definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_networks`
--

LOCK TABLES `automation_networks` WRITE;
/*!40000 ALTER TABLE `automation_networks` DISABLE KEYS */;
/*!40000 ALTER TABLE `automation_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_processes`
--

DROP TABLE IF EXISTS `automation_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_processes` (
  `pid` int(8) unsigned NOT NULL,
  `poller_id` int(10) unsigned DEFAULT '1',
  `network_id` int(10) unsigned NOT NULL DEFAULT '0',
  `task` varchar(20) DEFAULT '',
  `status` varchar(20) DEFAULT NULL,
  `command` varchar(20) DEFAULT NULL,
  `up_hosts` int(10) unsigned DEFAULT '0',
  `snmp_hosts` int(10) unsigned DEFAULT '0',
  `heartbeat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pid`,`network_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COMMENT='Table tracking active poller processes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_processes`
--

LOCK TABLES `automation_processes` WRITE;
/*!40000 ALTER TABLE `automation_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `automation_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_snmp`
--

DROP TABLE IF EXISTS `automation_snmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_snmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Group of SNMP Option Sets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_snmp`
--

LOCK TABLES `automation_snmp` WRITE;
/*!40000 ALTER TABLE `automation_snmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `automation_snmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_snmp_items`
--

DROP TABLE IF EXISTS `automation_snmp_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_snmp_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snmp_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sequence` int(10) unsigned NOT NULL DEFAULT '0',
  `snmp_version` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `snmp_community` varchar(100) NOT NULL DEFAULT '',
  `snmp_port` mediumint(5) unsigned NOT NULL DEFAULT '161',
  `snmp_timeout` int(10) unsigned NOT NULL DEFAULT '500',
  `snmp_retries` tinyint(11) unsigned NOT NULL DEFAULT '3',
  `max_oids` int(12) unsigned DEFAULT '10',
  `snmp_username` varchar(50) DEFAULT NULL,
  `snmp_password` varchar(50) DEFAULT NULL,
  `snmp_auth_protocol` char(6) DEFAULT '',
  `snmp_priv_passphrase` varchar(200) DEFAULT '',
  `snmp_priv_protocol` char(6) DEFAULT '',
  `snmp_context` varchar(64) DEFAULT '',
  `snmp_engine_id` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`,`snmp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Set of SNMP Options';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_snmp_items`
--

LOCK TABLES `automation_snmp_items` WRITE;
/*!40000 ALTER TABLE `automation_snmp_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `automation_snmp_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_templates`
--

DROP TABLE IF EXISTS `automation_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_templates` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `host_template` int(8) NOT NULL DEFAULT '0',
  `availability_method` int(10) unsigned DEFAULT '2',
  `sysDescr` varchar(255) DEFAULT '',
  `sysName` varchar(255) DEFAULT '',
  `sysOid` varchar(60) DEFAULT '',
  `sequence` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Templates of SNMP Sys variables used for automation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_templates`
--

LOCK TABLES `automation_templates` WRITE;
/*!40000 ALTER TABLE `automation_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `automation_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_tree_rule_items`
--

DROP TABLE IF EXISTS `automation_tree_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_tree_rule_items` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` smallint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  `sort_type` smallint(3) unsigned NOT NULL DEFAULT '0',
  `propagate_changes` char(2) DEFAULT '',
  `search_pattern` varchar(255) NOT NULL DEFAULT '',
  `replace_pattern` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Automation Tree Rule Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_tree_rule_items`
--

LOCK TABLES `automation_tree_rule_items` WRITE;
/*!40000 ALTER TABLE `automation_tree_rule_items` DISABLE KEYS */;
INSERT INTO `automation_tree_rule_items` VALUES (1,1,1,'ht.name',1,'','^(.*)\\s*Linux\\s*(.*)$','${1}\\n${2}'),(2,1,2,'h.hostname',1,'','^(\\w*)\\s*(\\w*)\\s*(\\w*).*$','${1}\\n${2}\\n${3}'),(3,2,1,'0',2,'on','Traffic',''),(4,2,2,'gtg.title_cache',1,'','^(.*)\\s*-\\s*Traffic -\\s*(.*)$','${1}\\n${2}');
/*!40000 ALTER TABLE `automation_tree_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automation_tree_rules`
--

DROP TABLE IF EXISTS `automation_tree_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automation_tree_rules` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `tree_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `tree_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `leaf_type` smallint(3) unsigned NOT NULL DEFAULT '0',
  `host_grouping_type` smallint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` char(2) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`(171))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Automation Tree Rules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automation_tree_rules`
--

LOCK TABLES `automation_tree_rules` WRITE;
/*!40000 ALTER TABLE `automation_tree_rules` DISABLE KEYS */;
INSERT INTO `automation_tree_rules` VALUES (1,'New Device',1,0,3,1,''),(2,'New Graph',1,0,2,0,'');
/*!40000 ALTER TABLE `automation_tree_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdef`
--

DROP TABLE IF EXISTS `cdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdef` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `system` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `name` (`name`(171))
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdef`
--

LOCK TABLES `cdef` WRITE;
/*!40000 ALTER TABLE `cdef` DISABLE KEYS */;
INSERT INTO `cdef` VALUES (3,'3d352eed9fa8f7b2791205b3273708c7',0,'Make Stack Negative'),(4,'e961cc8ec04fda6ed4981cf5ad501aa5',0,'Make Per 5 Minutes'),(12,'f1ac79f05f255c02f914c920f1038c54',0,'Total All Data Sources'),(2,'73f95f8b77b5508157d64047342c421e',0,'Turn Bytes into Bits'),(14,'634a23af5e78af0964e8d33b1a4ed26b',0,'Multiply by 1024'),(15,'068984b5ccdfd2048869efae5166f722',0,'Total All Data Sources, Multiply by 1024');
/*!40000 ALTER TABLE `cdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdef_items`
--

DROP TABLE IF EXISTS `cdef_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdef_items` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `cdef_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cdef_id_sequence` (`cdef_id`,`sequence`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdef_items`
--

LOCK TABLES `cdef_items` WRITE;
/*!40000 ALTER TABLE `cdef_items` DISABLE KEYS */;
INSERT INTO `cdef_items` VALUES (7,'9bbf6b792507bb9bb17d2af0970f9be9',2,1,4,'CURRENT_DATA_SOURCE'),(9,'a4b8eb2c3bf4920a3ef571a7a004be53',2,2,6,'8'),(8,'caa4e023ac2d7b1c4b4c8c4adfd55dfe',2,3,2,'3'),(10,'c888c9fe6b62c26c4bfe23e18991731d',3,1,4,'CURRENT_DATA_SOURCE'),(11,'1e1d0b29a94e08b648c8f053715442a0',3,3,2,'3'),(12,'4355c197998c7f8b285be7821ddc6da4',3,2,6,'-1'),(13,'40bb7a1143b0f2e2efca14eb356236de',4,1,4,'CURRENT_DATA_SOURCE'),(14,'42686ea0925c0220924b7d333599cd67',4,3,2,'3'),(15,'faf1b148b2c0e0527362ed5b8ca1d351',4,2,6,'300'),(16,'0ef6b8a42dc83b4e43e437960fccd2ea',12,1,4,'ALL_DATA_SOURCES_NODUPS'),(18,'86370cfa0008fe8c56b28be80ee39a40',14,1,4,'CURRENT_DATA_SOURCE'),(19,'9a35cc60d47691af37f6fddf02064e20',14,2,6,'1024'),(20,'5d7a7941ec0440b257e5598a27dd1688',14,3,2,'3'),(21,'44fd595c60539ff0f5817731d9f43a85',15,1,4,'ALL_DATA_SOURCES_NODUPS'),(22,'aa38be265e5ac31783e57ce6f9314e9a',15,2,6,'1024'),(23,'204423d4b2598f1f7252eea19458345c',15,3,2,'3');
/*!40000 ALTER TABLE `cdef_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_template_items`
--

DROP TABLE IF EXISTS `color_template_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_template_items` (
  `color_template_item_id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `color_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `color_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`color_template_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COMMENT='Color Items for Color Templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_template_items`
--

LOCK TABLES `color_template_items` WRITE;
/*!40000 ALTER TABLE `color_template_items` DISABLE KEYS */;
INSERT INTO `color_template_items` VALUES (1,1,4,1),(2,1,24,2),(3,1,98,3),(4,1,25,4),(5,2,25,1),(6,2,29,2),(7,2,30,3),(8,2,31,4),(9,2,33,5),(10,2,35,6),(11,2,41,7),(12,2,9,8),(13,3,15,1),(14,3,31,2),(15,3,28,3),(16,3,8,4),(17,3,34,5),(18,3,33,6),(19,3,35,7),(20,3,41,8),(21,3,36,9),(22,3,42,10),(23,3,44,11),(24,3,48,12),(25,3,9,13),(26,3,49,14),(27,3,51,15),(28,3,52,16),(29,4,76,1),(30,4,84,2),(31,4,89,3),(32,4,17,4),(33,4,86,5),(34,4,88,6),(35,4,90,7),(36,4,94,8),(37,4,96,9),(38,4,93,10),(39,4,91,11),(40,4,22,12),(41,4,12,13),(42,4,95,14),(43,4,6,15),(44,4,92,16);
/*!40000 ALTER TABLE `color_template_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_templates`
--

DROP TABLE IF EXISTS `color_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_templates` (
  `color_template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`color_template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Color Templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_templates`
--

LOCK TABLES `color_templates` WRITE;
/*!40000 ALTER TABLE `color_templates` DISABLE KEYS */;
INSERT INTO `color_templates` VALUES (1,'Yellow: light -> dark, 4 colors'),(2,'Red: light yellow > dark red, 8 colors'),(3,'Red: light -> dark, 16 colors'),(4,'Green: dark -> light, 16 colors');
/*!40000 ALTER TABLE `color_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT '',
  `hex` varchar(6) NOT NULL DEFAULT '',
  `read_only` char(2) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hex` (`hex`)
) ENGINE=MyISAM AUTO_INCREMENT=445 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Black','000000','on'),(2,'White','FFFFFF','on'),(4,'','FAFD9E',''),(5,'Silver','C0C0C0','on'),(6,'','74C366',''),(7,'','6DC8FE',''),(8,'','EA8F00',''),(9,'Red','FF0000','on'),(10,'','4444FF',''),(11,'Magenta','FF00FF','on'),(12,'Lime Green','00FF00','on'),(13,'','8D85F3',''),(14,'','AD3B6E',''),(15,'','EACC00',''),(16,'','12B3B5',''),(17,'','157419',''),(18,'','C4FD3D',''),(19,'','817C4E',''),(20,'','002A97',''),(21,'Blue','0000FF','on'),(22,'','00CF00',''),(24,'','F9FD5F',''),(25,'','FFF200',''),(26,'','CCBB00',''),(27,'','837C04',''),(28,'','EAAF00',''),(29,'','FFD660',''),(30,'','FFC73B',''),(31,'','FFAB00',''),(33,'','FF7D00',''),(34,'','ED7600',''),(35,'','FF5700',''),(36,'','EE5019',''),(37,'','B1441E',''),(38,'','FFC3C0',''),(39,'','FF897C',''),(40,'','FF6044',''),(41,'','FF4105',''),(42,'','DA4725',''),(43,'','942D0C',''),(44,'','FF3932',''),(45,'','862F2F',''),(46,'','FF5576',''),(47,'','562B29',''),(48,'','F51D30',''),(49,'','DE0056',''),(50,'','ED5394',''),(51,'','B90054',''),(52,'','8F005C',''),(53,'','F24AC8',''),(54,'','E8CDEF',''),(55,'','D8ACE0',''),(56,'','A150AA',''),(57,'','750F7D',''),(58,'','8D00BA',''),(59,'','623465',''),(60,'','55009D',''),(61,'','3D168B',''),(62,'','311F4E',''),(63,'','D2D8F9',''),(64,'','9FA4EE',''),(65,'','6557D0',''),(66,'','4123A1',''),(67,'','4668E4',''),(68,'','0D006A',''),(69,'','00004D',''),(70,'','001D61',''),(71,'','00234B',''),(72,'','002A8F',''),(73,'','2175D9',''),(74,'','7CB3F1',''),(75,'','005199',''),(76,'','004359',''),(77,'','00A0C1',''),(78,'','007283',''),(79,'','00BED9',''),(80,'','AFECED',''),(81,'','55D6D3',''),(82,'','00BBB4',''),(83,'','009485',''),(84,'','005D57',''),(85,'','008A77',''),(86,'','008A6D',''),(87,'','00B99B',''),(88,'','009F67',''),(89,'','00694A',''),(90,'','00A348',''),(91,'','00BF47',''),(92,'','96E78A',''),(93,'','00BD27',''),(94,'','35962B',''),(95,'','7EE600',''),(96,'','6EA100',''),(97,'','CAF100',''),(98,'','F5F800',''),(99,'','CDCFC4',''),(100,'','BCBEB3',''),(101,'','AAABA1',''),(102,'','8F9286',''),(103,'','797C6E',''),(104,'','2E3127',''),(105,'Night','0C090A','on'),(106,'Gunmetal','2C3539','on'),(107,'Midnight','2B1B17','on'),(108,'Charcoal','34282C','on'),(109,'Dark Slate Grey','25383C','on'),(110,'Oil','3B3131','on'),(111,'Black Cat','413839','on'),(112,'Iridium','3D3C3A','on'),(113,'Black Eel','463E3F','on'),(114,'Black Cow','4C4646','on'),(115,'Gray Wolf','504A4B','on'),(116,'Vampire Gray','565051','on'),(117,'Gray Dolphin','5C5858','on'),(118,'Carbon Gray','625D5D','on'),(119,'Ash Gray','666362','on'),(120,'Cloudy Gray','6D6968','on'),(121,'Smokey Gray','726E6D','on'),(122,'Gray','736F6E','on'),(123,'Granite','837E7C','on'),(124,'Battleship Gray','848482','on'),(125,'Gray Cloud','B6B6B4','on'),(126,'Gray Goose','D1D0CE','on'),(127,'Platinum','E5E4E2','on'),(128,'Metallic Silver','BCC6CC','on'),(129,'Blue Gray','98AFC7','on'),(130,'Light Slate Gray','6D7B8D','on'),(131,'Slate Gray','657383','on'),(132,'Jet Gray','616D7E','on'),(133,'Mist Blue','646D7E','on'),(134,'Marble Blue','566D7E','on'),(135,'Slate Blue','737CA1','on'),(136,'Steel Blue','4863A0','on'),(137,'Blue Jay','2B547E','on'),(138,'Dark Slate Blue','2B3856','on'),(139,'Midnight Blue','151B54','on'),(140,'Navy Blue','000080','on'),(141,'Blue Whale','342D7E','on'),(142,'Lapis Blue','15317E','on'),(143,'Cornflower Blue','151B8D','on'),(144,'Earth Blue','0000A0','on'),(145,'Cobalt Blue','0020C2','on'),(146,'Blueberry Blue','0041C2','on'),(147,'Sapphire Blue','2554C7','on'),(148,'Blue Eyes','1569C7','on'),(149,'Royal Blue','2B60DE','on'),(150,'Blue Orchid','1F45FC','on'),(151,'Blue Lotus','6960EC','on'),(152,'Light Slate Blue','736AFF','on'),(153,'Slate Blue','357EC7','on'),(154,'Glacial Blue Ice','368BC1','on'),(155,'Silk Blue','488AC7','on'),(156,'Blue Ivy','3090C7','on'),(157,'Blue Koi','659EC7','on'),(158,'Columbia Blue','87AFC7','on'),(159,'Baby Blue','95B9C7','on'),(160,'Light Steel Blue','728FCE','on'),(161,'Ocean Blue','2B65EC','on'),(162,'Blue Ribbon','306EFF','on'),(163,'Blue Dress','157DEC','on'),(164,'Dodger Blue','1589FF','on'),(165,'Cornflower Blue','6495ED','on'),(166,'Sky Blue','6698FF','on'),(167,'Butterfly Blue','38ACEC','on'),(168,'Iceberg','56A5EC','on'),(169,'Crystal Blue','5CB3FF','on'),(170,'Deep Sky Blue','3BB9FF','on'),(171,'Denim Blue','79BAEC','on'),(172,'Light Sky Blue','82CAFA','on'),(173,'Day Sky Blue','82CAFF','on'),(174,'Jeans Blue','A0CFEC','on'),(175,'Blue Angel','B7CEEC','on'),(176,'Pastel Blue','B4CFEC','on'),(177,'Sea Blue','C2DFFF','on'),(178,'Powder Blue','C6DEFF','on'),(179,'Coral Blue','AFDCEC','on'),(180,'Light Blue','ADDFFF','on'),(181,'Robin Egg Blue','BDEDFF','on'),(182,'Pale Blue Lily','CFECEC','on'),(183,'Light Cyan','E0FFFF','on'),(184,'Water','EBF4FA','on'),(185,'Alice Blue','F0F8FF','on'),(186,'Azure','F0FFFF','on'),(187,'Light Slate','CCFFFF','on'),(188,'Light Aquamarine','93FFE8','on'),(189,'Electric Blue','9AFEFF','on'),(190,'Aquamarine','7FFFD4','on'),(191,'Cyan or Aqua','00FFFF','on'),(192,'Tron Blue','7DFDFE','on'),(193,'Blue Zircon','57FEFF','on'),(194,'Blue Lagoon','8EEBEC','on'),(195,'Celeste','50EBEC','on'),(196,'Blue Diamond','4EE2EC','on'),(197,'Tiffany Blue','81D8D0','on'),(198,'Cyan Opaque','92C7C7','on'),(199,'Blue Hosta','77BFC7','on'),(200,'Northern Lights Blue','78C7C7','on'),(201,'Medium Turquoise','48CCCD','on'),(202,'Turquoise','43C6DB','on'),(203,'Jellyfish','46C7C7','on'),(204,'Macaw Blue Green','43BFC7','on'),(205,'Light Sea Green','3EA99F','on'),(206,'Dark Turquoise','3B9C9C','on'),(207,'Sea Turtle Green','438D80','on'),(208,'Medium Aquamarine','348781','on'),(209,'Greenish Blue','307D7E','on'),(210,'Grayish Turquoise','5E7D7E','on'),(211,'Beetle Green','4C787E','on'),(212,'Teal','008080','on'),(213,'Sea Green','4E8975','on'),(214,'Camouflage Green','78866B','on'),(215,'Sage Green','848b79','on'),(216,'Hazel Green','617C58','on'),(217,'Venom Green','728C00','on'),(218,'Fern Green','667C26','on'),(219,'Dark Forrest Green','254117','on'),(220,'Medium Sea Green','306754','on'),(221,'Medium Forest Green','347235','on'),(222,'Seaweed Green','437C17','on'),(223,'Pine Green','387C44','on'),(224,'Jungle Green','347C2C','on'),(225,'Shamrock Green','347C17','on'),(226,'Medium Spring Green','348017','on'),(227,'Forest Green','4E9258','on'),(228,'Green Onion','6AA121','on'),(229,'Spring Green','4AA02C','on'),(230,'Lime Green','41A317','on'),(231,'Clover Green','3EA055','on'),(232,'Green Snake','6CBB3C','on'),(233,'Alien Green','6CC417','on'),(234,'Green Apple','4CC417','on'),(235,'Yellow Green','52D017','on'),(236,'Kelly Green','4CC552','on'),(237,'Zombie Green','54C571','on'),(238,'Frog Green','99C68E','on'),(239,'Green Peas','89C35C','on'),(240,'Dollar Bill Green','85BB65','on'),(241,'Dark Sea Green','8BB381','on'),(242,'Iguana Green','9CB071','on'),(243,'Avocado Green','B2C248','on'),(244,'Pistachio Green','9DC209','on'),(245,'Salad Green','A1C935','on'),(246,'Hummingbird Green','7FE817','on'),(247,'Nebula Green','59E817','on'),(248,'Stoplight Go Green','57E964','on'),(249,'Algae Green','64E986','on'),(250,'Jade Green','5EFB6E','on'),(251,'Emerald Green','5FFB17','on'),(252,'Lawn Green','87F717','on'),(253,'Chartreuse','8AFB17','on'),(254,'Dragon Green','6AFB92','on'),(255,'Mint Green','98FF98','on'),(256,'Green Thumb','B5EAAA','on'),(257,'Light Jade','C3FDB8','on'),(258,'Tea Green','CCFB5D','on'),(259,'Green Yellow','B1FB17','on'),(260,'Slime Green','BCE954','on'),(261,'Goldenrod','EDDA74','on'),(262,'Harvest Gold','EDE275','on'),(263,'Sun Yellow','FFE87C','on'),(264,'Yellow','FFFF00','on'),(265,'Corn Yellow','FFF380','on'),(266,'Parchment','FFFFC2','on'),(267,'Cream','FFFFCC','on'),(268,'Lemon Chiffon','FFF8C6','on'),(269,'Cornsilk','FFF8DC','on'),(270,'Beige','F5F5DC','on'),(271,'Blonde','FBF6D9','on'),(272,'Antique White','FAEBD7','on'),(273,'Champagne','F7E7CE','on'),(274,'Blanched Almond','FFEBCD','on'),(275,'Vanilla','F3E5AB','on'),(276,'Tan Brown','ECE5B6','on'),(277,'Peach','FFE5B4','on'),(278,'Mustard','FFDB58','on'),(279,'Rubber Ducky Yellow','FFD801','on'),(280,'Bright Gold','FDD017','on'),(281,'Golden Brown','EAC117','on'),(282,'Macaroni and Cheese','F2BB66','on'),(283,'Saffron','FBB917','on'),(284,'Beer','FBB117','on'),(285,'Cantaloupe','FFA62F','on'),(286,'Bee Yellow','E9AB17','on'),(287,'Brown Sugar','E2A76F','on'),(288,'Burly Wood','DEB887','on'),(289,'Deep Peach','FFCBA4','on'),(290,'Ginger Brown','C9BE62','on'),(291,'School Bus Yellow','E8A317','on'),(292,'Sandy Brown','EE9A4D','on'),(293,'Fall Leaf Brown','C8B560','on'),(294,'Orange Gold','D4A017','on'),(295,'Sand','C2B280','on'),(296,'Cookie Brown','C7A317','on'),(297,'Caramel','C68E17','on'),(298,'Brass','B5A642','on'),(299,'Khaki','ADA96E','on'),(300,'Camel Brown','C19A6B','on'),(301,'Bronze','CD7F32','on'),(302,'Tiger Orange','C88141','on'),(303,'Cinnamon','C58917','on'),(304,'Bullet Shell','AF9B60','on'),(305,'Dark Goldenrod','AF7817','on'),(306,'Copper','B87333','on'),(307,'Wood','966F33','on'),(308,'Oak Brown','806517','on'),(309,'Moccasin','827839','on'),(310,'Army Brown','827B60','on'),(311,'Sandstone','786D5F','on'),(312,'Mocha','493D26','on'),(313,'Taupe','483C32','on'),(314,'Coffee','6F4E37','on'),(315,'Brown Bear','835C3B','on'),(316,'Red Dirt','7F5217','on'),(317,'Sepia','7F462C','on'),(318,'Orange Salmon','C47451','on'),(319,'Rust','C36241','on'),(320,'Red Fox','C35817','on'),(321,'Chocolate','C85A17','on'),(322,'Sedona','CC6600','on'),(323,'Papaya Orange','E56717','on'),(324,'Halloween Orange','E66C2C','on'),(325,'Pumpkin Orange','F87217','on'),(326,'Construction Cone Orange','F87431','on'),(327,'Sunrise Orange','E67451','on'),(328,'Mango Orange','FF8040','on'),(329,'Dark Orange','F88017','on'),(330,'Coral','FF7F50','on'),(331,'Basket Ball Orange','F88158','on'),(332,'Light Salmon','F9966B','on'),(333,'Tangerine','E78A61','on'),(334,'Dark Salmon','E18B6B','on'),(335,'Light Coral','E77471','on'),(336,'Bean Red','F75D59','on'),(337,'Valentine Red','E55451','on'),(338,'Shocking Orange','E55B3C','on'),(339,'Scarlet','FF2400','on'),(340,'Ruby Red','F62217','on'),(341,'Ferrari Red','F70D1A','on'),(342,'Fire Engine Red','F62817','on'),(343,'Lava Red','E42217','on'),(344,'Love Red','E41B17','on'),(345,'Grapefruit','DC381F','on'),(346,'Chestnut Red','C34A2C','on'),(347,'Cherry Red','C24641','on'),(348,'Mahogany','C04000','on'),(349,'Chilli Pepper','C11B17','on'),(350,'Cranberry','9F000F','on'),(351,'Red Wine','990012','on'),(352,'Burgundy','8C001A','on'),(353,'Chestnut','954535','on'),(354,'Blood Red','7E3517','on'),(355,'Sienna','8A4117','on'),(356,'Sangria','7E3817','on'),(357,'Firebrick','800517','on'),(358,'Maroon','810541','on'),(359,'Plum Pie','7D0541','on'),(360,'Velvet Maroon','7E354D','on'),(361,'Plum Velvet','7D0552','on'),(362,'Rosy Finch','7F4E52','on'),(363,'Puce','7F5A58','on'),(364,'Dull Purple','7F525D','on'),(365,'Rosy Brown','B38481','on'),(366,'Khaki Rose','C5908E','on'),(367,'Pink Bow','C48189','on'),(368,'Lipstick Pink','C48793','on'),(369,'Rose','E8ADAA','on'),(370,'Desert Sand','EDC9AF','on'),(371,'Pig Pink','FDD7E4','on'),(372,'Cotton Candy','FCDFFF','on'),(373,'Pink Bubblegum','FFDFDD','on'),(374,'Misty Rose','FBBBB9','on'),(375,'Pink','FAAFBE','on'),(376,'Light Pink','FAAFBA','on'),(377,'Flamingo Pink','F9A7B0','on'),(378,'Pink Rose','E7A1B0','on'),(379,'Pink Daisy','E799A3','on'),(380,'Cadillac Pink','E38AAE','on'),(381,'Carnation Pink','F778A1','on'),(382,'Blush Red','E56E94','on'),(383,'Hot Pink','F660AB','on'),(384,'Watermelon Pink','FC6C85','on'),(385,'Violet Red','F6358A','on'),(386,'Deep Pink','F52887','on'),(387,'Pink Cupcake','E45E9D','on'),(388,'Pink Lemonade','E4287C','on'),(389,'Neon Pink','F535AA','on'),(390,'Dimorphotheca Magenta','E3319D','on'),(391,'Bright Neon Pink','F433FF','on'),(392,'Pale Violet Red','D16587','on'),(393,'Tulip Pink','C25A7C','on'),(394,'Medium Violet Red','CA226B','on'),(395,'Rogue Pink','C12869','on'),(396,'Burnt Pink','C12267','on'),(397,'Bashful Pink','C25283','on'),(398,'Carnation Pink','C12283','on'),(399,'Plum','B93B8F','on'),(400,'Viola Purple','7E587E','on'),(401,'Purple Iris','571B7E','on'),(402,'Plum Purple','583759','on'),(403,'Indigo','4B0082','on'),(404,'Purple Monster','461B7E','on'),(405,'Purple Haze','4E387E','on'),(406,'Eggplant','614051','on'),(407,'Grape','5E5A80','on'),(408,'Purple Jam','6A287E','on'),(409,'Dark Orchid','7D1B7E','on'),(410,'Purple Flower','A74AC7','on'),(411,'Medium Orchid','B048B5','on'),(412,'Purple Amethyst','6C2DC7','on'),(413,'Dark Violet','842DCE','on'),(414,'Violet','8D38C9','on'),(415,'Purple Sage Bush','7A5DC7','on'),(416,'Lovely Purple','7F38EC','on'),(417,'Purple','8E35EF','on'),(418,'Aztech Purple','893BFF','on'),(419,'Medium Purple','8467D7','on'),(420,'Jasmine Purple','A23BEC','on'),(421,'Purple Daffodil','B041FF','on'),(422,'Tyrian Purple','C45AEC','on'),(423,'Crocus Purple','9172EC','on'),(424,'Purple Mimosa','9E7BFF','on'),(425,'Heliotrope Purple','D462FF','on'),(426,'Crimson','E238EC','on'),(427,'Purple Dragon','C38EC7','on'),(428,'Lilac','C8A2C8','on'),(429,'Blush Pink','E6A9EC','on'),(430,'Mauve','E0B0FF','on'),(431,'Wisteria Purple','C6AEC7','on'),(432,'Blossom Pink','F9B7FF','on'),(433,'Thistle','D2B9D3','on'),(434,'Periwinkle','E9CFEC','on'),(435,'Lavender Pinocchio','EBDDE2','on'),(436,'Lavender Blue','E3E4FA','on'),(437,'Pearl','FDEEF4','on'),(438,'SeaShell','FFF5EE','on'),(439,'Milk White','FEFCFF','on'),(440,'Green','008000','on'),(441,'Olive','808000','on'),(442,'Grey','808080','on'),(443,'Purple','800080','on'),(444,'Maroon','800000','on');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_input`
--

DROP TABLE IF EXISTS `data_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_input` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  `input_string` varchar(512) DEFAULT NULL,
  `type_id` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `name_type_id` (`name`(171),`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_input`
--

LOCK TABLES `data_input` WRITE;
/*!40000 ALTER TABLE `data_input` DISABLE KEYS */;
INSERT INTO `data_input` VALUES (1,'3eb92bb845b9660a7445cf9740726522','Get SNMP Data','',2),(2,'bf566c869ac6443b0c75d1c32b5a350e','Get SNMP Data (Indexed)','',3),(3,'274f4685461170b9eb1b98d22567ab5e','Unix - Get Free Disk Space','<path_cacti>/scripts/diskfree.sh <partition>',1),(4,'95ed0993eb3095f9920d431ac80f4231','Unix - Get Load Average','perl <path_cacti>/scripts/loadavg_multi.pl',1),(5,'79a284e136bb6b061c6f96ec219ac448','Unix - Get Logged In Users','perl <path_cacti>/scripts/unix_users.pl <username>',1),(6,'362e6d4768937c4f899dd21b91ef0ff8','Linux - Get Memory Usage','perl <path_cacti>/scripts/linux_memory.pl <grepstr>',1),(7,'a637359e0a4287ba43048a5fdf202066','Unix - Get System Processes','perl <path_cacti>/scripts/unix_processes.pl',1),(8,'47d6bfe8be57a45171afd678920bd399','Unix - Get TCP Connections','perl <path_cacti>/scripts/unix_tcp_connections.pl <grepstr>',1),(9,'cc948e4de13f32b6aea45abaadd287a3','Unix - Get Web Hits','perl <path_cacti>/scripts/webhits.pl <log_path>',1),(10,'8bd153aeb06e3ff89efc73f35849a7a0','Unix - Ping Host','perl <path_cacti>/scripts/ping.pl <ip>',1),(11,'80e9e4c4191a5da189ae26d0e237f015','Get Script Data (Indexed)','',4),(12,'332111d8b54ac8ce939af87a7eac0c06','Get Script Server Data (Indexed)','',6);
/*!40000 ALTER TABLE `data_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_input_data`
--

DROP TABLE IF EXISTS `data_input_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_input_data` (
  `data_input_field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_value` char(2) DEFAULT '',
  `value` text,
  PRIMARY KEY (`data_input_field_id`,`data_template_data_id`),
  KEY `t_value` (`t_value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_input_data`
--

LOCK TABLES `data_input_data` WRITE;
/*!40000 ALTER TABLE `data_input_data` DISABLE KEYS */;
INSERT INTO `data_input_data` VALUES (14,1,'on',''),(13,1,'on',''),(12,1,'on',''),(14,2,'on',''),(13,2,'on',''),(12,2,'on',''),(14,3,'on',''),(13,3,'on',''),(12,3,'on',''),(1,4,'',''),(1,5,'',''),(1,6,'',''),(14,7,'on',''),(13,7,'on',''),(12,7,'on',''),(14,8,'on',''),(13,8,'on',''),(12,8,'on',''),(14,9,'on',''),(13,9,'on',''),(12,9,'on',''),(14,10,'on',''),(13,10,'on',''),(12,10,'on',''),(22,12,'','Buffers:'),(22,13,'','MemFree:'),(22,14,'','^Cached:'),(22,15,'','SwapFree:'),(29,18,'',''),(1,19,'',''),(2,19,'',''),(6,21,'','.1.3.6.1.2.1.25.3.3.1.2.1'),(1,27,'',''),(6,28,'','.1.3.6.1.4.1.9.9.109.1.1.1.1.3.1'),(6,29,'','.1.3.6.1.4.1.9.9.109.1.1.1.1.4.1'),(1,30,'',''),(1,31,'',''),(1,32,'',''),(1,33,'',''),(1,34,'',''),(14,35,'on',''),(13,35,'on',''),(12,35,'on',''),(14,36,'on',''),(13,36,'on',''),(12,36,'on',''),(1,22,'',''),(1,23,'',''),(1,24,'',''),(1,25,'',''),(1,26,'',''),(33,37,'on',''),(32,37,'on',''),(31,37,'on',''),(14,38,'on',''),(13,38,'on',''),(12,38,'on',''),(14,39,'on',''),(13,39,'on',''),(12,39,'on',''),(14,40,'on',''),(13,40,'on',''),(12,40,'on',''),(14,41,'on',''),(13,41,'on',''),(12,41,'on',''),(14,55,'on',''),(13,55,'on',''),(12,55,'on',''),(37,56,'on',''),(36,56,'on',''),(35,56,'on',''),(37,57,'on',''),(36,57,'on',''),(35,57,'on',''),(1,58,'',''),(1,59,'',''),(1,20,'',''),(5,6,'',''),(22,62,NULL,'MemFree:'),(22,63,NULL,'SwapFree:'),(4,6,'',''),(3,6,'',''),(2,6,'',''),(6,69,'on',''),(1,68,'',''),(2,68,'',''),(6,6,'','.1.3.6.1.4.1.2021.11.51.0'),(2,27,'',''),(3,27,'',''),(4,27,'',''),(5,27,'',''),(6,27,'','.1.3.6.1.4.1.9.2.1.58.0'),(2,59,'',''),(3,59,'',''),(4,59,'',''),(5,59,'',''),(6,59,'','.1.3.6.1.2.1.25.1.5.0'),(2,58,'',''),(3,58,'',''),(4,58,'',''),(5,58,'',''),(6,58,'','.1.3.6.1.2.1.25.1.6.0'),(2,24,'',''),(3,24,'',''),(4,24,'',''),(5,24,'',''),(6,24,'','.1.3.6.1.4.1.23.2.28.2.5.0'),(2,25,'',''),(3,25,'',''),(4,25,'',''),(5,25,'',''),(6,25,'','.1.3.6.1.4.1.23.2.28.2.6.0'),(2,22,'',''),(3,22,'',''),(4,22,'',''),(5,22,'',''),(6,22,'','.1.3.6.1.4.1.23.2.28.2.1.0'),(2,23,'',''),(3,23,'',''),(4,23,'',''),(5,23,'',''),(6,23,'','.1.3.6.1.4.1.23.2.28.2.2.0'),(2,26,'',''),(3,26,'',''),(4,26,'',''),(5,26,'',''),(6,26,'','.1.3.6.1.4.1.23.2.28.2.7.0'),(2,20,'',''),(3,20,'',''),(4,20,'',''),(5,20,'',''),(6,20,'','.1.3.6.1.4.1.23.2.28.3.2.0'),(3,19,'',''),(4,19,'',''),(5,19,'',''),(6,19,'','.1.3.6.1.4.1.23.2.28.3.1'),(2,4,'',''),(3,4,'',''),(4,4,'',''),(5,4,'',''),(6,4,'','.1.3.6.1.4.1.2021.11.52.0'),(2,5,'',''),(3,5,'',''),(4,5,'',''),(5,5,'',''),(6,5,'','.1.3.6.1.4.1.2021.11.50.0'),(2,30,'',''),(3,30,'',''),(4,30,'',''),(5,30,'',''),(6,30,'','.1.3.6.1.4.1.2021.10.1.3.1'),(2,32,'',''),(3,32,'',''),(4,32,'',''),(5,32,'',''),(6,32,'','.1.3.6.1.4.1.2021.10.1.3.3'),(2,31,'',''),(3,31,'',''),(4,31,'',''),(5,31,'',''),(6,31,'','.1.3.6.1.4.1.2021.10.1.3.2'),(2,33,'',''),(3,33,'',''),(4,33,'',''),(5,33,'',''),(6,33,'','.1.3.6.1.4.1.2021.4.14.0'),(3,68,'',''),(4,68,'',''),(5,68,'',''),(6,68,'','.1.3.6.1.4.1.2021.4.15.0'),(2,34,'',''),(3,34,'',''),(4,34,'',''),(5,34,'',''),(6,34,'','.1.3.6.1.4.1.2021.4.6.0'),(20,17,'',''),(20,65,NULL,'');
/*!40000 ALTER TABLE `data_input_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_input_fields`
--

DROP TABLE IF EXISTS `data_input_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_input_fields` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `data_input_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `data_name` varchar(50) NOT NULL DEFAULT '',
  `input_output` char(3) NOT NULL DEFAULT '',
  `update_rra` char(2) DEFAULT '0',
  `sequence` smallint(5) NOT NULL DEFAULT '0',
  `type_code` varchar(40) DEFAULT '',
  `regexp_match` varchar(200) DEFAULT NULL,
  `allow_nulls` char(2) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `data_input_id` (`data_input_id`),
  KEY `type_code_data_input_id` (`type_code`,`data_input_id`),
  KEY `input_output` (`input_output`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_input_fields`
--

LOCK TABLES `data_input_fields` WRITE;
/*!40000 ALTER TABLE `data_input_fields` DISABLE KEYS */;
INSERT INTO `data_input_fields` VALUES (1,'92f5906c8dc0f964b41f4253df582c38',1,'SNMP IP Address','management_ip','in','',0,'hostname','',''),(2,'32285d5bf16e56c478f5e83f32cda9ef',1,'SNMP Community','snmp_community','in','',0,'snmp_community','',''),(3,'ad14ac90641aed388139f6ba86a2e48b',1,'SNMP Username','snmp_username','in','',0,'snmp_username','','on'),(4,'9c55a74bd571b4f00a96fd4b793278c6',1,'SNMP Password','snmp_password','in','',0,'snmp_password','','on'),(5,'012ccb1d3687d3edb29c002ea66e72da',1,'SNMP Version (1, 2, or 3)','snmp_version','in','',0,'snmp_version','','on'),(6,'4276a5ec6e3fe33995129041b1909762',1,'OID','oid','in','',0,'snmp_oid','',''),(7,'617cdc8a230615e59f06f361ef6e7728',2,'SNMP IP Address','management_ip','in','',0,'hostname','',''),(8,'acb449d1451e8a2a655c2c99d31142c7',2,'SNMP Community','snmp_community','in','',0,'snmp_community','',''),(9,'f4facc5e2ca7ebee621f09bc6d9fc792',2,'SNMP Username (v3)','snmp_username','in','',0,'snmp_username','','on'),(10,'1cc1493a6781af2c478fa4de971531cf',2,'SNMP Password (v3)','snmp_password','in','',0,'snmp_password','','on'),(11,'b5c23f246559df38662c255f4aa21d6b',2,'SNMP Version (1, 2, or 3)','snmp_version','in','',0,'snmp_version','',''),(12,'6027a919c7c7731fbe095b6f53ab127b',2,'Index Type','index_type','in','',0,'index_type','',''),(13,'cbbe5c1ddfb264a6e5d509ce1c78c95f',2,'Index Value','index_value','in','',0,'index_value','',''),(14,'e6deda7be0f391399c5130e7c4a48b28',2,'Output Type ID','output_type','in','',0,'output_type','',''),(15,'edfd72783ad02df128ff82fc9324b4b9',3,'Disk Partition','partition','in','',1,'','',''),(16,'8b75fb61d288f0b5fc0bd3056af3689b',3,'Kilobytes Free','kilobytes','out','on',0,'','',''),(17,'363588d49b263d30aecb683c52774f39',4,'1 Minute Average','1min','out','on',0,'','',''),(18,'ad139a9e1d69881da36fca07889abf58',4,'5 Minute Average','5min','out','on',0,'','',''),(19,'5db9fee64824c08258c7ff6f8bc53337',4,'10 Minute Average','10min','out','on',0,'','',''),(20,'c0cfd0beae5e79927c5a360076706820',5,'Username (Optional)','username','in','',1,'','','on'),(21,'52c58ad414d9a2a83b00a7a51be75a53',5,'Logged In Users','users','out','on',0,'','',''),(22,'05eb5d710f0814871b8515845521f8d7',6,'Grep String','grepstr','in','',1,'','',''),(23,'86cb1cbfde66279dbc7f1144f43a3219',6,'Result (in Kilobytes)','kilobytes','out','on',0,'','',''),(24,'d5a8dd5fbe6a5af11667c0039af41386',7,'Number of Processes','proc','out','on',0,'','',''),(25,'8848cdcae831595951a3f6af04eec93b',8,'Grep String','grepstr','in','',1,'','','on'),(26,'3d1288d33008430ce354e8b9c162f7ff',8,'Connections','connections','out','on',0,'','',''),(27,'c6af570bb2ed9c84abf32033702e2860',9,'(Optional) Log Path','log_path','in','',1,'','','on'),(28,'f9389860f5c5340c9b27fca0b4ee5e71',9,'Web Hits','webhits','out','on',0,'','',''),(29,'5fbadb91ad66f203463c1187fe7bd9d5',10,'IP Address','ip','in','',1,'hostname','',''),(30,'6ac4330d123c69067d36a933d105e89a',10,'Milliseconds','out_ms','out','on',0,'','',''),(31,'d39556ecad6166701bfb0e28c5a11108',11,'Index Type','index_type','in','',0,'index_type','',''),(32,'3b7caa46eb809fc238de6ef18b6e10d5',11,'Index Value','index_value','in','',0,'index_value','',''),(33,'74af2e42dc12956c4817c2ef5d9983f9',11,'Output Type ID','output_type','in','',0,'output_type','',''),(34,'8ae57f09f787656bf4ac541e8bd12537',11,'Output Value','output','out','on',0,'','',''),(35,'172b4b0eacee4948c6479f587b62e512',12,'Index Type','index_type','in','',0,'index_type','',''),(36,'30fb5d5bcf3d66bb5abe88596f357c26',12,'Index Value','index_value','in','',0,'index_value','',''),(37,'31112c85ae4ff821d3b288336288818c',12,'Output Type ID','output_type','in','',0,'output_type','',''),(38,'5be8fa85472d89c621790b43510b5043',12,'Output Value','output','out','on',0,'','',''),(39,'c1f36ee60c3dc98945556d57f26e475b',2,'SNMP Port','snmp_port','in','',0,'snmp_port','',''),(40,'fc64b99742ec417cc424dbf8c7692d36',1,'SNMP Port','snmp_port','in','',0,'snmp_port','',''),(41,'20832ce12f099c8e54140793a091af90',1,'SNMP Authenticaion Protocol (v3)','snmp_auth_protocol','in','',0,'snmp_auth_protocol','',''),(42,'c60c9aac1e1b3555ea0620b8bbfd82cb',1,'SNMP Privacy Passphrase (v3)','snmp_priv_passphrase','in','',0,'snmp_priv_passphrase','',''),(43,'feda162701240101bc74148415ef415a',1,'SNMP Privacy Protocol (v3)','snmp_priv_protocol','in','',0,'snmp_priv_protocol','',''),(44,'2cf7129ad3ff819a7a7ac189bee48ce8',2,'SNMP Authenticaion Protocol (v3)','snmp_auth_protocol','in','',0,'snmp_auth_protocol','',''),(45,'6b13ac0a0194e171d241d4b06f913158',2,'SNMP Privacy Passphrase (v3)','snmp_priv_passphrase','in','',0,'snmp_priv_passphrase','',''),(46,'3a33d4fc65b8329ab2ac46a36da26b72',2,'SNMP Privacy Protocol (v3)','snmp_priv_protocol','in','',0,'snmp_priv_protocol','','');
/*!40000 ALTER TABLE `data_input_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_local`
--

DROP TABLE IF EXISTS `data_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_local` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) NOT NULL DEFAULT '0',
  `snmp_index` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `data_template_id` (`data_template_id`),
  KEY `snmp_query_id` (`snmp_query_id`),
  KEY `snmp_index` (`snmp_index`(191))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_local`
--

LOCK TABLES `data_local` WRITE;
/*!40000 ALTER TABLE `data_local` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_profiles`
--

DROP TABLE IF EXISTS `data_source_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_profiles` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `step` int(10) unsigned NOT NULL DEFAULT '300',
  `heartbeat` int(10) unsigned NOT NULL DEFAULT '600',
  `x_files_factor` double DEFAULT '0.5',
  `default` char(2) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`(171))
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores Data Source Profiles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_profiles`
--

LOCK TABLES `data_source_profiles` WRITE;
/*!40000 ALTER TABLE `data_source_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_profiles_cf`
--

DROP TABLE IF EXISTS `data_source_profiles_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_profiles_cf` (
  `data_source_profile_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consolidation_function_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`data_source_profile_id`,`consolidation_function_id`),
  KEY `data_source_profile_id` (`data_source_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Maps the Data Source Profile Consolidation Functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_profiles_cf`
--

LOCK TABLES `data_source_profiles_cf` WRITE;
/*!40000 ALTER TABLE `data_source_profiles_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_profiles_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_profiles_rra`
--

DROP TABLE IF EXISTS `data_source_profiles_rra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_profiles_rra` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `data_source_profile_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `steps` int(10) unsigned DEFAULT '1',
  `rows` int(10) unsigned NOT NULL DEFAULT '700',
  `timespan` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `data_source_profile_id` (`data_source_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores RRA Definitions for Data Source Profiles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_profiles_rra`
--

LOCK TABLES `data_source_profiles_rra` WRITE;
/*!40000 ALTER TABLE `data_source_profiles_rra` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_profiles_rra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_purge_action`
--

DROP TABLE IF EXISTS `data_source_purge_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_purge_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='RRD Cleaner File Actions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_purge_action`
--

LOCK TABLES `data_source_purge_action` WRITE;
/*!40000 ALTER TABLE `data_source_purge_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_purge_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_purge_temp`
--

DROP TABLE IF EXISTS `data_source_purge_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_purge_temp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_cache` varchar(255) NOT NULL DEFAULT '',
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `last_mod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `in_cacti` tinyint(4) NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `local_data_id` (`local_data_id`),
  KEY `in_cacti` (`in_cacti`),
  KEY `data_template_id` (`data_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='RRD Cleaner File Repository';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_purge_temp`
--

LOCK TABLES `data_source_purge_temp` WRITE;
/*!40000 ALTER TABLE `data_source_purge_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_purge_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_stats_daily`
--

DROP TABLE IF EXISTS `data_source_stats_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_stats_daily` (
  `local_data_id` mediumint(8) unsigned NOT NULL,
  `rrd_name` varchar(19) NOT NULL,
  `average` double DEFAULT NULL,
  `peak` double DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_stats_daily`
--

LOCK TABLES `data_source_stats_daily` WRITE;
/*!40000 ALTER TABLE `data_source_stats_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_stats_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_stats_hourly`
--

DROP TABLE IF EXISTS `data_source_stats_hourly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_stats_hourly` (
  `local_data_id` mediumint(8) unsigned NOT NULL,
  `rrd_name` varchar(19) NOT NULL,
  `average` double DEFAULT NULL,
  `peak` double DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_stats_hourly`
--

LOCK TABLES `data_source_stats_hourly` WRITE;
/*!40000 ALTER TABLE `data_source_stats_hourly` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_stats_hourly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_stats_hourly_cache`
--

DROP TABLE IF EXISTS `data_source_stats_hourly_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_stats_hourly_cache` (
  `local_data_id` mediumint(8) unsigned NOT NULL,
  `rrd_name` varchar(19) NOT NULL,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` double DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`time`,`rrd_name`),
  KEY `time` (`time`) USING BTREE
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_stats_hourly_cache`
--

LOCK TABLES `data_source_stats_hourly_cache` WRITE;
/*!40000 ALTER TABLE `data_source_stats_hourly_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_stats_hourly_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_stats_hourly_last`
--

DROP TABLE IF EXISTS `data_source_stats_hourly_last`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_stats_hourly_last` (
  `local_data_id` mediumint(8) unsigned NOT NULL,
  `rrd_name` varchar(19) NOT NULL,
  `value` double DEFAULT NULL,
  `calculated` double DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_stats_hourly_last`
--

LOCK TABLES `data_source_stats_hourly_last` WRITE;
/*!40000 ALTER TABLE `data_source_stats_hourly_last` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_stats_hourly_last` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_stats_monthly`
--

DROP TABLE IF EXISTS `data_source_stats_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_stats_monthly` (
  `local_data_id` mediumint(8) unsigned NOT NULL,
  `rrd_name` varchar(19) NOT NULL,
  `average` double DEFAULT NULL,
  `peak` double DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_stats_monthly`
--

LOCK TABLES `data_source_stats_monthly` WRITE;
/*!40000 ALTER TABLE `data_source_stats_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_stats_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_stats_weekly`
--

DROP TABLE IF EXISTS `data_source_stats_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_stats_weekly` (
  `local_data_id` mediumint(8) unsigned NOT NULL,
  `rrd_name` varchar(19) NOT NULL,
  `average` double DEFAULT NULL,
  `peak` double DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_stats_weekly`
--

LOCK TABLES `data_source_stats_weekly` WRITE;
/*!40000 ALTER TABLE `data_source_stats_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_stats_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_stats_yearly`
--

DROP TABLE IF EXISTS `data_source_stats_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_stats_yearly` (
  `local_data_id` mediumint(8) unsigned NOT NULL,
  `rrd_name` varchar(19) NOT NULL,
  `average` double DEFAULT NULL,
  `peak` double DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_stats_yearly`
--

LOCK TABLES `data_source_stats_yearly` WRITE;
/*!40000 ALTER TABLE `data_source_stats_yearly` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_source_stats_yearly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_template`
--

DROP TABLE IF EXISTS `data_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_template` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_template`
--

LOCK TABLES `data_template` WRITE;
/*!40000 ALTER TABLE `data_template` DISABLE KEYS */;
INSERT INTO `data_template` VALUES (3,'c8a8f50f5f4a465368222594c5709ede','ucd/net - Hard Drive Space'),(4,'cdfed2d401723d2f41fc239d4ce249c7','ucd/net - CPU Usage - System'),(5,'a27e816377d2ac6434a87c494559c726','ucd/net - CPU Usage - User'),(6,'c06c3d20eccb9598939dc597701ff574','ucd/net - CPU Usage - Nice'),(7,'a14f2d6f233b05e64263ff03a5b0b386','Karlnet - Noise Level'),(8,'def1a9019d888ed2ad2e106aa9595ede','Karlnet - Signal Level'),(9,'513a99ae3c9c4413609c1534ffc36eab','Karlnet - Wireless Transmits'),(10,'77404ae93c9cc410f1c2c717e7117378','Karlnet - Wireless Re-Transmits'),(11,'9e72511e127de200733eb502eb818e1d','Unix - Load Average'),(13,'dc33aa9a8e71fb7c61ec0e7a6da074aa','Linux - Memory - Free'),(15,'41f55087d067142d702dd3c73c98f020','Linux - Memory - Free Swap'),(16,'9b8c92d3c32703900ff7dd653bfc9cd8','Unix - Processes'),(17,'c221c2164c585b6da378013a7a6a2c13','Unix - Logged in Users'),(18,'a30a81cb1de65b52b7da542c8df3f188','Unix - Ping Host'),(19,'0de466a1b81dfe581d44ac014b86553a','Netware - Total Users'),(20,'bbe2da0708103029fbf949817d3a4537','Netware - Total Logins'),(22,'e4ac5d5fe73e3c773671c6d0498a8d9d','Netware - File System Reads'),(23,'f29f8c998425eedd249be1e7caf90ceb','Netware - File System Writes'),(24,'7a6216a113e19881e35565312db8a371','Netware - Cache Checks'),(25,'1dbd1251c8e94b334c0e6aeae5ca4b8d','Netware - Cache Hits'),(26,'1a4c5264eb27b5e57acd3160af770a61','Netware - Open Files'),(27,'e9def3a0e409f517cb804dfeba4ccd90','Cisco Router - 5 Minute CPU'),(30,'9b82d44eb563027659683765f92c9757','ucd/net - Load Average - 1 Minute'),(31,'87847714d19f405ff3c74f3341b3f940','ucd/net - Load Average - 5 Minute'),(32,'308ac157f24e2763f8cd828a80b3e5ff','ucd/net - Load Average - 15 Minute'),(33,'797a3e92b0039841b52e441a2823a6fb','ucd/net - Memory - Buffers'),(34,'fa15932d3cab0da2ab94c69b1a9f5ca7','ucd/net - Memory - Free'),(35,'6ce4ab04378f9f3b03ee0623abb6479f','Netware - Volumes'),(36,'03060555fab086b8412bbf9951179cd9','Netware - Directory Entries'),(37,'e4ac6919d4f6f21ec5b281a1d6ac4d4e','Unix - Hard Drive Space'),(38,'36335cd98633963a575b70639cd2fdad','Interface - Errors/Discards'),(39,'2f654f7d69ac71a5d56b1db8543ccad3','Interface - Unicast Packets'),(40,'c84e511401a747409053c90ba910d0fe','Interface - Non-Unicast Packets'),(41,'6632e1e0b58a565c135d7ff90440c335','Interface - Traffic'),(42,'1d17325f416b262921a0b55fe5f7e31d','Netware - CPU Utilization'),(43,'d814fa3b79bd0f8933b6e0834d3f16d0','Host MIB - Hard Drive Space'),(44,'f6e7d21c19434666bbdac00ccef9932f','Host MIB - CPU Utilization'),(45,'f383db441d1c246cff8482f15e184e5f','Host MIB - Processes'),(46,'2ef027cc76d75720ee5f7a528f0f1fda','Host MIB - Logged in Users'),(47,'a274deec1f78654dca6c446ba75ebca4','ucd/net - Memory - Cache'),(48,'d429e4a6019c91e6e84562593c1968ca','SNMP - Generic OID Template');
/*!40000 ALTER TABLE `data_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_template_data`
--

DROP TABLE IF EXISTS `data_template_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_template_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `local_data_template_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_input_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_name` char(2) DEFAULT '',
  `name` varchar(250) NOT NULL DEFAULT '',
  `name_cache` varchar(255) NOT NULL DEFAULT '',
  `data_source_path` varchar(255) DEFAULT NULL,
  `t_active` char(2) DEFAULT '',
  `active` char(2) DEFAULT '',
  `t_rrd_step` char(2) DEFAULT '',
  `rrd_step` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_data_source_profile_id` char(2) DEFAULT '',
  `data_source_profile_id` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `local_data_id` (`local_data_id`),
  KEY `data_template_id` (`data_template_id`),
  KEY `data_input_id` (`data_input_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_template_data`
--

LOCK TABLES `data_template_data` WRITE;
/*!40000 ALTER TABLE `data_template_data` DISABLE KEYS */;
INSERT INTO `data_template_data` VALUES (3,0,0,3,2,'on','|host_description| - Hard Drive Space','',NULL,'','on','',300,'',0),(4,0,0,4,1,'','|host_description| - CPU Usage - System','',NULL,'','on','',300,'',0),(5,0,0,5,1,'','|host_description| - CPU Usage - User','',NULL,'','on','',300,'',0),(6,0,0,6,1,'','|host_description| - CPU Usage - Nice','',NULL,'','on','',300,'',0),(7,0,0,7,2,'on','|host_description| - Noise Level','',NULL,'','on','',300,'',0),(8,0,0,8,2,'on','|host_description| - Signal Level','',NULL,'','on','',300,'',0),(9,0,0,9,2,'on','|host_description| - Wireless Transmits','',NULL,'','on','',300,'',0),(10,0,0,10,2,'on','|host_description| - Wireless Re-Transmits','',NULL,'','on','',300,'',0),(11,0,0,11,4,'','|host_description| - Load Average','',NULL,'','on','',300,'',0),(13,0,0,13,6,'','|host_description| - Memory - Free','',NULL,'','on','',300,'',0),(15,0,0,15,6,'','|host_description| - Memory - Free Swap','',NULL,'','on','',300,'',0),(16,0,0,16,7,'','|host_description| - Processes','',NULL,'','on','',300,'',0),(17,0,0,17,5,'','|host_description| - Logged in Users','',NULL,'','on','',300,'',0),(18,0,0,18,10,'','|host_description| - Ping Host','',NULL,'','on','',300,'',0),(19,0,0,19,1,'','|host_description| - Total Users','',NULL,'','on','',300,'',0),(20,0,0,20,1,'','|host_description| - Total Logins','',NULL,'','on','',300,'',0),(22,0,0,22,1,'','|host_description| - File System Reads','',NULL,'','on','',300,'',0),(23,0,0,23,1,'','|host_description| - File System Writes','',NULL,'','on','',300,'',0),(24,0,0,24,1,'','|host_description| - Cache Checks','',NULL,'','on','',300,'',0),(25,0,0,25,1,'','|host_description| - Cache Hits','',NULL,'','on','',300,'',0),(26,0,0,26,1,'','|host_description| - Open Files','',NULL,'','on','',300,'',0),(27,0,0,27,1,'','|host_description| - 5 Minute CPU','',NULL,'','on','',300,'',0),(30,0,0,30,1,'','|host_description| - Load Average - 1 Minute','',NULL,'','on','',300,'',0),(31,0,0,31,1,'','|host_description| - Load Average - 5 Minute','',NULL,'','on','',300,'',0),(32,0,0,32,1,'','|host_description| - Load Average - 15 Minute','',NULL,'','on','',300,'',0),(33,0,0,33,1,'','|host_description| - Memory - Buffers','',NULL,'','on','',300,'',0),(34,0,0,34,1,'','|host_description| - Memory - Free','',NULL,'','on','',300,'',0),(35,0,0,35,2,'on','|host_description| - Volumes','',NULL,'','on','',300,'',0),(36,0,0,36,2,'on','|host_description| - Directory Entries','',NULL,'','on','',300,'',0),(37,0,0,37,11,'on','|host_description| - Hard Drive Space','',NULL,'','on','',300,'',0),(38,0,0,38,2,'on','|host_description| - Errors/Discards','',NULL,'','on','',300,'',0),(39,0,0,39,2,'on','|host_description| - Unicast Packets','',NULL,'','on','',300,'',0),(40,0,0,40,2,'on','|host_description| - Non-Unicast Packets','',NULL,'','on','',300,'',0),(41,0,0,41,2,'on','|host_description| - Traffic','',NULL,'','on','',300,'',0),(55,0,0,42,2,'','|host_description| - CPU Utilization','',NULL,'','on','',300,'',0),(56,0,0,43,12,'','|host_description| - Hard Drive Space','',NULL,'','on','',300,'',0),(57,0,0,44,12,'','|host_description| - CPU Utilization','',NULL,'','on','',300,'',0),(58,0,0,45,1,'','|host_description| - Processes','',NULL,'','on','',300,'',0),(59,0,0,46,1,'','|host_description| - Logged in Users','',NULL,'','on','',300,'',0),(68,0,0,47,1,'','|host_description| - Memory - Cache','',NULL,'','on','',300,'',0),(69,0,0,48,1,'on','|host_description| -','',NULL,'','on','',300,'',0);
/*!40000 ALTER TABLE `data_template_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_template_rrd`
--

DROP TABLE IF EXISTS `data_template_rrd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_template_rrd` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `local_data_template_rrd_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_rrd_maximum` char(2) DEFAULT '',
  `rrd_maximum` varchar(20) NOT NULL DEFAULT '0',
  `t_rrd_minimum` char(2) DEFAULT '',
  `rrd_minimum` varchar(20) NOT NULL DEFAULT '0',
  `t_rrd_heartbeat` char(2) DEFAULT '',
  `rrd_heartbeat` mediumint(6) NOT NULL DEFAULT '0',
  `t_data_source_type_id` char(2) DEFAULT '',
  `data_source_type_id` smallint(5) NOT NULL DEFAULT '0',
  `t_data_source_name` char(2) DEFAULT '',
  `data_source_name` varchar(19) NOT NULL DEFAULT '',
  `t_data_input_field_id` char(2) DEFAULT '',
  `data_input_field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `duplicate_dsname_contraint` (`local_data_id`,`data_source_name`,`data_template_id`),
  KEY `local_data_id` (`local_data_id`),
  KEY `data_template_id` (`data_template_id`),
  KEY `local_data_template_rrd_id` (`local_data_template_rrd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_template_rrd`
--

LOCK TABLES `data_template_rrd` WRITE;
/*!40000 ALTER TABLE `data_template_rrd` DISABLE KEYS */;
INSERT INTO `data_template_rrd` VALUES (3,'2d53f9c76767a2ae8909f4152fd473a4',0,0,3,'','0','','0','',600,'',1,'','hdd_free','',0),(4,'93d91aa7a3cc5473e7b195d5d6e6e675',0,0,3,'','0','','0','',600,'',1,'','hdd_used','',0),(5,'7bee7987bbf30a3bc429d2a67c6b2595',0,0,4,'','100','','0','',600,'',2,'','cpu_system','',0),(6,'ddccd7fbdece499da0235b4098b87f9e',0,0,5,'','100','','0','',600,'',2,'','cpu_user','',0),(7,'122ab2097f8c6403b7b90cde7b9e2bc2',0,0,6,'','100','','0','',600,'',2,'','cpu_nice','',0),(8,'34f50c820092ea0fecba25b4b94a7946',0,0,7,'','100','','0','',600,'',1,'','wrls_noise','',0),(9,'830b811d1834e5ba0e2af93bd92db057',0,0,8,'','100','','0','',600,'',1,'','wrls_signal','',0),(10,'2f1b016a2465eef3f7369f6313cd4a94',0,0,9,'','1000000','','0','',600,'',2,'','wrls_transmits','',0),(11,'28ffcecaf8b50e49f676f2d4a822685d',0,0,10,'','1000000','','0','',600,'',2,'','wrls_retransmits','',0),(12,'8175ca431c8fe50efff5a1d3ae51b55d',0,0,11,'','500','','0','',600,'',1,'','load_1min','',17),(13,'a2eeb8acd6ea01cd0e3ac852965c0eb6',0,0,11,'','500','','0','',600,'',1,'','load_5min','',18),(14,'9f951b7fb3b19285a411aebb5254a831',0,0,11,'','500','','0','',600,'',1,'','load_15min','',19),(16,'a4df3de5238d3beabee1a2fe140d3d80',0,0,13,'','0','','0','',600,'',1,'','mem_buffers','',23),(18,'7fea6acc9b1a19484b4cb4cef2b6c5da',0,0,15,'','0','','0','',600,'',1,'','mem_swap','',23),(19,'f1ba3a5b17b95825021241398bb0f277',0,0,16,'','1000','','0','',600,'',1,'','proc','',24),(20,'46a5afe8e6c0419172c76421dc9e304a',0,0,17,'','500','','0','',600,'',1,'','users','',21),(21,'962fd1994fe9cae87fb36436bdb8a742',0,0,18,'','5000','','0','',600,'',1,'','ping','',30),(22,'7a8dd1111a8624369906bf2cd6ea9ca9',0,0,19,'','100000','','0','',600,'',1,'','total_users','',0),(23,'ddb6e74d34d2f1969ce85f809dbac23d',0,0,20,'','100000','','0','',600,'',1,'','total_logins','',0),(25,'289311d10336941d33d9a1c48a7b11ee',0,0,22,'','10000000','','0','',600,'',2,'','fs_reads','',0),(26,'02216f036cca04655ee2f67fedb6f4f0',0,0,23,'','10000000','','0','',600,'',2,'','fs_writes','',0),(27,'9e402c0f29131ef7139c20bd500b4e8a',0,0,24,'','10000000','','0','',600,'',2,'','cache_checks','',0),(28,'46717dfe3c8c030d8b5ec0874f9dbdca',0,0,25,'','1000000','','0','',600,'',2,'','cache_hits','',0),(29,'7a88a60729af62561812c43bde61dfc1',0,0,26,'','100000','','0','',600,'',1,'','open_files','',0),(30,'3c0fd1a188b64a662dfbfa985648397b',0,0,27,'','100','','0','',600,'',1,'','5min_cpu','',0),(33,'ed44c2438ef7e46e2aeed2b6c580815c',0,0,30,'','500','','0','',600,'',1,'','load_1min','',0),(34,'9b3a00c9e3530d9e58895ac38271361e',0,0,31,'','500','','0','',600,'',1,'','load_5min','',0),(35,'6746c2ed836ecc68a71bbddf06b0e5d9',0,0,32,'','500','','0','',600,'',1,'','load_15min','',0),(36,'9835d9e1a8c78aa2475d752e8fa74812',0,0,33,'','10000000','','0','',600,'',1,'','mem_buffers','',0),(37,'9c78dc1981bcea841b8c827c6dc0d26c',0,0,34,'','10000000','','0','',600,'',1,'','mem_free','',0),(38,'62a56dc76fe4cd8566a31b5df0274cc3',0,0,35,'','0','','0','',600,'',1,'','vol_total','',0),(39,'2e366ab49d0e0238fb4e3141ea5a88c3',0,0,35,'','0','','0','',600,'',1,'','vol_free','',0),(40,'dceedc84718dd93a5affe4b190bca810',0,0,35,'','0','','0','',600,'',1,'','vol_freeable','',0),(42,'93330503f1cf67db00d8fe636035e545',0,0,36,'','100000000000','','0','',600,'',1,'','dir_total','',0),(43,'6b0fe4aa6aaf22ef9cfbbe96d87fa0d7',0,0,36,'','100000000000','','0','',600,'',1,'','dir_used','',0),(44,'4c82df790325d789d304e6ee5cd4ab7d',0,0,37,'','0','','0','',600,'',1,'','hdd_free','',0),(46,'c802e2fd77f5b0a4c4298951bf65957c',0,0,38,'','10000000','','0','',600,'',2,'','errors_in','',0),(47,'4e2a72240955380dc8ffacfcc8c09874',0,0,38,'','10000000','','0','',600,'',2,'','discards_in','',0),(48,'636672962b5bb2f31d86985e2ab4bdfe',0,0,39,'','1000000000','','0','',600,'',2,'','unicast_in','',0),(49,'18ce92c125a236a190ee9dd948f56268',0,0,39,'','1000000000','','0','',600,'',2,'','unicast_out','',0),(50,'13ebb33f9cbccfcba828db1075a8167c',0,0,38,'','10000000','','0','',600,'',2,'','discards_out','',0),(51,'31399c3725bee7e09ec04049e3d5cd17',0,0,38,'','10000000','','0','',600,'',2,'','errors_out','',0),(52,'7be68cbc4ee0b2973eb9785f8c7a35c7',0,0,40,'','1000000000','','0','',600,'',2,'','nonunicast_out','',0),(53,'93e2b6f59b10b13f2ddf2da3ae98b89a',0,0,40,'','1000000000','','0','',600,'',2,'','nonunicast_in','',0),(54,'2df25c57022b0c7e7d0be4c035ada1a0',0,0,41,'on','100000000','','0','',600,'',2,'','traffic_in','',0),(55,'721c0794526d1ac1c359f27dc56faa49',0,0,41,'on','100000000','','0','',600,'',2,'','traffic_out','',0),(56,'07175541991def89bd02d28a215f6fcc',0,0,37,'','0','','0','',600,'',1,'','hdd_used','',0),(76,'07492e5cace6d74e7db3cb1fc005a3f3',0,0,42,'','100','','0','',600,'',1,'','cpu','',0),(78,'0ee6bb54957f6795a5369a29f818d860',0,0,43,'','0','','0','',600,'',1,'','hdd_used','',0),(79,'9825aaf7c0bdf1554c5b4b86680ac2c0',0,0,44,'','100','','0','',600,'',1,'','cpu','',0),(80,'50ccbe193c6c7fc29fb9f726cd6c48ee',0,0,45,'','1000','','0','',600,'',1,'','proc','',0),(81,'9464c91bcff47f23085ae5adae6ab987',0,0,46,'','5000','','0','',600,'',1,'','users','',0),(92,'165a0da5f461561c85d092dfe96b9551',0,0,43,'','0','','0','',600,'',1,'','hdd_total','',0),(95,'7a6ca455bbeff99ca891371bc77d5cf9',0,0,47,'','10000000','','0','',600,'',1,'','mem_cache','',0),(96,'224b83ea73f55f8a861bcf4c9bea0472',0,0,48,'on','100','','0','',600,'on',1,'','snmp_oid','',0);
/*!40000 ALTER TABLE `data_template_rrd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_links`
--

DROP TABLE IF EXISTS `external_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `enabled` char(2) DEFAULT 'on',
  `contentfile` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(20) NOT NULL DEFAULT '',
  `style` varchar(10) NOT NULL DEFAULT '',
  `extendedstyle` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores External Link Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_links`
--

LOCK TABLES `external_links` WRITE;
/*!40000 ALTER TABLE `external_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_local`
--

DROP TABLE IF EXISTS `graph_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_local` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) NOT NULL DEFAULT '0',
  `snmp_query_graph_id` mediumint(8) NOT NULL DEFAULT '0',
  `snmp_index` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `host_id` (`host_id`),
  KEY `graph_template_id` (`graph_template_id`),
  KEY `snmp_query_id` (`snmp_query_id`),
  KEY `snmp_query_graph_id` (`snmp_query_graph_id`),
  KEY `snmp_index` (`snmp_index`(191))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Creates a relationship for each item in a custom graph.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_local`
--

LOCK TABLES `graph_local` WRITE;
/*!40000 ALTER TABLE `graph_local` DISABLE KEYS */;
/*!40000 ALTER TABLE `graph_local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_template_input`
--

DROP TABLE IF EXISTS `graph_template_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_template_input` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `column_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1 COMMENT='Stores the names for graph item input groups.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_template_input`
--

LOCK TABLES `graph_template_input` WRITE;
/*!40000 ALTER TABLE `graph_template_input` DISABLE KEYS */;
INSERT INTO `graph_template_input` VALUES (3,'e9d4191277fdfd7d54171f153da57fb0',2,'Inbound Data Source','','task_item_id'),(4,'7b361722a11a03238ee8ab7ce44a1037',2,'Outbound Data Source','','task_item_id'),(5,'b33eb27833614056e06ee5952c3e0724',3,'Available Disk Space Data Source','','task_item_id'),(6,'ef8799e63ee00e8904bcc4228015784a',3,'Used Disk Space Data Source','','task_item_id'),(7,'2662ef4fbb0bf92317ffd42c7515af37',5,'Signal Level Data Source','','task_item_id'),(8,'a6edef6624c796d3a6055305e2e3d4bf',5,'Noise Level Data Source','','task_item_id'),(9,'b0e902db1875e392a9d7d69bfbb13515',5,'Signal Level Color','','color_id'),(10,'24632b1d4a561e937225d0a5fbe65e41',5,'Noise Level Color','','color_id'),(11,'6d078f1d58b70ad154a89eb80fe6ab75',6,'Transmissions Data Source','','task_item_id'),(12,'878241872dd81c68d78e6ff94871d97d',6,'Re-Transmissions Data Source','','task_item_id'),(13,'f8fcdc3a3f0e8ead33bd9751895a3462',6,'Transmissions Color','','color_id'),(14,'394ab4713a34198dddb5175aa40a2b4a',6,'Re-Transmissions Color','','color_id'),(15,'433f328369f9569446ddc59555a63eb8',7,'Ping Host Data Source','','task_item_id'),(16,'a1a91c1514c65152d8cb73522ea9d4e6',7,'Legend Color','','color_id'),(17,'2fb4deb1448379b27ddc64e30e70dc42',7,'Legend Text','','text_format'),(18,'592cedd465877bc61ab549df688b0b2a',8,'Processes Data Source','','task_item_id'),(19,'1d51dbabb200fcea5c4b157129a75410',8,'Legend Color','','color_id'),(20,'8cb8ed3378abec21a1819ea52dfee6a3',9,'1 Minute Data Source','','task_item_id'),(21,'5dfcaf9fd771deb8c5430bce1562e371',9,'5 Minute Data Source','','task_item_id'),(22,'6f3cc610315ee58bc8e0b1f272466324',9,'15 Minute Data Source','','task_item_id'),(23,'b457a982bf46c6760e6ef5f5d06d41fb',10,'Logged in Users Data Source','','task_item_id'),(24,'bd4a57adf93c884815b25a8036b67f98',10,'Legend Color','','color_id'),(25,'d7cdb63500c576e0f9f354de42c6cf3a',11,'1 Minute Data Source','','task_item_id'),(26,'a23152f5ec02e7762ca27608c0d89f6c',11,'5 Minute Data Source','','task_item_id'),(27,'2cc5d1818da577fba15115aa18f64d85',11,'15 Minute Data Source','','task_item_id'),(30,'6273c71cdb7ed4ac525cdbcf6180918c',12,'Free Data Source','','task_item_id'),(31,'5e62dbea1db699f1bda04c5863e7864d',12,'Swap Data Source','','task_item_id'),(32,'4d52e112a836d4c9d451f56602682606',4,'System CPU Data Source','','task_item_id'),(33,'f0310b066cc919d2f898b8d1ebf3b518',4,'User CPU Data Source','','task_item_id'),(34,'d9eb6b9eb3d7dd44fd14fdefb4096b54',4,'Nice CPU Data Source','','task_item_id'),(35,'f45def7cad112b450667aa67262258cb',13,'Memory Free Data Source','','task_item_id'),(36,'f8c361a8c8b7ad80e8be03ba7ea5d0d6',13,'Memory Buffers Data Source','','task_item_id'),(37,'03d11dce695963be30bd744bd6cbac69',14,'Cache Hits Data Source','','task_item_id'),(38,'9cbc515234779af4bf6cdf71a81c556a',14,'Cache Checks Data Source','','task_item_id'),(39,'2c4d561ee8132a8dda6de1104336a6ec',15,'CPU Utilization Data Source','','task_item_id'),(40,'6e1cf7addc0cc419aa903552e3eedbea',16,'File System Reads Data Source','','task_item_id'),(41,'7ea2aa0656f7064d25a36135dd0e9082',16,'File System Writes Data Source','','task_item_id'),(42,'63480bca78a38435f24a5b5d5ed050d7',17,'Current Logins Data Source','','task_item_id'),(44,'31fed1f9e139d4897d0460b10fb7be94',15,'Legend Color','','color_id'),(45,'bb9d83a02261583bc1f92d9e66ea705d',18,'CPU Usage Data Source','','task_item_id'),(46,'51196222ed37b44236d9958116028980',18,'Legend Color','','color_id'),(47,'fd26b0f437b75715d6dff983e7efa710',19,'Free Space Data Source','','task_item_id'),(48,'a463dd46862605c90ea60ccad74188db',19,'Total Space Data Source','','task_item_id'),(49,'9977dd7a41bcf0f0c02872b442c7492e',19,'Freeable Space Data Source','','task_item_id'),(51,'a7a69bbdf6890d6e6eaa7de16e815ec6',20,'Used Directory Entries Data Source','','task_item_id'),(52,'0072b613a33f1fae5ce3e5903dec8fdb',20,'Available Directory Entries Data Source','','task_item_id'),(53,'940beb0f0344e37f4c6cdfc17d2060bc',21,'Available Disk Space Data Source','','task_item_id'),(54,'7b0674dd447a9badf0d11bec688028a8',21,'Used Disk Space Data Source','','task_item_id'),(55,'fa83cd3a3b4271b644cb6459ea8c35dc',22,'Discards In Data Source','','task_item_id'),(56,'7946e8ee1e38a65462b85e31a15e35e5',22,'Errors In Data Source','','task_item_id'),(57,'00ae916640272f5aca54d73ae34c326b',23,'Unicast Packets Out Data Source','','task_item_id'),(58,'1bc1652f82488ebfb7242c65d2ffa9c7',23,'Unicast Packets In Data Source','','task_item_id'),(59,'e3177d0e56278de320db203f32fb803d',24,'Non-Unicast Packets In Data Source','','task_item_id'),(60,'4f20fba2839764707f1c3373648c5fef',24,'Non-Unicast Packets Out Data Source','','task_item_id'),(61,'e5acdd5368137c408d56ecf55b0e077c',22,'Discards Out Data Source','','task_item_id'),(62,'a028e586e5fae667127c655fe0ac67f0',22,'Errors Out Data Source','','task_item_id'),(63,'2764a4f142ba9fd95872106a1b43541e',25,'Inbound Data Source','','task_item_id'),(64,'f73f7ddc1f4349356908122093dbfca2',25,'Outbound Data Source','','task_item_id'),(65,'86bd8819d830a81d64267761e1fd8ec4',26,'Total Disk Space Data Source','','task_item_id'),(66,'6c8967850102202de166951e4411d426',26,'Used Disk Space Data Source','','task_item_id'),(67,'bdad718851a52b82eca0a310b0238450',27,'CPU Utilization Data Source','','task_item_id'),(68,'e7b578e12eb8a82627557b955fd6ebd4',27,'Legend Color','','color_id'),(69,'37d09fb7ce88ecec914728bdb20027f3',28,'Logged in Users Data Source','','task_item_id'),(70,'699bd7eff7ba0c3520db3692103a053d',28,'Legend Color','','color_id'),(71,'df905e159d13a5abed8a8a7710468831',29,'Processes Data Source','','task_item_id'),(72,'8ca9e3c65c080dbf74a59338d64b0c14',29,'Legend Color','','color_id'),(73,'69ad68fc53af03565aef501ed5f04744',30,'Open Files Data Source','','task_item_id'),(74,'562726cccdb67d5c6941e9e826ef4ef5',31,'Inbound Data Source','','task_item_id'),(75,'82426afec226f8189c8928e7f083f80f',31,'Outbound Data Source','','task_item_id'),(76,'69a23877302e7d142f254b208c58b596',32,'Inbound Data Source','','task_item_id'),(77,'f28013abf8e5813870df0f4111a5e695',32,'Outbound Data Source','','task_item_id'),(78,'8644b933b6a09dde6c32ff24655eeb9a',33,'Outbound Data Source','','task_item_id'),(79,'49c4b4800f3e638a6f6bb681919aea80',33,'Inbound Data Source','','task_item_id'),(80,'e0b395be8db4f7b938d16df7ae70065f',13,'Cache Memory Data Source','','task_item_id'),(81,'2dca37011521501b9c2b705d080db750',34,'Data Source [snmp_oid]',NULL,'task_item_id'),(82,'b8d8ade5f5f3dd7b12f8cc56bbb4083e',34,'Legend Color','','color_id'),(83,'ac2355b4895c37e14df827f969f31c12',34,'Legend Text','','text_format');
/*!40000 ALTER TABLE `graph_template_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_template_input_defs`
--

DROP TABLE IF EXISTS `graph_template_input_defs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_template_input_defs` (
  `graph_template_input_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_item_id` int(12) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`graph_template_input_id`,`graph_template_item_id`),
  KEY `graph_template_input_id` (`graph_template_input_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores the relationship for what graph items are associated';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_template_input_defs`
--

LOCK TABLES `graph_template_input_defs` WRITE;
/*!40000 ALTER TABLE `graph_template_input_defs` DISABLE KEYS */;
INSERT INTO `graph_template_input_defs` VALUES (3,9),(3,10),(3,11),(3,12),(4,13),(4,14),(4,15),(4,16),(5,21),(5,22),(5,23),(5,24),(6,17),(6,18),(6,19),(6,20),(7,45),(7,46),(7,47),(7,48),(8,49),(8,50),(8,51),(8,52),(9,45),(10,49),(11,53),(11,54),(11,55),(11,56),(12,57),(12,58),(12,59),(12,60),(13,53),(14,57),(15,61),(15,62),(15,63),(15,64),(16,61),(17,61),(18,65),(18,66),(18,67),(18,68),(19,65),(20,69),(20,70),(21,71),(21,72),(22,73),(22,74),(23,76),(23,77),(23,78),(23,79),(24,76),(25,80),(25,81),(26,82),(26,83),(27,84),(27,85),(30,95),(30,96),(30,97),(30,98),(31,99),(31,100),(31,101),(31,102),(32,29),(32,30),(32,31),(32,32),(33,33),(33,34),(33,35),(33,36),(34,37),(34,38),(34,39),(34,40),(35,103),(35,104),(35,105),(35,106),(36,107),(36,108),(36,109),(36,110),(37,111),(37,112),(37,113),(37,114),(38,115),(38,116),(38,117),(38,118),(39,119),(39,120),(39,121),(39,122),(40,123),(40,124),(40,125),(40,126),(41,127),(41,128),(41,129),(41,130),(42,131),(42,132),(42,133),(42,134),(44,119),(45,139),(45,140),(45,141),(45,142),(46,139),(47,143),(47,144),(47,145),(47,146),(48,147),(48,148),(48,149),(48,150),(49,151),(49,152),(49,153),(49,154),(51,159),(51,160),(51,161),(51,162),(52,163),(52,164),(52,165),(52,166),(53,172),(53,173),(53,174),(53,175),(54,167),(54,169),(54,170),(54,171),(55,180),(55,181),(55,182),(55,183),(56,184),(56,185),(56,186),(56,187),(57,188),(57,189),(57,190),(57,191),(58,192),(58,193),(58,194),(58,195),(59,196),(59,197),(59,198),(59,199),(60,200),(60,201),(60,202),(60,203),(61,204),(61,205),(61,206),(61,207),(62,208),(62,209),(62,210),(62,211),(63,212),(63,213),(63,214),(63,215),(64,216),(64,217),(64,218),(64,219),(65,307),(65,308),(65,309),(65,310),(66,303),(66,304),(66,305),(66,306),(67,315),(67,316),(67,317),(67,318),(68,315),(69,319),(69,320),(69,321),(69,322),(70,319),(71,323),(71,324),(71,325),(71,326),(72,323),(73,358),(73,359),(73,360),(73,361),(74,362),(74,363),(74,364),(74,365),(75,366),(75,367),(75,368),(75,369),(75,371),(75,372),(76,373),(76,374),(76,375),(76,376),(76,383),(77,377),(77,378),(77,379),(77,380),(77,384),(78,385),(78,386),(78,387),(78,388),(78,393),(79,389),(79,390),(79,391),(79,392),(79,394),(80,403),(80,404),(80,405),(80,406),(81,407),(81,408),(81,409),(81,410),(82,407),(83,407);
/*!40000 ALTER TABLE `graph_template_input_defs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_templates`
--

DROP TABLE IF EXISTS `graph_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_templates` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` char(32) NOT NULL DEFAULT '',
  `name` char(255) NOT NULL DEFAULT '',
  `multiple` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `multiple_name` (`multiple`,`name`(171))
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COMMENT='Contains each graph template name.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_templates`
--

LOCK TABLES `graph_templates` WRITE;
/*!40000 ALTER TABLE `graph_templates` DISABLE KEYS */;
INSERT INTO `graph_templates` VALUES (34,'010b90500e1fc6a05abfd542940584d0','SNMP - Generic OID Template','on'),(2,'5deb0d66c81262843dce5f3861be9966','Interface - Traffic (bits/sec)',''),(3,'abb5e813c9f1e8cd6fc1e393092ef8cb','ucd/net - Available Disk Space',''),(4,'e334bdcf821cd27270a4cc945e80915e','ucd/net - CPU Usage',''),(5,'280e38336d77acde4672879a7db823f3','Karlnet - Wireless Levels',''),(6,'3109d88e6806d2ce50c025541b542499','Karlnet - Wireless Transmissions',''),(7,'cf96dfb22b58e08bf101ca825377fa4b','Unix - Ping Latency',''),(8,'9fe8b4da353689d376b99b2ea526cc6b','Unix - Processes',''),(9,'fe5edd777a76d48fc48c11aded5211ef','Unix - Load Average',''),(10,'63610139d44d52b195cc375636653ebd','Unix - Logged in Users',''),(11,'5107ec0206562e77d965ce6b852ef9d4','ucd/net - Load Average',''),(12,'6992ed4df4b44f3d5595386b8298f0ec','Linux - Memory Usage',''),(13,'be275639d5680e94c72c0ebb4e19056d','ucd/net - Memory Usage',''),(14,'f17e4a77b8496725dc924b8c35b60036','Netware - File System Cache',''),(15,'46bb77f4c0c69671980e3c60d3f22fa9','Netware - CPU Utilization',''),(16,'8e77a3036312fd0fda32eaea2b5f141b','Netware - File System Activity',''),(17,'5892c822b1bb2d38589b6c27934b9936','Netware - Logged In Users',''),(18,'9a5e6d7781cc1bd6cf24f64dd6ffb423','Cisco - CPU Usage',''),(19,'0dd0438d5e6cad6776f79ecaa96fb708','Netware - Volume Information',''),(20,'b18a3742ebea48c6198412b392d757fc','Netware - Directory Information',''),(21,'8e7c8a511652fe4a8e65c69f3d34779d','Unix - Available Disk Space',''),(22,'06621cd4a9289417cadcb8f9b5cfba80','Interface - Errors/Discards',''),(23,'e0d1625a1f4776a5294583659d5cee15','Interface - Unicast Packets',''),(24,'10ca5530554da7b73dc69d291bf55d38','Interface - Non-Unicast Packets',''),(25,'df244b337547b434b486662c3c5c7472','Interface - Traffic (bytes/sec)',''),(26,'7489e44466abee8a7d8636cb2cb14a1a','Host MIB - Available Disk Space',''),(27,'c6bb62bedec4ab97f9db9fd780bd85a6','Host MIB - CPU Utilization',''),(28,'e8462bbe094e4e9e814d4e681671ea82','Host MIB - Logged in Users',''),(29,'62205afbd4066e5c4700338841e3901e','Host MIB - Processes',''),(30,'e3780a13b0f7a3f85a44b70cd4d2fd36','Netware - Open Files',''),(31,'1742b2066384637022d178cc5072905a','Interface - Traffic (bits/sec, 95th Percentile)',''),(32,'13b47e10b2d5db45707d61851f69c52b','Interface - Traffic (bits/sec, Total Bandwidth)',''),(33,'8ad6790c22b693680e041f21d62537ac','Interface - Traffic (bytes/sec, Total Bandwidth)','');
/*!40000 ALTER TABLE `graph_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_templates_gprint`
--

DROP TABLE IF EXISTS `graph_templates_gprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_templates_gprint` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `gprint_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_templates_gprint`
--

LOCK TABLES `graph_templates_gprint` WRITE;
/*!40000 ALTER TABLE `graph_templates_gprint` DISABLE KEYS */;
INSERT INTO `graph_templates_gprint` VALUES (2,'e9c43831e54eca8069317a2ce8c6f751','Normal','%8.2lf %s'),(3,'19414480d6897c8731c7dc6c5310653e','Exact Numbers','%8.0lf'),(4,'304a778405392f878a6db435afffc1e9','Load Average','%8.2lf');
/*!40000 ALTER TABLE `graph_templates_gprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_templates_graph`
--

DROP TABLE IF EXISTS `graph_templates_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_templates_graph` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `local_graph_template_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `local_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `t_image_format_id` char(2) DEFAULT '',
  `image_format_id` tinyint(1) NOT NULL DEFAULT '0',
  `t_title` char(2) DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_cache` varchar(255) NOT NULL DEFAULT '',
  `t_height` char(2) DEFAULT '',
  `height` mediumint(8) NOT NULL DEFAULT '0',
  `t_width` char(2) DEFAULT '',
  `width` mediumint(8) NOT NULL DEFAULT '0',
  `t_upper_limit` char(2) DEFAULT '',
  `upper_limit` varchar(20) NOT NULL DEFAULT '0',
  `t_lower_limit` char(2) DEFAULT '',
  `lower_limit` varchar(20) NOT NULL DEFAULT '0',
  `t_vertical_label` char(2) DEFAULT '',
  `vertical_label` varchar(200) DEFAULT NULL,
  `t_slope_mode` char(2) DEFAULT '',
  `slope_mode` char(2) DEFAULT 'on',
  `t_auto_scale` char(2) DEFAULT '',
  `auto_scale` char(2) DEFAULT '',
  `t_auto_scale_opts` char(2) DEFAULT '',
  `auto_scale_opts` tinyint(1) NOT NULL DEFAULT '0',
  `t_auto_scale_log` char(2) DEFAULT '',
  `auto_scale_log` char(2) DEFAULT '',
  `t_scale_log_units` char(2) DEFAULT '',
  `scale_log_units` char(2) DEFAULT NULL,
  `t_auto_scale_rigid` char(2) DEFAULT '',
  `auto_scale_rigid` char(2) DEFAULT '',
  `t_auto_padding` char(2) DEFAULT '',
  `auto_padding` char(2) DEFAULT '',
  `t_base_value` char(2) DEFAULT '',
  `base_value` mediumint(8) NOT NULL DEFAULT '0',
  `t_grouping` char(2) DEFAULT '',
  `grouping` char(2) NOT NULL DEFAULT '',
  `t_unit_value` char(2) DEFAULT '',
  `unit_value` varchar(20) DEFAULT NULL,
  `t_unit_exponent_value` char(2) DEFAULT '',
  `unit_exponent_value` varchar(5) NOT NULL DEFAULT '',
  `t_alt_y_grid` char(2) DEFAULT '',
  `alt_y_grid` char(2) DEFAULT NULL,
  `t_right_axis` char(2) DEFAULT '',
  `right_axis` varchar(20) DEFAULT NULL,
  `t_right_axis_label` char(2) DEFAULT '',
  `right_axis_label` varchar(200) DEFAULT NULL,
  `t_right_axis_format` char(2) DEFAULT '',
  `right_axis_format` mediumint(8) DEFAULT NULL,
  `t_right_axis_formatter` char(2) DEFAULT '',
  `right_axis_formatter` varchar(10) DEFAULT NULL,
  `t_left_axis_formatter` char(2) DEFAULT '',
  `left_axis_formatter` varchar(10) DEFAULT NULL,
  `t_no_gridfit` char(2) DEFAULT '',
  `no_gridfit` char(2) DEFAULT NULL,
  `t_unit_length` char(2) DEFAULT '',
  `unit_length` varchar(10) DEFAULT NULL,
  `t_tab_width` char(2) DEFAULT '',
  `tab_width` varchar(20) DEFAULT '30',
  `t_dynamic_labels` char(2) DEFAULT '',
  `dynamic_labels` char(2) DEFAULT NULL,
  `t_force_rules_legend` char(2) DEFAULT '',
  `force_rules_legend` char(2) DEFAULT NULL,
  `t_legend_position` char(2) DEFAULT '',
  `legend_position` varchar(10) DEFAULT NULL,
  `t_legend_direction` char(2) DEFAULT '',
  `legend_direction` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `local_graph_id` (`local_graph_id`),
  KEY `graph_template_id` (`graph_template_id`),
  KEY `title_cache` (`title_cache`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 COMMENT='Stores the actual graph data.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_templates_graph`
--

LOCK TABLES `graph_templates_graph` WRITE;
/*!40000 ALTER TABLE `graph_templates_graph` DISABLE KEYS */;
INSERT INTO `graph_templates_graph` VALUES (2,0,0,2,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bits per second','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(3,0,0,3,'',1,'on','|host_description| - Hard Drive Space','','',120,'',500,'','100','','0','','bytes','','on','','on','',2,'','','','','','on','','on','',1024,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(4,0,0,4,'',1,'','|host_description| - CPU Usage','','',120,'',500,'','100','','0','','percent','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(5,0,0,5,'',1,'on','|host_description| - Wireless Levels','','',120,'',500,'','100','','0','','percent','','on','','','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(6,0,0,6,'',1,'on','|host_description| - Wireless Transmissions','','',120,'',500,'','100','','0','','transmissions','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(7,0,0,7,'',1,'','|host_description| - Ping Latency','','',120,'',500,'','100','','0','','milliseconds','','on','','on','',2,'','','','','','','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(8,0,0,8,'',1,'','|host_description| - Processes','','',120,'',500,'','100','','0','','processes','','on','','on','',2,'','','','','','','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(9,0,0,9,'',1,'','|host_description| - Load Average','','',120,'',500,'','100','','0','','processes in the run queue','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','0','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(10,0,0,10,'',1,'','|host_description| - Logged in Users','','',120,'',500,'','100','','0','','users','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(11,0,0,11,'',1,'','|host_description| - Load Average','','',120,'',500,'','100','','0','','processes in the run queue','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','0','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(12,0,0,12,'',1,'','|host_description| - Memory Usage','','',120,'',500,'','100','','0','','kilobytes','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(13,0,0,13,'',1,'','|host_description| - Memory Usage','','',120,'',500,'','100','','0','','bytes','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(14,0,0,14,'',1,'','|host_description| - File System Cache','','',120,'',500,'','100','','0','','cache checks/hits','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(15,0,0,15,'',1,'','|host_description| - CPU Utilization','','',120,'',500,'','100','','0','','percent','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(16,0,0,16,'',1,'','|host_description| - File System Activity','','',120,'',500,'','100','','0','','reads/writes per sec','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(17,0,0,17,'',1,'','|host_description| - Logged In Users','','',120,'',500,'','100','','0','','users','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(18,0,0,18,'',1,'','|host_description| - CPU Usage','','',120,'',500,'','100','','0','','percent','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(19,0,0,19,'',1,'on','|host_description| - Volume Information','','',120,'',500,'','100','','0','','bytes','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(20,0,0,20,'',1,'','|host_description| - Directory Information','','',120,'',500,'','100','','0','','directory entries','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(21,0,0,21,'',1,'on','|host_description| - Available Disk Space','','',120,'',500,'','100','','0','','bytes','','on','','on','',2,'','','','','','on','','on','',1024,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(22,0,0,22,'',1,'on','|host_description| - Errors/Discards','','',120,'',500,'','100','','0','','errors/sec','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(23,0,0,23,'',1,'on','|host_description| - Unicast Packets','','',120,'',500,'','100','','0','','packets/sec','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(24,0,0,24,'',1,'on','|host_description| - Non-Unicast Packets','','',120,'',500,'','100','','0','','packets/sec','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(25,0,0,25,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bytes per second','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(34,0,0,26,'',1,'on','|host_description| - Available Disk Space','','',120,'',500,'','100','','0','','bytes','','on','','on','',2,'','','','','','on','','on','',1024,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(35,0,0,27,'',1,'on','|host_description| - CPU Utilization','','',120,'',500,'','100','','0','','percent','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(36,0,0,28,'',1,'','|host_description| - Logged in Users','','',120,'',500,'','100','','0','','users','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(37,0,0,29,'',1,'','|host_description| - Processes','','',120,'',500,'','100','','0','','processes','','on','','on','',2,'','','','','','','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(42,0,0,30,'',1,'','|host_description| - Open Files','','',120,'',500,'','100','','0','','files','','on','','on','',2,'','','','','','','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(43,0,0,31,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bits per second','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(44,0,0,32,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bits per second','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(45,0,0,33,'',1,'on','|host_description| - Traffic','','',120,'',500,'','100','','0','','bytes per second','','on','','on','',2,'','','','','','on','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL),(47,0,0,34,'',1,'on','|host_description| -','','',120,'',500,'','100','','0','on','','','on','','on','',2,'','','','','','','','on','',1000,'','','','','','','',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'',NULL,'','30','',NULL,'',NULL,'',NULL,'',NULL);
/*!40000 ALTER TABLE `graph_templates_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_templates_item`
--

DROP TABLE IF EXISTS `graph_templates_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_templates_item` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `local_graph_template_item_id` int(12) unsigned NOT NULL DEFAULT '0',
  `local_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `task_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `color_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `alpha` char(2) DEFAULT 'FF',
  `graph_type_id` tinyint(3) NOT NULL DEFAULT '0',
  `line_width` decimal(4,2) DEFAULT '0.00',
  `dashes` varchar(20) DEFAULT NULL,
  `dash_offset` mediumint(4) DEFAULT NULL,
  `cdef_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vdef_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shift` char(2) DEFAULT NULL,
  `consolidation_function_id` tinyint(2) NOT NULL DEFAULT '0',
  `textalign` varchar(10) DEFAULT NULL,
  `text_format` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `hard_return` char(2) DEFAULT '',
  `gprint_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `graph_template_id` (`graph_template_id`),
  KEY `task_item_id` (`task_item_id`),
  KEY `local_graph_id_sequence` (`local_graph_id`,`sequence`),
  KEY `lgi_gti` (`local_graph_id`,`graph_template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=411 DEFAULT CHARSET=latin1 COMMENT='Stores the actual graph item data.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_templates_item`
--

LOCK TABLES `graph_templates_item` WRITE;
/*!40000 ALTER TABLE `graph_templates_item` DISABLE KEYS */;
INSERT INTO `graph_templates_item` VALUES (9,'0470b2427dbfadb6b8346e10a71268fa',0,0,2,54,22,'FF',7,0.00,NULL,NULL,2,0,NULL,1,NULL,'Inbound','','',2,1),(10,'84a5fe0db518550266309823f994ce9c',0,0,2,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,4,NULL,'Current:','','',2,2),(11,'2f222f28084085cd06a1f46e4449c793',0,0,2,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,1,NULL,'Average:','','',2,3),(12,'55acbcc33f46ee6d754e8e81d1b54808',0,0,2,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,3,NULL,'Maximum:','','on',2,4),(13,'fdaf2321fc890e355711c2bffc07d036',0,0,2,55,20,'FF',4,0.00,NULL,NULL,2,0,NULL,1,NULL,'Outbound','','',2,5),(14,'768318f42819217ed81196d2179d3e1b',0,0,2,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,4,NULL,'Current:','','',2,6),(15,'cb3aa6256dcb3acd50d4517b77a1a5c3',0,0,2,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,1,NULL,'Average:','','',2,7),(16,'671e989be7cbf12c623b4e79d91c7bed',0,0,2,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,3,NULL,'Maximum:','','on',2,8),(17,'b561ed15b3ba66d277e6d7c1640b86f7',0,0,3,4,48,'FF',7,0.00,NULL,NULL,14,0,NULL,1,NULL,'Used','','',2,1),(18,'99ef051057fa6adfa6834a7632e9d8a2',0,0,3,4,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,2),(19,'3986695132d3f4716872df4c6fbccb65',0,0,3,4,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,3),(20,'0444300017b368e6257f010dca8bbd0d',0,0,3,4,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,4),(21,'4d6a0b9063124ca60e2d1702b3e15e41',0,0,3,3,20,'FF',8,0.00,NULL,NULL,14,0,NULL,1,NULL,'Available','','',2,5),(22,'181b08325e4d00cd50b8cdc8f8ae8e77',0,0,3,3,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,6),(23,'bba0a9ff1357c990df50429d64314340',0,0,3,3,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,7),(24,'d4a67883d53bc1df8aead21c97c0bc52',0,0,3,3,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,8),(25,'253c9ec2d66905245149c1c2dc8e536e',0,0,3,0,1,'FF',5,0.00,NULL,NULL,15,0,NULL,1,NULL,'Total','','',2,9),(26,'ea9ea883383f4eb462fec6aa309ba7b5',0,0,3,0,0,'FF',9,0.00,NULL,NULL,15,0,NULL,4,NULL,'Current:','','',2,10),(27,'83b746bcaba029eeca170a9f77ec4864',0,0,3,0,0,'FF',9,0.00,NULL,NULL,15,0,NULL,1,NULL,'Average:','','',2,11),(28,'82e01dd92fd37887c0696192efe7af65',0,0,3,0,0,'FF',9,0.00,NULL,NULL,15,0,NULL,3,NULL,'Maximum:','','on',2,12),(29,'ff0a6125acbb029b814ed1f271ad2d38',0,0,4,5,9,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'System','','',2,1),(30,'f0776f7d6638bba76c2c27f75a424f0f',0,0,4,5,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(31,'39f4e021aa3fed9207b5f45a82122b21',0,0,4,5,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(32,'800f0b067c06f4ec9c2316711ea83c1e',0,0,4,5,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(33,'9419dd5dbf549ba4c5dc1462da6ee321',0,0,4,6,21,'FF',8,0.00,NULL,NULL,0,0,NULL,1,NULL,'User','','',2,5),(34,'e461dd263ae47657ea2bf3fd82bec096',0,0,4,6,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,6),(35,'f2d1fbb8078a424ffc8a6c9d44d8caa0',0,0,4,6,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,7),(36,'e70a5de639df5ba1705b5883da7fccfc',0,0,4,6,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,8),(37,'85fefb25ce9fd0317da2706a5463fc42',0,0,4,7,12,'FF',8,0.00,NULL,NULL,0,0,NULL,1,NULL,'Nice','','',2,9),(38,'a1cb26878776999db16f1de7577b3c2a',0,0,4,7,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,10),(39,'7d0f9bf64a0898a0095f099674754273',0,0,4,7,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,11),(40,'b2879248a522d9679333e1f29e9a87c3',0,0,4,7,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,12),(41,'d800aa59eee45383b3d6d35a11cdc864',0,0,4,0,1,'FF',4,0.00,NULL,NULL,12,0,NULL,1,NULL,'Total','','',2,13),(42,'cab4ae79a546826288e273ca1411c867',0,0,4,0,0,'FF',9,0.00,NULL,NULL,12,0,NULL,4,NULL,'Current:','','',2,14),(43,'d44306ae85622fec971507460be63f5c',0,0,4,0,0,'FF',9,0.00,NULL,NULL,12,0,NULL,1,NULL,'Average:','','',2,15),(44,'aa5c2118035bb83be497d4e099afcc0d',0,0,4,0,0,'FF',9,0.00,NULL,NULL,12,0,NULL,3,NULL,'Maximum:','','on',2,16),(45,'4aa34ea1b7542b770ace48e8bc395a22',0,0,5,9,48,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Signal Level','','',2,1),(46,'22f118a9d81d0a9c8d922efbbc8a9cc1',0,0,5,9,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(47,'229de0c4b490de9d20d8f8d41059f933',0,0,5,9,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(48,'cd17feb30c02fd8f21e4d4dcde04e024',0,0,5,9,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(49,'8723600cfd0f8a7b3f7dc1361981aabd',0,0,5,8,25,'FF',5,0.00,NULL,NULL,0,0,NULL,1,NULL,'Noise Level','','',2,5),(50,'cb06be2601b5abfb7a42fc07586de1c2',0,0,5,8,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,6),(51,'55a2ee0fd511e5210ed85759171de58f',0,0,5,8,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,7),(52,'704459564c84e42462e106eef20db169',0,0,5,8,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,8),(53,'aaebb19ec522497eaaf8c87a631b7919',0,0,6,10,48,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Transmissions','','',2,1),(54,'8b54843ac9d41bce2fcedd023560ed64',0,0,6,10,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(55,'05927dc83e07c7d9cffef387d68f35c9',0,0,6,10,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(56,'d11e62225a7e7a0cdce89242002ca547',0,0,6,10,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(57,'6397b92032486c476b0e13a35b727041',0,0,6,11,25,'FF',5,0.00,NULL,NULL,0,0,NULL,1,NULL,'Re-Transmissions','','',2,5),(58,'cdfa5f8f82f4c479ff7f6f54160703f6',0,0,6,11,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,6),(59,'ce2a309fb9ef64f83f471895069a6f07',0,0,6,11,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,7),(60,'9cbfbf57ebde435b27887f27c7d3caea',0,0,6,11,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,8),(61,'80e0aa956f50c261e5143273da58b8a3',0,0,7,21,25,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'','','',2,1),(62,'48fdcae893a7b7496e1a61efc3453599',0,0,7,21,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(63,'22f43e5fa20f2716666ba9ed9a7d1727',0,0,7,21,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(64,'3e86d497bcded7af7ab8408e4908e0d8',0,0,7,21,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(65,'ba00ecd28b9774348322ff70a96f2826',0,0,8,19,48,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Running Processes','','',2,1),(66,'8d76de808efd73c51e9a9cbd70579512',0,0,8,19,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(67,'304244ca63d5b09e62a94c8ec6fbda8d',0,0,8,19,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(68,'da1ba71a93d2ed4a2a00d54592b14157',0,0,8,19,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(69,'93ad2f2803b5edace85d86896620b9da',0,0,9,12,15,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'1 Minute Average','','',2,1),(70,'e28736bf63d3a3bda03ea9f1e6ecb0f1',0,0,9,12,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','on',4,2),(71,'bbdfa13adc00398eed132b1ccb4337d2',0,0,9,13,8,'FF',8,0.00,NULL,NULL,0,0,NULL,1,NULL,'5 Minute Average','','',2,3),(72,'2c14062c7d67712f16adde06132675d6',0,0,9,13,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','on',4,4),(73,'9cf6ed48a6a54b9644a1de8c9929bd4e',0,0,9,14,9,'FF',8,0.00,NULL,NULL,0,0,NULL,1,NULL,'15 Minute Average','','',2,5),(74,'c9824064305b797f38feaeed2352e0e5',0,0,9,14,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','on',4,6),(75,'fa1bc4eff128c4da70f5247d55b8a444',0,0,9,0,1,'FF',4,0.00,NULL,NULL,12,0,NULL,1,NULL,'','','on',2,7),(76,'5c94ac24bc0d6d2712cc028fa7d4c7d2',0,0,10,20,67,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Users','','',2,1),(77,'8bc7f905526f62df7d5c2d8c27c143c1',0,0,10,20,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(78,'cd074cd2b920aab70d480c020276d45b',0,0,10,20,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(79,'415630f25f5384ba0c82adbdb05fe98b',0,0,10,20,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(80,'d77d2050be357ab067666a9485426e6b',0,0,11,33,15,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'1 Minute Average','','',2,1),(81,'13d22f5a0eac6d97bf6c97d7966f0a00',0,0,11,33,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','on',4,2),(82,'8580230d31d2851ec667c296a665cbf9',0,0,11,34,8,'FF',8,0.00,NULL,NULL,0,0,NULL,1,NULL,'5 Minute Average','','',2,3),(83,'b5b7d9b64e7640aa51dbf58c69b86d15',0,0,11,34,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','on',4,4),(84,'2ec10edf4bfaa866b7efd544d4c3f446',0,0,11,35,9,'FF',8,0.00,NULL,NULL,0,0,NULL,1,NULL,'15 Minute Average','','',2,5),(85,'b65666f0506c0c70966f493c19607b93',0,0,11,35,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','on',4,6),(86,'6c73575c74506cfc75b89c4276ef3455',0,0,11,0,1,'FF',4,0.00,NULL,NULL,12,0,NULL,1,NULL,'Total','','on',2,7),(95,'5fa7c2317f19440b757ab2ea1cae6abc',0,0,12,16,41,'FF',7,0.00,NULL,NULL,14,0,NULL,1,NULL,'Free','','',2,9),(96,'b1d18060bfd3f68e812c508ff4ac94ed',0,0,12,16,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,10),(97,'780b6f0850aaf9431d1c246c55143061',0,0,12,16,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,11),(98,'2d54a7e7bb45e6c52d97a09e24b7fba7',0,0,12,16,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,12),(99,'40206367a3c192b836539f49801a0b15',0,0,12,18,30,'FF',8,0.00,NULL,NULL,14,0,NULL,1,NULL,'Swap','','',2,13),(100,'7ee72e2bb3722d4f8a7f9c564e0dd0d0',0,0,12,18,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,14),(101,'c8af33b949e8f47133ee25e63c91d4d0',0,0,12,18,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,15),(102,'568128a16723d1195ce6a234d353ce00',0,0,12,18,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,16),(103,'7517a40d478e28ed88ba2b2a65e16b57',0,0,13,37,52,'FF',7,0.00,NULL,NULL,14,0,NULL,1,NULL,'Memory Free','','',2,1),(104,'df0c8b353d26c334cb909dc6243957c5',0,0,13,37,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,2),(105,'c41a4cf6fefaf756a24f0a9510580724',0,0,13,37,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,3),(106,'9efa8f01c6ed11364a21710ff170f422',0,0,13,37,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,4),(107,'95d6e4e5110b456f34324f7941d08318',0,0,13,36,35,'FF',8,0.00,NULL,NULL,14,0,NULL,1,NULL,'Memory Buffers','','',2,5),(108,'0c631bfc0785a9cca68489ea87a6c3da',0,0,13,36,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,6),(109,'3468579d3b671dfb788696df7dcc1ec9',0,0,13,36,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,7),(110,'c3ddfdaa65449f99b7f1a735307f9abe',0,0,13,36,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,8),(111,'4c64d5c1ce8b5d8b94129c23b46a5fd6',0,0,14,28,41,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Cache Hits','','',2,1),(112,'5c1845c9bd1af684a3c0ad843df69e3e',0,0,14,28,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(113,'e5169563f3f361701902a8da3ac0c77f',0,0,14,28,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(114,'35e87262efa521edbb1fd27f09c036f5',0,0,14,28,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(115,'53069d7dba4c31b338f609bea4cd16f3',0,0,14,27,66,'FF',8,0.00,NULL,NULL,0,0,NULL,1,NULL,'Cache Checks','','',2,5),(116,'d9c102579839c5575806334d342b50de',0,0,14,27,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,6),(117,'dc1897c3249dbabe269af49cee92f8c0',0,0,14,27,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,7),(118,'ccd21fe0b5a8c24057f1eff4a6b66391',0,0,14,27,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,8),(119,'ab09d41c358f6b8a9d0cad4eccc25529',0,0,15,76,9,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'CPU Utilization','','',2,1),(120,'5d5b8d8fbe751dc9c86ee86f85d7433b',0,0,15,76,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(121,'4822a98464c6da2afff10c6d12df1831',0,0,15,76,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(122,'fc6fbf2a964bea0b3c88ed0f18616aa7',0,0,15,76,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(123,'e4094625d5443b4c87f9a87ba616a469',0,0,16,25,67,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'File System Reads','','',2,1),(124,'ae68425cd10e8a6623076b2e6859a6aa',0,0,16,25,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(125,'40b8e14c6568b3f6be6a5d89d6a9f061',0,0,16,25,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(126,'4afbdc3851c03e206672930746b1a5e2',0,0,16,25,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(127,'ea47d2b5516e334bc5f6ce1698a3ae76',0,0,16,26,93,'FF',8,0.00,NULL,NULL,0,0,NULL,1,NULL,'File System Writes','','',2,5),(128,'899c48a2f79ea3ad4629aff130d0f371',0,0,16,26,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,6),(129,'ab474d7da77e9ec1f6a1d45c602580cd',0,0,16,26,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,7),(130,'e143f8b4c6d4eeb6a28b052e6b8ce5a9',0,0,16,26,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,8),(131,'facfeeb6fc2255ba2985b2d2f695d78a',0,0,17,23,30,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Current Logins','','',2,1),(132,'2470e43034a5560260d79084432ed14f',0,0,17,23,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(133,'e9e645f07bde92b52d93a7a1f65efb30',0,0,17,23,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(134,'bdfe0d66103211cfdaa267a44a98b092',0,0,17,23,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(139,'098b10c13a5701ddb7d4d1d2e2b0fdb7',0,0,18,30,9,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'CPU Usage','','',2,1),(140,'1dbda412a9926b0ee5c025aa08f3b230',0,0,18,30,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(141,'725c45917146807b6a4257fc351f2bae',0,0,18,30,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(142,'4e336fdfeb84ce65f81ded0e0159a5e0',0,0,18,30,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(143,'7dab7a3ceae2addd1cebddee6c483e7c',0,0,19,39,25,'FF',7,0.00,NULL,NULL,14,0,NULL,1,NULL,'Free Space','','',2,5),(144,'aea239f3ceea8c63d02e453e536190b8',0,0,19,39,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,6),(145,'a0efae92968a6d4ae099b676e0f1430e',0,0,19,39,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,7),(146,'4fd5ba88be16e3d513c9231b78ccf0e1',0,0,19,39,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,8),(147,'d2e98e51189e1d9be8888c3d5c5a4029',0,0,19,38,69,'FF',7,0.00,NULL,NULL,14,0,NULL,1,NULL,'Total Space','','',2,1),(148,'12829294ee3958f4a31a58a61228e027',0,0,19,38,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,2),(149,'4b7e8755b0f2253723c1e9fb21fd37b1',0,0,19,38,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,3),(150,'cbb19ffd7a0ead2bf61512e86d51ee8e',0,0,19,38,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,4),(151,'37b4cbed68f9b77e49149343069843b4',0,0,19,40,95,'FF',5,0.00,NULL,NULL,14,0,NULL,1,NULL,'Freeable Space','','',2,9),(152,'5eb7532200f2b5cc93e13743a7db027c',0,0,19,40,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,10),(153,'b0f9f602fbeaaff090ea3f930b46c1c7',0,0,19,40,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,11),(154,'06477f7ea46c63272cee7253e7cd8760',0,0,19,40,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,12),(171,'a751838f87068e073b95be9555c57bde',0,0,21,56,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,4),(170,'3b13eb2e542fe006c9bf86947a6854fa',0,0,21,56,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,3),(169,'8ef3e7fb7ce962183f489725939ea40f',0,0,21,56,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,2),(167,'6ca2161c37b0118786dbdb46ad767e5d',0,0,21,56,48,'FF',7,0.00,NULL,NULL,14,0,NULL,1,NULL,'Used','','',2,1),(159,'6877a2a5362a9390565758b08b9b37f7',0,0,20,43,77,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Used Directory Entries','','',2,1),(160,'a978834f3d02d833d3d2def243503bf2',0,0,20,43,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(161,'7422d87bc82de20a4333bd2f6460b2d4',0,0,20,43,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(162,'4d52762859a3fec297ebda0e7fd760d9',0,0,20,43,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(163,'999d4ed1128ff03edf8ea47e56d361dd',0,0,20,42,1,'FF',5,0.00,NULL,NULL,0,0,NULL,1,NULL,'Available Directory Entries','','',2,5),(164,'3dfcd7f8c7a760ac89d34398af79b979',0,0,20,42,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,6),(165,'217be75e28505c8f8148dec6b71b9b63',0,0,20,42,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,7),(166,'69b89e1c5d6fc6182c93285b967f970a',0,0,20,42,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,8),(172,'5d6dff9c14c71dc1ebf83e87f1c25695',0,0,21,44,20,'FF',8,0.00,NULL,NULL,14,0,NULL,1,NULL,'Available','','',2,5),(173,'b27cb9a158187d29d17abddc6fdf0f15',0,0,21,44,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,6),(174,'6c0555013bb9b964e51d22f108dae9b0',0,0,21,44,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,7),(175,'42ce58ec17ef5199145fbf9c6ee39869',0,0,21,44,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,8),(176,'9bdff98f2394f666deea028cbca685f3',0,0,21,0,1,'FF',5,0.00,NULL,NULL,15,0,NULL,1,NULL,'Total','','',2,9),(177,'fb831fefcf602bc31d9d24e8e456c2e6',0,0,21,0,0,'FF',9,0.00,NULL,NULL,15,0,NULL,4,NULL,'Current:','','',2,10),(178,'5a958d56785a606c08200ef8dbf8deef',0,0,21,0,0,'FF',9,0.00,NULL,NULL,15,0,NULL,1,NULL,'Average:','','',2,11),(179,'5ce67a658cec37f526dc84ac9e08d6e7',0,0,21,0,0,'FF',9,0.00,NULL,NULL,15,0,NULL,3,NULL,'Maximum:','','on',2,12),(180,'7e04a041721df1f8828381a9ea2f2154',0,0,22,47,31,'FF',4,0.00,NULL,NULL,0,0,NULL,1,NULL,'Discards In','','',2,1),(181,'afc8bca6b1b3030a6d71818272336c6c',0,0,22,47,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(182,'6ac169785f5aeaf1cc5cdfd38dfcfb6c',0,0,22,47,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(183,'178c0a0ce001d36a663ff6f213c07505',0,0,22,47,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(184,'8e3268c0abde7550616bff719f10ee2f',0,0,22,46,48,'FF',4,0.00,NULL,NULL,0,0,NULL,1,NULL,'Errors In','','',2,5),(185,'18891392b149de63b62c4258a68d75f8',0,0,22,46,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,6),(186,'dfc9d23de0182c9967ae3dabdfa55a16',0,0,22,46,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,7),(187,'c47ba64e2e5ea8bf84aceec644513176',0,0,22,46,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,8),(188,'9d052e7d632c479737fbfaced0821f79',0,0,23,49,71,'FF',4,0.00,NULL,NULL,0,0,NULL,1,NULL,'Unicast Packets Out','','',2,5),(189,'9b9fa6268571b6a04fa4411d8e08c730',0,0,23,49,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,6),(190,'8e8f2fbeb624029cbda1d2a6ddd991ba',0,0,23,49,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,7),(191,'c76495beb1ed01f0799838eb8a893124',0,0,23,49,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,8),(192,'d4e5f253f01c3ea77182c5a46418fc44',0,0,23,48,25,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Unicast Packets In','','',2,1),(193,'526a96add143da021c5f00d8764a6c12',0,0,23,48,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(194,'81eeb46f451212f00fd7caee42a81c0b',0,0,23,48,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(195,'089e4d1c3faeb00fd5dcc9622b06d656',0,0,23,48,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(196,'fe66cb973966d22250de073405664200',0,0,24,53,25,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Non-Unicast Packets In','','',2,1),(197,'1ba3fc3466ad32fdd2669cac6cad6faa',0,0,24,53,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(198,'f810154d3a934c723c21659e66199cdf',0,0,24,53,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(199,'98a161df359b01304346657ff1a9d787',0,0,24,53,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(200,'d5e55eaf617ad1f0516f6343b3f07c5e',0,0,24,52,71,'FF',4,0.00,NULL,NULL,0,0,NULL,1,NULL,'Non-Unicast Packets Out','','',2,5),(201,'9fde6b8c84089b9f9044e681162e7567',0,0,24,52,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,6),(202,'9a3510727c3d9fa7e2e7a015783a99b3',0,0,24,52,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,7),(203,'451afd23f2cb59ab9b975fd6e2735815',0,0,24,52,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,8),(204,'617d10dff9bbc3edd9d733d9c254da76',0,0,22,50,18,'FF',4,0.00,NULL,NULL,0,0,NULL,1,NULL,'Discards Out','','',2,9),(205,'9269a66502c34d00ac3c8b1fcc329ac6',0,0,22,50,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,10),(206,'d45deed7e1ad8350f3b46b537ae0a933',0,0,22,50,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,11),(207,'2f64cf47dc156e8c800ae03c3b893e3c',0,0,22,50,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,12),(208,'57434bef8cb21283c1a73f055b0ada19',0,0,22,51,89,'FF',4,0.00,NULL,NULL,0,0,NULL,1,NULL,'Errors Out','','',2,13),(209,'660a1b9365ccbba356fd142faaec9f04',0,0,22,51,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,14),(210,'28c5297bdaedcca29acf245ef4bbed9e',0,0,22,51,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,15),(211,'99098604fd0c78fd7dabac8f40f1fb29',0,0,22,51,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,16),(212,'de3eefd6d6c58afabdabcaf6c0168378',0,0,25,54,22,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Inbound','','',2,1),(213,'1a80fa108f5c46eecb03090c65bc9a12',0,0,25,54,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(214,'fe458892e7faa9d232e343d911e845f3',0,0,25,54,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(215,'175c0a68689bebc38aad2fbc271047b3',0,0,25,54,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(216,'1bf2283106510491ddf3b9c1376c0b31',0,0,25,55,20,'FF',4,0.00,NULL,NULL,0,0,NULL,1,NULL,'Outbound','','',2,5),(217,'c5202f1690ffe45600c0d31a4a804f67',0,0,25,55,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,6),(218,'eb9794e3fdafc2b74f0819269569ed40',0,0,25,55,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,7),(219,'6bcedd61e3ccf7518ca431940c93c439',0,0,25,55,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,8),(303,'b7b381d47972f836785d338a3bef6661',0,0,26,78,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,8),(304,'36fa8063df3b07cece878d54443db727',0,0,26,78,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,7),(305,'2c35b5cae64c5f146a55fcb416dd14b5',0,0,26,78,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,6),(306,'16d6a9a7f608762ad65b0841e5ef4e9c',0,0,26,78,48,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Used','','',2,5),(307,'d80e4a4901ab86ee39c9cc613e13532f',0,0,26,92,20,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Total','','',2,1),(308,'567c2214ee4753aa712c3d101ea49a5d',0,0,26,92,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(309,'ba0b6a9e316ef9be66abba68b80f7587',0,0,26,92,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(310,'4b8e4a6bf2757f04c3e3a088338a2f7a',0,0,26,92,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(317,'8536e034ab5268a61473f1ff2f6bd88f',0,0,27,79,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(316,'d478a76de1df9edf896c9ce51506c483',0,0,27,79,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(315,'42537599b5fb8ea852240b58a58633de',0,0,27,79,9,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'CPU Utilization','','',2,1),(318,'87e10f9942b625aa323a0f39b60058e7',0,0,27,79,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(319,'38f6891b0db92aa8950b4ce7ae902741',0,0,28,81,67,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Users','','',2,1),(320,'af13152956a20aa894ef4a4067b88f63',0,0,28,81,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(321,'1b2388bbede4459930c57dc93645284e',0,0,28,81,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(322,'6407dc226db1d03be9730f4d6f3eeccf',0,0,28,81,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(323,'fca6a530c8f37476b9004a90b42ee988',0,0,29,80,48,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Running Processes','','',2,1),(324,'5acebbde3dc65e02f8fda03955852fbe',0,0,29,80,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(325,'311079ffffac75efaab2837df8123122',0,0,29,80,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(326,'724d27007ebf31016cfa5530fee1b867',0,0,29,80,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(373,'1995d8c23e7d8e1efa2b2c55daf3c5a7',0,0,32,54,22,'FF',7,0.00,NULL,NULL,2,0,NULL,1,NULL,'Inbound','','',2,1),(358,'803b96bcaec33148901b4b562d9d2344',0,0,30,29,89,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Open Files','','',2,1),(359,'da26dd92666cb840f8a70e2ec5e90c07',0,0,30,29,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',3,2),(360,'5258970186e4407ed31cca2782650c45',0,0,30,29,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',3,3),(361,'7d08b996bde9cdc7efa650c7031137b4',0,0,30,29,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',3,4),(362,'918e6e7d41bb4bae0ea2937b461742a4',0,0,31,54,22,'FF',7,0.00,NULL,NULL,2,0,NULL,1,NULL,'Inbound','','',2,1),(363,'f19fbd06c989ea85acd6b4f926e4a456',0,0,31,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,4,NULL,'Current:','','',2,2),(364,'fc150a15e20c57e11e8d05feca557ef9',0,0,31,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,1,NULL,'Average:','','',2,3),(365,'ccbd86e03ccf07483b4d29e63612fb18',0,0,31,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,3,NULL,'Maximum:','','on',2,4),(366,'964c5c30cd05eaf5a49c0377d173de86',0,0,31,55,20,'FF',4,0.00,NULL,NULL,2,0,NULL,1,NULL,'Outbound','','',2,5),(367,'b1a6fb775cf62e79e1c4bc4933c7e4ce',0,0,31,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,4,NULL,'Current:','','',2,6),(368,'721038182a872ab266b5cf1bf7f7755c',0,0,31,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,1,NULL,'Average:','','',2,7),(369,'2302f80c2c70b897d12182a1fc11ecd6',0,0,31,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,3,NULL,'Maximum:','','on',2,8),(370,'4ffc7af8533d103748316752b70f8e3c',0,0,31,0,0,'FF',1,0.00,NULL,NULL,0,0,NULL,1,NULL,'','','',2,9),(371,'64527c4b6eeeaf627acc5117ff2180fd',0,0,31,55,9,'FF',2,0.00,NULL,NULL,0,0,NULL,1,NULL,'95th Percentile','|95:bits:0:max:2|','',2,10),(372,'d5bbcbdbf83ae858862611ac6de8fc62',0,0,31,55,0,'FF',1,0.00,NULL,NULL,0,0,NULL,1,NULL,'(|95:bits:6:max:2| mbit in+out)','','on',2,11),(374,'55083351cd728b82cc4dde68eb935700',0,0,32,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,4,NULL,'Current:','','',2,2),(375,'54782f71929e7d1734ed5ad4b8dda50d',0,0,32,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,1,NULL,'Average:','','',2,3),(376,'88d3094d5dc2164cbf2f974aeb92f051',0,0,32,54,0,'FF',9,0.00,NULL,NULL,2,0,NULL,3,NULL,'Maximum:','','on',2,4),(377,'4a381a8e87d4db1ac99cf8d9078266d3',0,0,32,55,20,'FF',4,0.00,NULL,NULL,2,0,NULL,1,NULL,'Outbound','','',2,6),(378,'5bff63207c7bf076d76ff3036b5dad54',0,0,32,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,4,NULL,'Current:','','',2,7),(379,'979fff9d691ca35e3f4b3383d9cae43f',0,0,32,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,1,NULL,'Average:','','',2,8),(380,'0e715933830112c23c15f7e3463f77b6',0,0,32,55,0,'FF',9,0.00,NULL,NULL,2,0,NULL,3,NULL,'Maximum:','','on',2,11),(383,'5b43e4102600ad75379c5afd235099c4',0,0,32,54,0,'FF',1,0.00,NULL,NULL,0,0,NULL,1,NULL,'Total In:  |sum:auto:current:2:auto|','','on',2,5),(384,'db7c15d253ca666601b3296f2574edc9',0,0,32,55,0,'FF',1,0.00,NULL,NULL,0,0,NULL,1,NULL,'Total Out: |sum:auto:current:2:auto|','','on',2,12),(385,'fdaec5b9227522c758ad55882c483a83',0,0,33,55,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,11),(386,'6824d29c3f13fe1e849f1dbb8377d3f1',0,0,33,55,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,8),(387,'54e3971b3dd751dd2509f62721c12b41',0,0,33,55,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,7),(388,'cf8c9f69878f0f595d583eac109a9be1',0,0,33,55,20,'FF',4,0.00,NULL,NULL,0,0,NULL,1,NULL,'Outbound','','',2,6),(389,'de265acbbfa99eb4b3e9f7e90c7feeda',0,0,33,54,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4),(390,'777aa88fb0a79b60d081e0e3759f1cf7',0,0,33,54,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(391,'66bfdb701c8eeadffe55e926d6e77e71',0,0,33,54,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(392,'3ff8dba1ca6279692b3fcabed0bc2631',0,0,33,54,22,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'Inbound','','',2,1),(393,'d6041d14f9c8fb9b7ddcf3556f763c03',0,0,33,55,0,'FF',1,0.00,NULL,NULL,0,0,NULL,1,NULL,'Total Out: |sum:auto:current:2:auto|','','on',2,12),(394,'76ae747365553a02313a2d8a0dd55c8a',0,0,33,54,0,'FF',1,0.00,NULL,NULL,0,0,NULL,1,NULL,'Total In:  |sum:auto:current:2:auto|','','on',2,5),(403,'8a1b44ab97d3b56207d0e9e77a035d25',0,0,13,95,30,'FF',8,0.00,NULL,NULL,14,0,NULL,1,NULL,'Cache Memory','','',2,9),(404,'6db3f439e9764941ff43fbaae348f5dc',0,0,13,95,0,'FF',9,0.00,NULL,NULL,14,0,NULL,4,NULL,'Current:','','',2,10),(405,'cc9b2fe7acf0820caa61c1519193f65e',0,0,13,95,0,'FF',9,0.00,NULL,NULL,14,0,NULL,1,NULL,'Average:','','',2,11),(406,'9eea140bdfeaa40d50c5cdcd1f23f72d',0,0,13,95,0,'FF',9,0.00,NULL,NULL,14,0,NULL,3,NULL,'Maximum:','','on',2,12),(407,'41316670b1a36171de2bda91a0cc2364',0,0,34,96,98,'FF',7,0.00,NULL,NULL,0,0,NULL,1,NULL,'','','',2,1),(408,'c9e8cbdca0215b434c902e68755903ea',0,0,34,96,0,'FF',9,0.00,NULL,NULL,0,0,NULL,4,NULL,'Current:','','',2,2),(409,'dab91d7093e720841393feea5bdcba85',0,0,34,96,0,'FF',9,0.00,NULL,NULL,0,0,NULL,1,NULL,'Average:','','',2,3),(410,'03e5bd2151fea3c90843eb1130b84458',0,0,34,96,0,'FF',9,0.00,NULL,NULL,0,0,NULL,3,NULL,'Maximum:','','on',2,4);
/*!40000 ALTER TABLE `graph_templates_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_tree`
--

DROP TABLE IF EXISTS `graph_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_tree` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `enabled` char(2) DEFAULT 'on',
  `locked` tinyint(4) DEFAULT '0',
  `locked_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sort_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(10) unsigned DEFAULT '1',
  `user_id` int(10) unsigned DEFAULT '1',
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sequence` (`sequence`),
  KEY `name` (`name`(171))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_tree`
--

LOCK TABLES `graph_tree` WRITE;
/*!40000 ALTER TABLE `graph_tree` DISABLE KEYS */;
INSERT INTO `graph_tree` VALUES (1,'on',0,'0000-00-00 00:00:00',1,'Default Tree',1,1,'0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `graph_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_tree_items`
--

DROP TABLE IF EXISTS `graph_tree_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_tree_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `graph_tree_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `local_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned DEFAULT '0',
  `host_grouping_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_children_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `graph_regex` varchar(60) DEFAULT '',
  `host_regex` varchar(60) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `graph_tree_id` (`graph_tree_id`),
  KEY `host_id` (`host_id`),
  KEY `local_graph_id` (`local_graph_id`),
  KEY `parent_position` (`parent`,`position`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_tree_items`
--

LOCK TABLES `graph_tree_items` WRITE;
/*!40000 ALTER TABLE `graph_tree_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `graph_tree_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `poller_id` int(10) unsigned NOT NULL DEFAULT '1',
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `host_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `description` varchar(150) NOT NULL DEFAULT '',
  `hostname` varchar(100) DEFAULT '',
  `notes` text,
  `external_id` varchar(40) DEFAULT NULL,
  `snmp_community` varchar(100) DEFAULT NULL,
  `snmp_version` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `snmp_username` varchar(50) DEFAULT NULL,
  `snmp_password` varchar(50) DEFAULT NULL,
  `snmp_auth_protocol` char(6) DEFAULT '',
  `snmp_priv_passphrase` varchar(200) DEFAULT '',
  `snmp_priv_protocol` char(6) DEFAULT '',
  `snmp_context` varchar(64) DEFAULT '',
  `snmp_engine_id` varchar(64) DEFAULT '',
  `snmp_port` mediumint(5) unsigned NOT NULL DEFAULT '161',
  `snmp_timeout` mediumint(8) unsigned NOT NULL DEFAULT '500',
  `snmp_sysDescr` varchar(300) NOT NULL DEFAULT '',
  `snmp_sysObjectID` varchar(128) NOT NULL DEFAULT '',
  `snmp_sysUpTimeInstance` int(10) unsigned NOT NULL DEFAULT '0',
  `snmp_sysContact` varchar(300) NOT NULL DEFAULT '',
  `snmp_sysName` varchar(300) NOT NULL DEFAULT '',
  `snmp_sysLocation` varchar(300) NOT NULL DEFAULT '',
  `availability_method` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ping_method` smallint(5) unsigned DEFAULT '0',
  `ping_port` int(12) unsigned DEFAULT '0',
  `ping_timeout` int(12) unsigned DEFAULT '500',
  `ping_retries` int(12) unsigned DEFAULT '2',
  `max_oids` int(12) unsigned DEFAULT '10',
  `device_threads` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `disabled` char(2) DEFAULT '',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `status_event_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status_fail_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_rec_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_last_error` varchar(255) DEFAULT '',
  `min_time` decimal(10,5) DEFAULT '9.99999',
  `max_time` decimal(10,5) DEFAULT '0.00000',
  `cur_time` decimal(10,5) DEFAULT '0.00000',
  `avg_time` decimal(10,5) DEFAULT '0.00000',
  `polling_time` double DEFAULT '0',
  `total_polls` int(12) unsigned DEFAULT '0',
  `failed_polls` int(12) unsigned DEFAULT '0',
  `availability` decimal(8,5) NOT NULL DEFAULT '100.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`),
  KEY `site_id` (`site_id`),
  KEY `external_id` (`external_id`),
  KEY `hostname` (`hostname`),
  KEY `status` (`status`),
  KEY `poller_id_disabled` (`poller_id`,`disabled`),
  KEY `poller_id_last_updated` (`poller_id`,`last_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_graph`
--

DROP TABLE IF EXISTS `host_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_graph` (
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`host_id`,`graph_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_graph`
--

LOCK TABLES `host_graph` WRITE;
/*!40000 ALTER TABLE `host_graph` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_snmp_cache`
--

DROP TABLE IF EXISTS `host_snmp_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_snmp_cache` (
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(50) NOT NULL DEFAULT '',
  `field_value` varchar(512) DEFAULT NULL,
  `snmp_index` varchar(191) NOT NULL DEFAULT '',
  `oid` text NOT NULL,
  `present` tinyint(4) NOT NULL DEFAULT '1',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`host_id`,`snmp_query_id`,`field_name`,`snmp_index`),
  KEY `host_id` (`host_id`,`field_name`),
  KEY `snmp_index` (`snmp_index`),
  KEY `field_name` (`field_name`),
  KEY `field_value` (`field_value`),
  KEY `snmp_query_id` (`snmp_query_id`),
  KEY `present` (`present`),
  KEY `last_updated` (`last_updated`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_snmp_cache`
--

LOCK TABLES `host_snmp_cache` WRITE;
/*!40000 ALTER TABLE `host_snmp_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_snmp_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_snmp_query`
--

DROP TABLE IF EXISTS `host_snmp_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_snmp_query` (
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sort_field` varchar(50) NOT NULL DEFAULT '',
  `title_format` varchar(50) NOT NULL DEFAULT '',
  `reindex_method` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`host_id`,`snmp_query_id`),
  KEY `host_id` (`host_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_snmp_query`
--

LOCK TABLES `host_snmp_query` WRITE;
/*!40000 ALTER TABLE `host_snmp_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_snmp_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_template`
--

DROP TABLE IF EXISTS `host_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_template` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_template`
--

LOCK TABLES `host_template` WRITE;
/*!40000 ALTER TABLE `host_template` DISABLE KEYS */;
INSERT INTO `host_template` VALUES (1,'4855b0e3e553085ed57219690285f91f','Generic SNMP-enabled Host'),(3,'07d3fe6a52915f99e642d22e27d967a4','ucd/net SNMP Host'),(4,'4e5dc8dd115264c2e9f3adb725c29413','Karlnet Wireless Bridge'),(5,'cae6a879f86edacb2471055783bec6d0','Cisco Router'),(6,'9ef418b4251751e09c3c416704b01b01','Netware 4/5 Server'),(7,'5b8300be607dce4f030b026a381b91cd','Windows 2000/XP Host'),(8,'2d3e47f416738c2d22c87c40218cc55e','Local Linux Machine');
/*!40000 ALTER TABLE `host_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_template_graph`
--

DROP TABLE IF EXISTS `host_template_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_template_graph` (
  `host_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`host_template_id`,`graph_template_id`),
  KEY `host_template_id` (`host_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_template_graph`
--

LOCK TABLES `host_template_graph` WRITE;
/*!40000 ALTER TABLE `host_template_graph` DISABLE KEYS */;
INSERT INTO `host_template_graph` VALUES (3,4),(3,11),(3,13),(5,18),(6,14),(6,16),(6,17),(6,30),(7,28),(7,29),(8,8),(8,9),(8,10),(8,12);
/*!40000 ALTER TABLE `host_template_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_template_snmp_query`
--

DROP TABLE IF EXISTS `host_template_snmp_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_template_snmp_query` (
  `host_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`host_template_id`,`snmp_query_id`),
  KEY `host_template_id` (`host_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_template_snmp_query`
--

LOCK TABLES `host_template_snmp_query` WRITE;
/*!40000 ALTER TABLE `host_template_snmp_query` DISABLE KEYS */;
INSERT INTO `host_template_snmp_query` VALUES (1,1),(3,1),(3,2),(4,1),(4,3),(5,1),(6,1),(6,4),(6,7),(7,1),(7,8),(7,9),(8,6);
/*!40000 ALTER TABLE `host_template_snmp_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_config`
--

DROP TABLE IF EXISTS `plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `directory` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `author` varchar(64) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `directory` (`directory`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_config`
--

LOCK TABLES `plugin_config` WRITE;
/*!40000 ALTER TABLE `plugin_config` DISABLE KEYS */;
INSERT INTO `plugin_config` VALUES (2,'settings','Global Plugin Settings',4,'Jimmy Conner','http://cactiusers.org','0.7'),(4,'rrdclean','RRD File Cleaner',4,'Reinhard Scheck','http://docs.cacti.net/plugin:rrdclean','0.41'),(9,'syslog','Syslog Monitoring',4,'Jimmy Conner','http://cactiusers.org','1.22'),(10,'weathermap','PHP Network Weathermap',4,'Howard Jones','http://www.network-weathermap.com/','0.98');
/*!40000 ALTER TABLE `plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_db_changes`
--

DROP TABLE IF EXISTS `plugin_db_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_db_changes` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plugin` varchar(16) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `column` varchar(64) NOT NULL,
  `method` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `plugin` (`plugin`),
  KEY `method` (`method`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_db_changes`
--

LOCK TABLES `plugin_db_changes` WRITE;
/*!40000 ALTER TABLE `plugin_db_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin_db_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_hooks`
--

DROP TABLE IF EXISTS `plugin_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_hooks` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `hook` varchar(64) NOT NULL DEFAULT '',
  `file` varchar(255) NOT NULL DEFAULT '',
  `function` varchar(128) NOT NULL DEFAULT '',
  `status` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_hooks`
--

LOCK TABLES `plugin_hooks` WRITE;
/*!40000 ALTER TABLE `plugin_hooks` DISABLE KEYS */;
INSERT INTO `plugin_hooks` VALUES (1,'internal','config_arrays','','plugin_config_arrays',1),(2,'internal','draw_navigation_text','','plugin_draw_navigation_text',1),(10,'settings','config_settings','setup.php','settings_config_settings',0),(16,'rrdclean','config_arrays','setup.php','rrdclean_config_arrays',0),(17,'rrdclean','draw_navigation_text','setup.php','rrdclean_draw_navigation_text',0),(18,'rrdclean','config_settings','setup.php','rrdclean_config_settings',0),(19,'rrdclean','poller_bottom','setup.php','rrdclean_poller_bottom',0),(40,'syslog','graph_buttons','setup.php','syslog_graph_buttons',0),(39,'syslog','poller_bottom','setup.php','syslog_poller_bottom',0),(38,'syslog','top_graph_refresh','setup.php','syslog_top_graph_refresh',0),(37,'syslog','top_graph_header_tabs','setup.php','syslog_show_tab',0),(36,'syslog','top_header_tabs','setup.php','syslog_show_tab',0),(35,'syslog','config_settings','setup.php','syslog_config_settings',0),(34,'syslog','draw_navigation_text','setup.php','syslog_draw_navigation_text',0),(33,'syslog','config_arrays','setup.php','syslog_config_arrays',0),(41,'syslog','config_insert','setup.php','syslog_config_insert',0),(42,'weathermap','config_arrays','setup.php','weathermap_config_arrays',0),(43,'weathermap','config_settings','setup.php','weathermap_config_settings',0),(44,'weathermap','top_header_tabs','setup.php','weathermap_show_tab',0),(45,'weathermap','top_graph_header_tabs','setup.php','weathermap_show_tab',0),(46,'weathermap','draw_navigation_text','setup.php','weathermap_draw_navigation_text',0),(47,'weathermap','top_graph_refresh','setup.php','weathermap_top_graph_refresh',0),(48,'weathermap','page_title','setup.php','weathermap_page_title',0),(49,'weathermap','page_head','setup.php','weathermap_page_head',0),(50,'weathermap','poller_top','setup.php','weathermap_poller_top',0),(51,'weathermap','poller_output','setup.php','weathermap_poller_output',0),(52,'weathermap','poller_bottom','setup.php','weathermap_poller_bottom',0);
/*!40000 ALTER TABLE `plugin_hooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_realms`
--

DROP TABLE IF EXISTS `plugin_realms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_realms` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plugin` varchar(32) NOT NULL DEFAULT '',
  `file` text NOT NULL,
  `display` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `plugin` (`plugin`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_realms`
--

LOCK TABLES `plugin_realms` WRITE;
/*!40000 ALTER TABLE `plugin_realms` DISABLE KEYS */;
INSERT INTO `plugin_realms` VALUES (1,'internal','plugins.php','Plugin Management'),(4,'settings','email-test.php','Send Test Email'),(5,'weathermap','weathermap-cacti-plugin.php','Plugin -> Weathermap: View'),(6,'weathermap','weathermap-cacti-plugin-mgmt.php','Plugin -> Weathermap: Configure/Manage'),(7,'rrdclean','rrdcleaner.php,rrdmove.php','RRD Cleaner'),(11,'syslog','syslog.php','Plugin -> Syslog User'),(12,'syslog','syslog_alerts.php,syslog_removal.php,syslog_reports.php','Plugin -> Syslog Administration'),(13,'weathermap','weathermap-cacti-plugin-editor.php','Plugin -> Weathermap: Edit Maps');
/*!40000 ALTER TABLE `plugin_realms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_rrdclean`
--

DROP TABLE IF EXISTS `plugin_rrdclean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_rrdclean` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `last_mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `size` varchar(255) NOT NULL DEFAULT '',
  `name_cache` varchar(255) NOT NULL DEFAULT '',
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_name` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='RRD Cleaner File Repository';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_rrdclean`
--

LOCK TABLES `plugin_rrdclean` WRITE;
/*!40000 ALTER TABLE `plugin_rrdclean` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin_rrdclean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_rrdclean_action`
--

DROP TABLE IF EXISTS `plugin_rrdclean_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_rrdclean_action` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='RRD Cleaner File Actions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_rrdclean_action`
--

LOCK TABLES `plugin_rrdclean_action` WRITE;
/*!40000 ALTER TABLE `plugin_rrdclean_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin_rrdclean_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller`
--

DROP TABLE IF EXISTS `poller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `disabled` char(2) DEFAULT '',
  `name` varchar(30) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT '',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(100) NOT NULL DEFAULT '',
  `dbdefault` varchar(20) NOT NULL DEFAULT 'cacti',
  `dbhost` varchar(64) NOT NULL DEFAULT 'cacti',
  `dbuser` varchar(20) NOT NULL DEFAULT '',
  `dbpass` varchar(64) NOT NULL DEFAULT '',
  `dbport` int(10) unsigned DEFAULT '3306',
  `dbssl` char(3) DEFAULT '',
  `total_time` double DEFAULT '0',
  `snmp` mediumint(8) unsigned DEFAULT '0',
  `script` mediumint(8) unsigned DEFAULT '0',
  `server` mediumint(8) unsigned DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_status` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Pollers for Cacti';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller`
--

LOCK TABLES `poller` WRITE;
/*!40000 ALTER TABLE `poller` DISABLE KEYS */;
INSERT INTO `poller` VALUES (1,'','Main Poller','',0,'centos7.axians.local','cacti','','','',3306,'',0,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `poller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_command`
--

DROP TABLE IF EXISTS `poller_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_command` (
  `poller_id` smallint(5) unsigned NOT NULL DEFAULT '1',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `action` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `command` varchar(191) NOT NULL DEFAULT '',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`poller_id`,`action`,`command`),
  KEY `poller_id_last_updated` (`poller_id`,`last_updated`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_command`
--

LOCK TABLES `poller_command` WRITE;
/*!40000 ALTER TABLE `poller_command` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_data_template_field_mappings`
--

DROP TABLE IF EXISTS `poller_data_template_field_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_data_template_field_mappings` (
  `data_template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `data_name` varchar(40) NOT NULL DEFAULT '',
  `data_source_names` varchar(125) NOT NULL DEFAULT '',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`data_template_id`,`data_name`,`data_source_names`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tracks mapping of Data Templates to their Data Source Names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_data_template_field_mappings`
--

LOCK TABLES `poller_data_template_field_mappings` WRITE;
/*!40000 ALTER TABLE `poller_data_template_field_mappings` DISABLE KEYS */;
INSERT INTO `poller_data_template_field_mappings` VALUES (11,'10min','load_15min','2018-05-17 14:41:26'),(11,'1min','load_1min','2018-05-17 14:41:26'),(11,'5min','load_5min','2018-05-17 14:41:26'),(13,'kilobytes','mem_buffers','2018-05-17 14:41:26'),(15,'kilobytes','mem_swap','2018-05-17 14:41:26'),(16,'proc','proc','2018-05-17 14:41:26'),(17,'users','users','2018-05-17 14:41:26'),(18,'out_ms','ping','2018-05-17 14:41:26');
/*!40000 ALTER TABLE `poller_data_template_field_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_item`
--

DROP TABLE IF EXISTS `poller_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_item` (
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poller_id` int(10) unsigned NOT NULL DEFAULT '1',
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `present` tinyint(4) NOT NULL DEFAULT '1',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hostname` varchar(100) NOT NULL DEFAULT '',
  `snmp_community` varchar(100) NOT NULL DEFAULT '',
  `snmp_version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `snmp_username` varchar(50) NOT NULL DEFAULT '',
  `snmp_password` varchar(50) NOT NULL DEFAULT '',
  `snmp_auth_protocol` char(6) NOT NULL DEFAULT '',
  `snmp_priv_passphrase` varchar(200) NOT NULL DEFAULT '',
  `snmp_priv_protocol` char(6) NOT NULL DEFAULT '',
  `snmp_context` varchar(64) DEFAULT '',
  `snmp_engine_id` varchar(64) DEFAULT '',
  `snmp_port` mediumint(5) unsigned NOT NULL DEFAULT '161',
  `snmp_timeout` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rrd_name` varchar(19) NOT NULL DEFAULT '',
  `rrd_path` varchar(255) NOT NULL DEFAULT '',
  `rrd_num` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rrd_step` mediumint(8) NOT NULL DEFAULT '300',
  `rrd_next_step` mediumint(8) NOT NULL DEFAULT '0',
  `arg1` text,
  `arg2` varchar(255) DEFAULT NULL,
  `arg3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`local_data_id`,`rrd_name`),
  KEY `host_id` (`host_id`),
  KEY `action` (`action`),
  KEY `present` (`present`),
  KEY `poller_id_host_id` (`poller_id`,`host_id`),
  KEY `poller_id_rrd_next_step` (`poller_id`,`rrd_next_step`),
  KEY `poller_id_action` (`poller_id`,`action`),
  KEY `poller_id_last_updated` (`poller_id`,`last_updated`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_item`
--

LOCK TABLES `poller_item` WRITE;
/*!40000 ALTER TABLE `poller_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_output`
--

DROP TABLE IF EXISTS `poller_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_output` (
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rrd_name` varchar(19) NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `output` varchar(512) NOT NULL DEFAULT '',
  PRIMARY KEY (`local_data_id`,`rrd_name`,`time`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_output`
--

LOCK TABLES `poller_output` WRITE;
/*!40000 ALTER TABLE `poller_output` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_output_boost`
--

DROP TABLE IF EXISTS `poller_output_boost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_output_boost` (
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rrd_name` varchar(19) NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `output` varchar(512) NOT NULL,
  PRIMARY KEY (`local_data_id`,`time`,`rrd_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_output_boost`
--

LOCK TABLES `poller_output_boost` WRITE;
/*!40000 ALTER TABLE `poller_output_boost` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_output_boost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_output_boost_processes`
--

DROP TABLE IF EXISTS `poller_output_boost_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_output_boost_processes` (
  `sock_int_value` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sock_int_value`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_output_boost_processes`
--

LOCK TABLES `poller_output_boost_processes` WRITE;
/*!40000 ALTER TABLE `poller_output_boost_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_output_boost_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_output_realtime`
--

DROP TABLE IF EXISTS `poller_output_realtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_output_realtime` (
  `local_data_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rrd_name` varchar(19) NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `output` text NOT NULL,
  `poller_id` varchar(256) NOT NULL DEFAULT '1',
  PRIMARY KEY (`local_data_id`,`rrd_name`,`time`),
  KEY `poller_id` (`poller_id`(191)),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_output_realtime`
--

LOCK TABLES `poller_output_realtime` WRITE;
/*!40000 ALTER TABLE `poller_output_realtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_output_realtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_reindex`
--

DROP TABLE IF EXISTS `poller_reindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_reindex` (
  `host_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `present` tinyint(4) NOT NULL DEFAULT '1',
  `op` char(1) NOT NULL DEFAULT '',
  `assert_value` varchar(100) NOT NULL DEFAULT '',
  `arg1` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`host_id`,`data_query_id`),
  KEY `present` (`present`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_reindex`
--

LOCK TABLES `poller_reindex` WRITE;
/*!40000 ALTER TABLE `poller_reindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_reindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_resource_cache`
--

DROP TABLE IF EXISTS `poller_resource_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_resource_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resource_type` varchar(20) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contents` longblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Caches all scripts, resources files, and plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_resource_cache`
--

LOCK TABLES `poller_resource_cache` WRITE;
/*!40000 ALTER TABLE `poller_resource_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `poller_resource_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poller_time`
--

DROP TABLE IF EXISTS `poller_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poller_time` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `poller_id` int(10) unsigned NOT NULL DEFAULT '1',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `poller_id_end_time` (`poller_id`,`end_time`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poller_time`
--

LOCK TABLES `poller_time` WRITE;
/*!40000 ALTER TABLE `poller_time` DISABLE KEYS */;
INSERT INTO `poller_time` VALUES (1,2401,1,'2017-02-08 19:20:02','2017-02-08 19:20:02');
/*!40000 ALTER TABLE `poller_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `cformat` char(2) NOT NULL DEFAULT '',
  `format_file` varchar(255) NOT NULL DEFAULT '',
  `font_size` smallint(2) unsigned NOT NULL DEFAULT '0',
  `alignment` smallint(2) unsigned NOT NULL DEFAULT '0',
  `graph_linked` char(2) NOT NULL DEFAULT '',
  `intrvl` smallint(2) unsigned NOT NULL DEFAULT '0',
  `count` smallint(2) unsigned NOT NULL DEFAULT '0',
  `offset` int(12) unsigned NOT NULL DEFAULT '0',
  `mailtime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(64) NOT NULL DEFAULT '',
  `from_name` varchar(40) NOT NULL,
  `from_email` text NOT NULL,
  `email` text NOT NULL,
  `bcc` text NOT NULL,
  `attachment_type` smallint(2) unsigned NOT NULL DEFAULT '1',
  `graph_height` smallint(2) unsigned NOT NULL DEFAULT '0',
  `graph_width` smallint(2) unsigned NOT NULL DEFAULT '0',
  `graph_columns` smallint(2) unsigned NOT NULL DEFAULT '0',
  `thumbnails` char(2) NOT NULL DEFAULT '',
  `lastsent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `enabled` char(2) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mailtime` (`mailtime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cacri Reporting Reports';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports_items`
--

DROP TABLE IF EXISTS `reports_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `tree_id` int(10) unsigned NOT NULL DEFAULT '0',
  `branch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tree_cascade` char(2) NOT NULL DEFAULT '',
  `graph_name_regexp` varchar(128) NOT NULL DEFAULT '',
  `host_template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `host_id` int(10) unsigned NOT NULL DEFAULT '0',
  `graph_template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `local_graph_id` int(10) unsigned NOT NULL DEFAULT '0',
  `timespan` int(10) unsigned NOT NULL DEFAULT '0',
  `align` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `item_text` text NOT NULL,
  `font_size` smallint(2) unsigned NOT NULL DEFAULT '10',
  `sequence` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `report_id` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cacti Reporting Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports_items`
--

LOCK TABLES `reports_items` WRITE;
/*!40000 ALTER TABLE `reports_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(32) NOT NULL,
  `remote_addr` varchar(25) NOT NULL DEFAULT '',
  `access` int(10) unsigned DEFAULT NULL,
  `data` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for Database based Session Storage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('path_rrdtool','/usr/bin/rrdtool'),('path_php_binary','/usr/bin/php'),('path_snmpwalk','/usr/bin/snmpwalk'),('path_snmpget','/usr/bin/snmpget'),('path_snmpbulkwalk','/usr/bin/snmpbulkwalk'),('path_snmpgetnext','/usr/bin/snmpgetnext'),('path_cactilog','/srv/eyesofnetwork/cacti/log/cacti.log'),('snmp_version','net-snmp'),('rrdtool_version','rrd-1.4.x'),('plugin_settings_version','0.7'),('oldplugins',''),('weathermap_pagestyle','0'),('weathermap_cycle_refresh','0'),('weathermap_render_period','0'),('weathermap_quiet_logging','1'),('weathermap_render_counter','422'),('weathermap_output_format','png'),('weathermap_thumbsize','250'),('weathermap_map_selector','1'),('weathermap_all_tab','0'),('weathermap_db_version','0.98'),('syslog_retention','30'),('auth_method','0'),('guest_user','0'),('user_template','0'),('ldap_server',''),('ldap_port','389'),('ldap_port_ssl','636'),('ldap_version','3'),('ldap_encryption','0'),('ldap_referrals','0'),('ldap_mode','0'),('ldap_dn',''),('ldap_group_require',''),('ldap_group_dn',''),('ldap_group_attrib',''),('ldap_group_member_type','1'),('ldap_search_base',''),('ldap_search_filter',''),('ldap_specific_dn',''),('ldap_specific_password',''),('log_destination','1'),('log_snmp',''),('log_graph',''),('log_export',''),('log_verbosity','2'),('log_pstats',''),('log_pwarn',''),('log_perror','on'),('snmp_ver','2'),('snmp_community','EyesOfNetwork'),('snmp_username',''),('snmp_password',''),('snmp_auth_protocol','MD5'),('snmp_priv_passphrase',''),('snmp_priv_protocol','DES'),('snmp_timeout','1000'),('snmp_port','161'),('snmp_retries','3'),('reindex_method','1'),('deletion_verification','on'),('poller_enabled','on'),('poller_type','2'),('poller_interval','300'),('cron_interval','300'),('concurrent_processes','1'),('process_leveling','on'),('max_threads','10'),('php_servers','1'),('script_timeout','25'),('max_get_size','10'),('availability_method','2'),('ping_method','1'),('ping_port','23'),('ping_timeout','400'),('ping_retries','1'),('ping_failure_count','2'),('ping_recovery_count','3'),('aggregate_log_verbosity','1'),('ntop_url',''),('rrd_backup','/srv/eyesofnetwork/cacti/rra/backup/'),('rrd_archive','/srv/eyesofnetwork/cacti/rra/archive/'),('path_spine','/usr/bin/spine'),('syslog_enabled','on'),('syslog_refresh','300'),('syslog_maxrecords','100'),('syslog_html',''),('syslog_email',''),('syslog_emailname',''),('syslog_emer_bg','9'),('syslog_crit_bg','42'),('syslog_alert_bg','39'),('syslog_err_bg','29'),('syslog_warn_bg','25'),('syslog_notice_bg','63'),('syslog_info_bg','97'),('syslog_debug_bg','50'),('syslog_other_bg','80'),('syslog_emer_fg','1'),('syslog_crit_fg','1'),('syslog_alert_fg','1'),('syslog_err_fg','1'),('syslog_warn_fg','1'),('syslog_notice_fg','1'),('syslog_info_fg','1'),('syslog_debug_fg','1'),('syslog_other_fg','1'),('num_rows_graph','30'),('max_title_graph','80'),('max_data_query_field_length','50'),('default_graphs_new_dropdown','-2'),('num_rows_data_query','30'),('num_rows_data_source','30'),('max_title_data_source','80'),('num_rows_device','30'),('num_rows_log','500'),('log_refresh_interval','60'),('title_size','10'),('title_font',''),('legend_size','8'),('legend_font',''),('axis_size','8'),('axis_font',''),('unit_size','8'),('unit_font',''),('num_rows_syslog','30'),('syslog_domains',''),('syslog_alert_retention','30'),('syslog_emerg_bg','9'),('syslog_emerg_fg','1'),('realtime_gwindow','60'),('realtime_sync','on'),('realtime_ajax','on'),('realtime_interval','15'),('realtime_cache_path','/srv/eyesofnetwork/cacti/plugins/realtime/cache'),('poller_lastrun','1486560002'),('path_webroot','/srv/eyesofnetwork/cacti-0.8.8h'),('date','2017-02-08 14:20:02'),('stats_poller','Time:0.1688 Method:spine Processes:1 Threads:10 Hosts:1 HostsPerProcess:1 DataSources:0 RRDsProcessed:0'),('stats_recache','RecacheTime:0.0 HostsRecached:0'),('weathermap_last_start_time','1463498402'),('weathermap_last_stats','Tue, 17 May 16 17:20:02 +0200: 0 maps were run in 0 seconds with 0 warnings.'),('weathermap_last_finish_time','1463498402'),('syslog_stats','time:0.05 deletes:0 incoming:0 removes:0 xfers:0 alerts:0 alarms:0 reports:0'),('rsa_public_key','-----BEGIN PUBLIC KEY-----MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAywJFRV4XQXU83i6qrWIqz3IgD+udIe6bNR2KInlag2YPJvsMJKv0YCTyWnmWZogsVzo28ponTvF3aMwmGPJhnV4audOXTQIqDh1Y0iE1+e7MauwwPRhGAd5P958vupiR70wc57eFo2UZCzzO8lOGY5auWxVWxZie7GofgucxrHPVHaXgrg5VT/K4wIqUPV45/MX61yTzaXMuMw5We+UqacBxO4krNeMecXxBzH0hQzUvF0s02jRbGycpRzjUYV2d3iNGaPSSCzfcrsJHO1tbpBsukGQ/TlTiBvCcprLhyY1Su4e5gV0PZ5MKvwHw5mCaD1kMmWHV3PFflVJGkgWWawIDAQAB-----END PUBLIC KEY-----'),('rsa_private_key','-----BEGIN RSA PRIVATE KEY-----MIIEowIBAAKCAQEAywJFRV4XQXU83i6qrWIqz3IgD+udIe6bNR2KInlag2YPJvsMJKv0YCTyWnmWZogsVzo28ponTvF3aMwmGPJhnV4audOXTQIqDh1Y0iE1+e7MauwwPRhGAd5P958vupiR70wc57eFo2UZCzzO8lOGY5auWxVWxZie7GofgucxrHPVHaXgrg5VT/K4wIqUPV45/MX61yTzaXMuMw5We+UqacBxO4krNeMecXxBzH0hQzUvF0s02jRbGycpRzjUYV2d3iNGaPSSCzfcrsJHO1tbpBsukGQ/TlTiBvCcprLhyY1Su4e5gV0PZ5MKvwHw5mCaD1kMmWHV3PFflVJGkgWWawIDAQABAoIBAHg2Z/6jsPG6EskeqULylpcw5XuH8gxd1tqlG18+rTKSBPb4QkCU8qjcOAcLaNxeVqNwfYk7b3t30VXlTcoH/XXKe9j+SuH3HiAtkKMdt3DAz5uhMQ98iDgjBQeE5CaCoigp0hQEwMX439OftowYmcPvPmABStjHf5RPY0mIzglnn+nPJ2kVDOATzDDC/O+gbv85A9imEl+0MQ52+ZrwfeGAcXIxTlFsFSR9liUO2RjXPWsibPjFG2Y0AOJuj+s+KWAYFPj1BEv5aSCQHDVSIs98qdhRg5Q00Hzq2z+89J2/3ZzohgunmE4m8IpGDXEXqk0xVewVmOxjBgOPQd7IR8ECgYEA7D9zSzwtwTa/+g1Oy1ZaIau3LSQ9QdFcoAIRsGlRVmlrXYHgAkUwXwcLwdKamOZ2G8FIQ4O1V54q3oWhCcyQwOxzSv1qI5iuaZStFT6q5nK1jFzCMAFLj/lCs6mNGE81c59nESk/cRnihKBPNRKjikWHpleW7YmSgJTpkz3Qnp0CgYEA2/tjEuJA5urphWlo+SwPWDn/ARah9g4LXNTYf788U2GadB+ZbijwIbo2sk3Cq5BNkrajonl4fr5E6cU85r/7HTuPOssLy5WlVSqysKiHIs3fDfu5hJOkwfkF7wpkZj9d3YxIHK4mkEfjuNOPKrVBSZhYlRVVuCGUeOVayRWNNqcCgYEA6uc8MHap2BAkWvGYgz5daFVhUZVTA3q06rSj+hD+Ozme898LabZ6HkLXQeWyqo2cqoRI4ji3u2MdpRyhvyiUVf/Fs66+Np697WVTpGgnbfRo6CPjQfBHveROmm3gSWeY8lpxFPM6ja77OHxdxZu+2OHBu3gkLhQ4g3mNtkYkhVECgYBXomHpl/C7DUJSP5fuC7thLlmEGXwUBaxJIxHMcmaZ4Pwi3qPE2tIu3XwEtC2lIyuEEvZFN5blBu91IXoNgtWK47s/dLwSMl9W+leNQNX064a8j1dslVTBYW8Xt1Af24aNR+FCa645NCpn6v/Rx7tmkiZX3dP0MoxvTQ9JpChJaQKBgBaFFu1lPvjC5UA7xoc7uB24bNbE0VE7kJM5e3gS3i08johhaXFz3v2MQpfsa+moGTeUQl8vOlxE5pz9on1yI+eeAD0lXxlwUlQ91kqT5PMs0fw2gD09t0SF1U4k5l6lAO8djy24jWVdA95zXrMDPtg1WNWla1w23vEVCJYhQf4l-----END RSA PRIVATE KEY-----'),('rsa_fingerprint','ad:92:16:77:c8:c2:2b:4d:c4:74:6b:78:1b:6c:a7:99'),('max_display_rows','1000'),('i18n_default_language','en-US');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_tree`
--

DROP TABLE IF EXISTS `settings_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_tree` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `graph_tree_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`graph_tree_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_tree`
--

LOCK TABLES `settings_tree` WRITE;
/*!40000 ALTER TABLE `settings_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_user`
--

DROP TABLE IF EXISTS `settings_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_user` (
  `user_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_user`
--

LOCK TABLES `settings_user` WRITE;
/*!40000 ALTER TABLE `settings_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_user_group`
--

DROP TABLE IF EXISTS `settings_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_user_group` (
  `group_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`group_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stores the Default User Group Graph Settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_user_group`
--

LOCK TABLES `settings_user_group` WRITE;
/*!40000 ALTER TABLE `settings_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `address1` varchar(100) DEFAULT '',
  `address2` varchar(100) DEFAULT '',
  `city` varchar(50) DEFAULT '',
  `state` varchar(20) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT '',
  `country` varchar(30) DEFAULT '',
  `timezone` varchar(40) DEFAULT '',
  `latitude` decimal(13,10) NOT NULL DEFAULT '0.0000000000',
  `longitude` decimal(13,10) NOT NULL DEFAULT '0.0000000000',
  `alternate_id` varchar(30) DEFAULT '',
  `notes` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `city` (`city`),
  KEY `state` (`state`),
  KEY `postal_code` (`postal_code`),
  KEY `country` (`country`),
  KEY `alternate_id` (`alternate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains information about customer sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query`
--

DROP TABLE IF EXISTS `snmp_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `xml_path` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_input_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query`
--

LOCK TABLES `snmp_query` WRITE;
/*!40000 ALTER TABLE `snmp_query` DISABLE KEYS */;
INSERT INTO `snmp_query` VALUES (1,'d75e406fdeca4fcef45b8be3a9a63cbc','<path_cacti>/resource/snmp_queries/interface.xml','SNMP - Interface Statistics','Queries a host for a list of monitorable interfaces',0,2),(2,'3c1b27d94ad208a0090f293deadde753','<path_cacti>/resource/snmp_queries/net-snmp_disk.xml','ucd/net -  Get Monitored Partitions','Retrieves a list of monitored partitions/disks from a net-snmp enabled host.',0,2),(3,'59aab7b0feddc7860002ed9303085ba5','<path_cacti>/resource/snmp_queries/kbridge.xml','Karlnet - Wireless Bridge Statistics','Gets information about the wireless connectivity of each station from a Karlnet bridge.',0,2),(4,'ad06f46e22e991cb47c95c7233cfaee8','<path_cacti>/resource/snmp_queries/netware_disk.xml','Netware - Get Available Volumes','Retrieves a list of volumes from a Netware server.',0,2),(6,'8ffa36c1864124b38bcda2ae9bd61f46','<path_cacti>/resource/script_queries/unix_disk.xml','Unix - Get Mounted Partitions','Queries a list of mounted partitions on a unix-based host with the',0,11),(7,'30ec734bc0ae81a3d995be82c73f46c1','<path_cacti>/resource/snmp_queries/netware_cpu.xml','Netware - Get Processor Information','Gets information about running processors in a Netware server',0,2),(8,'9343eab1f4d88b0e61ffc9d020f35414','<path_cacti>/resource/script_server/host_disk.xml','SNMP - Get Mounted Partitions','Gets a list of partitions using SNMP',0,12),(9,'0d1ab53fe37487a5d0b9e1d3ee8c1d0d','<path_cacti>/resource/script_server/host_cpu.xml','SNMP - Get Processor Information','Gets usage for each processor in the system using the host MIB.',0,12);
/*!40000 ALTER TABLE `snmp_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query_graph`
--

DROP TABLE IF EXISTS `snmp_query_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query_graph` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `snmp_query_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `graph_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `graph_template_id_name` (`graph_template_id`,`name`),
  KEY `snmp_query_id_name` (`snmp_query_id`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query_graph`
--

LOCK TABLES `snmp_query_graph` WRITE;
/*!40000 ALTER TABLE `snmp_query_graph` DISABLE KEYS */;
INSERT INTO `snmp_query_graph` VALUES (2,'a4b829746fb45e35e10474c36c69c0cf',1,'In/Out Errors/Discarded Packets',22),(3,'01e33224f8b15997d3d09d6b1bf83e18',1,'In/Out Non-Unicast Packets',24),(4,'1e6edee3115c42d644dbd014f0577066',1,'In/Out Unicast Packets',23),(6,'da43655bf1f641b07579256227806977',2,'Available/Used Disk Space',3),(7,'1cc468ef92a5779d37a26349e27ef3ba',3,'Wireless Levels',5),(8,'bef2dc94bc84bf91827f45424aac8d2a',3,'Wireless Transmissions',6),(9,'ab93b588c29731ab15db601ca0bc9dec',1,'In/Out Bytes (64-bit Counters)',25),(10,'5a5ce35edb4b195cbde99fd0161dfb4e',4,'Volume Information (free, freeable space)',19),(11,'c1c2cfd33eaf5064300e92e26e20bc56',4,'Directory Information (total/available entries)',20),(13,'ae34f5f385bed8c81a158bf3030f1089',1,'In/Out Bits',2),(14,'1e16a505ddefb40356221d7a50619d91',1,'In/Out Bits (64-bit Counters)',2),(15,'a0b3e7b63c2e66f9e1ea24a16ff245fc',6,'Available Disk Space',21),(16,'d1e0d9b8efd4af98d28ce2aad81a87e7',1,'In/Out Bytes',25),(17,'f6db4151aa07efa401a0af6c9b871844',7,'Get Processor Utilization',15),(18,'46c4ee688932cf6370459527eceb8ef3',8,'Available Disk Space',26),(19,'4a515b61441ea5f27ab7dee6c3cb7818',9,'Get Processor Utilization',27),(20,'ed7f68175d7bb83db8ead332fc945720',1,'In/Out Bits with 95th Percentile',31),(21,'f85386cd2fc94634ef167c7f1e5fbcd0',1,'In/Out Bits with Total Bandwidth',32),(22,'7d309bf200b6e3cdb59a33493c2e58e0',1,'In/Out Bytes with Total Bandwidth',33);
/*!40000 ALTER TABLE `snmp_query_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query_graph_rrd`
--

DROP TABLE IF EXISTS `snmp_query_graph_rrd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query_graph_rrd` (
  `snmp_query_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_rrd_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `snmp_field_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`snmp_query_graph_id`,`data_template_id`,`data_template_rrd_id`),
  KEY `data_template_rrd_id` (`data_template_rrd_id`),
  KEY `snmp_query_graph_id` (`snmp_query_graph_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query_graph_rrd`
--

LOCK TABLES `snmp_query_graph_rrd` WRITE;
/*!40000 ALTER TABLE `snmp_query_graph_rrd` DISABLE KEYS */;
INSERT INTO `snmp_query_graph_rrd` VALUES (2,38,47,'ifInDiscards'),(3,40,52,'ifOutNUcastPkts'),(3,40,53,'ifInNUcastPkts'),(4,39,48,'ifInUcastPkts'),(2,38,51,'ifOutErrors'),(6,3,3,'dskAvail'),(6,3,4,'dskUsed'),(7,7,8,'kbWirelessStationExclHellos'),(7,8,9,'kbWirelessStationExclHellos'),(8,10,11,'kbWirelessStationExclHellos'),(8,9,10,'kbWirelessStationExclHellos'),(9,41,55,'ifHCOutOctets'),(9,41,54,'ifHCInOctets'),(10,35,38,'nwVolSize'),(10,35,40,'nwVolFreeable'),(10,35,39,'nwVolFree'),(11,36,42,'nwVolTotalDirEntries'),(11,36,43,'nwVolUsedDirEntries'),(2,38,50,'ifOutDiscards'),(2,38,46,'ifInErrors'),(13,41,54,'ifInOctets'),(14,41,54,'ifHCInOctets'),(14,41,55,'ifHCOutOctets'),(13,41,55,'ifOutOctets'),(4,39,49,'ifOutUcastPkts'),(15,37,44,'dskAvailable'),(16,41,54,'ifInOctets'),(16,41,55,'ifOutOctets'),(15,37,56,'dskUsed'),(17,42,76,'nwhrProcessorUtilization'),(18,43,78,'hrStorageUsed'),(18,43,92,'hrStorageSize'),(19,44,79,'hrProcessorLoad'),(20,41,55,'ifOutOctets'),(20,41,54,'ifInOctets'),(21,41,55,'ifOutOctets'),(21,41,54,'ifInOctets'),(22,41,55,'ifOutOctets'),(22,41,54,'ifInOctets');
/*!40000 ALTER TABLE `snmp_query_graph_rrd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query_graph_rrd_sv`
--

DROP TABLE IF EXISTS `snmp_query_graph_rrd_sv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query_graph_rrd_sv` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `snmp_query_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(100) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `snmp_query_graph_id` (`snmp_query_graph_id`),
  KEY `data_template_id` (`data_template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query_graph_rrd_sv`
--

LOCK TABLES `snmp_query_graph_rrd_sv` WRITE;
/*!40000 ALTER TABLE `snmp_query_graph_rrd_sv` DISABLE KEYS */;
INSERT INTO `snmp_query_graph_rrd_sv` VALUES (10,'5d3a8b2f4a454e5b0a1494e00fe7d424',6,3,1,'name','|host_description| - Partition - |query_dskDevice|'),(11,'d0b49af67a83c258ef1eab3780f7b3dc',7,7,1,'name','|host_description| - Wireless Noise Level - |query_kbWirelessStationName|'),(12,'bf6b966dc369f3df2ea640a90845e94c',7,8,1,'name','|host_description| - Wireless Signal Level - |query_kbWirelessStationName|'),(13,'5c3616603a7ac9d0c1cb9556b377a74f',8,10,1,'name','|host_description| - Wireless Re-Transmissions - |query_kbWirelessStationName|'),(14,'080f0022f77044a512b083e3a8304e8b',8,9,1,'name','|host_description| - Wireless Transmissions - |query_kbWirelessStationName|'),(30,'8132fa9c446e199732f0102733cb1714',11,36,1,'name','|host_description| - Directories - |query_nwVolPhysicalName|'),(29,'8fc9a94a5f6ef902a3de0fa7549e7476',10,35,1,'name','|host_description| - Volumes - |query_nwVolPhysicalName|'),(80,'27eb220995925e1a5e0e41b2582a2af6',16,41,1,'rrd_maximum','|query_ifSpeed|'),(85,'e85ddc56efa677b70448f9e931360b77',14,41,1,'rrd_maximum','|query_ifSpeed|'),(84,'37bb8c5b38bb7e89ec88ea7ccacf44d4',14,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(83,'62a47c18be10f273a5f5a13a76b76f54',14,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(32,'',12,37,1,'name','|host_description| - Partition - |query_dskDevice|'),(49,'6537b3209e0697fbec278e94e7317b52',2,38,1,'name','|host_description| - Errors - |query_ifIP| - |query_ifName|'),(50,'6d3f612051016f48c951af8901720a1c',2,38,2,'name','|host_description| - Errors - |query_ifName|'),(51,'62bc981690576d0b2bd0041ec2e4aa6f',2,38,3,'name','|host_description| - Errors - |query_ifIP|/|query_ifDescr|'),(52,'adb270d55ba521d205eac6a21478804a',2,38,4,'name','|host_description| - Errors - |query_ifDescr|'),(54,'77065435f3bbb2ff99bc3b43b81de8fe',3,40,1,'name','|host_description| - Non-Unicast Packets - |query_ifIP| - |query_ifName|'),(55,'240d8893092619c97a54265e8d0b86a1',3,40,2,'name','|host_description| - Non-Unicast Packets - |query_ifName|'),(56,'4b200ecf445bdeb4c84975b74991df34',3,40,3,'name','|host_description| - Non-Unicast Packets - |query_ifIP|/|query_ifDescr|'),(57,'d6da3887646078e4d01fe60a123c2179',3,40,4,'name','|host_description| - Non-Unicast Packets - |query_ifDescr|'),(59,'ce7769b97d80ca31d21f83dc18ba93c2',4,39,1,'name','|host_description| - Unicast Packets - |query_ifIP| - |query_ifName|'),(60,'1ee1f9717f3f4771f7f823ca5a8b83dd',4,39,2,'name','|host_description| - Unicast Packets - |query_ifName|'),(61,'a7dbd54604533b592d4fae6e67587e32',4,39,3,'name','|host_description| - Unicast Packets - |query_ifIP|/|query_ifDescr|'),(62,'b148fa7199edcf06cd71c89e5c5d7b63',4,39,4,'name','|host_description| - Unicast Packets - |query_ifDescr|'),(69,'cb09784ba05e401a3f1450126ed1e395',15,37,1,'name','|host_description| - Free Space - |query_dskDevice|'),(70,'87a659326af8c75158e5142874fd74b0',13,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(72,'14aa2dead86bbad0f992f1514722c95e',13,41,2,'name','|host_description| - Traffic - |query_ifName|'),(73,'70390712158c3c5052a7d830fb456489',13,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(74,'084efd82bbddb69fb2ac9bd0b0f16ac6',13,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(75,'7e093c535fa3d810fa76fc3d8c80c94b',13,41,1,'rrd_maximum','|query_ifSpeed|'),(76,'c7ee2110bf81639086d2da03d9d88286',16,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(77,'8ef8ae2ef548892ab95bb6c9f0b3170e',16,41,2,'name','|host_description| - Traffic - |query_ifName|'),(78,'3a0f707d1c8fd0e061b70241541c7e2e',16,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(79,'2347e9f53564a54d43f3c00d4b60040d',16,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(81,'2e8b27c63d98249096ad5bc320787f43',14,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(82,'8d820d091ec1a9683cfa74a462f239ee',14,41,2,'name','|host_description| - Traffic - |query_ifName|'),(86,'c582d3b37f19e4a703d9bf4908dc6548',9,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(88,'e1be83d708ed3c0b8715ccb6517a0365',9,41,2,'name','|host_description| - Traffic - |query_ifName|'),(89,'57a9ae1f197498ca8dcde90194f61cbc',9,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(90,'0110e120981c7ff15304e4a85cb42cbe',9,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(91,'ce0b9c92a15759d3ddbd7161d26a98b7',9,41,1,'rrd_maximum','|query_ifSpeed|'),(92,'42277993a025f1bfd85374d6b4deeb60',17,42,1,'name','|host_description| - CPU Utilization - CPU|query_nwhrProcessorNum|'),(93,'a3f280327b1592a1a948e256380b544f',18,43,1,'name','|host_description| - Used Space - |query_hrStorageDescr|'),(94,'b5a724edc36c10891fa2a5c370d55b6f',19,44,1,'name','|host_description| - CPU Utilization - CPU|query_hrProcessorFrwID|'),(95,'7e87efd0075caba9908e2e6e569b25b0',20,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(96,'dd28d96a253ab86846aedb25d1cca712',20,41,2,'name','|host_description| - Traffic - |query_ifName|'),(97,'ce425fed4eb3174e4f1cde9713eeafa0',20,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(98,'d0d05156ddb2c65181588db4b64d3907',20,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(99,'3b018f789ff72cc5693ef79e3a794370',20,41,1,'rrd_maximum','|query_ifSpeed|'),(100,'b225229dbbb48c1766cf90298674ceed',21,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(101,'c79248ddbbd195907260887b021a055d',21,41,2,'name','|host_description| - Traffic - |query_ifName|'),(102,'12a6750d973b7f14783f205d86220082',21,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(103,'25b151fcfe093812cb5c208e36dd697e',21,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(104,'e9ab404a294e406c20fdd30df766161f',21,41,1,'rrd_maximum','|query_ifSpeed|'),(105,'119578a4f01ab47e820b0e894e5e5bb3',22,41,1,'name','|host_description| - Traffic - |query_ifIP| - |query_ifName|'),(106,'940e57d24b2623849c77b59ed05931b9',22,41,2,'name','|host_description| - Traffic - |query_ifName|'),(107,'0f045eab01bbc4437b30da568ed5cb03',22,41,3,'name','|host_description| - Traffic - |query_ifIP|/|query_ifDescr|'),(108,'bd70bf71108d32f0bf91b24c85b87ff0',22,41,4,'name','|host_description| - Traffic - |query_ifDescr|'),(109,'fdc4cb976c4b9053bfa2af791a21c5b5',22,41,1,'rrd_maximum','|query_ifSpeed|');
/*!40000 ALTER TABLE `snmp_query_graph_rrd_sv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmp_query_graph_sv`
--

DROP TABLE IF EXISTS `snmp_query_graph_sv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmp_query_graph_sv` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `snmp_query_graph_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(100) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `snmp_query_graph_id` (`snmp_query_graph_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmp_query_graph_sv`
--

LOCK TABLES `snmp_query_graph_sv` WRITE;
/*!40000 ALTER TABLE `snmp_query_graph_sv` DISABLE KEYS */;
INSERT INTO `snmp_query_graph_sv` VALUES (7,'437918b8dcd66a64625c6cee481fff61',6,1,'title','|host_description| - Disk Space - |query_dskPath|'),(5,'2ddc61ff4bd9634f33aedce9524b7690',7,1,'title','|host_description| - Wireless Levels (|query_kbWirelessStationName|)'),(6,'c72e2da7af2cdbd6b44a5eb42c5b4758',8,1,'title','|host_description| - Wireless Transmissions (|query_kbWirelessStationName|)'),(11,'a412c5dfa484b599ec0f570979fdbc9e',10,1,'title','|host_description| - Volume Information - |query_nwVolPhysicalName|'),(12,'48f4792dd49fefd7d640ec46b1d7bdb3',11,1,'title','|host_description| - Directory Information - |query_nwVolPhysicalName|'),(14,'',12,1,'title','|host_description| - Disk Space - |query_dskDevice|'),(15,'49dca5592ac26ff149a4fbd18d690644',13,1,'title','|host_description| - Traffic - |query_ifName|'),(16,'bda15298139ad22bdc8a3b0952d4e3ab',13,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(17,'29e48483d0471fcd996bfb702a5960aa',13,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(18,'3f42d358965cb94ce4f708b59e04f82b',14,1,'title','|host_description| - Traffic - |query_ifName|'),(19,'45f44b2f811ea8a8ace1cbed8ef906f1',14,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(20,'69c14fbcc23aecb9920b3cdad7f89901',14,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(21,'299d3434851fc0d5c0e105429069709d',2,1,'title','|host_description| - Errors - |query_ifName|'),(22,'8c8860b17fd67a9a500b4cb8b5e19d4b',2,2,'title','|host_description| - Errors - |query_ifIP| (|query_ifDescr|)'),(23,'d96360ae5094e5732e7e7496ceceb636',2,3,'title','|host_description| - Errors - |query_ifDescr|/|query_ifIndex|'),(24,'750a290cadc3dc60bb682a5c5f47df16',3,1,'title','|host_description| - Non-Unicast Packets - |query_ifName|'),(25,'bde195eecc256c42ca9725f1f22c1dc0',3,2,'title','|host_description| - Non-Unicast Packets - |query_ifIP| (|query_ifDescr|)'),(26,'d9e97d22689e4ffddaca23b46f2aa306',3,3,'title','|host_description| - Non-Unicast Packets - |query_ifDescr|/|query_ifIndex|'),(27,'48ceaba62e0c2671a810a7f1adc5f751',4,1,'title','|host_description| - Unicast Packets - |query_ifName|'),(28,'d6258884bed44abe46d264198adc7c5d',4,2,'title','|host_description| - Unicast Packets - |query_ifIP| (|query_ifDescr|)'),(29,'6eb58d9835b2b86222306d6ced9961d9',4,3,'title','|host_description| - Unicast Packets - |query_ifDescr|/|query_ifIndex|'),(30,'f21b23df740bc4a2d691d2d7b1b18dba',15,1,'title','|host_description| - Disk Space - |query_dskDevice|'),(31,'7fb4a267065f960df81c15f9022cd3a4',16,1,'title','|host_description| - Traffic - |query_ifName|'),(32,'e403f5a733bf5c8401a110609683deb3',16,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(33,'809c2e80552d56b65ca496c1c2fff398',16,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(34,'0a5eb36e98c04ad6be8e1ef66caeed3c',9,1,'title','|host_description| - Traffic - |query_ifName|'),(35,'4c4386a96e6057b7bd0b78095209ddfa',9,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(36,'fd3a384768b0388fa64119fe2f0cc113',9,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(38,'9852782792ede7c0805990e506ac9618',18,1,'title','|host_description| - Used Space - |query_hrStorageDescr|'),(39,'fa2f07ab54fce72eea684ba893dd9c95',19,1,'title','|host_description| - CPU Utilization - CPU|query_hrProcessorFrwID|'),(40,'d99f8db04fd07bcd2260d246916e03da',17,1,'title','|host_description| - CPU Utilization - CPU|query_nwhrProcessorNum|'),(41,'f434ec853c479d424276f367e9806a75',20,1,'title','|host_description| - Traffic - |query_ifName|'),(42,'9b085245847444c5fb90ebbf4448e265',20,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(43,'5977863f28629bd8eb93a2a9cbc3e306',20,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(44,'37b6711af3930c56309cf8956d8bbf14',21,1,'title','|host_description| - Traffic - |query_ifName|'),(45,'cc435c5884a75421329a9b08207c1c90',21,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(46,'82edeea1ec249c9818773e3145836492',21,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|'),(47,'87522150ee8a601b4d6a1f6b9e919c47',22,1,'title','|host_description| - Traffic - |query_ifName|'),(48,'993a87c04f550f1209d689d584aa8b45',22,2,'title','|host_description| - Traffic - |query_ifIP| (|query_ifDescr|)'),(49,'183bb486c92a566fddcb0585ede37865',22,3,'title','|host_description| - Traffic - |query_ifDescr|/|query_ifIndex|');
/*!40000 ALTER TABLE `snmp_query_graph_sv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpagent_cache`
--

DROP TABLE IF EXISTS `snmpagent_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpagent_cache` (
  `oid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mib` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `otype` varchar(50) NOT NULL,
  `kind` varchar(50) NOT NULL,
  `max-access` varchar(50) NOT NULL DEFAULT 'not-accessible',
  `value` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5000) NOT NULL DEFAULT '',
  PRIMARY KEY (`oid`),
  KEY `name` (`name`),
  KEY `mib_name` (`mib`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='SNMP MIB CACHE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpagent_cache`
--

LOCK TABLES `snmpagent_cache` WRITE;
/*!40000 ALTER TABLE `snmpagent_cache` DISABLE KEYS */;
INSERT INTO `snmpagent_cache` VALUES ('.1.3.6.1.4.1.23925','cacti','CACTI-MIB','','MODULE-IDENTITY','Node','not-accessible','','Initial version of this MIB module.'),('.1.3.6.1.4.1.23925.1','cactiAppl','CACTI-MIB','','OBJECT-IDENTITY','Node','not-accessible','','reserved for Cacti application data'),('.1.3.6.1.4.1.23925.1.1.0','cactiApplLastUpdate','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','1526568085','Unix timestamp when this data has been updated for the last time.'),('.1.3.6.1.4.1.23925.1.10.0','cactiApplSpineMaxThreads','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','10','Represents the maximum threads allowed per process.'),('.1.3.6.1.4.1.23925.1.11.0','cactiApplSpineScriptServers','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','1','Represents the maximum number of script servers a spine process is<br>allowed to run.'),('.1.3.6.1.4.1.23925.1.12.0','cactiApplSpineScriptTimeout','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','25','Describes the maximum time Cacti will wait on a script to complete.'),('.1.3.6.1.4.1.23925.1.13.0','cactiApplSpineMaxOids','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','10','The maximum number of snmp get OID\'s to issue per snmpbulkwalk<br>request.'),('.1.3.6.1.4.1.23925.1.14','cactiApplDeviceTable','CACTI-MIB','SEQUENCE OF','OBJECT-TYPE','Table','not-accessible','','A table of registered hosts on a Cacti system.<br>The maximum number of entries is implementation dependent.'),('.1.3.6.1.4.1.23925.1.14.1','cactiApplDeviceEntry','CACTI-MIB','CactiApplDeviceEntry','OBJECT-TYPE','Row','not-accessible','','An entry in the table of registered hosts on a Cacti system. A row<br>in this table cannot be created or deleted by SNMP operations on<br>columns of the table.'),('.1.3.6.1.4.1.23925.1.14.1.1','cactiApplDeviceIndex','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','A unique device identifier. This ID will be created by Cacti itself.'),('.1.3.6.1.4.1.23925.1.14.1.2','cactiApplDeviceDescription','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','A meaning description of a device.'),('.1.3.6.1.4.1.23925.1.14.1.3','cactiApplDeviceHostname','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Fully qualified devicename or IP address.'),('.1.3.6.1.4.1.23925.1.14.1.4','cactiApplDeviceStatus','CACTI-MIB','INTEGER','OBJECT-TYPE','Column','read-only','','The status a device can have within Cacti:<br>unknown(0)     - device has not been polled yet<br>down(1)        - device became unresponsive<br>recovering(2)  - device was down and became reachable again<br>up(3)          - device is reachable<br>disabled(4)    - device will not be monitored'),('.1.3.6.1.4.1.23925.1.14.1.5','cactiApplDeviceEventCount','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Total number of events registered for that device since last reset.'),('.1.3.6.1.4.1.23925.1.14.1.6','cactiApplDeviceFailDate','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Date of last fail'),('.1.3.6.1.4.1.23925.1.14.1.7','cactiApplDeviceRecoveryDate','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Date of lats recovery'),('.1.3.6.1.4.1.23925.1.14.1.8','cactiApplDeviceLastError','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Description of last error being detected.'),('.1.3.6.1.4.1.23925.1.15','cactiApplPollerTable','CACTI-MIB','SEQUENCE OF','OBJECT-TYPE','Table','not-accessible','','A table of pollers registered on a Cacti system.<br>The maximum number of entries is implementation dependent.'),('.1.3.6.1.4.1.23925.1.15.1','cactiApplPollerEntry','CACTI-MIB','CactiApplPollerEntry','OBJECT-TYPE','Row','not-accessible','','An entry in the table of registered pollers to a Cacti system. A row<br>in this table cannot be created or deleted by SNMP operations on<br>columns of the table.'),('.1.3.6.1.4.1.23925.1.15.1.1','cactiApplPollerIndex','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','A unique poller identifier. This ID will be created by Cacti itself.'),('.1.3.6.1.4.1.23925.1.15.1.1.1','cactiApplPollerIndex','CACTI-MIB','Unsigned32','DATA','Column Data','read-only','1',''),('.1.3.6.1.4.1.23925.1.15.1.2','cactiApplPollerHostname','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Name of the device where the poller is running on.'),('.1.3.6.1.4.1.23925.1.15.1.2.1','cactiApplPollerHostname','CACTI-MIB','DisplayString','DATA','Column Data','read-only','localhost',''),('.1.3.6.1.4.1.23925.1.15.1.3','cactiApplPollerIpAddress','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','IP address of the poller\'s host.'),('.1.3.6.1.4.1.23925.1.15.1.3.1','cactiApplPollerIpAddress','CACTI-MIB','DisplayString','DATA','Column Data','read-only','127.0.0.1',''),('.1.3.6.1.4.1.23925.1.15.1.4','cactiApplPollerLastUpdate','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Timestamp of last update.'),('.1.3.6.1.4.1.23925.1.15.1.4.1','cactiApplPollerLastUpdate','CACTI-MIB','DisplayString','DATA','Column Data','read-only','1486560002',''),('.1.3.6.1.4.1.23925.1.16','cactiApplPluginTable','CACTI-MIB','SEQUENCE OF','OBJECT-TYPE','Table','not-accessible','','A table of registered plugins on a Cacti system.<br>The maximum number of entries is implementation dependent.'),('.1.3.6.1.4.1.23925.1.16.1','cactiApplPluginEntry','CACTI-MIB','CactiApplPluginEntry','OBJECT-TYPE','Row','not-accessible','','An entry in the table of all installed Cacti plugins. A row<br>in this table cannot be created or deleted by SNMP operations on<br>columns of the table.'),('.1.3.6.1.4.1.23925.1.16.1.1','cactiApplPluginIndex','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','A unique plugin identifier. This ID will be administrated by Cacti itself.'),('.1.3.6.1.4.1.23925.1.16.1.2','cactiApplPluginType','CACTI-MIB','INTEGER','OBJECT-TYPE','Column','read-only','','Describes whether or not the plugin has been registered as a system plugin.<br>System plugins offer a lot of functions normal Cacti plugins rely on.'),('.1.3.6.1.4.1.23925.1.16.1.3','cactiApplPluginName','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','The official name of a plugin given by its author.'),('.1.3.6.1.4.1.23925.1.16.1.4','cactiApplPluginStatus','CACTI-MIB','INTEGER','OBJECT-TYPE','Column','read-only','','The status a plugin can have within Cacti:<br>disabledold(-2)   - plugin (old PIA) is available, but has not been installed<br>activeold(-1)     - plugin (old PIA) is installed and active<br>notinstalled(0)   - plugin (new PIA) is available, but has not been installed<br>active(1)         - plugin (new PIA) is installed and active<br>setupmode(2)      - plugin (new PIA) is installed, but configuration is needed<br>disabled(4)       - plugin (new PIA) is installed, but without function'),('.1.3.6.1.4.1.23925.1.16.1.5','cactiApplPluginVersion','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Version string of the Cacti plugin being installed.'),('.1.3.6.1.4.1.23925.1.2.0','cactiApplVersion','CACTI-MIB','DisplayString','DATA','Scalar','read-only','0.8.8h','Returns the version string of Cacti'),('.1.3.6.1.4.1.23925.1.3.0','cactiApplSnmpVersion','CACTI-MIB','TcCactiApplSnmpVersion','DATA','Scalar','read-only','3','Represents the type of SNMP used by Cacti:<br><br>NET-SNMP<br>UCD-SNMP<br>PHP-SNMP'),('.1.3.6.1.4.1.23925.1.4.0','cactiApplRrdtoolVersion','CACTI-MIB','DisplayString','DATA','Scalar','read-only','rrd-1.4.x','The version of RRDtool used by Cacti'),('.1.3.6.1.4.1.23925.1.5.0','cactiApplPollerEnabled','CACTI-MIB','TruthValue','DATA','Scalar','read-only','1','If Cacti polling has been enabled this object is set to true(1).'),('.1.3.6.1.4.1.23925.1.6.0','cactiApplPollerType','CACTI-MIB','TcCactiApplPollerType','DATA','Scalar','read-only','2','Describes the polling engine used by Cacti:<br><br>cmd         - php based poller<br>spine       - high performance C-based polling engine'),('.1.3.6.1.4.1.23925.1.7.0','cactiApplPollerInterval','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','300','The polling interval in seconds which determines how often<br>data sources will be checked and updated.'),('.1.3.6.1.4.1.23925.1.8.0','cactiApplPollerMaxProcesses','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','1','Represents the number of maximum poller processes Cacti is allowed to<br>perform in parallel.'),('.1.3.6.1.4.1.23925.1.9.0','cactiApplPollerLoadBalance','CACTI-MIB','TruthValue','DATA','Scalar','read-only','1','If true Cacti attempt to balance the load of each poller process.'),('.1.3.6.1.4.1.23925.2','cactiStats','CACTI-MIB','','OBJECT-IDENTITY','Node','not-accessible','','reserved for cacti statistics'),('.1.3.6.1.4.1.23925.2.1.0','cactiStatsLastUpdate','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Unix timestamp when this data has been updated for the last time.'),('.1.3.6.1.4.1.23925.2.10','cactiStatsPollerTable','CACTI-MIB','SEQUENCE OF','OBJECT-TYPE','Table','not-accessible','','A table of statistics for all pollers registered on a Cacti system.<br>The maximum number of entries is implementation dependent.<br>This table has a 1:1 relationship to cactiApplPollerTable.'),('.1.3.6.1.4.1.23925.2.10.1','cactiStatsPollerEntry','CACTI-MIB','CactiStatsPollerEntry','OBJECT-TYPE','Row','not-accessible','','An entry in the table of statistics for registered pollers of a Cacti system.<br>A row in this table cannot be created or deleted by SNMP operations on<br>columns of the table.'),('.1.3.6.1.4.1.23925.2.10.1.1','cactiStatsPollerIndex','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','A unique poller identifier. This ID will be created by Cacti itself.'),('.1.3.6.1.4.1.23925.2.10.1.1.1','cactiStatsPollerIndex','CACTI-MIB','Unsigned32','DATA','Column Data','read-only','1',''),('.1.3.6.1.4.1.23925.2.10.1.10','cactiStatsPollerRrrdsProcessed','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Number of RRDs being processed. This object will always return zero<br>if RRD updates will be handled by BOOST.'),('.1.3.6.1.4.1.23925.2.10.1.10.1','cactiStatsPollerRrrdsProcessed','CACTI-MIB','Unsigned32','DATA','Column Data','read-only','',''),('.1.3.6.1.4.1.23925.2.10.1.11','cactiStatsPollerUtilization','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','The proportion of the poller interval in percent the poller requires<br>to poll all data sources.'),('.1.3.6.1.4.1.23925.2.10.1.11.1','cactiStatsPollerUtilization','CACTI-MIB','DisplayString','DATA','Column Data','read-only','',''),('.1.3.6.1.4.1.23925.2.10.1.2','cactiStatsPollerHostname','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Name of the device where the poller is running on.'),('.1.3.6.1.4.1.23925.2.10.1.2.1','cactiStatsPollerHostname','CACTI-MIB','DisplayString','DATA','Column Data','read-only','localhost',''),('.1.3.6.1.4.1.23925.2.10.1.3','cactiStatsPollerRunTime','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Last poller runtime in seconds.'),('.1.3.6.1.4.1.23925.2.10.1.3.1','cactiStatsPollerRunTime','CACTI-MIB','DisplayString','DATA','Column Data','read-only','',''),('.1.3.6.1.4.1.23925.2.10.1.4','cactiStatsPollerMethod','CACTI-MIB','TcCactiApplPollerType','OBJECT-TYPE','Column','read-only','','Describes the polling engine used by Cacti:<br>cmd         - php based poller<br>spine       - high performance C-based polling engine'),('.1.3.6.1.4.1.23925.2.10.1.4.1','cactiStatsPollerMethod','CACTI-MIB','TcCactiApplPollerType','DATA','Column Data','read-only','2',''),('.1.3.6.1.4.1.23925.2.10.1.5','cactiStatsPollerConcurrentProcesses','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Number of concurrent processes.'),('.1.3.6.1.4.1.23925.2.10.1.5.1','cactiStatsPollerConcurrentProcesses','CACTI-MIB','Unsigned32','DATA','Column Data','read-only','',''),('.1.3.6.1.4.1.23925.2.10.1.6','cactiStatsPollerThreads','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Number of threads. This object will always return zero if<br>polling method is CMD.'),('.1.3.6.1.4.1.23925.2.10.1.6.1','cactiStatsPollerThreads','CACTI-MIB','Unsigned32','DATA','Column Data','read-only','',''),('.1.3.6.1.4.1.23925.2.10.1.7','cactiStatsPollerHosts','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Number of polled devices.'),('.1.3.6.1.4.1.23925.2.10.1.7.1','cactiStatsPollerHosts','CACTI-MIB','Unsigned32','DATA','Column Data','read-only','',''),('.1.3.6.1.4.1.23925.2.10.1.8','cactiStatsPollerHostsPerProcess','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Maximum number of hosts per process.'),('.1.3.6.1.4.1.23925.2.10.1.8.1','cactiStatsPollerHostsPerProcess','CACTI-MIB','Unsigned32','DATA','Column Data','read-only','',''),('.1.3.6.1.4.1.23925.2.10.1.9','cactiStatsPollerItems','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Number of items being polled.'),('.1.3.6.1.4.1.23925.2.10.1.9.1','cactiStatsPollerItems','CACTI-MIB','Unsigned32','DATA','Column Data','read-only','',''),('.1.3.6.1.4.1.23925.2.11.0','cactiStatsTotalsDeviceStatusUnknown','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Total number of devices that have not been polled yet.'),('.1.3.6.1.4.1.23925.2.12.0','cactiStatsTotalsDeviceStatusDown','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Total number of devices being unreachable.'),('.1.3.6.1.4.1.23925.2.13.0','cactiStatsTotalsDeviceStatusRecovering','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Total number of devices recovering.'),('.1.3.6.1.4.1.23925.2.14.0','cactiStatsTotalsDeviceStatusUp','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Total number of devices being reachable.'),('.1.3.6.1.4.1.23925.2.15.0','cactiStatsTotalsDeviceStatusDisabled','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Total number of devices being reachable.'),('.1.3.6.1.4.1.23925.2.2.0','cactiStatsRecacheTime','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Returns the recache Time in seconds.'),('.1.3.6.1.4.1.23925.2.3.0','cactiStatsRecachedHosts','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','The current number of recaching events being discovered.'),('.1.3.6.1.4.1.23925.2.4.0','cactiStatsLocalPollerRuntime','CACTI-MIB','DisplayString','DATA','Scalar','read-only','','Returns the runtime of the local poller in seconds.'),('.1.3.6.1.4.1.23925.2.5.0','cactiStatsTotalsDevices','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Returns the total number of registered devices.'),('.1.3.6.1.4.1.23925.2.6.0','cactiStatsTotalsDataSources','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Returns the total number of data sources.'),('.1.3.6.1.4.1.23925.2.7.0','cactiStatsTotalsGraphs','CACTI-MIB','Unsigned32','DATA','Scalar','read-only','','Returns the total number of graphs.'),('.1.3.6.1.4.1.23925.2.8','cactiStatsTotalsDeviceStatusTable','CACTI-MIB','SEQUENCE OF','OBJECT-TYPE','Table','not-accessible','','A table of statistics for all devices registered on a Cacti system<br>in relation to their device status.<br>The maximum number of entries is limited to maximum number of<br>device stati.'),('.1.3.6.1.4.1.23925.2.8.1','cactiStatsTotalsDeviceStatusEntry','CACTI-MIB','CactiStatsTotalsDeviceStatusEntry','OBJECT-TYPE','Row','not-accessible','','A table of statistics for all devices registered on a Cacti system<br>in relation to their device status.<br>A row in this table cannot be created or deleted by SNMP operations on<br>columns of the table.'),('.1.3.6.1.4.1.23925.2.8.1.1','cactiStatsTotalsDeviceStatusIndex','CACTI-MIB','INTEGER','OBJECT-TYPE','Column','read-only','','unknown(0)     - Total number of devices that have not been polled yet<br>down(1)        - Total number of devices being unreachable<br>recovering(2)  - Total number of devices recovering<br>up(3)          - Total number of devices being reachable<br>disabled(4)    - Total number of devices that will not be monitored'),('.1.3.6.1.4.1.23925.2.8.1.2','cactiStatsTotalsDeviceStatusCounter','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Returns the total number of registered devices in relation to<br>cactiStatsTotalsDeviceStatusIndex.'),('.1.3.6.1.4.1.23925.2.9','cactiStatsDeviceTable','CACTI-MIB','SEQUENCE OF','OBJECT-TYPE','Table','not-accessible','','A table of statistics for all devices registered on a Cacti system.<br>The maximum number of entries is implementation dependent.<br>This table has a 1:1 relationship to cactiApplDeviceTable.'),('.1.3.6.1.4.1.23925.2.9.1','cactiStatsDeviceEntry','CACTI-MIB','CactiStatsDeviceEntry','OBJECT-TYPE','Row','not-accessible','','An entry in the table of statistics for registered devices of a Cacti system.<br>A row in this table cannot be created or deleted by SNMP operations on<br>columns of the table.'),('.1.3.6.1.4.1.23925.2.9.1.1','cactiStatsDeviceIndex','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','A unique device identifier. This ID will be created by Cacti itself.'),('.1.3.6.1.4.1.23925.2.9.1.2','cactiStatsDeviceHostname','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Fully qualified devicename or IP address.'),('.1.3.6.1.4.1.23925.2.9.1.3','cactiStatsDeviceMinTime','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Minimum response time in seconds.'),('.1.3.6.1.4.1.23925.2.9.1.4','cactiStatsDeviceMaxTime','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Maximum response time in seconds.'),('.1.3.6.1.4.1.23925.2.9.1.5','cactiStatsDeviceCurTime','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Last response time in seconds.'),('.1.3.6.1.4.1.23925.2.9.1.6','cactiStatsDeviceAvgTime','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Average response time in seconds.'),('.1.3.6.1.4.1.23925.2.9.1.7','cactiStatsDeviceTotalPolls','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Number of total polls against a monitored device.'),('.1.3.6.1.4.1.23925.2.9.1.8','cactiStatsDeviceFailedPolls','CACTI-MIB','Unsigned32','OBJECT-TYPE','Column','read-only','','Number of failed polls.'),('.1.3.6.1.4.1.23925.2.9.1.9','cactiStatsDeviceAvailability','CACTI-MIB','DisplayString','OBJECT-TYPE','Column','read-only','','Calculated availablity in percent.'),('.1.3.6.1.4.1.23925.3','cactiEvents','CACTI-MIB','','OBJECT-IDENTITY','Node','not-accessible','','reserved for cacti events'),('.1.3.6.1.4.1.23925.3.1','cactiEventAttributes','CACTI-MIB','','OBJECT-IDENTITY','Node','not-accessible','','resevered for event attributes, used as varbind for the SMNP notifications'),('.1.3.6.1.4.1.23925.3.1.1.0','cactiEventDescription','CACTI-MIB','DisplayString','DATA','Scalar','accessible-for-notify','','Contains a customized event description.'),('.1.3.6.1.4.1.23925.3.2','cactiEventNotifications','CACTI-MIB','','OBJECT-IDENTITY','Node','not-accessible','','resevered for event notifications'),('.1.3.6.1.4.1.23925.3.2.1','cactiNotify','CACTI-MIB','','NOTIFICATION-TYPE','Notification','not-accessible','','This SNMP notification will only include varbind cactiEventDescription<br>and can be used as a simple and generic notification by plugins for example.'),('.1.3.6.1.4.1.23925.3.2.2','cactiNotifyDeviceDown','CACTI-MIB','','NOTIFICATION-TYPE','Notification','not-accessible','','This SNMP notification will be send to notification receivers if Cacti has detected<br>that a monitored device went down.'),('.1.3.6.1.4.1.23925.3.2.3','cactiNotifyDeviceRecovering','CACTI-MIB','','NOTIFICATION-TYPE','Notification','not-accessible','','This SNMP notification will be send to notification receivers if Cacti has detected<br>that a monitored device became reachable again.'),('.1.3.6.1.4.1.23925.3.2.4','cactiNotifyPollerRuntimeExceeding','CACTI-MIB','','NOTIFICATION-TYPE','Notification','not-accessible','','This SNMP notification will be send to notification receivers if a Cacti poller<br>has breached its maximum runtime.'),('.1.3.6.1.4.1.23925.3.2.5','cactiNotifyDeviceFailedPoll','CACTI-MIB','','NOTIFICATION-TYPE','Notification','not-accessible','','This SNMP notification will be send to notification receivers if Cacti<br>was unable to poll a device.'),('.1.3.6.1.4.1.23925.4','cactiPlugins','CACTI-MIB','','OBJECT-IDENTITY','Node','not-accessible','','cactiPlugins provides a root object identifier<br>from which mibs produced by plugin developers may be<br>placed. mibs written by other developers will typically<br>be implemented with the object identifiers as defined<br>in the mib.<br>Plugin developers have to take notice of the following<br>requirements:<br><br>|MIB name: CACTI-<plugin_name>-MIB<br>|Module name: <plugin_name><br>|Architecture:<br>Plugin mibs have to reserve the first three<br>sub-trees for:<br>+<br>|-<plugin_name>Appl(1)<br>|-<plugin_name>Stats(2)<br>|-<plugin_name>Events(3)<br>|-<plugin_name>MibGroups(4)<br><br>The plugin name has to be written in lower cases only.<br><br>As reference plugin developers should take a look at<br>the CACTI-THOLD-MIB.'),('.1.3.6.1.4.1.23925.4.2','boost','CACTI-BOOST-MIB','','MODULE-IDENTITY','Node','not-accessible','','Initial version of this MIB module.'),('.1.3.6.1.4.1.23925.4.2.1','boostAppl','CACTI-BOOST-MIB','','OBJECT-IDENTITY','Node','not-accessible','','reserved for Boost application data'),('.1.3.6.1.4.1.23925.4.2.1.1.0','boostApplLastUpdate','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','1526568085','Unix timestamp when this data has been updated for the last time.'),('.1.3.6.1.4.1.23925.4.2.1.10.0','boostApplServerEnabled','CACTI-BOOST-MIB','TruthValue','DATA','Scalar','read-only','','If Boost Server will be used for RRDUpdates this object is set<br>to true (1).'),('.1.3.6.1.4.1.23925.4.2.1.11.0','boostApplServerMultiprocess','CACTI-BOOST-MIB','TruthValue','DATA','Scalar','read-only','','This object returns true (1) if Boost Server should  fork a separate<br>update process for each boost request'),('.1.3.6.1.4.1.23925.4.2.1.12.0','boostApplServerHostname','CACTI-BOOST-MIB','DisplayString','DATA','Scalar','read-only','','Returns the Hostname/IP of the boost server.'),('.1.3.6.1.4.1.23925.4.2.1.13.0','boostApplServerListenPort','CACTI-BOOST-MIB','DisplayString','DATA','Scalar','read-only','','Returns the TCP port the boost server will listen on.'),('.1.3.6.1.4.1.23925.4.2.1.14.0','boostApplServerTimeOuts','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Defines the maximum number of seconds a client should wait on the<br>Boost server before giving up.'),('.1.3.6.1.4.1.23925.4.2.1.15.0','boostApplImageCacheEnabled','CACTI-BOOST-MIB','TruthValue','DATA','Scalar','read-only','2','If image caching has been enabled this object is set to true (1).'),('.1.3.6.1.4.1.23925.4.2.1.16.0','boostApplLoggingEnabled','CACTI-BOOST-MIB','TruthValue','DATA','Scalar','read-only','2','If Boost debug logging is enabled this object will return true (1).'),('.1.3.6.1.4.1.23925.4.2.1.17.0','boostApplStorageDatabaseEngine','CACTI-BOOST-MIB','DisplayString','DATA','Scalar','read-only','','Returns the database engine being used for the boost storage.'),('.1.3.6.1.4.1.23925.4.2.1.18.0','boostApplStorageMaxTableSize','CACTI-BOOST-MIB','Integer32','DATA','Scalar','read-only','','This object contains the maximum size in kbytes a boost memory (1) table<br>is allowed to have. If boostApplStorageDatabaseEngine is set to<br>myisam (2) the table size is unlimited and this object returns -1.'),('.1.3.6.1.4.1.23925.4.2.1.19.0','boostApplStorageMaxRecords','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','This object contains the estimated number of records a boost memory (1)<br>table can store. If boostApplStorageDatabaseEngine is set to<br>myisam (2) the number of maximum records is unlimited and<br>this object returns 0.'),('.1.3.6.1.4.1.23925.4.2.1.2.0','boostApplRrdUpdateEnabled','CACTI-BOOST-MIB','TruthValue','DATA','Scalar','read-only','2','If Boost on demand RRD updating has been enabled this object is set<br>to true(1).'),('.1.3.6.1.4.1.23925.4.2.1.3.0','boostApplRrdUpdateInterval','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','60','If Boost has been enabled this interval determines when<br>RRDfiles will be updated automatically.'),('.1.3.6.1.4.1.23925.4.2.1.4.0','boostApplRrdUpdateMaxRecords','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','1000000','Represents the maximum size in records of the Boost output table.<br>If the boost output table exceeds this size, in records, an update<br>will take place.'),('.1.3.6.1.4.1.23925.4.2.1.5.0','boostApplRrdUpdateMaxRecordsPerSelect','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','50000','Defines the maximum number of data source items that should be<br>retrieved in one single pass.'),('.1.3.6.1.4.1.23925.4.2.1.6.0','boostApplRrdUpdateMaxStringLength','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','2000','Defines the maximum argument length Boost must not exceed for update<br>commands to RRDtool. This limit varies by operating system and kernel<br>level.'),('.1.3.6.1.4.1.23925.4.2.1.7.0','boostApplRrdUpdatePollerMemLimit','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','1024','Returns the maximum amount of memory for the Cacti Poller and<br>Boost\'s Poller.'),('.1.3.6.1.4.1.23925.4.2.1.8.0','boostApplRrdUpdateMaxRunTime','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','1200','Represents the maximum boot poller run time in seconds being allowed.'),('.1.3.6.1.4.1.23925.4.2.1.9.0','boostApplRrdUpdateRedirect','CACTI-BOOST-MIB','TruthValue','DATA','Scalar','read-only','2','If direct population of poller_output_boost table by spine has been<br>enabled this object is set to true(1). This enables direct insert of<br>records into poller output boost.'),('.1.3.6.1.4.1.23925.4.2.2','boostStats','CACTI-BOOST-MIB','','OBJECT-IDENTITY','Node','not-accessible','','reserved for boost statistics'),('.1.3.6.1.4.1.23925.4.2.2.1.0','boostStatsLastUpdate','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Unix timestamp when this data has been updated for the last time.'),('.1.3.6.1.4.1.23925.4.2.2.10.0','boostStatsTotalsRecords','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Returns the total number of records being handled by Boost.'),('.1.3.6.1.4.1.23925.4.2.2.11.0','boostStatsTotalsRecordsPending','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Total number of records marked as pending.'),('.1.3.6.1.4.1.23925.4.2.2.12.0','boostStatsTotalsRecordsArchived','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Total number of records marked as archived.'),('.1.3.6.1.4.1.23925.4.2.2.13.0','boostStatsStorageTableSize','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','This object contains the current size of the boost memory table<br>in kBytes.'),('.1.3.6.1.4.1.23925.4.2.2.14.0','boostStatsStorageAverageRecordSize','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Returns the average record size of the boost memory table in bytes.'),('.1.3.6.1.4.1.23925.4.2.2.15.0','boostStatsStorageMaxRecordLength','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Returns size of longest record within the boost memory table<br>in bytes.'),('.1.3.6.1.4.1.23925.4.2.2.16.0','boostStatsTotalsImagesCacheSize','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Represents the total number of RRD image files being<br>currently cached by Boost.'),('.1.3.6.1.4.1.23925.4.2.2.17.0','boostStatsTotalsImagesCacheReads','CACTI-BOOST-MIB','Counter64','DATA','Scalar','read-only','','Number of succesful read operations.'),('.1.3.6.1.4.1.23925.4.2.2.18.0','boostStatsTotalsImagesCacheWrites','CACTI-BOOST-MIB','Counter64','DATA','Scalar','read-only','','Indicates the number of uncached read operations.'),('.1.3.6.1.4.1.23925.4.2.2.2.0','boostStatsRrdUpdateProcessStatus','CACTI-BOOST-MIB','INTEGER','DATA','Scalar','read-only','','The status the update process of Boost can have:<br>disabled(0)    - RRD update process has been disabled.<br>neverrun(1)    - RRD update process is enabled but did not run so far<br>complete(2)    - Last RRD update process has been completed<br>running(3)     - RRD update process is still running<br>overrun(4)     - Overrun detected ?     *review*<br>timeout(5)     - Time out detected ?    *review*<br>other(6)       - Undefined state        *review*'),('.1.3.6.1.4.1.23925.4.2.2.3.0','boostStatsRrdUpdateLastRun','CACTI-BOOST-MIB','DisplayString','DATA','Scalar','read-only','','Date of last run'),('.1.3.6.1.4.1.23925.4.2.2.4.0','boostStatsRrdUpdates','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Number of RRDs being updated.'),('.1.3.6.1.4.1.23925.4.2.2.5.0','boostStatsRrdUpdateDuration','CACTI-BOOST-MIB','DisplayString','DATA','Scalar','read-only','','Represents the duration of the last update process in seconds.'),('.1.3.6.1.4.1.23925.4.2.2.6.0','boostStatsRrdUpdateUtilization','CACTI-BOOST-MIB','DisplayString','DATA','Scalar','read-only','','The proportion of the maximum upate frequency in percent Boost requires<br>to update all rrds.'),('.1.3.6.1.4.1.23925.4.2.2.7.0','boostStatsRrdUpdatePollerPeakMemory','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Returns the peak of memory in bytes that has been allocated by Boost<br>during the last rrd update process.'),('.1.3.6.1.4.1.23925.4.2.2.8.0','boostStatsRrdUpdateNextRun','CACTI-BOOST-MIB','DisplayString','DATA','Scalar','read-only','','Date of next run'),('.1.3.6.1.4.1.23925.4.2.2.9.0','boostStatsTotalsDataSources','CACTI-BOOST-MIB','Unsigned32','DATA','Scalar','read-only','','Represents the total number of poller items Boost has to take care of.'),('.1.3.6.1.4.1.23925.4.2.3','boostEvents','CACTI-BOOST-MIB','','OBJECT-IDENTITY','Node','not-accessible','','reserved for boost events'),('.1.3.6.1.4.1.23925.4.2.4','boostMibGroups','CACTI-BOOST-MIB','','OBJECT-IDENTITY','Node','not-accessible','','reserved for group definitions'),('.1.3.6.1.4.1.23925.4.4','snmpagent','CACTI-SNMPAGENT-MIB','','MODULE-IDENTITY','Node','not-accessible','','Initial version of this MIB module.'),('.1.3.6.1.4.1.23925.4.4.1','snmpagentAppl','CACTI-SNMPAGENT-MIB','','OBJECT-IDENTITY','Node','not-accessible','','resevered for statistics'),('.1.3.6.1.4.1.23925.4.4.1.1.0','snmpagentApplLastUpdate','CACTI-SNMPAGENT-MIB','Unsigned32','DATA','Scalar','read-only','','Unix timestamp when this data has been updated for the last time.'),('.1.3.6.1.4.1.23925.4.4.2','snmpagentStats','CACTI-SNMPAGENT-MIB','','OBJECT-IDENTITY','Node','not-accessible','','resevered for statistics'),('.1.3.6.1.4.1.23925.4.4.2.1.0','snmpagentStatsLastUpdate','CACTI-SNMPAGENT-MIB','Unsigned32','DATA','Scalar','read-only','','Unix timestamp when this data has been updated for the last time.'),('.1.3.6.1.4.1.23925.4.4.3','snmpagentEvents','CACTI-SNMPAGENT-MIB','','OBJECT-IDENTITY','Node','not-accessible','','resevered for events'),('.1.3.6.1.4.1.23925.4.4.3.1','snmpagentEventAttributes','CACTI-SNMPAGENT-MIB','','OBJECT-IDENTITY','Node','not-accessible','','resevered for event attributes, used as varbind for the SMNP notifications'),('.1.3.6.1.4.1.23925.4.4.3.1.1.0','snmpagentEventDescription','CACTI-SNMPAGENT-MIB','DisplayString','DATA','Scalar','accessible-for-notify','','Contains a customized event description.'),('.1.3.6.1.4.1.23925.4.4.3.2','snmpagentEventNotifications','CACTI-SNMPAGENT-MIB','','OBJECT-IDENTITY','Node','not-accessible','','resevered for event notifications'),('.1.3.6.1.4.1.23925.4.4.3.2.1','snmpagentNotificationTest','CACTI-SNMPAGENT-MIB','','NOTIFICATION-TYPE','Notification','not-accessible','','This SNMP notification will only include varbind snmpagentEventDescription<br>and can be used to verify the configuration of SNMP managers.'),('.1.3.6.1.4.1.23925.4.4.4','snmpagentMibGroups','CACTI-SNMPAGENT-MIB','','OBJECT-IDENTITY','Node','not-accessible','','resevered for group definitions'),('.1.3.6.1.4.1.23925.4.4.4.1','snmpagentEventGroup','CACTI-SNMPAGENT-MIB','','OBJECT-GROUP','Group','not-accessible','','A collection of objects providing the SNMPAgent event<br>attributes.'),('.1.3.6.1.4.1.23925.4.4.4.2','snmpagentNotifyGroup','CACTI-SNMPAGENT-MIB','','NOTIFICATION-GROUP','Group','not-accessible','','The group of notifications SNMPAgent offers.'),('.1.3.6.1.4.1.23925.5','cactiMibGroups','CACTI-MIB','','OBJECT-IDENTITY','Node','not-accessible','','reserved for group definitions'),('.1.3.6.1.4.1.23925.5.1','cactiApplPollerGroup','CACTI-MIB','','OBJECT-GROUP','Group','not-accessible','','A collection of poller settings.'),('.1.3.6.1.4.1.23925.5.2','cactiApplSpineGroup','CACTI-MIB','','OBJECT-GROUP','Group','not-accessible','','A collection of Spine specific parameters.'),('.1.3.6.1.4.1.23925.5.3','cactiStatsTotalsDeviceGroup','CACTI-MIB','','OBJECT-GROUP','Group','not-accessible','','A collection of Spine specific parameters.'),('.1.3.6.1.4.1.23925.5.4','cactiNotifyGroup','CACTI-MIB','','NOTIFICATION-GROUP','Group','not-accessible','','The group of notifications Cacti supports.');
/*!40000 ALTER TABLE `snmpagent_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpagent_cache_notifications`
--

DROP TABLE IF EXISTS `snmpagent_cache_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpagent_cache_notifications` (
  `name` varchar(50) NOT NULL,
  `mib` varchar(50) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `sequence_id` smallint(6) NOT NULL,
  PRIMARY KEY (`name`,`mib`,`attribute`,`sequence_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Notifcations and related attributes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpagent_cache_notifications`
--

LOCK TABLES `snmpagent_cache_notifications` WRITE;
/*!40000 ALTER TABLE `snmpagent_cache_notifications` DISABLE KEYS */;
INSERT INTO `snmpagent_cache_notifications` VALUES ('cactiNotify','CACTI-MIB','cactiEventDescription',0),('cactiNotifyDeviceDown','CACTI-MIB','cactiApplDeviceDescription',2),('cactiNotifyDeviceDown','CACTI-MIB','cactiApplDeviceHostname',4),('cactiNotifyDeviceDown','CACTI-MIB','cactiApplDeviceIndex',0),('cactiNotifyDeviceDown','CACTI-MIB','cactiApplDeviceLastError',6),('cactiNotifyDeviceFailedPoll','CACTI-MIB','cactiApplDeviceDescription',2),('cactiNotifyDeviceFailedPoll','CACTI-MIB','cactiApplDeviceHostname',4),('cactiNotifyDeviceFailedPoll','CACTI-MIB','cactiApplDeviceIndex',0),('cactiNotifyDeviceFailedPoll','CACTI-MIB','cactiApplDeviceLastError',6),('cactiNotifyDeviceRecovering','CACTI-MIB','cactiApplDeviceDescription',2),('cactiNotifyDeviceRecovering','CACTI-MIB','cactiApplDeviceHostname',4),('cactiNotifyDeviceRecovering','CACTI-MIB','cactiApplDeviceIndex',0),('cactiNotifyDeviceRecovering','CACTI-MIB','cactiApplDeviceLastError',6),('cactiNotifyPollerRuntimeExceeding','CACTI-MIB','cactiApplPollerHostname',2),('cactiNotifyPollerRuntimeExceeding','CACTI-MIB','cactiApplPollerIndex',0),('cactiNotifyPollerRuntimeExceeding','CACTI-MIB','cactiApplPollerIpAddress',4),('snmpagentNotificationTest','CACTI-SNMPAGENT-MIB','snmpagentEventDescription',0);
/*!40000 ALTER TABLE `snmpagent_cache_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpagent_cache_textual_conventions`
--

DROP TABLE IF EXISTS `snmpagent_cache_textual_conventions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpagent_cache_textual_conventions` (
  `name` varchar(50) NOT NULL,
  `mib` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` varchar(5000) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`,`mib`,`type`),
  KEY `name` (`name`),
  KEY `mib` (`mib`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Textual conventions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpagent_cache_textual_conventions`
--

LOCK TABLES `snmpagent_cache_textual_conventions` WRITE;
/*!40000 ALTER TABLE `snmpagent_cache_textual_conventions` DISABLE KEYS */;
INSERT INTO `snmpagent_cache_textual_conventions` VALUES ('TcCactiApplPollerType','CACTI-MIB','INTEGER','Poller types:<br />\r\n<br />\r\ncmd         - php based poller<br />\r\nspine       - high performance C-based polling engine<br />\r\n'),('TcCactiApplSnmpVersion','CACTI-MIB','INTEGER','The type of SNMP being used:<br />\r\n<br />\r\nNET-SNMP<br />\r\nUCD-SNMP<br />\r\nPHP-SNMP<br />\r\n');
/*!40000 ALTER TABLE `snmpagent_cache_textual_conventions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpagent_managers`
--

DROP TABLE IF EXISTS `snmpagent_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpagent_managers` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `disabled` char(2) DEFAULT NULL,
  `max_log_size` tinyint(1) NOT NULL,
  `snmp_version` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `snmp_community` varchar(100) NOT NULL DEFAULT '',
  `snmp_username` varchar(50) NOT NULL DEFAULT '',
  `snmp_password` varchar(50) NOT NULL DEFAULT '',
  `snmp_auth_protocol` char(6) NOT NULL DEFAULT '',
  `snmp_priv_passphrase` varchar(200) NOT NULL DEFAULT '',
  `snmp_priv_protocol` char(6) NOT NULL DEFAULT '',
  `snmp_engine_id` varchar(64) DEFAULT '',
  `snmp_port` mediumint(5) unsigned NOT NULL DEFAULT '161',
  `snmp_message_type` tinyint(1) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `hostname` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='snmp notification receivers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpagent_managers`
--

LOCK TABLES `snmpagent_managers` WRITE;
/*!40000 ALTER TABLE `snmpagent_managers` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmpagent_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpagent_managers_notifications`
--

DROP TABLE IF EXISTS `snmpagent_managers_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpagent_managers_notifications` (
  `manager_id` int(8) NOT NULL,
  `notification` varchar(50) NOT NULL,
  `mib` varchar(50) NOT NULL,
  PRIMARY KEY (`manager_id`,`notification`,`mib`),
  KEY `mib` (`mib`),
  KEY `manager_id_notification` (`manager_id`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='snmp notifications to receivers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpagent_managers_notifications`
--

LOCK TABLES `snmpagent_managers_notifications` WRITE;
/*!40000 ALTER TABLE `snmpagent_managers_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmpagent_managers_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpagent_mibs`
--

DROP TABLE IF EXISTS `snmpagent_mibs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpagent_mibs` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Registered MIB files';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpagent_mibs`
--

LOCK TABLES `snmpagent_mibs` WRITE;
/*!40000 ALTER TABLE `snmpagent_mibs` DISABLE KEYS */;
INSERT INTO `snmpagent_mibs` VALUES (1,'CACTI-MIB','/usr/share/cacti/mibs/CACTI-MIB'),(2,'CACTI-SNMPAGENT-MIB','/usr/share/cacti/mibs/CACTI-SNMPAGENT-MIB'),(3,'CACTI-BOOST-MIB','/usr/share/cacti/mibs/CACTI-BOOST-MIB');
/*!40000 ALTER TABLE `snmpagent_mibs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpagent_notifications_log`
--

DROP TABLE IF EXISTS `snmpagent_notifications_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpagent_notifications_log` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `time` int(24) NOT NULL,
  `severity` tinyint(1) NOT NULL,
  `manager_id` int(8) NOT NULL,
  `notification` varchar(190) NOT NULL DEFAULT '',
  `mib` varchar(50) NOT NULL DEFAULT '',
  `varbinds` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `severity` (`severity`),
  KEY `manager_id_notification` (`manager_id`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='logs snmp notifications to receivers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpagent_notifications_log`
--

LOCK TABLES `snmpagent_notifications_log` WRITE;
/*!40000 ALTER TABLE `snmpagent_notifications_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmpagent_notifications_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `facility_id` int(10) DEFAULT NULL,
  `priority_id` int(10) DEFAULT NULL,
  `host_id` int(10) DEFAULT NULL,
  `logtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text NOT NULL,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seq`),
  KEY `logtime` (`logtime`),
  KEY `host_id` (`host_id`),
  KEY `priority_id` (`priority_id`),
  KEY `facility_id` (`facility_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_alarm_log`
--

DROP TABLE IF EXISTS `syslog_alarm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_alarm_log` (
  `alert_id` int(10) unsigned NOT NULL DEFAULT '0',
  `logtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logmsg` varchar(1024) DEFAULT NULL,
  `host` varchar(32) DEFAULT NULL,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_alarm_log`
--

LOCK TABLES `syslog_alarm_log` WRITE;
/*!40000 ALTER TABLE `syslog_alarm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog_alarm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_alert`
--

DROP TABLE IF EXISTS `syslog_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_alert` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `severity` int(10) unsigned NOT NULL DEFAULT '0',
  `method` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL DEFAULT '1',
  `type` varchar(16) NOT NULL DEFAULT '',
  `enabled` char(2) DEFAULT 'on',
  `repeat_alert` int(10) unsigned NOT NULL DEFAULT '0',
  `open_ticket` char(2) DEFAULT '',
  `message` varchar(128) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `date` int(16) NOT NULL DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_alert`
--

LOCK TABLES `syslog_alert` WRITE;
/*!40000 ALTER TABLE `syslog_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_facilities`
--

DROP TABLE IF EXISTS `syslog_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_facilities` (
  `facility_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facility` varchar(10) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`facility`),
  KEY `facility_id` (`facility_id`),
  KEY `last_updates` (`last_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_facilities`
--

LOCK TABLES `syslog_facilities` WRITE;
/*!40000 ALTER TABLE `syslog_facilities` DISABLE KEYS */;
INSERT INTO `syslog_facilities` VALUES (1,'local0','2014-04-30 08:05:02');
/*!40000 ALTER TABLE `syslog_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_host_facilities`
--

DROP TABLE IF EXISTS `syslog_host_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_host_facilities` (
  `host_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`host_id`,`facility_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_host_facilities`
--

LOCK TABLES `syslog_host_facilities` WRITE;
/*!40000 ALTER TABLE `syslog_host_facilities` DISABLE KEYS */;
INSERT INTO `syslog_host_facilities` VALUES (1,1,'2014-04-30 08:05:02');
/*!40000 ALTER TABLE `syslog_host_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_hosts`
--

DROP TABLE IF EXISTS `syslog_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_hosts` (
  `host_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(128) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`host`),
  KEY `host_id` (`host_id`),
  KEY `last_updated` (`last_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contains all hosts currently in the syslog table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_hosts`
--

LOCK TABLES `syslog_hosts` WRITE;
/*!40000 ALTER TABLE `syslog_hosts` DISABLE KEYS */;
INSERT INTO `syslog_hosts` VALUES (1,'localhost','2014-04-30 08:05:02');
/*!40000 ALTER TABLE `syslog_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_incoming`
--

DROP TABLE IF EXISTS `syslog_incoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_incoming` (
  `facility` varchar(10) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `host` varchar(128) DEFAULT NULL,
  `message` text NOT NULL,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seq`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=327 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_incoming`
--

LOCK TABLES `syslog_incoming` WRITE;
/*!40000 ALTER TABLE `syslog_incoming` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog_incoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_logs`
--

DROP TABLE IF EXISTS `syslog_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_logs` (
  `alert_id` int(10) unsigned NOT NULL DEFAULT '0',
  `logseq` bigint(20) unsigned NOT NULL,
  `logtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logmsg` text,
  `host` varchar(32) DEFAULT NULL,
  `facility` varchar(10) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `html` blob,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seq`),
  KEY `logseq` (`logseq`),
  KEY `alert_id` (`alert_id`),
  KEY `host` (`host`),
  KEY `seq` (`seq`),
  KEY `logtime` (`logtime`),
  KEY `priority` (`priority`),
  KEY `facility` (`facility`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_logs`
--

LOCK TABLES `syslog_logs` WRITE;
/*!40000 ALTER TABLE `syslog_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_priorities`
--

DROP TABLE IF EXISTS `syslog_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_priorities` (
  `priority_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `priority` varchar(10) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`priority`),
  KEY `priority_id` (`priority_id`),
  KEY `last_updated` (`last_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_priorities`
--

LOCK TABLES `syslog_priorities` WRITE;
/*!40000 ALTER TABLE `syslog_priorities` DISABLE KEYS */;
INSERT INTO `syslog_priorities` VALUES (2,'crit','2011-04-17 15:15:41'),(3,'alert','2011-04-17 15:15:41'),(4,'err','2011-04-17 15:15:41'),(5,'warn','2014-04-30 08:05:02'),(6,'notice','2011-04-17 15:15:41'),(7,'info','2011-04-17 15:15:41'),(8,'debug','2011-04-17 15:15:41'),(9,'other','2011-04-17 15:15:41');
/*!40000 ALTER TABLE `syslog_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_remove`
--

DROP TABLE IF EXISTS `syslog_remove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_remove` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `enabled` char(2) DEFAULT 'on',
  `method` char(5) DEFAULT 'del',
  `message` varchar(128) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `date` int(16) NOT NULL DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_remove`
--

LOCK TABLES `syslog_remove` WRITE;
/*!40000 ALTER TABLE `syslog_remove` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog_remove` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_removed`
--

DROP TABLE IF EXISTS `syslog_removed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_removed` (
  `facility_id` int(10) DEFAULT NULL,
  `priority_id` int(10) DEFAULT NULL,
  `host_id` int(10) DEFAULT NULL,
  `logtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text NOT NULL,
  `seq` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seq`),
  KEY `logtime` (`logtime`),
  KEY `host_id` (`host_id`),
  KEY `priority_id` (`priority_id`),
  KEY `facility_id` (`facility_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_removed`
--

LOCK TABLES `syslog_removed` WRITE;
/*!40000 ALTER TABLE `syslog_removed` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog_removed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_reports`
--

DROP TABLE IF EXISTS `syslog_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_reports` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `enabled` char(2) DEFAULT 'on',
  `timespan` int(16) NOT NULL DEFAULT '0',
  `timepart` char(5) NOT NULL DEFAULT '00:00',
  `lastsent` int(16) NOT NULL DEFAULT '0',
  `body` text,
  `message` varchar(128) DEFAULT NULL,
  `user` varchar(32) NOT NULL DEFAULT '',
  `date` int(16) NOT NULL DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_reports`
--

LOCK TABLES `syslog_reports` WRITE;
/*!40000 ALTER TABLE `syslog_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog_statistics`
--

DROP TABLE IF EXISTS `syslog_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog_statistics` (
  `host_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `priority_id` int(10) unsigned NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `records` int(10) unsigned NOT NULL,
  PRIMARY KEY (`host_id`,`facility_id`,`priority_id`,`insert_time`),
  KEY `host_id` (`host_id`),
  KEY `facility_id` (`facility_id`),
  KEY `priority_id` (`priority_id`),
  KEY `insert_time` (`insert_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Maintains High Level Statistics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog_statistics`
--

LOCK TABLES `syslog_statistics` WRITE;
/*!40000 ALTER TABLE `syslog_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(2048) NOT NULL DEFAULT '',
  `realm` mediumint(8) NOT NULL DEFAULT '0',
  `full_name` varchar(100) DEFAULT '0',
  `email_address` varchar(128) DEFAULT NULL,
  `must_change_password` char(2) DEFAULT '',
  `password_change` char(2) DEFAULT 'on',
  `show_tree` char(2) DEFAULT 'on',
  `show_list` char(2) DEFAULT 'on',
  `show_preview` char(2) NOT NULL DEFAULT 'on',
  `graph_settings` char(2) DEFAULT '',
  `login_opts` tinyint(1) NOT NULL DEFAULT '1',
  `policy_graphs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_trees` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_hosts` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_graph_templates` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enabled` char(2) NOT NULL DEFAULT 'on',
  `lastchange` int(12) NOT NULL DEFAULT '-1',
  `lastlogin` int(12) NOT NULL DEFAULT '-1',
  `password_history` varchar(4096) NOT NULL DEFAULT '-1',
  `locked` varchar(3) NOT NULL DEFAULT '',
  `failed_attempts` int(5) NOT NULL DEFAULT '0',
  `lastfail` int(12) NOT NULL DEFAULT '0',
  `reset_perms` int(12) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `realm` (`realm`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',0,'Administrator',NULL,'','on','on','on','on','on',1,1,1,1,1,'on',-1,-1,'-1','',0,0,0),(3,'guest','43e9a4ab75570f5b',0,'Guest Account',NULL,'on','on','on','on','on','on',3,1,1,1,1,'',-1,-1,'-1','',0,0,0);
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_cache`
--

DROP TABLE IF EXISTS `user_auth_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(100) NOT NULL DEFAULT '',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokenkey` (`token`),
  KEY `hostname` (`hostname`),
  KEY `user_id` (`user_id`),
  KEY `last_update` (`last_update`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Caches Remember Me Details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_cache`
--

LOCK TABLES `user_auth_cache` WRITE;
/*!40000 ALTER TABLE `user_auth_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_group`
--

DROP TABLE IF EXISTS `user_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `graph_settings` varchar(2) DEFAULT NULL,
  `login_opts` tinyint(1) NOT NULL DEFAULT '1',
  `show_tree` varchar(2) DEFAULT 'on',
  `show_list` varchar(2) DEFAULT 'on',
  `show_preview` varchar(2) NOT NULL DEFAULT 'on',
  `policy_graphs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_trees` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_hosts` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `policy_graph_templates` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enabled` char(2) NOT NULL DEFAULT 'on',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table that Contains User Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_group`
--

LOCK TABLES `user_auth_group` WRITE;
/*!40000 ALTER TABLE `user_auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_group_members`
--

DROP TABLE IF EXISTS `user_auth_group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_group_members` (
  `group_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`user_id`),
  KEY `realm_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table that Contains User Group Members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_group_members`
--

LOCK TABLES `user_auth_group_members` WRITE;
/*!40000 ALTER TABLE `user_auth_group_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth_group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_group_perms`
--

DROP TABLE IF EXISTS `user_auth_group_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_group_perms` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`item_id`,`type`),
  KEY `group_id` (`group_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table that Contains User Group Permissions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_group_perms`
--

LOCK TABLES `user_auth_group_perms` WRITE;
/*!40000 ALTER TABLE `user_auth_group_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth_group_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_group_realm`
--

DROP TABLE IF EXISTS `user_auth_group_realm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_group_realm` (
  `group_id` int(10) unsigned NOT NULL,
  `realm_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`realm_id`),
  KEY `realm_id` (`realm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table that Contains User Group Realm Permissions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_group_realm`
--

LOCK TABLES `user_auth_group_realm` WRITE;
/*!40000 ALTER TABLE `user_auth_group_realm` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth_group_realm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_perms`
--

DROP TABLE IF EXISTS `user_auth_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_perms` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`item_id`,`type`),
  KEY `user_id` (`user_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_perms`
--

LOCK TABLES `user_auth_perms` WRITE;
/*!40000 ALTER TABLE `user_auth_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_realm`
--

DROP TABLE IF EXISTS `user_auth_realm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth_realm` (
  `realm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realm_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_realm`
--

LOCK TABLES `user_auth_realm` WRITE;
/*!40000 ALTER TABLE `user_auth_realm` DISABLE KEYS */;
INSERT INTO `user_auth_realm` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(7,1),(7,3),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(36,1),(101,1),(103,1),(104,1),(105,1),(106,1),(107,1),(110,1),(111,1),(112,1),(113,1);
/*!40000 ALTER TABLE `user_auth_realm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_domains`
--

DROP TABLE IF EXISTS `user_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_domains` (
  `domain_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(20) NOT NULL,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `enabled` char(2) NOT NULL DEFAULT 'on',
  `defdomain` tinyint(3) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to Hold Login Domains';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_domains`
--

LOCK TABLES `user_domains` WRITE;
/*!40000 ALTER TABLE `user_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_domains_ldap`
--

DROP TABLE IF EXISTS `user_domains_ldap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_domains_ldap` (
  `domain_id` int(10) unsigned NOT NULL,
  `server` varchar(128) NOT NULL,
  `port` int(10) unsigned NOT NULL,
  `port_ssl` int(10) unsigned NOT NULL,
  `proto_version` tinyint(3) unsigned NOT NULL,
  `encryption` tinyint(3) unsigned NOT NULL,
  `referrals` tinyint(3) unsigned NOT NULL,
  `mode` tinyint(3) unsigned NOT NULL,
  `dn` varchar(128) NOT NULL,
  `group_require` char(2) NOT NULL,
  `group_dn` varchar(128) NOT NULL,
  `group_attrib` varchar(128) NOT NULL,
  `group_member_type` tinyint(3) unsigned NOT NULL,
  `search_base` varchar(128) NOT NULL,
  `search_filter` varchar(128) NOT NULL,
  `specific_dn` varchar(128) NOT NULL,
  `specific_password` varchar(128) NOT NULL,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to Hold Login Domains for LDAP';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_domains_ldap`
--

LOCK TABLES `user_domains_ldap` WRITE;
/*!40000 ALTER TABLE `user_domains_ldap` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_domains_ldap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `username` varchar(50) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `result` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`username`,`user_id`,`time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
INSERT INTO `user_log` VALUES ('admin',1,'2010-10-29 17:01:03',1,'192.168.56.1'),('admin',0,'0000-00-00 00:00:00',3,'192.168.56.1');
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vdef`
--

DROP TABLE IF EXISTS `vdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vdef` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `name` (`name`(171))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='vdef';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vdef`
--

LOCK TABLES `vdef` WRITE;
/*!40000 ALTER TABLE `vdef` DISABLE KEYS */;
INSERT INTO `vdef` VALUES (1,'e06ed529238448773038601afb3cf278','Maximum'),(2,'e4872dda82092393d6459c831a50dc3b','Minimum'),(3,'5ce1061a46bb62f36840c80412d2e629','Average'),(4,'06bd3cbe802da6a0745ea5ba93af554a','Last (Current)'),(5,'631c1b9086f3979d6dcf5c7a6946f104','First'),(6,'6b5335843630b66f858ce6b7c61fc493','Total: Current Data Source'),(7,'c80d12b0f030af3574da68b28826cd39','95th Percentage: Current Data Source');
/*!40000 ALTER TABLE `vdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vdef_items`
--

DROP TABLE IF EXISTS `vdef_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vdef_items` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `vdef_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sequence` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `vdef_id_sequence` (`vdef_id`,`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='vdef items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vdef_items`
--

LOCK TABLES `vdef_items` WRITE;
/*!40000 ALTER TABLE `vdef_items` DISABLE KEYS */;
INSERT INTO `vdef_items` VALUES (1,'88d33bf9271ac2bdf490cf1784a342c1',1,1,4,'CURRENT_DATA_SOURCE'),(2,'a307afab0c9b1779580039e3f7c4f6e5',1,2,1,'1'),(3,'0945a96068bb57c80bfbd726cf1afa02',2,1,4,'CURRENT_DATA_SOURCE'),(4,'95a8df2eac60a89e8a8ca3ea3d019c44',2,2,1,'2'),(5,'cc2e1c47ec0b4f02eb13708cf6dac585',3,1,4,'CURRENT_DATA_SOURCE'),(6,'a2fd796335b87d9ba54af6a855689507',3,2,1,'3'),(7,'a1d7974ee6018083a2053e0d0f7cb901',4,1,4,'CURRENT_DATA_SOURCE'),(8,'26fccba1c215439616bc1b83637ae7f3',4,2,1,'5'),(9,'a8993b265f4c5398f4a47c44b5b37a07',5,1,4,'CURRENT_DATA_SOURCE'),(10,'5a380d469d611719057c3695ce1e4eee',5,2,1,'6'),(11,'65cfe546b17175fad41fcca98c057feb',6,1,4,'CURRENT_DATA_SOURCE'),(12,'f330b5633c3517d7c62762cef091cc9e',6,2,1,'7'),(13,'f1bf2ecf54ca0565cf39c9c3f7e5394b',7,1,4,'CURRENT_DATA_SOURCE'),(14,'11a26f18feba3919be3af426670cba95',7,2,6,'95'),(15,'e7ae90275bc1efada07c19ca3472d9db',7,3,1,'8');
/*!40000 ALTER TABLE `vdef_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `cacti` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`cacti`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES ('1.1.37');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weathermap_auth`
--

DROP TABLE IF EXISTS `weathermap_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weathermap_auth` (
  `userid` mediumint(9) NOT NULL DEFAULT '0',
  `mapid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weathermap_auth`
--

LOCK TABLES `weathermap_auth` WRITE;
/*!40000 ALTER TABLE `weathermap_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `weathermap_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weathermap_data`
--

DROP TABLE IF EXISTS `weathermap_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weathermap_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rrdfile` varchar(255) NOT NULL,
  `data_source_name` varchar(19) NOT NULL,
  `last_time` int(11) NOT NULL,
  `last_value` varchar(255) NOT NULL,
  `last_calc` varchar(255) NOT NULL,
  `sequence` int(11) NOT NULL,
  `local_data_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rrdfile` (`rrdfile`),
  KEY `local_data_id` (`local_data_id`),
  KEY `data_source_name` (`data_source_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weathermap_data`
--

LOCK TABLES `weathermap_data` WRITE;
/*!40000 ALTER TABLE `weathermap_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `weathermap_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weathermap_groups`
--

DROP TABLE IF EXISTS `weathermap_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weathermap_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weathermap_groups`
--

LOCK TABLES `weathermap_groups` WRITE;
/*!40000 ALTER TABLE `weathermap_groups` DISABLE KEYS */;
INSERT INTO `weathermap_groups` VALUES (1,'Weathermaps',1);
/*!40000 ALTER TABLE `weathermap_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weathermap_maps`
--

DROP TABLE IF EXISTS `weathermap_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weathermap_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '1',
  `active` set('on','off') NOT NULL DEFAULT 'on',
  `configfile` text NOT NULL,
  `imagefile` text NOT NULL,
  `htmlfile` text NOT NULL,
  `titlecache` text NOT NULL,
  `filehash` varchar(40) NOT NULL DEFAULT '',
  `warncount` int(11) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `thumb_width` int(11) NOT NULL DEFAULT '0',
  `thumb_height` int(11) NOT NULL DEFAULT '0',
  `schedule` varchar(32) NOT NULL DEFAULT '*',
  `archiving` set('on','off') NOT NULL DEFAULT 'off',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weathermap_maps`
--

LOCK TABLES `weathermap_maps` WRITE;
/*!40000 ALTER TABLE `weathermap_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `weathermap_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weathermap_settings`
--

DROP TABLE IF EXISTS `weathermap_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weathermap_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapid` int(11) NOT NULL DEFAULT '0',
  `groupid` int(11) NOT NULL DEFAULT '0',
  `optname` varchar(128) NOT NULL DEFAULT '',
  `optvalue` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weathermap_settings`
--

LOCK TABLES `weathermap_settings` WRITE;
/*!40000 ALTER TABLE `weathermap_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `weathermap_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-17 10:44:03

GRANT ALL ON cacti.* TO cacti@localhost IDENTIFIED BY 'root66';
GRANT SELECT ON mysql.time_zone_name TO cacti@localhost;

