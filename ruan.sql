﻿# Host: 127.0.0.1  (Version 8.0.11)
# Date: 2018-07-03 18:15:34
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "accuse"
#

DROP TABLE IF EXISTS `accuse`;
CREATE TABLE `accuse` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `user1_id` int(11) DEFAULT NULL,
  `user2_id` int(11) DEFAULT NULL,
  `accusement` varchar(255) DEFAULT NULL,
  `adate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "accuse"
#

INSERT INTO `accuse` VALUES (4,8,7,'不诚信','2018-07-03 14:35:21'),(5,8,7,'理由1','2018-07-03 14:35:55');

#
# Structure for table "basic"
#

DROP TABLE IF EXISTS `basic`;
CREATE TABLE `basic` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "basic"
#

INSERT INTO `basic` VALUES (4,'1'),(5,'2'),(6,'13312341234'),(7,'13112341234'),(8,'13212341234');

#
# Structure for table "item"
#

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `iname` varchar(200) DEFAULT NULL,
  `oprice` double(15,5) DEFAULT NULL,
  `cprice` double(15,5) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image1` mediumblob,
  `image2` mediumblob,
  `image3` mediumblob,
  `image4` mediumblob,
  `image5` mediumblob,
  `image6` mediumblob,
  `dsc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "item"
#

INSERT INTO `item` VALUES (3,4,'qqq',0.00000,2322.00000,'','2018-06-20 16:31:50',NULL,NULL,NULL,NULL,NULL,NULL,'wq'),(4,4,'adfa',0.00000,232.00000,'','2018-06-21 17:36:26',X'443A5C546F6D4361745C6170616368652D746F6D6361742D392E302E385C776562617070735C7275616E5C696D616765',NULL,NULL,NULL,NULL,NULL,''),(5,4,'dfdf',0.00000,33.00000,'','2018-06-21 18:05:45',X'2E2E2F696D6167652F34696D61676531',NULL,NULL,NULL,NULL,NULL,''),(6,4,'ssss',0.00000,333.00000,'','2018-06-21 18:09:56',X'2E2E2F696D6167652F34696D61676531',NULL,NULL,NULL,NULL,NULL,''),(7,4,'11',0.00000,21.00000,'','2018-06-21 18:27:01',X'2E2E2F696D616765732F345F696D616765312E6A7067',NULL,NULL,NULL,NULL,NULL,''),(8,4,'22',0.00000,23.00000,'','2018-06-21 18:27:55',X'2E2E2F696D616765732F345F696D616765312E6A7067',NULL,NULL,NULL,NULL,NULL,''),(9,4,'212',0.00000,21.00000,'','2018-06-21 18:31:06',X'2E2E2F696D616765732F345F696D616765312E6A7067',NULL,NULL,NULL,NULL,NULL,''),(10,4,'33',0.00000,33.00000,'','2018-06-21 19:03:16',X'5C696D616765735C345F696D616765312E6A7067',NULL,NULL,NULL,NULL,NULL,''),(11,4,'21',0.00000,23.00000,'','2018-06-21 19:06:35',X'5C696D616765735C345F696D616765312E6A7067',NULL,NULL,NULL,NULL,NULL,''),(12,4,'2113',0.00000,323.00000,'','2018-06-21 19:11:53',X'453A5C696D616765735C345F696D616765312E6A7067',NULL,NULL,NULL,NULL,NULL,''),(13,4,'212',0.00000,2112.00000,'','2018-06-21 19:31:43',X'757365722F696D6167652F345F696D616765312E6A7067',X'757365722F696D6167652F345F696D616765322E6A7067',NULL,NULL,NULL,NULL,''),(14,4,'23',0.00000,4234.00000,'34','2018-06-21 19:34:59',X'757365722F696D6167652F345F696D616765312E6A7067',X'757365722F696D6167652F345F696D616765322E6A7067',NULL,NULL,NULL,NULL,''),(15,4,'444',0.00000,444.00000,'','2018-06-21 19:50:32',X'757365722F696D6167652F31355F696D616765312E6A7067',X'757365722F696D6167652F31355F696D616765322E6A7067',NULL,NULL,NULL,NULL,''),(16,7,'银骑士一只',45454.00000,35454.00000,'骑士','2018-06-21 20:32:29',X'',X'',X'',X'',X'',X'','银骑士一只'),(17,7,'系火女一只',33333.00000,6666.00000,'受虐之魂','2018-06-21 20:36:35',X'757365722F696D6167652F31375F696D616765312E6A7067',X'757365722F696D6167652F31375F696D616765322E6A7067',X'',X'',X'',X'','防火女还是系火女'),(18,7,'法兰街舞队哥们一只',0.00000,5565.00000,'受虐之魂3','2018-06-21 20:41:36',X'757365722F696D6167652F31385F696D616765312E6A7067',X'757365722F696D6167652F31385F696D616765322E6A7067',NULL,NULL,NULL,NULL,'法兰街舞队哥们一只'),(19,7,'aaaaaa',3.00000,2.00000,'','2018-06-27 14:44:52',X'757365722F696D6167652F31395F696D616765312E6A7067',NULL,NULL,NULL,NULL,NULL,''),(20,7,'qqqq',0.00000,30.00000,'','2018-07-03 14:26:23',NULL,NULL,NULL,NULL,NULL,NULL,'');

#
# Structure for table "itu"
#

DROP TABLE IF EXISTS `itu`;
CREATE TABLE `itu` (
  `ituid` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ituid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "itu"
#

INSERT INTO `itu` VALUES (23,4,7,'aa','2018-06-21 21:20:56'),(31,4,7,'v','2018-06-21 21:24:05'),(32,4,7,'图片呢','2018-06-21 21:26:18'),(33,19,7,'物品不错','2018-07-03 14:32:39');

#
# Structure for table "up"
#

DROP TABLE IF EXISTS `up`;
CREATE TABLE `up` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pwd` varchar(255) DEFAULT NULL,
  `pow` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "up"
#

INSERT INTO `up` VALUES (4,'1',0),(5,'2',0),(6,'133',0),(7,'131111',0),(8,'132111',1);

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wc` varchar(20) DEFAULT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `dsc` varchar(300) DEFAULT NULL,
  `icon` mediumblob COMMENT '头像',
  `loc` varchar(255) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (4,'1','111','111','111','aaaaaaaaaaaaaaaaaa',NULL,'111','男'),(5,'2','23232','12','312','sdads',NULL,'',NULL),(6,'张杰','1000000','','','',NULL,'上海','男'),(7,'aucyo','2000000','','','  ',NULL,'','男'),(8,'周鹏','3000000','','','哈哈哈哈',NULL,'成都','男');

#
# Structure for table "utu"
#

DROP TABLE IF EXISTS `utu`;
CREATE TABLE `utu` (
  `utuid` int(11) NOT NULL AUTO_INCREMENT,
  `user1_id` int(10) DEFAULT NULL,
  `user2_id` int(10) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`utuid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "utu"
#

INSERT INTO `utu` VALUES (2,5,4,'hhhhh','2018-06-20 21:27:04'),(3,5,4,'sfsaf','2018-06-21 10:28:21'),(4,6,7,'呼呼呼','2018-06-21 20:47:48'),(5,8,7,'此人名周鹏','2018-06-22 14:37:06');
