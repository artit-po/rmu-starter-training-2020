# Host: localhost  (Version 5.7.17-log)
# Date: 2020-09-17 22:32:57
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "tb_address"
#

DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `USERNAME` varchar(50) DEFAULT NULL,
  `H_NUMBER` varchar(20) DEFAULT NULL,
  `VILLAGE_NAME` varchar(50) DEFAULT NULL,
  `ROAD` varchar(50) DEFAULT NULL,
  `ALLEY` varchar(50) DEFAULT NULL,
  `SUB_DISTRICT` varchar(50) DEFAULT NULL,
  `DISTRICT` varchar(50) DEFAULT NULL,
  `PROVINCE` varchar(5) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_address"
#

INSERT INTO `tb_address` VALUES ('apinya@gmail.com','81/107',NULL,'นครสวรรค์',NULL,'ตลาด','เมือง','มหาสา','ADMIN','2020-09-13 13:30:08','ADMIN','2020-09-13 13:30:15');

#
# Structure for table "tb_list_of_value"
#

DROP TABLE IF EXISTS `tb_list_of_value`;
CREATE TABLE `tb_list_of_value` (
  `LOV_VALUE` varchar(100) NOT NULL,
  `VIEW_VALUE` varchar(100) DEFAULT NULL,
  `LOV_GROUP` varchar(100) DEFAULT NULL,
  `LOV_ORDER` varchar(100) DEFAULT NULL,
  `ACTIVE_FLAG` varchar(10) DEFAULT NULL,
  `CREATED_USER` varchar(50) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_USER` varchar(50) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`LOV_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_list_of_value"
#

INSERT INTO `tb_list_of_value` VALUES ('F','FEMALE','SEX','2','Y','ADMIN','2020-09-13 00:00:00','ADMIN','2020-09-13 00:00:00'),('M','MALE','SEX','1','Y','ADMIN','2020-09-13 00:00:00','ADMIN','2020-09-13 00:00:00'),('N','INACTIVE','ACTIVE_FLAG','2','Y','ADMIN','2020-09-13 00:00:00','ADMIN','2020-09-13 00:00:00'),('Y','ACTIVE','ACTIVE_FLAG','1','Y','ADMIN','2020-09-13 00:00:00','ADMIN','2020-09-13 00:00:00');

#
# Structure for table "tb_phone"
#

DROP TABLE IF EXISTS `tb_phone`;
CREATE TABLE `tb_phone` (
  `USERNAME` varchar(50) NOT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `PHONE_TYPE` varchar(1) DEFAULT NULL,
  `ACTIVE_FLAG` varchar(1) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_phone"
#

INSERT INTO `tb_phone` VALUES ('apinya@gmail.com','0987654321','P','Y',NULL,'2020-09-13 00:00:00','ADMIN','2020-09-13 00:00:00');

#
# Structure for table "tb_role"
#

DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `ROLE_ID` varchar(50) NOT NULL,
  `ROLE_NAME` varchar(50) NOT NULL,
  `ACTIVITY_FLAG` varchar(1) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_role"
#

INSERT INTO `tb_role` VALUES ('ADMIN','ad_min','Y','0000-00-00 00:00:00','','0000-00-00 00:00:00','');

#
# Structure for table "tb_user_login"
#

DROP TABLE IF EXISTS `tb_user_login`;
CREATE TABLE `tb_user_login` (
  `USERID` int(11) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `LAST_LOGIN` date DEFAULT NULL,
  `LAST_LOGOUT` date DEFAULT NULL,
  `BAD_PASSWD_COUNT` int(11) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `ROLE_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `ROLE_ID` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_user_login"
#

INSERT INTO `tb_user_login` VALUES (1,'apinya@gmail.com','1234','2020-09-13','2020-09-13',0,'2020-09-13 13:21:59','ADMIN','2020-09-13 13:21:36','ADMIN','ADMIN');

#
# Structure for table "tb_user_profile"
#

DROP TABLE IF EXISTS `tb_user_profile`;
CREATE TABLE `tb_user_profile` (
  `USERNAME` varchar(50) NOT NULL,
  `FIRSTNAME` varchar(20) DEFAULT NULL,
  `LASTNAME` varchar(20) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `ACTIVITY_FLAG` varchar(1) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tb_user_profile"
#

INSERT INTO `tb_user_profile` VALUES ('apinya@gmail.com','apinya','taibsaen','F','1994-05-28','Y','2020-09-13 08:42:44','ADMIN','2020-09-13 08:42:46','ADMIN');
