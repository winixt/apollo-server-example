#留言
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL DEFAULT '',
  `sid` varchar(15) NOT NULL DEFAULT '',
  `message` varchar(400) NOT NULL,
  `ctime` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
#反馈
CREATE TABLE `feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(200) NOT NULL DEFAULT '',
  `contact` varchar(20) NOT NULL DEFAULT '',
  `uid` varchar(15) NOT NULL DEFAULT '',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#聊天内容
CREATE TABLE `imContent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `uid` varchar(15) DEFAULT NULL,
  `content` varchar(200) DEFAULT '',
  `ctime` int(11) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#聊天人员
CREATE TABLE `imMember` (
  `rid` int(11) unsigned NOT NULL,
  `uid` varchar(15) NOT NULL,
  `unread` int(11) DEFAULT '0',
  `send` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT NULL,
  `roomTime` int(11) DEFAULT NULL,
  `isDelete` int(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#聊天室
CREATE TABLE `imRoom` (
  `rid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createrId` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `number` int(4) DEFAULT '2',
  `memberId` text,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#认证
CREATE TABLE `localAuth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL DEFAULT '',
  `phone` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(150) NOT NULL DEFAULT '',
  `salt` varchar(50) NOT NULL DEFAULT '',
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#认证
CREATE TABLE `oauth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#订单
CREATE TABLE `order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `price` int(5) NOT NULL DEFAULT '0',
  `uid` varchar(15) NOT NULL DEFAULT '',
  `sid` varchar(15) NOT NULL DEFAULT '',
  `location` varchar(100) DEFAULT NULL,
  `orderTime` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#专业人员
CREATE TABLE `staff` (
  `uid` varchar(15) NOT NULL DEFAULT '',
  `info` text,
  `masterpiece` json DEFAULT NULL,
  `exPrice` varchar(15) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
# token
CREATE TABLE `token` (
  `accessToken` varchar(150) NOT NULL DEFAULT '',
  `expireIn` int(11) DEFAULT NULL,
  `refreshToken` varchar(150) NOT NULL DEFAULT '',
  `ctime` int(11) DEFAULT NULL,
  `uid` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`accessToken`),
  KEY `refreshToken` (`expireIn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
# 用户
CREATE TABLE `user` (
  `uid` varchar(15) NOT NULL DEFAULT '',
  `type` int(3) DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `message` varchar(200) DEFAULT '本来无一物，何处惹尘埃',
  `avatar` varchar(200) DEFAULT '',
  `lat` float DEFAULT NULL,
  `lon` float DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
# 点赞
CREATE TABLE `vote` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` varchar(15) NOT NULL,
  `uid` varchar(15) NOT NULL,
  `ctime` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
# weight
CREATE TABLE `weight` (
  `cid` int(11) NOT NULL,
  `uid` varchar(15) NOT NULL DEFAULT '',
  `create` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;