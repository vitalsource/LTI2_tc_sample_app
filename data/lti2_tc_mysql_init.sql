# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.19)
# Database: tcsampleapp
# Generation Time: 2015-05-11 13:49:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table active_admin_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `active_admin_comments`;

CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`) USING BTREE,
  KEY `index_active_admin_comments_on_namespace` (`namespace`) USING BTREE,
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table admin_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mentor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;

INSERT INTO `admin_users` (`id`, `email`, `role`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `user_id`, `first_name`, `last_name`, `mentor`)
VALUES
	(2,'admin@lumos.org','Administrator','$2a$10$q3KfzYswPFmhHzJv9uVUgeRFp7/xTQL/h.AC7I9fMsd3aLCz7IL7y',NULL,'2012-07-31 22:37:10','2015-03-19 15:28:31',226,'2015-05-06 13:07:18','2015-05-06 13:01:07','127.0.0.1','127.0.0.1','2012-07-09 23:37:35','2015-05-06 13:07:18','admin','John','Tibbetts',NULL),
	(6,'jadams@lumos.org','Instructor','$2a$10$fcq0XejjaJ30GSyE34wzxO5pMXh1EV75BfI3t76YQ7IEW4/9qdzYq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2012-07-31 22:47:32','2012-07-31 22:47:32','john.adams','John','Adams',NULL),
	(7,'tarne@lumos.org','Learner','$2a$10$KrvXKBGBCYH6idjDE3Ctpe1fUmvbkRFISyJBpriHtPCrTHkt.UPV6',NULL,NULL,NULL,6,'2012-10-09 14:49:01','2012-10-09 14:45:45','127.0.0.1','127.0.0.1','2012-07-31 22:48:15','2012-10-09 14:49:01','tom.arne','Tom','Arne',NULL),
	(8,'hbingen@lumos.org','Instructor','$2a$10$IVQh8q/2t38cF2wuVO6Ec.GQF3RVKNy45W1tr.vqX2F4QxT3nzMwG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2012-07-31 22:48:57','2012-07-31 22:48:57','hildy.bingen','Hildy','Bingen',NULL),
	(9,'wbach@lumos.org','Learner','$2a$10$QcjasSRFSesjvBodh5A0zOd6aux..zHhZ7znkOzDaeIxrIj/Gyu32',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2012-07-31 22:49:39','2012-07-31 22:49:39','willie.bach','Willie','Bach',NULL),
	(10,'bdev@lumos.org','Learner','$2a$10$Y99OkiogEHrTW8G96Dhty.84RSgCcbFOqevTfEyUgY8qtATbLLQGa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2012-07-31 22:50:27','2012-07-31 22:50:27','bcdev','BC','Dev',NULL),
	(11,'sian@imscert.org','Instructor','$2a$10$FN4zFj0iPu8ZHa0jSVF5MucJu68gjjpQdrG.zlDlgHDydI/i9XgsK',NULL,NULL,NULL,8,'2014-01-17 23:38:34','2014-01-16 14:06:20','127.0.0.1','127.0.0.1','2013-10-25 00:00:00','2014-01-17 23:38:34','sian.instructor','Siân','Instructor',NULL),
	(12,'john@imscert.org','Learner','$2a$10$BZiiR4/Iuy1lgV..afB6t.mIlwcBUCcLs1uNIybca0L/kkGkky7Fa',NULL,NULL,NULL,5,'2014-01-17 23:42:18','2014-01-16 14:04:48','127.0.0.1','127.0.0.1','2013-10-25 00:00:00','2014-01-17 23:42:18','john.student','John','Student',NULL),
	(14,'jean@imscert.org','administrator','$2a$10$.cfJBb9t.alfAS/pAz7gb.6FlSuUysgSEySHMdW6Z6fCvrzBv3sQC',NULL,NULL,NULL,5,'2014-01-17 23:43:02','2014-01-16 14:05:46','127.0.0.1','127.0.0.1','2014-01-15 23:37:48','2014-01-17 23:43:02','jean.mentor','Jean','Mentor','12');

/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_label` varchar(255) DEFAULT NULL,
  `course_title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `course_label`, `course_title`, `created_at`, `updated_at`)
VALUES
	(1,'ENG110A','English Masters','2012-07-31 23:09:13','2012-07-31 23:09:13'),
	(2,'SMPL101A','Nursing Compendium','2012-07-31 23:09:54','2012-07-31 23:09:54'),
	(3,'NURS200A','Nursing Operations','2012-07-31 23:10:31','2012-07-31 23:10:31'),
	(4,'DEV400A','Developer Seminar','2012-07-31 23:12:28','2012-07-31 23:12:28'),
	(5,'DPE001','Design of Personal Environments 1','2013-10-25 00:00:00','2013-10-25 00:00:00'),
	(6,'DPE002','Design of Personal Environments 2','2013-10-25 00:00:00','2013-10-25 00:00:00');

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table enrollments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enrollments`;

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;

INSERT INTO `enrollments` (`id`, `admin_user_id`, `course_id`, `role`, `created_at`, `updated_at`)
VALUES
	(1,6,1,'Instructor','2012-07-31 23:18:59','2012-07-31 23:18:59'),
	(2,6,3,'Instructor','2012-07-31 23:19:45','2012-07-31 23:19:45'),
	(3,6,2,'Instructor','2012-07-31 23:20:07','2012-07-31 23:20:07'),
	(4,7,1,'Learner','2012-07-31 23:20:24','2012-07-31 23:20:24'),
	(5,7,3,'Learner','2012-07-31 23:20:39','2012-07-31 23:20:39'),
	(6,7,2,'Learner','2012-07-31 23:21:01','2012-07-31 23:21:01'),
	(7,8,1,'Instructor','2012-07-31 23:23:56','2012-07-31 23:23:56'),
	(8,8,3,'Instructor','2012-07-31 23:24:15','2012-07-31 23:24:15'),
	(9,8,2,'Instructor','2012-07-31 23:24:30','2012-07-31 23:24:30'),
	(10,9,1,'Learner','2012-07-31 23:24:45','2012-07-31 23:24:45'),
	(11,9,3,'Learner','2012-07-31 23:24:53','2012-07-31 23:24:53'),
	(12,9,2,'Learner','2012-07-31 23:25:00','2012-07-31 23:25:00'),
	(13,10,4,'Learner','2012-07-31 23:25:15','2012-07-31 23:25:15'),
	(14,2,4,'Instructor','2012-07-31 23:25:28','2012-07-31 23:25:28'),
	(15,11,5,'Instructor','2013-10-25 00:00:00','2013-10-25 00:00:00'),
	(16,12,5,'Learner','2013-10-25 00:00:00','2013-10-25 00:00:00'),
	(17,11,6,'Instructor','2013-10-25 00:00:00','2013-10-25 00:00:00'),
	(18,12,6,'Learner','2013-10-25 00:00:00','2013-10-25 00:00:00'),
	(19,14,5,'urn:lti:role:ims/lis/Mentor','2014-01-15 23:41:02','2014-01-15 23:41:02'),
	(20,2,1,'Instructor','2014-02-25 00:00:00','2014-02-25 00:00:00'),
	(21,2,2,'Instructor','2014-02-25 00:00:00','2014-02-25 00:00:00'),
	(22,2,3,'Instructor','2014-02-25 00:00:00','2014-02-25 00:00:00');

/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table grade_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `grade_items`;

CREATE TABLE `grade_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table grade_results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `grade_results`;

CREATE TABLE `grade_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) DEFAULT NULL,
  `admin_user_id` int(11) DEFAULT NULL,
  `result` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lti2_tc_deployment_requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lti2_tc_deployment_requests`;

CREATE TABLE `lti2_tc_deployment_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_key` varchar(255) DEFAULT NULL,
  `reg_password` varchar(255) DEFAULT NULL,
  `tc_oauth_half_secret` text,
  `partner_url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `disposition` varchar(255) DEFAULT NULL,
  `confirm_url` varchar(255) DEFAULT NULL,
  `tc_profile_guid` varchar(255) DEFAULT NULL,
  `tool_proxy_json` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_deployment_requests_on_tc_profile_guid` (`tc_profile_guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lti2_tc_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lti2_tc_links`;

CREATE TABLE `lti2_tc_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_link_label` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `grade_item_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `link_parameters` varchar(255) DEFAULT NULL,
  `is_name_permission` tinyint(1) DEFAULT NULL,
  `is_email_permission` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lti2_tc_registries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lti2_tc_registries`;

CREATE TABLE `lti2_tc_registries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `lti2_tc_registries` WRITE;
/*!40000 ALTER TABLE `lti2_tc_registries` DISABLE KEYS */;

INSERT INTO `lti2_tc_registries` (`id`, `name`, `content`, `created_at`, `updated_at`)
VALUES
	(1,'tool_consumer_profile_template','{\n  \"@context\" : [\n    \"http://purl.imsglobal.org/ctx/lti/v2/ToolConsumerProfile\",\n    {\n      \"ltitcp\" : \"{tc_deployment_url}/lti2_tc/tool_consumer_profiles/{tc_profile_guid}#\"\n    }\n  ],\n  \"@type\" : \"ToolConsumerProfile\",\n  \"@id\" : \"{tc_deployment_url}/tool_consumer_profiles/{tc_profile_guid}\",\n  \"lti_version\" : \"LTI-2p0\",\n  \"guid\" : \"{tc_profile_guid}\",\n  \"product_instance\" : {\n    \"guid\" : \"dcddf9808107-81ea-eaa4-1edf-5d24568c\",\n    \"product_info\" : {\n      \"product_name\" : {\n        \"default_value\" : \"Elan/{tool_consumer_name}\",\n        \"key\" : \"product.name\"\n      },\n      \"product_version\" : \"3.1\",\n      \"description\" : {\n        \"default_value\" : \"Elan University/{tool_consumer_name} Learning Platform\",\n        \"key\" : \"product.version\"\n      },\n      \"technical_description\" : {\n        \"default_value\" : \"LTI 1, 1.1 and 2.0 compliant\",\n        \"key\" : \"product.technicalDescription\"\n      },\n      \"product_family\" : {\n        \"code\" : \"{tool_consumer_name}\",\n        \"vendor\" : {\n          \"code\" : \"lms.{tool_consumer_name}.org\",\n          \"vendor_name\" : {\n            \"default_value\" : \"{tool_consumer_name} Corporation\",\n            \"key\" : \"product.vendor.name\"\n          },\n          \"description\" : {\n            \"default_value\" : \"{tool_consumer_name} Corporation is a fictitious vendor of a Learning Management System\",\n            \"key\" : \"product.vendor.description\"\n          },\n          \"website\" : \"http://lms.{tool_consumer_name}.org/products/omega\",\n          \"timestamp\" : \"2012-07-09T012:08:16-04:00\",\n          \"contact\" : {\n            \"email\" : \"support@lms.{tool_consumer_name}.org\"\n          }\n        }\n      }\n    },\n    \"support\" : {\n      \"email\" : \"john.tibbetts@kinexis.com\"\n    },\n	\"service_owner\" : {\n	   \"@id\" : \"http://ec2.{tool_consumer_name}.org/ServiceOwner\",\n	   \"timestamp\" : \"2012-03-28T09:08:16-04:00\",\n	   \"service_owner_name\" : {\n	     \"default_value\" : \"Elan University\",\n	     \"key\" : \"service_owner.name\"\n	   },\n	   \"description\" : {\n	     \"default_value\" : \"Elan University EC2 Cloud\",\n	     \"key\" : \"service_owner.description\"\n	   },\n	   \"support\" : {\n	     \"email\" : \"techsupport@elan.edu\"\n	   }\n	 },\n    \"service_provider\" : {\n      \"@id\" : \"http://ec2.{tool_consumer_name}.org/ServiceProvider\",\n      \"guid\" : \"ec2.{tool_consumer_name}.org\",\n      \"timestamp\" : \"2012-07-09T012:08:16-04:00\",\n      \"service_provider_name\" : {\n        \"default_value\" : \"Elan University\",\n        \"key\" : \"service_provider.name\"\n      },\n      \"description\" : {\n        \"default_value\" : \"Elan University EC2 Cloud\",\n        \"key\" : \"service_provider.description\"\n      },\n      \"support\" : {\n        \"email\" : \"support@yasp.{tool_consumer_name}.org\"\n      }\n    }\n  },\n  \"capability_offered\" : [\n     \"basic-lti-launch-request\",\n     \"Result.autocreate\",\n     \"Result.sourcedId\",\n	 \"User.id\",\n	 \"User.username\",\n	 \"CourseSection.sourcedId\",\n	 \"Person.sourcedId\",\n	 \"Person.email.primary\",\n	 \"Person.name.given\",\n	 \"Person.name.family\",\n	 \"Person.name.full\",\n	 \"Membership.role\",\n	 \"ToolProxy.custom.url\",\n         \"ToolProxyBinding.custom.url\",\n          \"LtiLink.custom.url\",\n  	  \"ToolConsumerProfile.url\",\n	  \"OAuth.splitsecret\"\n  ],\n  \"service_offered\" : [\n    { \n      \"@type\" : \"RestService\",\n      \"@id\" : \"ltitcp:ToolProxy.collection\",\n      \"endpoint\" : \"{tc_deployment_url}/lti2_tc/tools\",\n      \"format\" : [\"application/vnd.ims.lti.v2.toolproxy+json\"],\n      \"action\" : [\"POST\"]\n    },\n    { \n      \"@type\" : \"RestService\",\n      \"@id\" : \"ltitcp:ToolProxy.item\",\n      \"endpoint\" : \"{tc_deployment_url}/lti2_tc/tools/{tool_proxy_guid}\",\n      \"format\" : [\"application/vnd.ims.lti.v2.toolproxy+json\"],\n      \"action\" : [\n        \"GET\",\n        \"PUT\"\n      ]\n    },\n    { \n      \"@type\" : \"RestService\",\n      \"@id\" : \"ltitcp:Result.item\",\n      \"endpoint\" : \"{tc_deployment_url}/lti2_tc/resources/Result/{sourcedId}\",\n      \"format\" : [\"application/vnd.ims.lis.v2.result+json\"],\n      \"action\" : [\n        \"GET\",\n        \"PUT\"\n      ]\n    },\n    {\n      \"@type\" : \"RestService\",\n      \"@id\" : \"ltitcp:LtiLinkSettings\",\n      \"endpoint\" : \"{tc_deployment_url}/lti2_tc/tool_settings/{tool_proxy_guid}/ltilink/{link_id}\",\n      \"format\" : [\"application/vnd.ims.lti.v2.toolsettings+json\", \"application/vnd.ims.lti.v2.toolsettings.simple+json\"],\n      \"action\" : [\"GET\", \"PUT\"]\n    },\n    {\n      \"@type\" : \"RestService\",\n      \"@id\" : \"ltitcp:ToolProxyBindingSettings\",\n      \"endpoint\" : \"{tc_deployment_url}/lti2_tc/tool_settings/{tool_proxy_guid}/context/{context_id}\",\n      \"format\" : [\"application/vnd.ims.lti.v2.toolsettings+json\", \"application/vnd.ims.lti.v2.toolsettings.simple+json\"],\n      \"action\" : [\"GET\", \"PUT\"]\n    },\n    {\n      \"@type\":\"RestService\",\n      \"@id\" : \"ltitcp:ToolProxySettings\",\n      \"endpoint\" : \"{tc_deployment_url}/lti2_tc/tool_settings/{tool_proxy_guid}\",\n      \"format\" : [\"application/vnd.ims.lti.v2.toolsettings+json\", \"application/vnd.ims.lti.v2.toolsettings.simple+json\"],\n      \"action\" : [\"GET\", \"PUT\"]\n	}\n  ]\n}','2012-07-09 23:45:10','2012-07-09 23:45:10'),
	(3,'tc_deployment_url','http://rails.kinexis.com:4000','2013-12-24 00:00:00','2012-07-29 17:58:18'),
	(5,'relaxed_oauth_check','false','2013-12-24 00:00:00','2013-12-24 00:00:00'),
	(6,'result_template','{\n  \"@context\" : \"http://purl.imsglobal.org/ctx/lis/v2/Result\",\n  \"@type\" : \"Result\",\n  \"resultScore\" : {\n    \"@type\" : \"decimal\",\n    \"@value\"  : {value}\n  }\n}\n','2013-12-24 00:00:00','2013-12-24 00:00:00'),
	(7,'tool_consumer_name','LuMoS','2013-12-24 00:00:00','2013-12-24 00:00:00'),
	(8,'result_model_environment','result_external','2014-02-07 00:00:00','2014-02-07 00:00:00'),
	(9,'normal_model_environment','development','2014-02-07 00:00:00','2014-02-07 00:00:00'),
	(10,'wirelog_filename','/tmp/wirelog.html ','2014-04-22 00:00:00','2014-04-22 00:00:00');

/*!40000 ALTER TABLE `lti2_tc_registries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lti2_tc_resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lti2_tc_resources`;

CREATE TABLE `lti2_tc_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lti2_tc_tool_consumer_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lti2_tc_tool_consumer_profiles`;

CREATE TABLE `lti2_tc_tool_consumer_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tc_profile_guid` varchar(255) DEFAULT NULL,
  `tc_profile` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tool_consumer_profiles_on_tc_profile_guid` (`tc_profile_guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lti2_tc_tool_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lti2_tc_tool_settings`;

CREATE TABLE `lti2_tc_tool_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) DEFAULT NULL,
  `scopeable_id` int(11) DEFAULT NULL,
  `scopeable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lti2_tc_tools
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lti2_tc_tools`;

CREATE TABLE `lti2_tc_tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_proxy` text,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `secret` text,
  `status` varchar(255) DEFAULT NULL,
  `new_deployment_request_id` int(11) DEFAULT NULL,
  `end_registration_id` varchar(255) DEFAULT NULL,
  `registration_return_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tools_on_key` (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20150505213009'),
	('20150505213019');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
