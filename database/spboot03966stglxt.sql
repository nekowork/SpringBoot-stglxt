/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : spboot03966stglxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-11-09 16:54:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '帐号',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin', '2020-11-07 15:28:28');

-- ----------------------------
-- Table structure for `caipinfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `caipinfenlei`;
CREATE TABLE `caipinfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caipinfenlei
-- ----------------------------
INSERT INTO `caipinfenlei` VALUES ('1', '干锅', '2020-11-07 15:34:07');
INSERT INTO `caipinfenlei` VALUES ('2', '爆炒', '2020-11-07 15:34:14');
INSERT INTO `caipinfenlei` VALUES ('3', '白切', '2020-11-07 15:34:45');
INSERT INTO `caipinfenlei` VALUES ('4', '红烧', '2020-11-07 15:34:54');

-- ----------------------------
-- Table structure for `caipinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `caipinxinxi`;
CREATE TABLE `caipinxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caipinbianhao` varchar(50) NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) NOT NULL COMMENT '菜品名称',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `caipintupian` varchar(255) NOT NULL COMMENT '菜品图片',
  `pingfen` decimal(18,2) NOT NULL COMMENT '评分',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `zhekoujia` int(11) NOT NULL COMMENT '折扣价',
  `xiaoliang` int(11) NOT NULL COMMENT '销量',
  `kucun` int(11) NOT NULL COMMENT '库存',
  `caipinxiangqing` longtext NOT NULL COMMENT '菜品详情',
  `faburen` varchar(50) NOT NULL COMMENT '发布人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `caipinxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caipinxinxi
-- ----------------------------
INSERT INTO `caipinxinxi` VALUES ('1', '11071535222066', '干锅虾', '1', 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', '5.00', '88.00', '68', '7', '23', '<p>好吃&nbsp; 美味</p><p><img src=\"./upload/1604734854631.png\"/></p><p><br/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">干锅虾是一道美食。</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%9D%90%E6%96%99/2089204\" data-lemmaid=\"2089204\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">材料</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">大虾半斤、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%8C%AA%E9%87%8C%E8%84%8A%E8%82%89/7907397\" data-lemmaid=\"7907397\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">猪里脊肉</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">三两、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A6%99%E8%8F%87/973881\" data-lemmaid=\"973881\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">香菇</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">三两、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A4%A7%E8%91%B1/918571\" data-lemmaid=\"918571\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">大葱</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">白三两、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A6%99%E8%8F%9C/421947\" data-lemmaid=\"421947\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">香菜</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">半两、泡辣四、五个、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A6%99%E8%BE%A3%E9%85%B1/900957\" data-lemmaid=\"900957\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">香辣酱</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">两大匙、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%9A%9D%E6%B2%B9/1821243\" data-lemmaid=\"1821243\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">蚝油</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">两大匙、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B2%B9%E8%BE%A3%E6%A4%92/9011221\" data-lemmaid=\"9011221\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">油辣椒</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">两大匙、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%8A%B1%E6%A4%92/405937\" data-lemmaid=\"405937\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">花椒</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">15克、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%80%81%E5%A7%9C/710298\" data-lemmaid=\"710298\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">老姜</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">一块、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%8B%AC%E8%92%9C/8618124\" data-lemmaid=\"8618124\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">独蒜</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">两个、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%85%AB%E8%A7%92/24736\" data-lemmaid=\"24736\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">八角</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">两敉、香叶四、五片、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%99%BD%E7%B3%96/4821484\" data-lemmaid=\"4821484\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">白糖</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">一咖啡匙、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B7%80%E7%B2%89/781685\" data-lemmaid=\"781685\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">淀粉</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">一匙、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%96%99%E9%85%92/5744989\" data-lemmaid=\"5744989\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">料酒</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">三大匙、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%9B%90/16302805\" data-lemmaid=\"16302805\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">盐</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">适量。</span></p>', '100', '2020-11-07 15:40:55');
INSERT INTO `caipinxinxi` VALUES ('2', '11071541181393', '爆炒肥肠', '2', 'upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png', '3.26', '68.00', '48', '1', '29', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">爆炒肥肠是一道色香味俱全的地方名菜，属于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%B2%81%E8%8F%9C%E7%B3%BB/691604\" data-lemmaid=\"691604\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">鲁菜系</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">。制作原料有以大肠、青椒、红椒、酸菜等。可以先爆炒肥肠，将其炒至表面微微焦黄，口感应该会更好。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><img src=\"./upload/1604734960843.png\" alt=\"爆炒肥肠\"/></span></p>', '100', '2020-11-07 15:42:41');
INSERT INTO `caipinxinxi` VALUES ('3', '11071542421902', '红烧肉', '4', 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', '5.00', '48.00', '38', '24', '16', '<p><img src=\"./upload/1604735057872.png\"/></p><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">红烧肉，一道著名的大众菜肴，各大菜系都有自己特色的红烧肉。其以<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%94%E8%8A%B1%E8%82%89/4342\" data-lemmaid=\"4342\" style=\"color: rgb(19, 110, 194);\">五花肉</a>为制作主料，最好选用肥瘦相间的三层肉（<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%94%E8%8A%B1%E8%82%89/4342\" data-lemmaid=\"4342\" style=\"color: rgb(19, 110, 194);\">五花肉</a>）来做，锅具以<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A0%82%E9%94%85/1137225\" data-lemmaid=\"1137225\" style=\"color: rgb(19, 110, 194);\">砂锅</a>为主，做出来的肉肥瘦相间，香甜松软，营养丰富，入口即化。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">红烧肉在我国各地流传甚广，做法多达二三十种，具有一定的营养价值<span class=\"sup--normal\" data-sup=\"1\" data-ctrmap=\":1,\" style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: pointer; padding: 0px 2px;\">&nbsp;[1]</span><a class=\"sup-anchor\" name=\"ref_[1]_30525\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\" href=\"http://\">&nbsp;</a>&nbsp;。</div><p><br/></p>', '100', '2020-11-07 15:44:18');
INSERT INTO `caipinxinxi` VALUES ('4', '11071544541478', '白切鸡', '3', 'upload/20201107/c4f799b5-a44a-4789-b693-d3a1224746bc.png', '0.00', '68.00', '58', '0', '40', '<p><img src=\"./upload/1604735173655.png\" alt=\"白切鸡\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">白切鸡又叫</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%99%BD%E6%96%A9%E9%B8%A1/929122\" data-lemmaid=\"929122\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">白斩鸡</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">，是</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%B2%A4%E8%8F%9C/306654\" data-lemmaid=\"306654\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">粤菜</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">系鸡肴中的一种，始于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B8%85%E4%BB%A3/752212\" data-lemmaid=\"752212\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">清代</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">的民间酒店。属</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B5%B8%E9%B8%A1/2221726\" data-lemmaid=\"2221726\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">浸鸡</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">类。其特点为制作简易，刚熟不烂，不加配料且保持原味。白切鸡通常选用</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B8%89%E9%BB%84%E9%B8%A1/6679382\" data-lemmaid=\"6679382\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">三黄鸡</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">与</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B2%99%E5%A7%9C/1339844\" data-lemmaid=\"1339844\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">沙姜</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%92%9C%E8%8C%B8/6432494\" data-lemmaid=\"6432494\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">蒜茸</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%91%B1/577741\" data-lemmaid=\"577741\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">葱</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">等食材，慢火煮浸后，晾干切块。成菜后，色洁白带油黄，皮爽肉滑骨香，清淡鲜美。</span><span class=\"sup--normal\" data-sup=\"1\" data-ctrmap=\":1,\" style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; white-space: normal; margin-left: 2px; color: rgb(51, 102, 204); cursor: pointer; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px;\">&nbsp;[1]</span><a class=\"sup-anchor\" name=\"ref_[1]_59062\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0; font-family: arial, 宋体, sans-serif; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\" href=\"http://\">&nbsp;</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;白切鸡皮爽肉滑，清淡鲜美，驰名</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%B2%A4%E6%B8%AF%E6%BE%B3/4036013\" data-lemmaid=\"4036013\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">粤港澳</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">，现在南方菜系中普遍存在。</span></p>', '110', '2020-11-07 15:46:13');
INSERT INTO `caipinxinxi` VALUES ('5', '11071546158588', '白切鸭', '3', 'upload/20201107/2dd3d06b-50e6-498c-9bab-c3e8d4758869.png', '0.00', '58.00', '48', '2', '28', '<p><img src=\"./upload/1604735250966.png\" alt=\"湛江白切鸭\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">白切鸭是广东省</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B9%9B%E6%B1%9F%E5%B8%82/425574\" data-lemmaid=\"425574\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">湛江市</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">的一道特色名菜，属于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%B2%A4%E8%8F%9C%E7%B3%BB/692339\" data-lemmaid=\"692339\" style=\"color: rgb(19, 110, 194); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">粤菜系</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">；此菜是粤菜鸭肴中最普通的一种，其肉质细嫩，润滑清甜，无膻味，补中养胃、化痰止咳、滋阴润肺，在湛江除了海鲜、白切鸡、白切狗，白切鸭也“香”名远扬。</span></p>', '110', '2020-11-07 15:47:31');
INSERT INTO `caipinxinxi` VALUES ('6', '11071547321605', '红烧猪脚', '3', 'upload/20201107/e4394d15-35d3-4395-8f72-9e10ea1ea60f.png', '0.00', '78.00', '68', '0', '50', '<p><img src=\"./upload/1604735370031.png\"/></p><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">1、猪手要选用猪前蹄，因为前蹄筋多，胶质厚，口感较好；<br/>　　2、煮猪手的时间要根据自己喜欢的口感来决定，喜欢软烂的就炖久一些，喜欢有嚼劲的就少放些水，时间不用太久；<br/>　　3、浇入沙姜的热油要烧滚至冒烟，再缓缓分次加入沙姜碗中。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\"><span class=\"sup--normal\" data-sup=\"1\" data-ctrmap=\":1,\" style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: pointer; padding: 0px 2px;\">[1]</span></div><p><br/></p>', '110', '2020-11-07 15:49:30');

-- ----------------------------
-- Table structure for `dianjia`
-- ----------------------------
DROP TABLE IF EXISTS `dianjia`;
CREATE TABLE `dianjia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zhanghao` varchar(50) NOT NULL COMMENT '账号',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `dianjiamingcheng` varchar(255) NOT NULL COMMENT '店家名称',
  `shoujihaoma` varchar(50) NOT NULL COMMENT '手机号码',
  `dizhi` varchar(50) NOT NULL COMMENT '地址',
  `youxiang` varchar(50) NOT NULL COMMENT '邮箱',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dianjia
-- ----------------------------
INSERT INTO `dianjia` VALUES ('1', '100', '100', '美食湘菜', '13526478977', 'xx市xx街道', '98745564@qq.com', '2020-11-07 15:30:32');
INSERT INTO `dianjia` VALUES ('2', '110', '110', '粤菜', '12345678234', 'xx市xx街道', '98745564@qq.com', '2020-11-07 15:33:38');

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18,2) NOT NULL COMMENT '订单金额',
  `yongcanren` varchar(50) NOT NULL COMMENT '用餐人',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `yongcanshijian` varchar(25) NOT NULL COMMENT '用餐时间',
  `zhuangtai` varchar(50) NOT NULL COMMENT '状态',
  `beizhu` text NOT NULL COMMENT '备注',
  `dianjia` varchar(50) NOT NULL COMMENT '店家',
  `xiadanren` varchar(50) NOT NULL COMMENT '下单人',
  `iszf` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否支付',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('5', '11071706412048', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071546158588</td>\r\n                                            <td>白切鸭</td>\r\n                                            <td>\r\n                                                白切</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/2dd3d06b-50e6-498c-9bab-c3e8d4758869.png\">\r\n                                            </td>\r\n                                            <td>48</td>\r\n                                            <td>240.00</td>\r\n                                            <td>5</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', '240.00', 'XXX', '13987456217', '2020-11-07 17:06:43', '未交付', 'XXXX', '110', '001', '是', '2020-11-07 17:06:47');
INSERT INTO `dingdan` VALUES ('8', '11071742059881', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071535222066</td>\r\n                                            <td>干锅虾</td>\r\n                                            <td>\r\n                                                干锅</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png\">\r\n                                            </td>\r\n                                            <td>68</td>\r\n                                            <td>68.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', '68.00', 'XXX', '13987456217', '2020-11-07 17:42:11', '未交付', 'ZXXXX', '100', '001', '是', '2020-11-07 17:42:14');
INSERT INTO `dingdan` VALUES ('9', '11071749271286', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071541181393</td>\r\n                                            <td>爆炒肥肠</td>\r\n                                            <td>\r\n                                                爆炒</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png\">\r\n                                            </td>\r\n                                            <td>48</td>\r\n                                            <td>48.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', '48.00', 'XXX', '13987456217', '2020-11-07 17:49:32', '已交付', 'XXXXX', '100', '001', '是', '2020-11-07 17:49:35');

-- ----------------------------
-- Table structure for `dingdan_dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan_dingdanxinxi`;
CREATE TABLE `dingdan_dingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanid` int(10) unsigned NOT NULL,
  `caipinxinxiid` int(10) unsigned NOT NULL COMMENT '菜品信息ID',
  `caipinbianhao` varchar(50) NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) NOT NULL COMMENT '菜品名称',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `caipintupian` varchar(255) NOT NULL COMMENT '菜品图片',
  `zhekoujia` int(11) NOT NULL COMMENT '折扣价',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `dingdan_dingdanxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan_dingdanxinxi
-- ----------------------------
INSERT INTO `dingdan_dingdanxinxi` VALUES ('1', '6', '5', '11071546158588', '白切鸭', '3', 'upload/20201107/2dd3d06b-50e6-498c-9bab-c3e8d4758869.png', '48', '96.00', '2', '2020-11-07 17:10:34');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('2', '6', '5', '11071546158588', '白切鸭', '3', 'upload/20201107/2dd3d06b-50e6-498c-9bab-c3e8d4758869.png', '48', '96.00', '2', '2020-11-07 17:10:34');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('4', '7', '3', '11071542421902', '红烧肉', '4', 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', '38', '760.00', '20', '2020-11-07 17:21:53');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('5', '8', '1', '11071535222066', '干锅虾', '1', 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', '68', '68.00', '1', '2020-11-07 17:42:14');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('6', '9', '2', '11071541181393', '爆炒肥肠', '2', 'upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png', '48', '48.00', '1', '2020-11-07 17:49:35');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('7', '10', '3', '11071542421902', '红烧肉', '4', 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', '38', '76.00', '2', '2020-11-09 15:53:26');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('8', '10', '1', '11071535222066', '干锅虾', '1', 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', '68', '136.00', '2', '2020-11-09 15:53:26');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('10', '11', '1', '11071535222066', '干锅虾', '1', 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', '68', '136.00', '2', '2020-11-09 16:16:53');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('11', '12', '3', '11071542421902', '红烧肉', '4', 'upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png', '38', '76.00', '2', '2020-11-09 16:26:40');
INSERT INTO `dingdan_dingdanxinxi` VALUES ('12', '13', '1', '11071535222066', '干锅虾', '1', 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', '68', '136.00', '2', '2020-11-09 16:41:06');

-- ----------------------------
-- Table structure for `gouwuche`
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caipinxinxiid` int(10) unsigned NOT NULL COMMENT '菜品信息id',
  `caipinbianhao` varchar(50) NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) NOT NULL COMMENT '菜品名称',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `caipintupian` varchar(255) NOT NULL COMMENT '菜品图片',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `faburen` varchar(50) NOT NULL COMMENT '发布人',
  `zhekoujia` int(11) NOT NULL COMMENT '折扣价',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `beizhu` text NOT NULL COMMENT '备注',
  `goumairen` varchar(50) NOT NULL COMMENT '购买人',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `gouwuche_caipinxinxiid_index` (`caipinxinxiid`),
  KEY `gouwuche_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gouwuche
-- ----------------------------
INSERT INTO `gouwuche` VALUES ('12', '2', '11071541181393', '爆炒肥肠', '2', 'upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png', '68.00', '100', '48', '1', '48.00', '信息', '100', '否', '2020-11-09 10:08:04');
INSERT INTO `gouwuche` VALUES ('19', '1', '11071535222066', '干锅虾', '1', 'upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png', '88.00', '100', '68', '1', '68.00', '', '100', '否', '2020-11-09 16:18:12');

-- ----------------------------
-- Table structure for `jiaofu`
-- ----------------------------
DROP TABLE IF EXISTS `jiaofu`;
CREATE TABLE `jiaofu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanid` int(10) unsigned NOT NULL COMMENT '订单id',
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18,2) NOT NULL COMMENT '订单金额',
  `xiadanren` varchar(50) NOT NULL COMMENT '下单人',
  `beizhu` text NOT NULL COMMENT '备注',
  `jiaofuren` varchar(50) NOT NULL COMMENT '交付人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `jiaofu_dingdanid_index` (`dingdanid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaofu
-- ----------------------------
INSERT INTO `jiaofu` VALUES ('1', '2', '11071700301353', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071542421902</td>\r\n                                            <td>红烧肉</td>\r\n                                            <td>\r\n                                                红烧</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png\">\r\n                                            </td>\r\n                                            <td>38</td>\r\n                                            <td>38.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', '38.00', '001', '可以了', '100', '2020-11-07 17:20:34');
INSERT INTO `jiaofu` VALUES ('3', '9', '11071749271286', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071541181393</td>\r\n                                            <td>爆炒肥肠</td>\r\n                                            <td>\r\n                                                爆炒</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/e252ac73-a9c1-4fce-9154-34241db5fd62.png\">\r\n                                            </td>\r\n                                            <td>48</td>\r\n                                            <td>48.00</td>\r\n                                            <td>1</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', '48.00', '001', '第三方', '100', '2020-11-09 10:13:02');
INSERT INTO `jiaofu` VALUES ('4', '10', '11091553218211', '<table class=\"table\">\r\n                                        <thead>\r\n                                        <tr>\r\n                                            <td>菜品编号</td>\r\n                                            <td>菜品名称</td>\r\n                                            <td>分类</td>\r\n                                            <td>菜品图片</td>\r\n                                            <td>折扣价</td>\r\n                                            <td>小计</td>\r\n                                            <td>购买数量</td>\r\n                                        </tr>\r\n                                        </thead>\r\n                                        <tbody>\r\n                                        <tr>\r\n                                            \r\n                                            <td>11071535222066</td>\r\n                                            <td>干锅虾</td>\r\n                                            <td>\r\n                                                干锅</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/cf26ff76-9576-4b45-869e-ad163f766816.png\">\r\n                                            </td>\r\n                                            <td>68</td>\r\n                                            <td>136.00</td>\r\n                                            <td>2</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                            <tbody><tr><td>11071542421902</td>\r\n                                            <td>红烧肉</td>\r\n                                            <td>\r\n                                                红烧</td>\r\n                                            <td>\r\n                                                <img width=\"100\" src=\"upload/20201107/a20743bd-c5b5-4c4a-b0fa-7b8d4c727773.png\">\r\n                                            </td>\r\n                                            <td>38</td>\r\n                                            <td>76.00</td>\r\n                                            <td>2</td>\r\n                                        </tr>\r\n                                        </tbody>\r\n                                        \r\n                                    </table>', '212.00', '001', 'ok', '100', '2020-11-09 15:58:01');

-- ----------------------------
-- Table structure for `jiaofu_dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `jiaofu_dingdanxinxi`;
CREATE TABLE `jiaofu_dingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jiaofuid` int(10) unsigned NOT NULL,
  `caipinxinxiid` int(10) unsigned NOT NULL COMMENT '菜品信息ID',
  `caipinbianhao` varchar(50) NOT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(255) NOT NULL COMMENT '菜品名称',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `caipintupian` varchar(255) NOT NULL COMMENT '菜品图片',
  `zhekoujia` int(11) NOT NULL COMMENT '折扣价',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `jiaofu_dingdanxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaofu_dingdanxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL COMMENT '连接地址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '1', 'upload/20201107/420d8efe-5bf8-4f0c-8d2b-179f7fcc9902.png', '#', '2020-11-07 15:31:13');
INSERT INTO `lunbotu` VALUES ('2', '2', 'upload/20201107/11b39015-9f0d-4f12-ae4c-69494add8fad.png', '#', '2020-11-07 15:31:42');
INSERT INTO `lunbotu` VALUES ('3', '3', 'upload/20201107/3c8b4539-78ea-4222-971d-273c612a261e.png', '#', '2020-11-07 15:32:09');

-- ----------------------------
-- Table structure for `pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `biao` varchar(50) NOT NULL COMMENT '表',
  `biaoid` int(11) NOT NULL COMMENT '表id',
  `qitaid` int(11) NOT NULL COMMENT '其它id',
  `biaoti` varchar(255) NOT NULL COMMENT '标题',
  `pingfen` decimal(18,2) NOT NULL COMMENT '评分',
  `pinglunneirong` text NOT NULL COMMENT '评论内容',
  `pinglunren` varchar(50) NOT NULL COMMENT '评论人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('52', 'caipinxinxi', '1', '10', '干锅虾', '5.00', '挺不错的', '001', '2020-11-09 15:59:54');
INSERT INTO `pinglun` VALUES ('53', 'caipinxinxi', '3', '10', '红烧肉', '5.00', '美味', '001', '2020-11-09 16:00:14');

-- ----------------------------
-- Table structure for `shoucangjilu`
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `xwid` int(10) unsigned NOT NULL,
  `biao` varchar(255) NOT NULL,
  `biaoti` varchar(255) NOT NULL,
  `url` varchar(512) NOT NULL,
  `ziduan` varchar(255) NOT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES ('1', '001', '3', 'caipinxinxi', '红烧肉', 'http://localhost:8081/caipinxinxidetail.do?id=3', 'caipinmingcheng', '2020-11-07 16:01:22');

-- ----------------------------
-- Table structure for `xuesheng`
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(50) NOT NULL COMMENT '学号',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `shouji` varchar(50) NOT NULL COMMENT '手机',
  `shenfenzheng` varchar(50) NOT NULL COMMENT '身份证',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('1', '001', '001', '婷婷', '女', '25', '12365478998', '657894587965478547', 'upload/1012161739579153.png', '2020-11-07 15:29:17');
INSERT INTO `xuesheng` VALUES ('2', '002', '002', '美美', '女', '20', '12365478998', '452478965874578965', 'upload/20201109/911a8d36-09cc-4099-9396-d75319bda47d.png', '2020-11-09 16:13:54');

-- ----------------------------
-- Table structure for `zaixiantousu`
-- ----------------------------
DROP TABLE IF EXISTS `zaixiantousu`;
CREATE TABLE `zaixiantousu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `dianhua` varchar(50) NOT NULL COMMENT '电话',
  `tousudianjia` varchar(255) NOT NULL COMMENT '投诉店家',
  `tousuneirong` text NOT NULL COMMENT '投诉内容',
  `huifuneirong` text NOT NULL COMMENT '回复内容',
  `tousuren` varchar(50) NOT NULL COMMENT '投诉人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zaixiantousu
-- ----------------------------
INSERT INTO `zaixiantousu` VALUES ('1', '美美', '15555555555', '粤菜', 'sdgfdh', '哈哈', '001', '2020-11-07 17:18:34');
INSERT INTO `zaixiantousu` VALUES ('2', '美美', '15555555555', '粤菜', '不好吃', '为什么', '001', '2020-11-09 10:14:41');
