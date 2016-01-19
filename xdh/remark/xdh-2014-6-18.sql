/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : xdh

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-06-18 20:48:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` longtext CHARACTER SET utf8,
  `createDate` date DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `htmlid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isWord` int(11) DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `delFlag` int(11) NOT NULL,
  `updateDate` date DEFAULT NULL,
  `createby_id` bigint(20) DEFAULT NULL,
  `updateby_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK935C9C00CA4E9944` (`CATEGORY_ID`) USING BTREE,
  KEY `FK935C9C00E80591EC` (`updateby_id`) USING BTREE,
  KEY `FK935C9C00ECC85199` (`createby_id`) USING BTREE,
  CONSTRAINT `cms_article_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `cms_category` (`id`),
  CONSTRAINT `cms_article_ibfk_2` FOREIGN KEY (`updateby_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `cms_article_ibfk_3` FOREIGN KEY (`createby_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('35', 'black', '<p style=\"text-indent: 2em;\">出生在重庆一个小山村，先后读了幼儿园、小学、初中、高中、大学。于2013年夏天毕业于一个屌丝2本大学，然后在一家屌丝公司工作。虽然专业是软件专业，但是大学前期完全没想过要走专业路线，后来因为兴趣进入这个行业。在这个过程中认识了一些牛人，受他们开源精神的影响，誓要为开源事业作出微弱的贡献。虽然现在还处于模仿阶段。。。</p><p style=\"text-indent: 2em;\">热爱互联网，乃中国亿万网络水军分之一，游走在各大社区、微博及博客之间。在新浪微博、腾讯微博、微信、百度贴吧、百度空间、网易、人人、来往、陌陌、开源中国、iteye、instagram等都拥有统一账户“rguess”，求关注。</p><p style=\"text-indent: 2em;\">爱分享、爱吐槽、爱内涵，关注时下高新信息技术，现专注开源、敏捷、时间管理。</p><p style=\"text-indent: 2em;\">目前从事java,js相关开发工作，<span style=\"text-indent: 32px;\">有什么大活儿，请联系我</span>。</p><p style=\"text-indent: 2em;\"><span style=\"text-indent: 2em;\">QQ：502876941</span><br/></p><p style=\"text-indent: 2em;\">代码:&nbsp;<a href=\"http://git.oschina.net/rguess\" target=\"_blank\" textvalue=\"http://git.oschina.net/rguess\">http://git.oschina.net/rguess</a>&nbsp; &nbsp;<a href=\"http://github.com/rguess/\" target=\"_blank\" title=\"http://github.com/rguess/\" textvalue=\"http://github.com/rguess/\" style=\"text-indent: 2em;\">http://github.com/rguess/</a></p><p style=\"text-indent: 2em;\">个人网站：<a href=\"http://rguess.com/\" target=\"_blank\" textvalue=\"http://rguess.com/\">http://rguess.com/</a></p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(192, 0, 0);\">注：本网站由于是自己手工完成，没有采用wordpress等建站工具，还有很多功能不足的地方，带来不便请谅解。如要想交换友链或者有什么建议和问题的请在下方留言谢谢！</span></p><p style=\"text-indent: 2em;\"><br/></p>', '2014-05-19', '', '274', null, null, '1', 'about me', '关于我', '0', '28', '0', '2014-06-16', null, '5');
INSERT INTO `cms_article` VALUES ('37', 'black', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">成都华凌物业管理有限公司旗下的成都华凌摄影器材城成立于2004年，位于成都市金牛区文家巷12号，是西南地区最大最专业摄影器材商城。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">成都华凌西南摄影器材城处于成都市一环路北一段，毗邻国际会展中心，与苏宁电器、永乐国美电器举目相望，是西南地区大型专业摄影器材的批发、零售地，婚纱及婚庆用品的购物天堂。商城交通非常便利，周边有20余条公交线路可直达；商城亦位于地铁5号线西门车站出口，地铁2号线、4号线、6号线在商城附近，目前地铁2号线即将开通，经营品种齐全吸引诸多国内外影友的光临。现商城营业面积约8000平米，二、三楼已全部入驻，有商户百余家。为了满足客户及商家的进一步需求，商城将从2011年7月开始扩建一层营业楼，面积约4000平米，届时商城营业总面积将达12000余平米；商场拥有时尚的外立面，内部设施齐全，空间宽敞明亮，拥有地下停车位及露天停车位共计400余个，能为自驾人士提供便利泊车服务和舒适的购物环境。商城商户经营范围为：相机、照相器材、数码影像、背景道具、影楼用品、二手相机及修理、影室灯、婚纱礼服、婚纱摄影培训班等几乎所有与摄影产业相关的产品批发、零售业务。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p style=\"text-align:center\"><img src=\"/xdh/upload/20140618/61231403095185733.jpg\" title=\"Chrysanthemum.jpg\" width=\"400\" height=\"301\" border=\"0\" hspace=\"0\" vspace=\"0\" style=\"width: 400px; height: 301px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\"></span><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; text-indent: 2em; font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">&nbsp;&nbsp;&nbsp; 商城以专业系统化得服务让商家和客户放心、省心、舒心，以西南“最大、最好、最强”的专业商城为目标，以“一站式购物，满足客户多样需求”为宗旨，全身心对商家服务，让客户满意。</span></p><p><br/></p>', '2014-05-21', '', '158', null, null, '1', '', '公司简介', '0', '29', '0', '2014-06-18', null, '5');
INSERT INTO `cms_article` VALUES ('38', 'black', '<pre class=\"brush:html;toolbar:false;\">&lt;html&gt;\r\n	&lt;head&gt;\r\n		&lt;script&nbsp;src=&quot;jquery-1.8.3.min.js&quot;&nbsp;type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n		\r\n		&lt;script&gt;\r\n			(function&nbsp;($)&nbsp;{\r\n			&nbsp;&nbsp;/**\r\n			&nbsp;&nbsp;&nbsp;*&nbsp;居中\r\n			&nbsp;&nbsp;&nbsp;*/\r\n			&nbsp;&nbsp;$.fn.center&nbsp;=&nbsp;function&nbsp;(settings)&nbsp;{\r\n				var&nbsp;style&nbsp;=&nbsp;$.extend({\r\n				&nbsp;&nbsp;position:&nbsp;&#39;absolute&#39;,&nbsp;//absolute&nbsp;or&nbsp;fixed\r\n				&nbsp;&nbsp;top&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&#39;50%&#39;,&nbsp;//50%即居中，将应用负边距计算，溢出不予考虑了。\r\n				&nbsp;&nbsp;left&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&#39;50%&#39;,\r\n				&nbsp;&nbsp;zIndex&nbsp;&nbsp;:&nbsp;2009,\r\n				&nbsp;&nbsp;relative:&nbsp;true&nbsp;//相对于包含它的容器居中还是整个页面\r\n				},&nbsp;settings&nbsp;||&nbsp;{});\r\n\r\n				return&nbsp;this.each(function&nbsp;()&nbsp;{\r\n				&nbsp;&nbsp;var&nbsp;$this&nbsp;=&nbsp;$(this);\r\n\r\n				&nbsp;&nbsp;if&nbsp;(style.top&nbsp;==&nbsp;&#39;50%&#39;)&nbsp;style.marginTop&nbsp;=&nbsp;-$this.outerHeight()&nbsp;/&nbsp;2;\r\n				&nbsp;&nbsp;if&nbsp;(style.left&nbsp;==&nbsp;&#39;50%&#39;)&nbsp;style.marginLeft&nbsp;=&nbsp;-$this.outerWidth()&nbsp;/&nbsp;2;\r\n				&nbsp;&nbsp;if&nbsp;(style.relative&nbsp;&amp;&amp;&nbsp;!$this.parent().is(&#39;body&#39;)&nbsp;&amp;&amp;&nbsp;$this.parent().css(&#39;position&#39;)&nbsp;==&nbsp;&#39;static&#39;)&nbsp;$this.parent().css(&#39;position&#39;,&nbsp;&#39;relative&#39;);\r\n				&nbsp;&nbsp;delete&nbsp;style.relative;\r\n				&nbsp;&nbsp;//ie6\r\n				&nbsp;&nbsp;if&nbsp;(style.position&nbsp;==&nbsp;&#39;fixed&#39;&nbsp;&amp;&amp;&nbsp;$.browser.version&nbsp;==&nbsp;&#39;6.0&#39;)&nbsp;{\r\n					style.marginTop&nbsp;+=&nbsp;$(window).scrollTop();\r\n					style.position&nbsp;=&nbsp;&#39;absolute&#39;;\r\n					$(window).scroll(function&nbsp;()&nbsp;{\r\n					&nbsp;&nbsp;$this.stop().animate({\r\n						marginTop:&nbsp;$(window).scrollTop()&nbsp;-&nbsp;$this.outerHeight()&nbsp;/&nbsp;2\r\n					&nbsp;&nbsp;});\r\n					});\r\n				&nbsp;&nbsp;}\r\n				&nbsp;&nbsp;$this.css(style);\r\n				});\r\n			&nbsp;&nbsp;};\r\n			&nbsp;&nbsp;\r\n			&nbsp;&nbsp;/**\r\n			&nbsp;&nbsp;&nbsp;*&nbsp;可移动\r\n			&nbsp;&nbsp;&nbsp;*/\r\n			&nbsp;&nbsp;$.fn.move&nbsp;=&nbsp;function&nbsp;(obj)&nbsp;{\r\n				&nbsp;&nbsp;\r\n				&nbsp;&nbsp;var&nbsp;$win&nbsp;=&nbsp;obj;\r\n				&nbsp;&nbsp;var&nbsp;$title&nbsp;=&nbsp;$(this);\r\n				&nbsp;&nbsp;\r\n				&nbsp;&nbsp;var&nbsp;b&nbsp;=&nbsp;false;\r\n				&nbsp;&nbsp;var&nbsp;x;\r\n				&nbsp;&nbsp;var&nbsp;y;\r\n				&nbsp;&nbsp;$title.css(&quot;cursor&quot;,&nbsp;&quot;move&quot;);\r\n				&nbsp;&nbsp;$title.mousedown(\r\n					function&nbsp;(e)&nbsp;{\r\n						//x,y坐标是点击事件点和外该组件的距离差\r\n						b&nbsp;=&nbsp;true;\r\n						x&nbsp;=&nbsp;e.pageX&nbsp;-&nbsp;parseInt($win.position().left);\r\n						y&nbsp;=&nbsp;e.pageY&nbsp;-&nbsp;parseInt($win.position().top);\r\n					});\r\n				&nbsp;&nbsp;$(document).mousemove(\r\n					&nbsp;&nbsp;function&nbsp;(e)&nbsp;{\r\n						&nbsp;&nbsp;//只要不释放鼠标就可以拖动div\r\n						&nbsp;&nbsp;if&nbsp;(b)&nbsp;{\r\n							&nbsp;&nbsp;var&nbsp;divleft&nbsp;=&nbsp;e.pageX&nbsp;-&nbsp;x;\r\n							&nbsp;&nbsp;var&nbsp;divtop&nbsp;=&nbsp;e.pageY&nbsp;-&nbsp;y;\r\n							&nbsp;&nbsp;//设置拖动左，上位置\r\n							&nbsp;&nbsp;$win.css({&nbsp;&quot;left&quot;:&nbsp;divleft,&nbsp;&quot;top&quot;:&nbsp;divtop&nbsp;});\r\n						&nbsp;&nbsp;}\r\n					&nbsp;&nbsp;}\r\n					).mouseup(function&nbsp;()&nbsp;{\r\n						b&nbsp;=&nbsp;false;\r\n					});\r\n			&nbsp;&nbsp;};&nbsp;&nbsp;\r\n			})(jQuery);\r\n		&lt;/script&gt;\r\n		\r\n		&lt;script&gt;\r\n			$(function(){\r\n				$(&quot;.div&quot;).center();\r\n				$(&quot;.title&quot;).move($(&quot;.div&quot;));\r\n			});\r\n		&lt;/script&gt;\r\n		\r\n		&lt;style&gt;\r\n			.div{width:400px;height:300px;border:1px&nbsp;solid&nbsp;#F00}\r\n			.title{\r\n				width&nbsp;:&nbsp;400px;\r\n				height&nbsp;:&nbsp;30px;\r\n				background-color&nbsp;:&nbsp;green;\r\n				cursor&nbsp;:&nbsp;move;\r\n				margin-top&nbsp;:&nbsp;-1px;\r\n			}\r\n		&lt;/style&gt;\r\n	&lt;/head&gt;\r\n	&lt;body&gt;\r\n		&lt;div&nbsp;class=&quot;div&quot;&gt;\r\n			&lt;h3&nbsp;class=&quot;title&quot;&gt;鼠标放到上边&lt;/h3&gt;\r\n		&lt;/div&gt;\r\n	&lt;/body&gt;\r\n&lt;/html&gt;</pre><p style=\"line-height: 16px;\"><img src=\"/assets/comp/ueditor/dialogs/attachment/fileTypeImages/icon_rar.gif\"/><a href=\"/upload/20140529/18681401333268680.rar\">move.rar</a></p><p><br/></p>', '2014-05-21', '', '58', null, null, '1', 'jquery', 'jquery实现居中可拖拽窗体', '0', '30', '0', null, null, null);

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `isShow` int(11) NOT NULL,
  `orderNo` int(11) NOT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2478CF34EA0C9E18` (`PARENT_ID`) USING BTREE,
  KEY `FK2478CF341EEC3DA4` (`site_id`) USING BTREE,
  CONSTRAINT `cms_category_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `cms_site` (`id`),
  CONSTRAINT `cms_category_ibfk_2` FOREIGN KEY (`PARENT_ID`) REFERENCES `cms_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('25', '最高级栏目', '', '', '', '栏目', null, '0', '1', '0', '1', null);
INSERT INTO `cms_category` VALUES ('26', '记录日记的栏目', null, '日记', 'article', '日记', '25', '1', '0', '1', '1', '');
INSERT INTO `cms_category` VALUES ('27', '说技术的', null, '技术', 'article', '技术', '25', '1', '0', '0', '1', '');
INSERT INTO `cms_category` VALUES ('28', '我TM就这样', null, 'about me', 'link', '关于我', '25', '1', '0', '4', '1', 'http://www.rguess.com/blog/article/35.html');
INSERT INTO `cms_category` VALUES ('29', '关于java的技术博客', null, 'java', 'article', 'java', '27', '2', '0', '0', '1', '');
INSERT INTO `cms_category` VALUES ('30', 'js包含jquery相关技术博客', null, 'js', 'article', 'js', '27', '2', '0', '1', '1', '');
INSERT INTO `cms_category` VALUES ('31', '想说什么说什么', null, '随意', 'article', '随意', '25', '1', '0', '3', '1', null);
INSERT INTO `cms_category` VALUES ('32', 'linux相关文章', null, 'linux', 'article', 'linux', '27', '2', '0', '2', '1', '');
INSERT INTO `cms_category` VALUES ('33', '', null, '', 'article', '小伙伴', '25', '1', '0', '3', '1', '');
INSERT INTO `cms_category` VALUES ('34', '', null, '', 'article', 'syc', '33', '2', '0', '0', '1', '');
INSERT INTO `cms_category` VALUES ('35', '', null, '', 'link', '友情链接', '25', '1', '1', '4', '1', '');

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `auditDate` date DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `delFlag` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `article_id` bigint(20) DEFAULT NULL,
  `auditer_id` bigint(20) DEFAULT NULL,
  `headPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF7A9BD69C09E6470` (`article_id`) USING BTREE,
  KEY `FKF7A9BD696F3C6204` (`auditer_id`) USING BTREE,
  CONSTRAINT `cms_comment_ibfk_1` FOREIGN KEY (`auditer_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `cms_comment_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `cms_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cms_link
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `weightDate` date DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7BC64D30CA4E9944` (`CATEGORY_ID`) USING BTREE,
  CONSTRAINT `cms_link_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `cms_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES ('3', 'black', 'http://www.aipp.me/', 'http://www.aipp.me/favicon.ico', 'b0y\'s blog', '1', null, '35');
INSERT INTO `cms_link` VALUES ('5', 'black', 'http://www.super-man.cc/', 'http://www.super-man.cc/content/templates/loper/images/favicon.ico', '陌小染\'s blog', '1', null, '35');
INSERT INTO `cms_link` VALUES ('6', 'black', 'http://www.scyy520.cc/', 'http://www.scyy520.cc/favicon.ico', '苏晨‘s Blog', '1', null, '35');
INSERT INTO `cms_link` VALUES ('7', 'black', 'http://114.215.121.37:8080/meileche/', 'http://114.215.121.37:8080/meileche/image/meileche.jpg', '美乐车', '1', null, '35');
INSERT INTO `cms_link` VALUES ('8', 'black', 'http://www.tiejiang.org/', 'http://www.google.com/s2/favicons?domain=www.tiejiang.org', '铁匠运维网', '1', null, '35');
INSERT INTO `cms_link` VALUES ('9', 'black', 'http://www.duoluosb.com/', 'http://www.duoluosb.com/Favicon.ico', '堕络\'s Blog', '1', null, '35');
INSERT INTO `cms_link` VALUES ('10', 'black', 'http://0ol.org/', 'http://www.google.com/s2/favicons?domain=0ol.org', '星少‘S Blog', '1', null, '35');
INSERT INTO `cms_link` VALUES ('11', 'black', 'http://www.bccsafe.com/', 'http://www.bccsafe.com/wp-content/themes/20130801171447/images/favicon.ico', 'BccSafe\'s Blog', '1', null, '35');
INSERT INTO `cms_link` VALUES ('12', 'black', 'http://www.hkzn.cn/', 'http://www.hkzn.cn/wp-content/themes/fengying/images/favicon.ico', '指南针Sec', '1', null, '35');
INSERT INTO `cms_link` VALUES ('13', 'black', 'http://prsec.ml/', 'http://www.google.com/s2/favicons?domain=www.prsec.ml', 'Passer\'s Blog', '1', null, '35');

-- ----------------------------
-- Table structure for cms_site
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `copyright` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES ('1', '@copy2014', '西都汇', 'blog', 'blog', 'xdh', 'xdh', '西都汇');

-- ----------------------------
-- Table structure for sys_icon
-- ----------------------------
DROP TABLE IF EXISTS `sys_icon`;
CREATE TABLE `sys_icon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mark_UNIQUE` (`mark`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_icon
-- ----------------------------
INSERT INTO `sys_icon` VALUES ('1', null, 'icon-adjust', 'css');
INSERT INTO `sys_icon` VALUES ('2', null, 'icon-exclamation-sign', 'css');
INSERT INTO `sys_icon` VALUES ('3', null, 'icon-money', 'css');
INSERT INTO `sys_icon` VALUES ('4', null, 'icon-signal', 'css');
INSERT INTO `sys_icon` VALUES ('5', null, 'icon-asterisk', 'css');
INSERT INTO `sys_icon` VALUES ('6', null, 'icon-external-link', 'css');
INSERT INTO `sys_icon` VALUES ('7', null, 'icon-move', 'css');
INSERT INTO `sys_icon` VALUES ('8', null, 'icon-signin', 'css');
INSERT INTO `sys_icon` VALUES ('9', null, 'icon-ban-circle', 'css');
INSERT INTO `sys_icon` VALUES ('10', null, 'icon-eye-close', 'css');
INSERT INTO `sys_icon` VALUES ('11', null, 'icon-music', 'css');
INSERT INTO `sys_icon` VALUES ('12', null, 'icon-signout', 'css');
INSERT INTO `sys_icon` VALUES ('13', null, 'icon-bar-chart', 'css');
INSERT INTO `sys_icon` VALUES ('14', null, 'icon-eye-open', 'css');
INSERT INTO `sys_icon` VALUES ('15', null, 'icon-off', 'css');
INSERT INTO `sys_icon` VALUES ('16', null, 'icon-sitemap', 'css');
INSERT INTO `sys_icon` VALUES ('20', null, 'icon-barcode', 'css');
INSERT INTO `sys_icon` VALUES ('21', null, 'icon-facetime-video', 'css');
INSERT INTO `sys_icon` VALUES ('22', null, 'icon-ok', 'css');
INSERT INTO `sys_icon` VALUES ('23', null, 'icon-sort', 'css');
INSERT INTO `sys_icon` VALUES ('24', null, 'icon-beaker', 'css');
INSERT INTO `sys_icon` VALUES ('25', null, 'icon-film', 'css');
INSERT INTO `sys_icon` VALUES ('26', null, 'icon-ok-circle', 'css');
INSERT INTO `sys_icon` VALUES ('27', null, 'icon-sort-down', 'css');
INSERT INTO `sys_icon` VALUES ('28', null, 'icon-bell', 'css');
INSERT INTO `sys_icon` VALUES ('29', null, 'icon-filter', 'css');
INSERT INTO `sys_icon` VALUES ('30', null, 'icon-ok-sign', 'css');
INSERT INTO `sys_icon` VALUES ('31', null, 'icon-sort-up', 'css');
INSERT INTO `sys_icon` VALUES ('32', null, ' icon-bolt', 'css');
INSERT INTO `sys_icon` VALUES ('33', null, 'icon-fire', 'css');
INSERT INTO `sys_icon` VALUES ('34', null, 'icon-pencil', 'css');
INSERT INTO `sys_icon` VALUES ('35', null, 'icon-star', 'css');
INSERT INTO `sys_icon` VALUES ('36', null, 'icon-book', 'css');
INSERT INTO `sys_icon` VALUES ('37', null, 'icon-flag', 'css');
INSERT INTO `sys_icon` VALUES ('38', null, 'icon-picture', 'css');
INSERT INTO `sys_icon` VALUES ('39', null, 'icon-star-empty', 'css');
INSERT INTO `sys_icon` VALUES ('40', null, 'icon-bookmark', 'css');
INSERT INTO `sys_icon` VALUES ('41', null, 'icon-folder-close', 'css');
INSERT INTO `sys_icon` VALUES ('42', null, 'icon-plane', 'css');
INSERT INTO `sys_icon` VALUES ('43', null, 'icon-star-half', 'css');
INSERT INTO `sys_icon` VALUES ('44', null, 'icon-bookmark-empty', 'css');
INSERT INTO `sys_icon` VALUES ('45', null, 'icon-folder-open', 'css');
INSERT INTO `sys_icon` VALUES ('46', null, 'icon-plus', 'css');
INSERT INTO `sys_icon` VALUES ('47', null, 'icon-tag', 'css');
INSERT INTO `sys_icon` VALUES ('48', null, 'icon-briefcase', 'css');
INSERT INTO `sys_icon` VALUES ('49', null, 'icon-gift', 'css');
INSERT INTO `sys_icon` VALUES ('50', null, 'icon-plus-sign', 'css');
INSERT INTO `sys_icon` VALUES ('51', null, 'icon-tags', 'css');
INSERT INTO `sys_icon` VALUES ('52', null, 'icon-bullhorn', 'css');
INSERT INTO `sys_icon` VALUES ('53', null, 'icon-glass', 'css');
INSERT INTO `sys_icon` VALUES ('54', null, 'icon-print', 'css');
INSERT INTO `sys_icon` VALUES ('55', null, 'icon-tasks', 'css');
INSERT INTO `sys_icon` VALUES ('56', null, 'icon-calendar', 'css');
INSERT INTO `sys_icon` VALUES ('57', null, 'icon-globe', 'css');
INSERT INTO `sys_icon` VALUES ('58', null, 'icon-pushpin', 'css');
INSERT INTO `sys_icon` VALUES ('59', null, 'icon-thumbs-down', 'css');
INSERT INTO `sys_icon` VALUES ('60', null, 'icon-camera', 'css');
INSERT INTO `sys_icon` VALUES ('61', null, 'icon-group', 'css');
INSERT INTO `sys_icon` VALUES ('62', null, 'icon-qrcode', 'css');
INSERT INTO `sys_icon` VALUES ('63', null, 'icon-thumbs-up', 'css');
INSERT INTO `sys_icon` VALUES ('64', null, 'icon-camera-retro', 'css');
INSERT INTO `sys_icon` VALUES ('65', null, 'icon-certificate', 'css');
INSERT INTO `sys_icon` VALUES ('66', null, 'icon-check', 'css');
INSERT INTO `sys_icon` VALUES ('67', null, 'icon-check-empty', 'css');
INSERT INTO `sys_icon` VALUES ('68', null, 'icon-cloud', 'css');
INSERT INTO `sys_icon` VALUES ('69', null, 'icon-cog', 'css');
INSERT INTO `sys_icon` VALUES ('70', null, 'icon-cogs', 'css');
INSERT INTO `sys_icon` VALUES ('71', null, 'icon-comment', 'css');
INSERT INTO `sys_icon` VALUES ('72', null, 'icon-comment-alt', 'css');
INSERT INTO `sys_icon` VALUES ('73', null, 'icon-comments', 'css');
INSERT INTO `sys_icon` VALUES ('74', null, 'icon-comments-alt', 'css');
INSERT INTO `sys_icon` VALUES ('75', null, 'icon-credit-card', 'css');
INSERT INTO `sys_icon` VALUES ('76', null, 'icon-dashboard', 'css');
INSERT INTO `sys_icon` VALUES ('77', null, 'icon-download', 'css');
INSERT INTO `sys_icon` VALUES ('78', null, 'icon-download-alt', 'css');
INSERT INTO `sys_icon` VALUES ('79', null, 'icon-edit', 'css');
INSERT INTO `sys_icon` VALUES ('80', null, 'icon-envelope', 'css');
INSERT INTO `sys_icon` VALUES ('81', null, 'icon-envelope-alt', 'css');
INSERT INTO `sys_icon` VALUES ('82', null, 'icon-hdd', 'css');
INSERT INTO `sys_icon` VALUES ('83', null, 'icon-headphones', 'css');
INSERT INTO `sys_icon` VALUES ('84', null, 'icon-heart', 'css');
INSERT INTO `sys_icon` VALUES ('85', null, 'icon-heart-empty', 'css');
INSERT INTO `sys_icon` VALUES ('86', null, 'icon-home', 'css');
INSERT INTO `sys_icon` VALUES ('87', null, 'icon-inbox', 'css');
INSERT INTO `sys_icon` VALUES ('88', null, 'icon-info-sign', 'css');
INSERT INTO `sys_icon` VALUES ('89', null, 'icon-key', 'css');
INSERT INTO `sys_icon` VALUES ('90', null, 'icon-leaf', 'css');
INSERT INTO `sys_icon` VALUES ('91', null, 'icon-legal', 'css');
INSERT INTO `sys_icon` VALUES ('92', null, 'icon-lemon', 'css');
INSERT INTO `sys_icon` VALUES ('93', null, 'icon-lock', 'css');
INSERT INTO `sys_icon` VALUES ('94', null, 'icon-unlock', 'css');
INSERT INTO `sys_icon` VALUES ('95', null, 'icon-magic', 'css');
INSERT INTO `sys_icon` VALUES ('96', null, 'icon-magnet', 'css');
INSERT INTO `sys_icon` VALUES ('97', null, 'icon-map-marker', 'css');
INSERT INTO `sys_icon` VALUES ('98', null, 'icon-minus', 'css');
INSERT INTO `sys_icon` VALUES ('99', null, 'icon-minus-sign', 'css');
INSERT INTO `sys_icon` VALUES ('100', null, 'icon-question-sign', 'css');
INSERT INTO `sys_icon` VALUES ('101', null, 'icon-random', 'css');
INSERT INTO `sys_icon` VALUES ('102', null, 'icon-refresh', 'css');
INSERT INTO `sys_icon` VALUES ('103', null, 'icon-remove', 'css');
INSERT INTO `sys_icon` VALUES ('104', null, 'icon-remove-circle', 'css');
INSERT INTO `sys_icon` VALUES ('105', null, 'icon-remove-sign', 'css');
INSERT INTO `sys_icon` VALUES ('106', null, 'icon-reorder', 'css');
INSERT INTO `sys_icon` VALUES ('107', null, 'icon-resize-horizontal', 'css');
INSERT INTO `sys_icon` VALUES ('108', null, 'icon-resize-vertical', 'css');
INSERT INTO `sys_icon` VALUES ('109', null, 'icon-retweet', 'css');
INSERT INTO `sys_icon` VALUES ('110', null, 'icon-road', 'css');
INSERT INTO `sys_icon` VALUES ('111', null, 'icon-rss', 'css');
INSERT INTO `sys_icon` VALUES ('112', null, 'icon-screenshot', 'css');
INSERT INTO `sys_icon` VALUES ('113', null, 'icon-search', 'css');
INSERT INTO `sys_icon` VALUES ('114', null, 'icon-share', 'css');
INSERT INTO `sys_icon` VALUES ('115', null, 'icon-share-alt', 'css');
INSERT INTO `sys_icon` VALUES ('116', null, 'icon-shopping-cart', 'css');
INSERT INTO `sys_icon` VALUES ('117', null, 'icon-time', 'css');
INSERT INTO `sys_icon` VALUES ('118', null, 'icon-tint', 'css');
INSERT INTO `sys_icon` VALUES ('119', null, 'icon-trash', 'css');
INSERT INTO `sys_icon` VALUES ('120', null, 'icon-trophy', 'css');
INSERT INTO `sys_icon` VALUES ('121', null, 'icon-truck', 'css');
INSERT INTO `sys_icon` VALUES ('122', null, 'icon-umbrella', 'css');
INSERT INTO `sys_icon` VALUES ('123', null, 'icon-upload', 'css');
INSERT INTO `sys_icon` VALUES ('124', null, 'icon-upload-alt', 'css');
INSERT INTO `sys_icon` VALUES ('125', null, 'icon-user', 'css');
INSERT INTO `sys_icon` VALUES ('126', null, 'icon-user-md', 'css');
INSERT INTO `sys_icon` VALUES ('127', null, 'icon-volume-off', 'css');
INSERT INTO `sys_icon` VALUES ('128', null, 'icon-volume-down', 'css');
INSERT INTO `sys_icon` VALUES ('129', null, 'icon-volume-up', 'css');
INSERT INTO `sys_icon` VALUES ('130', null, 'icon-warning-sign', 'css');
INSERT INTO `sys_icon` VALUES ('131', null, 'icon-wrench', 'css');
INSERT INTO `sys_icon` VALUES ('132', null, 'icon-zoom-in', 'css');
INSERT INTO `sys_icon` VALUES ('133', null, 'icon-zoom-out', 'css');
INSERT INTO `sys_icon` VALUES ('134', null, 'ztree_edit', 'png');
INSERT INTO `sys_icon` VALUES ('135', null, 'ztree_root_close', 'png');
INSERT INTO `sys_icon` VALUES ('136', null, 'ztree_root_open', 'png');
INSERT INTO `sys_icon` VALUES ('137', null, 'ztree_star', 'png');
INSERT INTO `sys_icon` VALUES ('138', null, 'ztree_calendar', 'png');
INSERT INTO `sys_icon` VALUES ('139', null, 'ztree_heart', 'png');
INSERT INTO `sys_icon` VALUES ('140', null, 'ztree_save', 'png');
INSERT INTO `sys_icon` VALUES ('141', null, 'ztree_msg', 'png');
INSERT INTO `sys_icon` VALUES ('142', null, 'ztree_report', 'png');
INSERT INTO `sys_icon` VALUES ('143', null, 'ztree_setting', 'png');
INSERT INTO `sys_icon` VALUES ('148', null, 'ztree_folder_open', 'png');
INSERT INTO `sys_icon` VALUES ('149', null, 'ztree_folder_close', 'png');
INSERT INTO `sys_icon` VALUES ('150', null, 'ztree_file2', 'png');
INSERT INTO `sys_icon` VALUES ('151', null, 'ztree_edit2', 'png');
INSERT INTO `sys_icon` VALUES ('152', null, 'ztree_delete', 'png');
INSERT INTO `sys_icon` VALUES ('153', null, 'ztree_arrow', 'png');
INSERT INTO `sys_icon` VALUES ('154', null, 'ztree_plus', 'png');
INSERT INTO `sys_icon` VALUES ('155', null, 'ztree_minus', 'png');
INSERT INTO `sys_icon` VALUES ('156', null, 'ztree_add', 'png');
INSERT INTO `sys_icon` VALUES ('157', null, 'ztree_cicle_arrow_left1', 'png');
INSERT INTO `sys_icon` VALUES ('158', null, 'ztree_cicle_arrow_right1', 'png');
INSERT INTO `sys_icon` VALUES ('159', null, 'ztree_cicle_arrow_left2', 'png');
INSERT INTO `sys_icon` VALUES ('160', null, 'ztree_cicle_arrow_right2', 'png');
INSERT INTO `sys_icon` VALUES ('161', null, 'ztree_cicle_arrow', 'png');
INSERT INTO `sys_icon` VALUES ('162', null, 'ztree_star_light', 'png');
INSERT INTO `sys_icon` VALUES ('163', null, 'ztree_star_dark', 'png');
INSERT INTO `sys_icon` VALUES ('164', null, 'diy_icon_01_01', 'png');
INSERT INTO `sys_icon` VALUES ('165', null, 'diy_icon_01_02', 'png');
INSERT INTO `sys_icon` VALUES ('166', null, 'diy_icon_01_03', 'png');
INSERT INTO `sys_icon` VALUES ('167', null, 'diy_icon_01_04', 'png');
INSERT INTO `sys_icon` VALUES ('168', null, 'diy_icon_01_05', 'png');
INSERT INTO `sys_icon` VALUES ('169', null, 'diy_icon_01_06', 'png');
INSERT INTO `sys_icon` VALUES ('170', null, 'diy_icon_01_07', 'png');
INSERT INTO `sys_icon` VALUES ('171', null, 'diy_icon_01_08', 'png');
INSERT INTO `sys_icon` VALUES ('172', null, 'diy_icon_01_09', 'png');
INSERT INTO `sys_icon` VALUES ('173', null, 'diy_icon_01_10', 'png');
INSERT INTO `sys_icon` VALUES ('174', null, 'diy_icon_01_11', 'png');
INSERT INTO `sys_icon` VALUES ('175', null, 'diy_icon_01_12', 'png');
INSERT INTO `sys_icon` VALUES ('176', null, 'diy_icon_01_13', 'png');
INSERT INTO `sys_icon` VALUES ('177', null, 'diy_icon_01_14', 'png');
INSERT INTO `sys_icon` VALUES ('178', null, 'diy_icon_01_15', 'png');
INSERT INTO `sys_icon` VALUES ('179', null, 'diy_icon_01_16', 'png');
INSERT INTO `sys_icon` VALUES ('180', null, 'diy_icon_01_17', 'png');
INSERT INTO `sys_icon` VALUES ('181', null, 'diy_icon_01_18', 'png');
INSERT INTO `sys_icon` VALUES ('182', null, 'diy_icon_01_19', 'png');
INSERT INTO `sys_icon` VALUES ('183', null, 'diy_icon_01_20', 'png');
INSERT INTO `sys_icon` VALUES ('184', null, 'diy_icon_01_21', 'png');
INSERT INTO `sys_icon` VALUES ('185', null, 'diy_icon_01_22', 'png');
INSERT INTO `sys_icon` VALUES ('186', null, 'diy_icon_01_23', 'png');
INSERT INTO `sys_icon` VALUES ('187', null, 'diy_icon_01_24', 'png');
INSERT INTO `sys_icon` VALUES ('188', null, 'diy_icon_01_25', 'png');
INSERT INTO `sys_icon` VALUES ('189', null, 'diy_icon_01_26', 'png');
INSERT INTO `sys_icon` VALUES ('190', null, 'diy_icon_01_27', 'png');
INSERT INTO `sys_icon` VALUES ('191', null, 'diy_icon_01_28', 'png');
INSERT INTO `sys_icon` VALUES ('192', null, 'diy_icon_01_29', 'png');
INSERT INTO `sys_icon` VALUES ('193', null, 'diy_icon_01_30', 'png');
INSERT INTO `sys_icon` VALUES ('194', null, 'diy_icon_01_31', 'png');
INSERT INTO `sys_icon` VALUES ('195', null, 'diy_icon_01_32', 'png');
INSERT INTO `sys_icon` VALUES ('196', null, 'diy_icon_01_33', 'png');
INSERT INTO `sys_icon` VALUES ('197', null, 'diy_icon_01_34', 'png');
INSERT INTO `sys_icon` VALUES ('198', null, 'diy_icon_01_35', 'png');
INSERT INTO `sys_icon` VALUES ('199', null, 'diy_icon_01_36', 'png');
INSERT INTO `sys_icon` VALUES ('200', null, 'diy_icon_01_37', 'png');
INSERT INTO `sys_icon` VALUES ('201', null, 'diy_icon_01_38', 'png');
INSERT INTO `sys_icon` VALUES ('202', null, 'diy_icon_01_39', 'png');
INSERT INTO `sys_icon` VALUES ('203', null, 'diy_icon_01_40', 'png');
INSERT INTO `sys_icon` VALUES ('204', null, 'diy_icon_01_41', 'png');
INSERT INTO `sys_icon` VALUES ('205', null, 'diy_icon_01_42', 'png');
INSERT INTO `sys_icon` VALUES ('206', null, 'diy_icon_01_43', 'png');
INSERT INTO `sys_icon` VALUES ('207', null, 'diy_icon_01_44', 'png');
INSERT INTO `sys_icon` VALUES ('208', null, 'diy_icon_01_45', 'png');
INSERT INTO `sys_icon` VALUES ('209', null, 'diy_icon_01_46', 'png');
INSERT INTO `sys_icon` VALUES ('210', null, 'diy_icon_01_47', 'png');
INSERT INTO `sys_icon` VALUES ('211', null, 'diy_icon_01_48', 'png');
INSERT INTO `sys_icon` VALUES ('212', null, 'diy_icon_01_49', 'png');
INSERT INTO `sys_icon` VALUES ('213', null, 'diy_icon_01_50', 'png');
INSERT INTO `sys_icon` VALUES ('214', null, 'diy_icon_02_01', 'png');
INSERT INTO `sys_icon` VALUES ('215', null, 'diy_icon_02_02', 'png');
INSERT INTO `sys_icon` VALUES ('216', null, 'diy_icon_02_03', 'png');
INSERT INTO `sys_icon` VALUES ('217', null, 'diy_icon_02_04', 'png');
INSERT INTO `sys_icon` VALUES ('218', null, 'diy_icon_02_05', 'png');
INSERT INTO `sys_icon` VALUES ('219', null, 'diy_icon_02_06', 'png');
INSERT INTO `sys_icon` VALUES ('220', null, 'diy_icon_02_07', 'png');
INSERT INTO `sys_icon` VALUES ('221', null, 'diy_icon_02_08', 'png');
INSERT INTO `sys_icon` VALUES ('222', null, 'diy_icon_02_09', 'png');
INSERT INTO `sys_icon` VALUES ('223', null, 'diy_icon_02_10', 'png');
INSERT INTO `sys_icon` VALUES ('224', null, 'diy_icon_02_11', 'png');
INSERT INTO `sys_icon` VALUES ('225', null, 'diy_icon_02_12', 'png');
INSERT INTO `sys_icon` VALUES ('226', null, 'diy_icon_02_13', 'png');
INSERT INTO `sys_icon` VALUES ('227', null, 'diy_icon_02_14', 'png');
INSERT INTO `sys_icon` VALUES ('228', null, 'diy_icon_02_15', 'png');
INSERT INTO `sys_icon` VALUES ('229', null, 'diy_icon_02_16', 'png');
INSERT INTO `sys_icon` VALUES ('230', null, 'diy_icon_02_17', 'png');
INSERT INTO `sys_icon` VALUES ('231', null, 'diy_icon_02_18', 'png');
INSERT INTO `sys_icon` VALUES ('232', null, 'diy_icon_02_19', 'png');
INSERT INTO `sys_icon` VALUES ('233', null, 'diy_icon_02_20', 'png');
INSERT INTO `sys_icon` VALUES ('234', null, 'diy_icon_02_21', 'png');
INSERT INTO `sys_icon` VALUES ('235', null, 'diy_icon_02_22', 'png');
INSERT INTO `sys_icon` VALUES ('236', null, 'diy_icon_02_23', 'png');
INSERT INTO `sys_icon` VALUES ('237', null, 'diy_icon_02_24', 'png');
INSERT INTO `sys_icon` VALUES ('238', null, 'diy_icon_02_25', 'png');
INSERT INTO `sys_icon` VALUES ('239', null, 'diy_icon_02_26', 'png');
INSERT INTO `sys_icon` VALUES ('240', null, 'diy_icon_02_27', 'png');
INSERT INTO `sys_icon` VALUES ('241', null, 'diy_icon_02_28', 'png');
INSERT INTO `sys_icon` VALUES ('242', null, 'diy_icon_02_29', 'png');
INSERT INTO `sys_icon` VALUES ('243', null, 'diy_icon_02_30', 'png');
INSERT INTO `sys_icon` VALUES ('244', null, 'diy_icon_02_31', 'png');
INSERT INTO `sys_icon` VALUES ('245', null, 'diy_icon_02_32', 'png');
INSERT INTO `sys_icon` VALUES ('246', null, 'diy_icon_02_33', 'png');
INSERT INTO `sys_icon` VALUES ('247', null, 'diy_icon_02_34', 'png');
INSERT INTO `sys_icon` VALUES ('248', null, 'diy_icon_02_35', 'png');
INSERT INTO `sys_icon` VALUES ('249', null, 'diy_icon_02_36', 'png');
INSERT INTO `sys_icon` VALUES ('250', null, 'diy_icon_02_37', 'png');
INSERT INTO `sys_icon` VALUES ('251', null, 'diy_icon_02_38', 'png');
INSERT INTO `sys_icon` VALUES ('252', null, 'diy_icon_02_39', 'png');
INSERT INTO `sys_icon` VALUES ('253', null, 'diy_icon_02_40', 'png');
INSERT INTO `sys_icon` VALUES ('254', null, 'diy_icon_02_41', 'png');
INSERT INTO `sys_icon` VALUES ('255', null, 'diy_icon_02_42', 'png');
INSERT INTO `sys_icon` VALUES ('256', null, 'diy_icon_02_43', 'png');
INSERT INTO `sys_icon` VALUES ('257', null, 'diy_icon_02_44', 'png');
INSERT INTO `sys_icon` VALUES ('258', null, 'diy_icon_02_45', 'png');
INSERT INTO `sys_icon` VALUES ('259', null, 'diy_icon_02_46', 'png');
INSERT INTO `sys_icon` VALUES ('260', null, 'diy_icon_02_47', 'png');
INSERT INTO `sys_icon` VALUES ('261', null, 'diy_icon_02_48', 'png');
INSERT INTO `sys_icon` VALUES ('262', null, 'diy_icon_02_49', 'png');
INSERT INTO `sys_icon` VALUES ('263', null, 'diy_icon_02_50', 'png');
INSERT INTO `sys_icon` VALUES ('264', null, 'diy_icon_03_01', 'png');
INSERT INTO `sys_icon` VALUES ('265', null, 'diy_icon_03_02', 'png');
INSERT INTO `sys_icon` VALUES ('266', null, 'diy_icon_03_03', 'png');
INSERT INTO `sys_icon` VALUES ('267', null, 'diy_icon_03_04', 'png');
INSERT INTO `sys_icon` VALUES ('268', null, 'diy_icon_03_05', 'png');
INSERT INTO `sys_icon` VALUES ('269', null, 'diy_icon_03_06', 'png');
INSERT INTO `sys_icon` VALUES ('270', null, 'diy_icon_03_07', 'png');
INSERT INTO `sys_icon` VALUES ('271', null, 'diy_icon_03_08', 'png');
INSERT INTO `sys_icon` VALUES ('272', null, 'diy_icon_03_09', 'png');
INSERT INTO `sys_icon` VALUES ('273', null, 'diy_icon_03_10', 'png');
INSERT INTO `sys_icon` VALUES ('274', null, 'diy_icon_03_11', 'png');
INSERT INTO `sys_icon` VALUES ('275', null, 'diy_icon_03_12', 'png');
INSERT INTO `sys_icon` VALUES ('276', null, 'diy_icon_03_13', 'png');
INSERT INTO `sys_icon` VALUES ('277', null, 'diy_icon_03_14', 'png');
INSERT INTO `sys_icon` VALUES ('278', null, 'diy_icon_03_15', 'png');
INSERT INTO `sys_icon` VALUES ('279', null, 'diy_icon_03_16', 'png');
INSERT INTO `sys_icon` VALUES ('280', null, 'diy_icon_03_17', 'png');
INSERT INTO `sys_icon` VALUES ('281', null, 'diy_icon_03_18', 'png');
INSERT INTO `sys_icon` VALUES ('282', null, 'diy_icon_03_19', 'png');
INSERT INTO `sys_icon` VALUES ('283', null, 'diy_icon_03_20', 'png');
INSERT INTO `sys_icon` VALUES ('284', null, 'diy_icon_03_21', 'png');
INSERT INTO `sys_icon` VALUES ('285', null, 'diy_icon_03_22', 'png');
INSERT INTO `sys_icon` VALUES ('286', null, 'diy_icon_03_23', 'png');
INSERT INTO `sys_icon` VALUES ('287', null, 'diy_icon_03_24', 'png');
INSERT INTO `sys_icon` VALUES ('288', null, 'diy_icon_03_25', 'png');
INSERT INTO `sys_icon` VALUES ('289', null, 'diy_icon_03_26', 'png');
INSERT INTO `sys_icon` VALUES ('290', null, 'diy_icon_03_27', 'png');
INSERT INTO `sys_icon` VALUES ('291', null, 'diy_icon_03_28', 'png');
INSERT INTO `sys_icon` VALUES ('292', null, 'diy_icon_03_29', 'png');
INSERT INTO `sys_icon` VALUES ('293', null, 'diy_icon_03_30', 'png');
INSERT INTO `sys_icon` VALUES ('294', null, 'diy_icon_03_31', 'png');
INSERT INTO `sys_icon` VALUES ('295', null, 'diy_icon_03_32', 'png');
INSERT INTO `sys_icon` VALUES ('296', null, 'diy_icon_03_33', 'png');
INSERT INTO `sys_icon` VALUES ('297', null, 'diy_icon_03_34', 'png');
INSERT INTO `sys_icon` VALUES ('298', null, 'diy_icon_03_35', 'png');
INSERT INTO `sys_icon` VALUES ('299', null, 'diy_icon_03_36', 'png');
INSERT INTO `sys_icon` VALUES ('300', null, 'diy_icon_03_37', 'png');
INSERT INTO `sys_icon` VALUES ('301', null, 'diy_icon_03_38', 'png');
INSERT INTO `sys_icon` VALUES ('302', null, 'diy_icon_03_39', 'png');
INSERT INTO `sys_icon` VALUES ('303', null, 'diy_icon_03_40', 'png');
INSERT INTO `sys_icon` VALUES ('304', null, 'diy_icon_03_41', 'png');
INSERT INTO `sys_icon` VALUES ('305', null, 'diy_icon_03_42', 'png');
INSERT INTO `sys_icon` VALUES ('306', null, 'diy_icon_03_43', 'png');
INSERT INTO `sys_icon` VALUES ('307', null, 'diy_icon_03_44', 'png');
INSERT INTO `sys_icon` VALUES ('308', null, 'diy_icon_03_45', 'png');
INSERT INTO `sys_icon` VALUES ('309', null, 'diy_icon_03_46', 'png');
INSERT INTO `sys_icon` VALUES ('310', null, 'diy_icon_03_47', 'png');
INSERT INTO `sys_icon` VALUES ('311', null, 'diy_icon_03_48', 'png');
INSERT INTO `sys_icon` VALUES ('312', null, 'diy_icon_03_49', 'png');
INSERT INTO `sys_icon` VALUES ('313', null, 'diy_icon_03_50', 'png');
INSERT INTO `sys_icon` VALUES ('314', null, 'diy_icon_04_01', 'png');
INSERT INTO `sys_icon` VALUES ('315', null, 'diy_icon_04_02', 'png');
INSERT INTO `sys_icon` VALUES ('316', null, 'diy_icon_04_03', 'png');
INSERT INTO `sys_icon` VALUES ('317', null, 'diy_icon_04_04', 'png');
INSERT INTO `sys_icon` VALUES ('318', null, 'diy_icon_04_05', 'png');
INSERT INTO `sys_icon` VALUES ('319', null, 'diy_icon_04_06', 'png');
INSERT INTO `sys_icon` VALUES ('320', null, 'diy_icon_04_07', 'png');
INSERT INTO `sys_icon` VALUES ('321', null, 'diy_icon_04_08', 'png');
INSERT INTO `sys_icon` VALUES ('322', null, 'diy_icon_04_09', 'png');
INSERT INTO `sys_icon` VALUES ('323', null, 'diy_icon_04_10', 'png');
INSERT INTO `sys_icon` VALUES ('324', null, 'diy_icon_04_11', 'png');
INSERT INTO `sys_icon` VALUES ('325', null, 'diy_icon_04_12', 'png');
INSERT INTO `sys_icon` VALUES ('326', null, 'diy_icon_04_13', 'png');
INSERT INTO `sys_icon` VALUES ('327', null, 'diy_icon_04_14', 'png');
INSERT INTO `sys_icon` VALUES ('328', null, 'diy_icon_04_15', 'png');
INSERT INTO `sys_icon` VALUES ('329', null, 'diy_icon_04_16', 'png');
INSERT INTO `sys_icon` VALUES ('330', null, 'diy_icon_04_17', 'png');
INSERT INTO `sys_icon` VALUES ('331', null, 'diy_icon_04_18', 'png');
INSERT INTO `sys_icon` VALUES ('332', null, 'diy_icon_04_19', 'png');
INSERT INTO `sys_icon` VALUES ('333', null, 'diy_icon_04_20', 'png');
INSERT INTO `sys_icon` VALUES ('334', null, 'diy_icon_04_21', 'png');
INSERT INTO `sys_icon` VALUES ('335', null, 'diy_icon_04_22', 'png');
INSERT INTO `sys_icon` VALUES ('336', null, 'diy_icon_04_23', 'png');
INSERT INTO `sys_icon` VALUES ('337', null, 'diy_icon_04_24', 'png');
INSERT INTO `sys_icon` VALUES ('338', null, 'diy_icon_04_25', 'png');
INSERT INTO `sys_icon` VALUES ('339', null, 'diy_icon_04_26', 'png');
INSERT INTO `sys_icon` VALUES ('340', null, 'diy_icon_04_27', 'png');
INSERT INTO `sys_icon` VALUES ('341', null, 'diy_icon_04_28', 'png');
INSERT INTO `sys_icon` VALUES ('342', null, 'diy_icon_04_29', 'png');
INSERT INTO `sys_icon` VALUES ('343', null, 'diy_icon_04_30', 'png');
INSERT INTO `sys_icon` VALUES ('344', null, 'diy_icon_04_31', 'png');
INSERT INTO `sys_icon` VALUES ('345', null, 'diy_icon_04_32', 'png');
INSERT INTO `sys_icon` VALUES ('346', null, 'diy_icon_04_33', 'png');
INSERT INTO `sys_icon` VALUES ('347', null, 'diy_icon_04_34', 'png');
INSERT INTO `sys_icon` VALUES ('348', null, 'diy_icon_04_35', 'png');
INSERT INTO `sys_icon` VALUES ('349', null, 'diy_icon_04_36', 'png');
INSERT INTO `sys_icon` VALUES ('350', null, 'diy_icon_04_37', 'png');
INSERT INTO `sys_icon` VALUES ('351', null, 'diy_icon_04_38', 'png');
INSERT INTO `sys_icon` VALUES ('352', null, 'diy_icon_04_39', 'png');
INSERT INTO `sys_icon` VALUES ('353', null, 'diy_icon_04_40', 'png');
INSERT INTO `sys_icon` VALUES ('354', null, 'diy_icon_04_41', 'png');
INSERT INTO `sys_icon` VALUES ('355', null, 'diy_icon_04_42', 'png');
INSERT INTO `sys_icon` VALUES ('356', null, 'diy_icon_04_43', 'png');
INSERT INTO `sys_icon` VALUES ('357', null, 'diy_icon_04_44', 'png');
INSERT INTO `sys_icon` VALUES ('358', null, 'diy_icon_04_45', 'png');
INSERT INTO `sys_icon` VALUES ('359', null, 'diy_icon_04_46', 'png');
INSERT INTO `sys_icon` VALUES ('360', null, 'diy_icon_04_47', 'png');
INSERT INTO `sys_icon` VALUES ('361', null, 'diy_icon_04_48', 'png');
INSERT INTO `sys_icon` VALUES ('362', null, 'diy_icon_04_49', 'png');
INSERT INTO `sys_icon` VALUES ('363', null, 'diy_icon_04_50', 'png');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `operName` varchar(255) DEFAULT NULL,
  `operTime` datetime DEFAULT NULL,
  `result` int(11) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC3427A92D8327538` (`userId`) USING BTREE,
  CONSTRAINT `sys_log_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('321', '退出系统', '系统登出', '2014-06-18 15:24:35', '1', '5', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_log` VALUES ('322', '登录系统', '系统登录', '2014-06-18 15:26:34', '1', '5', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_log` VALUES ('323', '登录系统', '系统登录', '2014-06-18 19:43:13', '1', '5', '127.0.0.1');

-- ----------------------------
-- Table structure for sys_res
-- ----------------------------
DROP TABLE IF EXISTS `sys_res`;
CREATE TABLE `sys_res` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorize` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orderNo` int(11) NOT NULL,
  `permsString` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `resString` varchar(255) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC3428FEED6C7D0A5` (`PARENT_ID`) USING BTREE,
  CONSTRAINT `sys_res_ibfk_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `sys_res` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_res
-- ----------------------------
INSERT INTO `sys_res` VALUES ('1', null, '1', 'ztree_root_close', '系统管理', '1', 'sys', '系统管理', '/sys', '5');
INSERT INTO `sys_res` VALUES ('2', null, '2', 'diy_icon_01_05', '用户管理', '1', 'sys:user', '用户管理', '/sys/user/list', '1');
INSERT INTO `sys_res` VALUES ('3', null, '2', 'diy_icon_01_10', '角色管理', '2', 'sys:role', '角色管理', '/sys/role/list', '1');
INSERT INTO `sys_res` VALUES ('4', null, '2', 'ztree_report', '资源菜单', '3', 'sys:resource', '资源管理', '/sys/resource/list', '1');
INSERT INTO `sys_res` VALUES ('5', null, '0', '', 'system', '1', 'system', '最高的节点只能有一个', '/system', null);
INSERT INTO `sys_res` VALUES ('7', null, '3', 'icon-tasks', '用户列表', '1', 'sys:user:list', '用户列表', '/sys/user/list', '2');
INSERT INTO `sys_res` VALUES ('8', null, '3', 'icon-plus', '添加用户', '2', 'sys:user:add', '添加用户', '/sys/user/add', '2');
INSERT INTO `sys_res` VALUES ('9', null, '3', 'icon-minus', '删除用户', '3', 'sys:user:delete', '', '/sys/user/delete', '2');
INSERT INTO `sys_res` VALUES ('10', null, '3', 'icon-pencil', '修改用户', '4', 'sys:user:update', '', '/sys/user/update', '2');
INSERT INTO `sys_res` VALUES ('11', null, '3', 'icon-tasks', '角色列表', '1', 'sys:role:list', '', '/sys/role/list', '3');
INSERT INTO `sys_res` VALUES ('12', null, '3', 'icon-plus', '添加角色', '2', 'sys:role:add', '', '/sys/role/add', '3');
INSERT INTO `sys_res` VALUES ('13', null, '3', 'icon-minus', '删除角色', '3', 'sys:role:delete', '', '/sys/role/delete', '3');
INSERT INTO `sys_res` VALUES ('14', null, '3', 'icon-pencil', '修改角色', '4', 'sys:role:update', '', '/sys/role/update', '3');
INSERT INTO `sys_res` VALUES ('15', null, '3', 'icon-tasks', '资源列表', '1', 'sys:resource:list', '', '/sys/resource/list', '4');
INSERT INTO `sys_res` VALUES ('16', null, '3', 'icon-plus', '添加资源', '2', 'sys:resource:add', '', '/sys/resource/add', '4');
INSERT INTO `sys_res` VALUES ('17', null, '3', 'icon-minus', '删除资源', '3', 'sys:resource:delete', '', '/sys/resource/delete', '4');
INSERT INTO `sys_res` VALUES ('18', null, '3', 'icon-pencil', '修改资源', '4', 'sys:resource:update', '', '/sys/resource/update', '4');
INSERT INTO `sys_res` VALUES ('19', null, '2', 'diy_icon_01_02', '图标管理', '4', 'sys:user:list', '', '/sys/icon/list', '1');
INSERT INTO `sys_res` VALUES ('20', null, '3', 'icon-tasks', '图标列表', '1', 'sys:icon:list', '', '/sys/icon/list', '19');
INSERT INTO `sys_res` VALUES ('21', null, '3', 'icon-plus', '添加图标', '2', 'sys:icon:add', '', '/sys/icon/add', '19');
INSERT INTO `sys_res` VALUES ('22', null, '3', 'icon-minus', '删除图标', '3', 'sys:icon:delete', '', '/sys/icon/delete', '19');
INSERT INTO `sys_res` VALUES ('23', null, '3', 'icon-pencil', '修改图标', '4', 'sys:icon:update', '', '/sys/icon/update', '19');
INSERT INTO `sys_res` VALUES ('24', null, '3', 'ztree_file2', '详细信息', '5', 'sys:user:show', '', '/sys/user/show', '2');
INSERT INTO `sys_res` VALUES ('25', null, '3', 'ztree_file2', '详细信息', '5', 'sys:role:show', '', '/sys/role/show', '3');
INSERT INTO `sys_res` VALUES ('31', null, '3', 'icon-key', '更改用户状态', '6', 'sys:user:changeUserStatus', '', '/sys/user/changeUserStatus', '2');
INSERT INTO `sys_res` VALUES ('36', null, '2', 'diy_icon_04_19', '系统日志', '5', 'sys:log:list', '', '/sys/log/list', '1');
INSERT INTO `sys_res` VALUES ('37', null, '3', 'icon-tasks', '日志列表', '1', 'sys:log:list', '', '/sys/log/list', '36');
INSERT INTO `sys_res` VALUES ('40', null, '3', 'icon-cog', '删除日志', '2', 'sys:log:delete', '', '/sys/log/delete', '36');
INSERT INTO `sys_res` VALUES ('46', null, '1', 'diy_icon_01_46', '内容管理', '3', 'cms', '', '/cms', '5');
INSERT INTO `sys_res` VALUES ('47', null, '2', 'diy_icon_01_23', '内容发布', '1', 'cms', '', '/cms/', '46');
INSERT INTO `sys_res` VALUES ('49', null, '2', 'diy_icon_04_37', '栏目管理', '2', 'cms:category:list', '', '/cms/category/list', '46');
INSERT INTO `sys_res` VALUES ('50', null, '2', 'diy_icon_02_44', '站点管理', '1', 'cms:site:list', '', '/cms/site/list', '46');
INSERT INTO `sys_res` VALUES ('51', null, '2', 'diy_icon_01_28', '评论管理', '4', 'cms:comment', '', '/cms/comment/list', '46');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorize` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', null, 'superAdmin', '超级管理员', '拥有所有权限');
INSERT INTO `sys_role` VALUES ('6', null, 'deptLeader', '部门经理', '111');
INSERT INTO `sys_role` VALUES ('7', null, 'hr', '人力经理', '');
INSERT INTO `sys_role` VALUES ('8', null, 'bloger', '博客玩家', '');
INSERT INTO `sys_role` VALUES ('9', null, 'showcasers', '演示分配角色', '');

-- ----------------------------
-- Table structure for sys_role_res
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_res`;
CREATE TABLE `sys_role_res` (
  `ROLE_ID` bigint(20) NOT NULL,
  `RES_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`RES_ID`),
  KEY `FK9A255A8923AE94EF` (`RES_ID`) USING BTREE,
  KEY `FK9A255A895C176D41` (`ROLE_ID`) USING BTREE,
  CONSTRAINT `sys_role_res_ibfk_1` FOREIGN KEY (`RES_ID`) REFERENCES `sys_res` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sys_role_res_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_res
-- ----------------------------
INSERT INTO `sys_role_res` VALUES ('1', '1');
INSERT INTO `sys_role_res` VALUES ('9', '1');
INSERT INTO `sys_role_res` VALUES ('1', '2');
INSERT INTO `sys_role_res` VALUES ('9', '2');
INSERT INTO `sys_role_res` VALUES ('1', '3');
INSERT INTO `sys_role_res` VALUES ('9', '3');
INSERT INTO `sys_role_res` VALUES ('1', '4');
INSERT INTO `sys_role_res` VALUES ('9', '4');
INSERT INTO `sys_role_res` VALUES ('1', '5');
INSERT INTO `sys_role_res` VALUES ('6', '5');
INSERT INTO `sys_role_res` VALUES ('7', '5');
INSERT INTO `sys_role_res` VALUES ('8', '5');
INSERT INTO `sys_role_res` VALUES ('9', '5');
INSERT INTO `sys_role_res` VALUES ('1', '7');
INSERT INTO `sys_role_res` VALUES ('9', '7');
INSERT INTO `sys_role_res` VALUES ('1', '8');
INSERT INTO `sys_role_res` VALUES ('9', '8');
INSERT INTO `sys_role_res` VALUES ('1', '9');
INSERT INTO `sys_role_res` VALUES ('1', '10');
INSERT INTO `sys_role_res` VALUES ('1', '11');
INSERT INTO `sys_role_res` VALUES ('9', '11');
INSERT INTO `sys_role_res` VALUES ('1', '12');
INSERT INTO `sys_role_res` VALUES ('1', '13');
INSERT INTO `sys_role_res` VALUES ('1', '14');
INSERT INTO `sys_role_res` VALUES ('1', '15');
INSERT INTO `sys_role_res` VALUES ('9', '15');
INSERT INTO `sys_role_res` VALUES ('1', '16');
INSERT INTO `sys_role_res` VALUES ('1', '17');
INSERT INTO `sys_role_res` VALUES ('1', '18');
INSERT INTO `sys_role_res` VALUES ('1', '19');
INSERT INTO `sys_role_res` VALUES ('9', '19');
INSERT INTO `sys_role_res` VALUES ('1', '20');
INSERT INTO `sys_role_res` VALUES ('9', '20');
INSERT INTO `sys_role_res` VALUES ('1', '21');
INSERT INTO `sys_role_res` VALUES ('1', '22');
INSERT INTO `sys_role_res` VALUES ('1', '23');
INSERT INTO `sys_role_res` VALUES ('1', '24');
INSERT INTO `sys_role_res` VALUES ('9', '24');
INSERT INTO `sys_role_res` VALUES ('1', '25');
INSERT INTO `sys_role_res` VALUES ('9', '25');
INSERT INTO `sys_role_res` VALUES ('1', '31');
INSERT INTO `sys_role_res` VALUES ('1', '36');
INSERT INTO `sys_role_res` VALUES ('9', '36');
INSERT INTO `sys_role_res` VALUES ('1', '37');
INSERT INTO `sys_role_res` VALUES ('9', '37');
INSERT INTO `sys_role_res` VALUES ('1', '40');
INSERT INTO `sys_role_res` VALUES ('1', '46');
INSERT INTO `sys_role_res` VALUES ('8', '46');
INSERT INTO `sys_role_res` VALUES ('9', '46');
INSERT INTO `sys_role_res` VALUES ('1', '47');
INSERT INTO `sys_role_res` VALUES ('8', '47');
INSERT INTO `sys_role_res` VALUES ('9', '47');
INSERT INTO `sys_role_res` VALUES ('1', '49');
INSERT INTO `sys_role_res` VALUES ('9', '49');
INSERT INTO `sys_role_res` VALUES ('1', '50');
INSERT INTO `sys_role_res` VALUES ('9', '50');
INSERT INTO `sys_role_res` VALUES ('1', '51');

-- ----------------------------
-- Table structure for sys_test
-- ----------------------------
DROP TABLE IF EXISTS `sys_test`;
CREATE TABLE `sys_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aaa` varchar(255) DEFAULT NULL,
  `bbb` varchar(255) DEFAULT NULL,
  `ccc` varchar(255) DEFAULT NULL,
  `ddd` varchar(255) DEFAULT NULL,
  `eee` varchar(255) DEFAULT NULL,
  `eight` varchar(255) DEFAULT NULL,
  `fff` varchar(255) DEFAULT NULL,
  `five` varchar(255) DEFAULT NULL,
  `four` varchar(255) DEFAULT NULL,
  `ggg` varchar(255) DEFAULT NULL,
  `hhh` varchar(255) DEFAULT NULL,
  `iii` varchar(255) DEFAULT NULL,
  `jjj` varchar(255) DEFAULT NULL,
  `kkk` varchar(255) DEFAULT NULL,
  `lll` varchar(255) DEFAULT NULL,
  `nine` varchar(255) DEFAULT NULL,
  `one` varchar(255) DEFAULT NULL,
  `seven` varchar(255) DEFAULT NULL,
  `six` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `three` varchar(255) DEFAULT NULL,
  `tow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_test
-- ----------------------------
INSERT INTO `sys_test` VALUES ('3', 'ss', 'dd', 'ss', 'aa', 'dd', 'dd', 'aa', 'dd', 'dd', 'aa', 'dd', 'aa', 'dd', 'ssd', 'ss', 'aa', 'sss', 'dd', 'aa', 'dd', 'aa', 'aa');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `loginId` varchar(255) NOT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginId` (`loginId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('4', '成都', '2013-03-07 00:00:00', 'sa@ww.cc', 'user2', '15222233426', '人力经理', '8d2209bf7ec9ac2eec597eb378a7cbf5', '', '1');
INSERT INTO `sys_user` VALUES ('5', '成都', '2014-03-14 00:00:00', '502876941@qq.com', 'admin', '15108276486', '超级管理员', 'bd2e01edc57144999856d77571151dda', '帅气的开发者', '1');
INSERT INTO `sys_user` VALUES ('7', '成都', '2014-03-23 00:00:00', 'sa22@ww.cc', 'depman', '15369654627', '部门经理', '1fa11d49afc1479d1392df32c9cd7dd4', '你好', '1');
INSERT INTO `sys_user` VALUES ('8', '成都', '2014-05-24 00:00:00', 'sss@ss.cc', 'shenyc', '15236568954', '申鱼川', 'b3a92e2ce005f4cb00ceed9baa0d212c', '合作伙伴', '1');
INSERT INTO `sys_user` VALUES ('9', '成都', '2014-05-27 00:00:00', 'sss@ss.cc', 'showcase', '15236568954', '演示', '6747c1c2e26c5d41711d0cf0a284702b', '供演示使用', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `USER_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  KEY `FKAABB7D585C176D41` (`ROLE_ID`) USING BTREE,
  KEY `FKAABB7D581423121` (`USER_ID`) USING BTREE,
  CONSTRAINT `sys_user_role_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sys_user_role_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('5', '1');
INSERT INTO `sys_user_role` VALUES ('7', '6');
INSERT INTO `sys_user_role` VALUES ('4', '7');
INSERT INTO `sys_user_role` VALUES ('8', '8');
INSERT INTO `sys_user_role` VALUES ('9', '9');
