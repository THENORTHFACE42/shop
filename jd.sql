/*
Navicat MySQL Data Transfer

Source Server         : 172.16.6.51
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : jd

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-10-24 19:14:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jd_banner`
-- ----------------------------
DROP TABLE IF EXISTS `jd_banner`;
CREATE TABLE `jd_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `proPic` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_banner
-- ----------------------------
INSERT INTO `jd_banner` VALUES ('1', 'banner1', 'images/slide/1.jpg');
INSERT INTO `jd_banner` VALUES ('2', 'banner2', 'images/slide/2.jpg');
INSERT INTO `jd_banner` VALUES ('3', 'banner3', 'images/slide/3.jpg');
INSERT INTO `jd_banner` VALUES ('4', 'banner4', 'images/slide/4.jpg');
INSERT INTO `jd_banner` VALUES ('5', 'banner5', 'images/slide/5.jpg');

-- ----------------------------
-- Table structure for `jd_bigtype`
-- ----------------------------
DROP TABLE IF EXISTS `jd_bigtype`;
CREATE TABLE `jd_bigtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `proPic` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_bigtype
-- ----------------------------
INSERT INTO `jd_bigtype` VALUES ('1', '食品饮料、酒类、生鲜', '吃货专区', 'images/bigTypeImg/1.jpg');
INSERT INTO `jd_bigtype` VALUES ('2', '手机、数码、通信', '通信专区', 'images/bigTypeImg/2.jpg');
INSERT INTO `jd_bigtype` VALUES ('3', '鞋靴、箱包、户外运动', '箱包专区', 'images/bigTypeImg/3.jpg');
INSERT INTO `jd_bigtype` VALUES ('4', '厨卫清洁', '清洁专区', 'images/bigTypeImg/4.jpg');
INSERT INTO `jd_bigtype` VALUES ('5', '家居、家庭清洁、纸品', '居家专区', 'images/bigTypeImg/5.jpg');
INSERT INTO `jd_bigtype` VALUES ('6', '母婴、玩具、童装', '母婴专区', 'images/bigTypeImg/6.jpg');
INSERT INTO `jd_bigtype` VALUES ('7', '大小家电、汽车电器', '家电专区', 'images/bigTypeImg/7.jpg');
INSERT INTO `jd_bigtype` VALUES ('8', '女装、男装、男装、珠宝', '女装专区', 'images/bigTypeImg/8.jpg');
INSERT INTO `jd_bigtype` VALUES ('9', '美妆、个人护理、洗护', '化妆品专区', 'images/bigTypeImg/9.jpg');

-- ----------------------------
-- Table structure for `jd_collection`
-- ----------------------------
DROP TABLE IF EXISTS `jd_collection`;
CREATE TABLE `jd_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `goodsName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `goodsProPic` varchar(255) CHARACTER SET utf8 NOT NULL,
  `goodsPrice` double NOT NULL,
  `time` datetime NOT NULL,
  `shopid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_collection
-- ----------------------------
INSERT INTO `jd_collection` VALUES ('9', '24', '36', '女士上衣', 'images/goodsImg/583.jpg', '90', '2016-10-11 18:32:34', '14');
INSERT INTO `jd_collection` VALUES ('10', '24', '29', '牛仔短裤', 'images/goodsImg/575.jpg', '60', '2016-10-11 18:32:43', '13');
INSERT INTO `jd_collection` VALUES ('13', '24', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '2016-10-14 21:16:59', '1');
INSERT INTO `jd_collection` VALUES ('14', '24', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-15 09:37:48', '1');
INSERT INTO `jd_collection` VALUES ('15', '69', '648', '儿童玩具', 'images/goodsImg/413.jpg', '26', '2016-10-21 21:08:32', '10');
INSERT INTO `jd_collection` VALUES ('16', '73', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-22 11:24:09', '1');
INSERT INTO `jd_collection` VALUES ('17', '76', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-22 11:24:10', '1');
INSERT INTO `jd_collection` VALUES ('18', '72', '683', '粉红女包', 'images/goodsImg/229.jpg', '650', '2016-10-22 11:25:54', '5');

-- ----------------------------
-- Table structure for `jd_goods`
-- ----------------------------
DROP TABLE IF EXISTS `jd_goods`;
CREATE TABLE `jd_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` double NOT NULL,
  `proPic` varchar(255) CHARACTER SET utf8 NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sales` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `contents` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bigTypeId` int(11) NOT NULL,
  `state` varchar(255) CHARACTER SET utf8 NOT NULL,
  `shopid` int(11) NOT NULL,
  `smallTypeId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=816 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_goods
-- ----------------------------
INSERT INTO `jd_goods` VALUES ('1', '维维麦片', '10', 'images/goodsImg/1.jpg', '维维麦片', '1500', '54657', '2000', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('2', '百事可乐', '8', 'images/goodsImg/2.jpg', '百事可乐', '2000', '45465', '3000', null, '1', '正常', '1', '5');
INSERT INTO `jd_goods` VALUES ('3', '益达口香糖', '5', 'images/goodsImg/3.jpg', '益达口香糖', '56412', '564800', '2212', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('4', '项链', '2000', 'images/goodsImg/550.jpg', '项链', '100', '5665', '300', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('5', '玉石', '3000', 'images/goodsImg/551.jpg', '玉石', '300', '3000', '200', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('6', '水晶', '3000', 'images/goodsImg/552.jpg', '水晶', '200', '1000', '201', null, '8', '正常', '15', '56');
INSERT INTO `jd_goods` VALUES ('7', '女性内裤', '20', 'images/goodsImg/553.jpg', '女性内裤', '6000', '54242', '2001', null, '8', '正常', '13', '56');
INSERT INTO `jd_goods` VALUES ('8', '女性文胸', '20', 'images/goodsImg/554.jpg', '女性文胸', '32131', '452214', '54640', null, '8', '正常', '13', '56');
INSERT INTO `jd_goods` VALUES ('9', '水晶戒指', '3000', 'images/goodsImg/555.jpg', '水晶戒指', '200', '5400', '99', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('10', '水晶戒指', '2999', 'images/goodsImg/556.jpg', '水晶戒指', '230', '5440', '50', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('11', '手表', '500', 'images/goodsImg/557.jpg', '手表', '3005', '54210', '320', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('15', '腕表', '75', 'images/goodsImg/561.jpg', '腕表', '6520', '54640', '559', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('16', '女士手表', '300', 'images/goodsImg/562.jpg', '女士手表', '540', '5523', '19', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('17', 't-恤', '53', 'images/goodsImg/563.jpg', 't-恤', '1432', '45445', '1230', null, '8', '正常', '14', '57');
INSERT INTO `jd_goods` VALUES ('18', '男士衬衣', '128', 'images/goodsImg/564.jpg', '男士衬衣', '5603', '9200', '96', null, '8', '正常', '14', '57');
INSERT INTO `jd_goods` VALUES ('19', '卫衣', '281', 'images/goodsImg/565.jpg', '卫衣', '5501', '9802', '309', null, '8', '正常', '14', '57');
INSERT INTO `jd_goods` VALUES ('20', 't恤', '50', 'images/goodsImg/566.jpg', 't恤', '5540', '8730', '522', null, '8', '正常', '14', '57');
INSERT INTO `jd_goods` VALUES ('21', '衬衣', '52', 'images/goodsImg/567.jpg', '衬衣', '5210', '7821', '54', null, '8', '正常', '14', '57');
INSERT INTO `jd_goods` VALUES ('22', '精美手表', '128', 'images/goodsImg/568.jpg', '精美手表', '2063', '6540', '55', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('23', '精美旗袍', '879', 'images/goodsImg/569.jpg', '精美旗袍', '6120', '9005', '30', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('24', '红宝石耳坠', '2500', 'images/goodsImg/570.jpg', '红宝石耳坠', '3103', '65321', '99', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('25', '精美腕表', '90', 'images/goodsImg/571.jpg', '精美腕表', '5603', '54585', '602', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('26', '四叶草项链', '3620', 'images/goodsImg/572.jpg', '四叶草项链', '256', '3232', '23', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('27', '性感旗袍', '330', 'images/goodsImg/573.jpg', '性感旗袍', '5661', '10053', '102', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('28', '文胸', '35', 'images/goodsImg/574.jpg', '文胸', '5611', '6846', '602', null, '8', '正常', '13', '56');
INSERT INTO `jd_goods` VALUES ('29', '牛仔短裤', '60', 'images/goodsImg/575.jpg', '牛仔短裤', '6505', '5622', '606', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('30', '黄金戒指', '5230', 'images/goodsImg/570.jpg', '黄金戒指', '650', '5402', '56', null, '8', '正常', '15', '56');
INSERT INTO `jd_goods` VALUES ('31', '女士连衣裙', '150', 'images/goodsImg/578.jpg', '女士连衣裙', '2506', '6065', '504', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('32', '女士衬衣', '88', 'images/goodsImg/579.jpg', '女士衬衣', '6501', '9012', '59', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('33', '女士运动装', '99', 'images/goodsImg/580.jpg', '女士运动装', '6502', '54055', '513', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('34', '女士连衣裙', '108', 'images/goodsImg/581.jpg', '女士连衣裙', '651', '5905', '365', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('35', '连衣裙', '215', 'images/goodsImg/582.jpg', '连衣裙', '566', '7026', '202', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('36', '女士上衣', '90', 'images/goodsImg/583.jpg', '女士上衣', '8512', '58131', '559', null, '8', '正常', '14', '52');
INSERT INTO `jd_goods` VALUES ('37', '性感连衣裙', '99', 'images/goodsImg/584.jpg', '性感连衣裙', '5611', '66590', '539', null, '8', '正常', '14', '55');
INSERT INTO `jd_goods` VALUES ('38', '精美钻戒', '3600', 'images/goodsImg/585.jpg', '精美钻戒', '503', '7025', '60', null, '8', '正常', '15', '53');
INSERT INTO `jd_goods` VALUES ('39', '海飞丝', '18', 'images/goodsImg/586.jpg', '海飞丝', '51450', '98412', '506', null, '8', '正常', '12', '45');
INSERT INTO `jd_goods` VALUES ('41', '玉兰油', '35', 'images/goodsImg/588.jpg', '玉兰油', '9106', '54120', '3062', null, '9', '正常', '12', '51');
INSERT INTO `jd_goods` VALUES ('42', '夏士莲', '28', 'images/goodsImg/589.jpg', '夏士莲', '5610', '89410', '564', null, '9', '正常', '12', '45');
INSERT INTO `jd_goods` VALUES ('43', '沐浴液', '45', 'images/goodsImg/590.jpg', '沐浴液', '6953', '9987', '302', null, '9', '正常', '12', '46');
INSERT INTO `jd_goods` VALUES ('44', '护发素', '60', 'images/goodsImg/591.jpg', '护发素', '9811', '45200', '359', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('45', '海飞丝', '17', 'images/goodsImg/592.jpg', '海飞丝', '5161', '6541', '299', null, '9', '正常', '12', '45');
INSERT INTO `jd_goods` VALUES ('46', '进口香皂', '35', 'images/goodsImg/593.jpg', '香皂', '4561', '6505', '202', null, '9', '正常', '12', '44');
INSERT INTO `jd_goods` VALUES ('47', '护手霜', '108', 'images/goodsImg/594.jpg', '护手霜', '650', '8540', '362', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('48', '香水', '199', 'images/goodsImg/595.jpg', '香水', '502', '5820', '54', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('49', '面膜', '199', 'images/goodsImg/596.jpg', '面膜', '583', '5102', '64', null, '9', '正常', '12', '48');
INSERT INTO `jd_goods` VALUES ('50', '进口香水', '299', 'images/goodsImg/597.jpg', '香水', '604', '5102', '59', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('51', '化妆盒', '125', 'images/goodsImg/599.jpg', '化妆盒', '5101', '65003', '299', null, '9', '正常', '12', '48');
INSERT INTO `jd_goods` VALUES ('52', '护手霜', '300', 'images/goodsImg/600.jpg', '护手霜', '3156', '10203', '30', null, '8', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('53', '沐浴液', '99', 'images/goodsImg/603.jpg', '沐浴液', '6630', '50050', '300', null, '9', '正常', '12', '46');
INSERT INTO `jd_goods` VALUES ('54', '清扬', '35', 'images/goodsImg/605.jpg', '清扬', '5303', '15022', '400', null, '9', '正常', '12', '45');
INSERT INTO `jd_goods` VALUES ('55', '面膜', '199', 'images/goodsImg/606.jpg', '面膜', '1052', '3025', '100', null, '9', '正常', '12', '48');
INSERT INTO `jd_goods` VALUES ('56', '面膜', '88', 'images/goodsImg/607.jpg', '面膜', '552', '6000', '40', null, '9', '正常', '12', '48');
INSERT INTO `jd_goods` VALUES ('57', '护手霜', '108', 'images/goodsImg/608.jpg', '护手霜', '2505', '32023', '100', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('58', '睫毛膏', '88', 'images/goodsImg/609.jpg', '睫毛膏', '7891', '15800', '140', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('59', '粉底', '98', 'images/goodsImg/610.jpg', '粉底', '630', '5641', '60', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('60', '香水', '199', 'images/goodsImg/611.jpg', '香水', '633', '6502', '36', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('61', '水密码', '99', 'images/goodsImg/612.jpg', '水密码', '6512', '45960', '320', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('62', '粉底', '108', 'images/goodsImg/613.jpg', '粉底', '205', '900', '65', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('63', '曼秀雷敦', '198', 'images/goodsImg/614.jpg', '曼秀雷敦', '202', '6210', '102', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('64', '潘婷', '66', 'images/goodsImg/615.jpg', '洗发露', '5607', '2501', '229', null, '9', '正常', '12', '45');
INSERT INTO `jd_goods` VALUES ('65', '去油膏', '88', 'images/goodsImg/616.jpg', '去油膏', '810', '2056', '62', null, '9', '正常', '12', '51');
INSERT INTO `jd_goods` VALUES ('66', '洁面霜', '108', 'images/goodsImg/617.jpg', '洁面霜', '984', '5640', '520', null, '9', '正常', '12', '51');
INSERT INTO `jd_goods` VALUES ('67', '香皂', '48', 'images/goodsImg/618.jpg', '香皂', '5861', '9515', '649', null, '9', '正常', '12', '44');
INSERT INTO `jd_goods` VALUES ('68', '套装', '159', 'images/goodsImg/619.jpg', '套装', '8946', '15800', '551', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('69', '洁面乳', '123', 'images/goodsImg/625.jpg', '洁面乳', '853', '8410', '77', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('70', '护手霜', '136', 'images/goodsImg/626.jpg', '护手霜', '150', '640', '253', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('71', '洁面乳', '66', 'images/goodsImg/627.jpg', '洁面乳', '555', '2102', '50', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('72', '护肤霜', '188', 'images/goodsImg/629.jpg', '护肤霜', '510', '5102', '100', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('73', '护手霜', '88', 'images/goodsImg/630.jpg', '护手霜', '607', '8703', '250', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('74', '沐浴液', '88', 'images/goodsImg/631.jpg', '沐浴液', '6064', '18000', '201', null, '9', '正常', '12', '46');
INSERT INTO `jd_goods` VALUES ('75', '护手霜', '66', 'images/goodsImg/632.jpg', '护手霜', '653', '5206', '99', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('76', '套装', '108', 'images/goodsImg/634.jpg', '套装', '1210', '54032', '300', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('77', '香皂', '40', 'images/goodsImg/639.jpg', '香皂', '4065', '9025', '280', null, '9', '正常', '12', '44');
INSERT INTO `jd_goods` VALUES ('78', '美丽加芬', '56', 'images/goodsImg/641.jpg', '美丽加芬', '6250', '81655', '630', null, '9', '正常', '12', '51');
INSERT INTO `jd_goods` VALUES ('79', '护发套装', '120', 'images/goodsImg/642.jpg', '护发套装', '5620', '15806', '365', null, '9', '正常', '12', '45');
INSERT INTO `jd_goods` VALUES ('80', '自然堂', '59', 'images/goodsImg/644.jpg', '自然堂', '3103', '9262', '356', null, '9', '正常', '12', '46');
INSERT INTO `jd_goods` VALUES ('81', '香水', '200', 'images/goodsImg/645.jpg', '香水', '1250', '9525', '120', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('82', '香水', '189', 'images/goodsImg/646.jpg', '香水', '3601', '9152', '233', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('83', '口红', '188', 'images/goodsImg/647.jpg', '口红', '5144', '9810', '240', null, '9', '正常', '12', '50');
INSERT INTO `jd_goods` VALUES ('84', '套装', '289', 'images/goodsImg/648.jpg', '套装', '6541', '9874', '650', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('85', '护手霜', '108', 'images/goodsImg/649.jpg', '护手霜', '5262', '17020', '230', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('86', '口红', '177', 'images/goodsImg/651.jpg', '口红', '5102', '85140', '210', null, '9', '正常', '12', '50');
INSERT INTO `jd_goods` VALUES ('87', '口红', '198', 'images/goodsImg/652.jpg', '口红', '8945', '60323', '300', null, '9', '正常', '12', '50');
INSERT INTO `jd_goods` VALUES ('88', '护手霜', '288', 'images/goodsImg/653.jpg', '护手霜', '2520', '8120', '65', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('89', '洁面乳', '88', 'images/goodsImg/654.jpg', '洁面乳', '925', '5610', '410', null, '9', '正常', '12', '51');
INSERT INTO `jd_goods` VALUES ('90', '护手霜', '133', 'images/goodsImg/655.jpg', '护手霜', '302', '900', '150', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('91', '润肤霜', '98', 'images/goodsImg/656.jpg', '润肤霜', '1202', '9300', '32', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('92', '口红', '125', 'images/goodsImg/658.jpg', '口红', '612', '1503', '128', null, '9', '正常', '12', '50');
INSERT INTO `jd_goods` VALUES ('93', '面膜', '108', 'images/goodsImg/659.jpg', '面膜', '541', '5231', '305', null, '9', '正常', '12', '48');
INSERT INTO `jd_goods` VALUES ('94', '拉芳', '65', 'images/goodsImg/660.jpg', '拉芳', '851', '1808', '301', null, '9', '正常', '12', '45');
INSERT INTO `jd_goods` VALUES ('95', '香水', '52', 'images/goodsImg/661.jpg', '香水', '1236', '9512', '304', null, '9', '正常', '12', '49');
INSERT INTO `jd_goods` VALUES ('96', '口红', '88', 'images/goodsImg/663.jpg', '口红', '502', '3602', '250', null, '9', '正常', '12', '50');
INSERT INTO `jd_goods` VALUES ('97', '睫毛膏', '77', 'images/goodsImg/665.jpg', '睫毛膏', '2152', '63207', '600', null, '9', '正常', '12', '47');
INSERT INTO `jd_goods` VALUES ('100', '益达木糖醇', '7', 'images/goodsImg/3.jpg', '木糖醇', '800', '78941', '3000', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('101', '汇源开心果', '17', 'images/goodsImg/4.jpg', '开心果', '963', '54625', '5645', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('102', 'MAMA杯面', '4', 'images/goodsImg/5.jpg', '方便面', '4523', '456451', '4562', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('103', '融氏鲜胚玉米油', '68', 'images/goodsImg/6.jpg', '植物油', '4562', '9456', '6521', null, '1', '正常', '2', '3');
INSERT INTO `jd_goods` VALUES ('104', '美年达', '3', 'images/goodsImg/7.jpg', '碳酸饮料', '56412', '456864', '234654', null, '1', '正常', '3', '5');
INSERT INTO `jd_goods` VALUES ('105', '盘锦河蟹', '65', 'images/goodsImg/8.jpg', '盘锦河蟹', '1233', '45632', '9863', null, '1', '正常', '2', '8');
INSERT INTO `jd_goods` VALUES ('106', '谷韵稻米芝麻调和油', '74', 'images/goodsImg/9.jpg', '植物油', '1365', '45692', '2613', null, '1', '正常', '2', '3');
INSERT INTO `jd_goods` VALUES ('107', '夏进纯牛奶', '3', 'images/goodsImg/10.jpg', '纯牛奶', '45612', '145658', '4564131', null, '1', '正常', '1', '6');
INSERT INTO `jd_goods` VALUES ('108', '泸州老窖U6', '2888', 'images/goodsImg/11.jpg', '泸州老窖', '1236', '45641', '2365', null, '1', '正常', '2', '5');
INSERT INTO `jd_goods` VALUES ('109', '音华月饼超值包', '138', 'images/goodsImg/12.jpg', '月饼', '1563', '126452', '1563', null, '1', '正常', '2', '2');
INSERT INTO `jd_goods` VALUES ('110', '音华月饼', '45', 'images/goodsImg/13.jpg', '月饼', '12356', '126480', '6431', null, '1', '正常', '2', '2');
INSERT INTO `jd_goods` VALUES ('111', '泸州老窖', '678', 'images/goodsImg/11.jpg', '泸州老窖', '5461', '9866', '6321', null, '1', '正常', '2', '5');
INSERT INTO `jd_goods` VALUES ('112', '葵王菜籽油', '63', 'images/goodsImg/15.jpg', '植物油', '1436', '5613', '7641', null, '1', '正常', '2', '3');
INSERT INTO `jd_goods` VALUES ('113', '外婆开心果', '13', 'images/goodsImg/16.jpg', '开心果', '4694', '78945', '5943', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('114', '康师傅红烧牛肉面', '5', 'images/goodsImg/17.jpg', '方便面', '4613', '96541', '4561', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('115', '果之源木糖醇', '15', 'images/goodsImg/18.jpg', '木糖醇', '12363', '623279', '16543', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('116', 'Mentos木糖醇', '15', 'images/goodsImg/19.jpg', '木糖醇', '1612', '45633', '63124', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('117', '可乐雪碧超值包', '28', 'images/goodsImg/20.jpg', '碳酸饮料', '4632', '9563', '6315', null, '1', '正常', '3', '5');
INSERT INTO `jd_goods` VALUES ('118', '革面红烧牛肉面', '6', 'images/goodsImg/21.jpg', '方便面', '6318', '236459', '2333', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('119', '银鹭花生牛奶', '3', 'images/goodsImg/22.jpg', '饮料', '4563', '21315', '9632', null, '1', '正常', '1', '5');
INSERT INTO `jd_goods` VALUES ('120', '延世牧场牛奶', '5', 'images/goodsImg/23.jpg', '牛奶', '6321', '12363', '6563', null, '1', '正常', '1', '6');
INSERT INTO `jd_goods` VALUES ('121', 'WINGWAH月饼', '25', 'images/goodsImg/24.jpg', '月饼', '1233', '13161', '1631', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('122', '东港河蟹', '89', 'images/goodsImg/25.jpg', '河蟹', '2365', '15632', '1261', null, '1', '正常', '1', '8');
INSERT INTO `jd_goods` VALUES ('123', '蒙牛纯牛奶', '3', 'images/goodsImg/26.jpg', '纯牛奶', '6321', '26451', '3215', null, '1', '正常', '1', '6');
INSERT INTO `jd_goods` VALUES ('124', '金妹欢喜燕麦麦片', '33', 'images/goodsImg/27.jpg', '麦片', '1236', '6231', '5321', null, '1', '正常', '1', '7');
INSERT INTO `jd_goods` VALUES ('125', '欧巴红茶', '2', 'images/goodsImg/28.jpg', '红茶饮品', '123', '1231', '45612', null, '1', '正常', '1', '5');
INSERT INTO `jd_goods` VALUES ('126', '那年干果套装', '328', 'images/goodsImg/29.jpg', '干果', '1346', '45612', '12345', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('127', 'HOLA MILK', '6', 'images/goodsImg/30.jpg', '纯牛奶', '2512', '84654', '6532', null, '1', '正常', '1', '6');
INSERT INTO `jd_goods` VALUES ('128', 'WEET-BIX超值装', '55', 'images/goodsImg/36.jpg', '饼干', '2123', '45121', '6211', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('129', '猛料开心果', '20', 'images/goodsImg/37.jpg', '开心果', '1263', '54212', '4121', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('130', 'UNCLE TOBOY超值装', '65', 'images/goodsImg/38.jpg', '饼干', '2321', '65123', '3210', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('131', '福临门天然谷物调和油', '88', 'images/goodsImg/39.jpg', '植物油', '2123', '64121', '4121', null, '1', '正常', '1', '3');
INSERT INTO `jd_goods` VALUES ('132', '葫芦岛水稻蟹', '66', 'images/goodsImg/40.jpg', '螃蟹', '1236', '41256', '3871', null, '1', '正常', '1', '8');
INSERT INTO `jd_goods` VALUES ('133', '统一鲜橙多', '3', 'images/goodsImg/41.jpg', '橙汁', '4123', '74560', '6121', null, '1', '正常', '1', '5');
INSERT INTO `jd_goods` VALUES ('134', '杜康花瓷', '1688', 'images/goodsImg/42.jpg', '杜康花瓷酒', '1245', '64212', '2012', null, '1', '正常', '1', '5');
INSERT INTO `jd_goods` VALUES ('135', '国藏郎酒', '7898', 'images/goodsImg/43.jpg', '郎酒', '872', '41210', '899', null, '1', '正常', '1', '5');
INSERT INTO `jd_goods` VALUES ('136', '统一卤香牛肉面', '5', 'images/goodsImg/44.jpg', '方便面', '4120', '64133', '4150', null, '1', '正常', '1', '1');
INSERT INTO `jd_goods` VALUES ('137', '益达木糖醇', '7', 'images/goodsImg/45.jpg', '木糖醇', '7421', '62420', '5230', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('138', 'EMPERIAL', '12', 'images/goodsImg/46.jpg', '饼干', '1544', '23067', '1450', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('139', 'CalBee果奶', '27', 'images/goodsImg/31.jpg', '果奶', '2301', '89804', '3021', null, '1', '正常', '1', '6');
INSERT INTO `jd_goods` VALUES ('140', '来宾 河蟹', '88', 'images/goodsImg/32.jpg', '螃蟹', '1023', '52138', '884', null, '1', '正常', '1', '8');
INSERT INTO `jd_goods` VALUES ('141', 'Netual豆奶', '23', 'images/goodsImg/34.jpg', '大豆奶', '2013', '41217', '6523', null, '1', '正常', '1', '6');
INSERT INTO `jd_goods` VALUES ('142', 'Joson-Musli', '63', 'images/goodsImg/35.jpg', '干果', '2301', '87494', '6301', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('143', 'Apple-XM560显示器', '2230', 'images/goodsImg/47.jpg', '显示器', '841', '89411', '3201', null, '2', '正常', '16', '2');
INSERT INTO `jd_goods` VALUES ('144', 'Nowsmy硬盘', '650', 'images/goodsImg/48.jpg', '移动硬盘', '652', '45120', '4412', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('145', '双飞燕机械键盘', '230', 'images/goodsImg/49.jpg', '机械键盘', '412', '52120', '653', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('146', '爵士机械键盘', '263', 'images/goodsImg/50.jpg', '机械键盘', '123', '62100', '512', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('147', 'HTCWatch', '1200', 'images/goodsImg/51.jpg', '智能手表', '320', '98508', '258', null, '2', '正常', '16', '9');
INSERT INTO `jd_goods` VALUES ('148', 'SunDisk16G优盘', '65', 'images/goodsImg/52.jpg', '优盘', '560', '74210', '632', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('149', 'PNY64G硬盘', '128', 'images/goodsImg/53.jpg', '优盘', '421', '96320', '523', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('150', 'Iphone-4', '3626', 'images/goodsImg/54.jpg', '智能手机', '2360', '98745', '5623', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('151', '银河风云GBS-326路由器', '88', 'images/goodsImg/55.jpg', '路由器', '1265', '45120', '3260', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('152', 'LASI TB-698路由器', '69', 'images/goodsImg/56.jpg', '路由器', '892', '74562', '6352', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('153', 'Mouyoum移动电源', '99', 'images/goodsImg/57.jpg', '移动电源', '632', '5230', '1254', null, '2', '正常', '16', '13');
INSERT INTO `jd_goods` VALUES ('154', 'Dell n65打印机', '366', 'images/goodsImg/58.jpg', '打印机', '236', '4120', '898', null, '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('155', 'IT-CEO安卓电源插头', '24', 'images/goodsImg/59.jpg', '电源插头', '412', '6320', '630', null, '2', '正常', '16', '13');
INSERT INTO `jd_goods` VALUES ('156', 'IT-CEO苹果插头', '55', 'images/goodsImg/60.jpg', '电源插头', '365', '7749', '565', null, '2', '正常', '16', '13');
INSERT INTO `jd_goods` VALUES ('157', '华硕MSN1超薄本', '5688', 'images/goodsImg/61.jpg', '笔记本电脑', '263', '98655', '232', null, '2', '正常', '16', '11');
INSERT INTO `jd_goods` VALUES ('158', 'FAST  JQ-412路由器', '121', 'images/goodsImg/62.jpg', '路由器', '415', '6320', '410', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('159', 'TP-LINK GS-560路由器', '320', 'images/goodsImg/63.jpg', '路由器', '550', '7850', '740', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('160', 'Canon LK-63打印机', '565', 'images/goodsImg/64.jpg', '打印机', '652', '7866', '363', '', '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('161', 'SAMSUNS PRO5本', '6656', 'images/goodsImg/65.jpg', '笔记本电脑', '1532', '985622', '996', null, '2', '正常', '16', '11');
INSERT INTO `jd_goods` VALUES ('162', 'K-Floren  K-152笔记本', '5520', 'images/goodsImg/66.jpg', '笔记本电脑', '415', '6396', '360', null, '2', '正常', '16', '11');
INSERT INTO `jd_goods` VALUES ('163', '橡树 PPO-5打印机', '1232', 'images/goodsImg/67.jpg', '打印机', '325', '7415', '213', null, '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('164', 'VIKEN C5移动电源', '65', 'images/goodsImg/68.jpg', '移动电源', '220', '6320', '498', null, '2', '正常', '16', '13');
INSERT INTO `jd_goods` VALUES ('165', '小米 I8电话手表', '898', 'images/goodsImg/69.jpg', '智能手表', '312', '7846', '523', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('166', 'ASUS K63i 笔记本', '7453', 'images/goodsImg/70.jpg', '笔记本电脑', '523', '63320', '669', null, '2', '正常', '16', '11');
INSERT INTO `jd_goods` VALUES ('167', 'NEWMAN机械键盘', '232', 'images/goodsImg/71.jpg', '机械键盘', '362', '98632', '412', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('168', '惠普N-12', '632', 'images/goodsImg/72.jpg', '打印机', '475', '5230', '663', null, '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('169', 'BBK L64移动电话', '323', 'images/goodsImg/73.jpg', '移动电话', '166', '6966', '320', null, '2', '正常', '16', '9');
INSERT INTO `jd_goods` VALUES ('170', '小米  J-PAD', '3263', 'images/goodsImg/74.jpg', 'pad', '88', '63201', '236', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('171', 'Canon LK-66打印机', '235', 'images/goodsImg/75.jpg', '打印机', '653', '74511', '541', null, '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('172', 'BBK LO-5打印机', '441', 'images/goodsImg/76.jpg', '打印机', '666', '89563', '415', null, '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('173', 'DOY手环', '863', 'images/goodsImg/77.jpg', '手环', '151', '9652', '321', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('174', 'SNSU i-9移动硬盘', '98', 'images/goodsImg/78.jpg', '移动硬盘', '411', '5630', '589', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('175', '小米手环F1', '765', 'images/goodsImg/79.jpg', '手环', '223', '63210', '783', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('176', '小米手环F2', '823', 'images/goodsImg/80.jpg', '手环', '626', '74851', '654', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('177', '小米手环F3', '745', 'images/goodsImg/81.jpg', '手环', '778', '8451', '654', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('178', 'Lumix c53', '6541', 'images/goodsImg/82.jpg', '数码相机', '157', '96321', '740', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('179', 'Canonm12', '10021', 'images/goodsImg/83.jpg', '数码相机', '221', '9652', '415', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('180', 'Nikonp1', '8696', 'images/goodsImg/84.jpg', '数码相机', '456', '9674', '778', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('181', 'Sony Lens G', '3263', 'images/goodsImg/85.jpg', '数码相机', '423', '456120', '320', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('182', 'Nikon ct4', '26530', 'images/goodsImg/86.jpg', '单反', '256', '74152', '362', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('183', 'Canon hh5', '56320', 'images/goodsImg/87.jpg', '单反', '126', '78410', '56', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('184', 'Exilim FOUR3', '23632', 'images/goodsImg/88.jpg', '数码相机', '88', '98562', '145', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('185', 'SUMSUNG G6', '26354', 'images/goodsImg/89.jpg', '单反', '27', '108541', '99', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('186', 'Sony PE3.5', '16980', 'images/goodsImg/90.jpg', '单反', '66', '456121', '33', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('187', 'ZF G1.3', '8899', 'images/goodsImg/91.jpg', '单反', '79', '36320', '54', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('188', 'SUMSUNG  p3.6', '5600', 'images/goodsImg/92.jpg', '单反', '57', '98651', '64', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('189', 'Canon zx-2.3', '15120', 'images/goodsImg/93.jpg', '单反', '78', '45120', '35', null, '2', '正常', '16', '10');
INSERT INTO `jd_goods` VALUES ('190', '爵士  AK47', '230', 'images/goodsImg/94.jpg', '机械键盘', '123', '4574122', '360', null, '2', '正常', '16', '13');
INSERT INTO `jd_goods` VALUES ('191', '熊猫H1录音机', '340', 'images/goodsImg/95.jpg', '录音机', '200', '456451', '630', null, '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('192', '熊猫H2录音机', '123', 'images/goodsImg/96.jpg', '录音机', '440', '36501', '320', null, '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('193', '熊猫H3录音机', '541', 'images/goodsImg/97.jpg', '录音机', '663', '74510', '360', null, '2', '正常', '16', '14');
INSERT INTO `jd_goods` VALUES ('194', '魅族R4', '3654', 'images/goodsImg/98.jpg', '智能手机', '2210', '363010', '2030', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('195', 'HUAWEI i6', '3200', 'images/goodsImg/99.jpg', '智能手机', '1204', '96320', '3209', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('196', 'HUAWEI h1', '2250', 'images/goodsImg/100.jpg', '智能手机', '1560', '63265', '1410', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('197', 'HUAWEIi7', '3654', 'images/goodsImg/101.jpg', '智能手机', '3210', '489451', '1321', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('198', 'HUAWEI h1s', '3321', 'images/goodsImg/102.jpg', '智能手机', '3410', '63217', '1203', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('199', 'HTC g2', '1351', 'images/goodsImg/103.jpg', '智能手机', '1550', '96635', '451', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('200', 'HTC g3', '2652', 'images/goodsImg/104.jpg', '智能手机', '2896', '65523', '1256', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('201', 'HUAWEI 231', '1230', 'images/goodsImg/105.jpg', '智能手机', '3314', '57455', '6321', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('202', 'HUAWEI 550', '1456', 'images/goodsImg/106.jpg', '智能手机', '2360', '78451', '4100', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('203', 'HUAWEI 360P', '2301', 'images/goodsImg/107.jpg', '智能手机', '996', '46512', '3201', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('204', 'SUMSUNG G1', '3650', 'images/goodsImg/108.jpg', '智能手机', '3352', '464137', '1212', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('205', 'SUMSUNG G2', '3540', 'images/goodsImg/109.jpg', '智能手机', '2632', '45433', '2230', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('206', 'IPHONE 6/6 plus', '5288', 'images/goodsImg/110.jpg', '智能手机', '6562', '4564624', '1235', null, '2', '正常', '16', '12');
INSERT INTO `jd_goods` VALUES ('441', '消毒柜', '298', 'images/goodsImg/441.jpg', '消毒柜', '2120', '8742', '50', null, '7', '正常', '11', '37');
INSERT INTO `jd_goods` VALUES ('442', '灶台', '350', 'images/goodsImg/442.jpg', '灶台', '5412', '7988', '56', null, '7', '正常', '8', '40');
INSERT INTO `jd_goods` VALUES ('443', '油烟机', '780', 'images/goodsImg/443.jpg', '油烟机', '3542', '45648', '89', null, '7', '正常', '8', '40');
INSERT INTO `jd_goods` VALUES ('444', '靠枕', '56', 'images/goodsImg/445.jpg', '靠枕', '5678', '6789', '3000', null, '7', '正常', '7', '43');
INSERT INTO `jd_goods` VALUES ('445', '电钻', '200', 'images/goodsImg/446.jpg', '电钻', '2321', '4563', '102', null, '9', '正常', '9', '49');
INSERT INTO `jd_goods` VALUES ('446', '吹风机', '125', 'images/goodsImg/447.jpg', '吹风机', '1250', '4654', '2500', null, '7', '正常', '11', '38');
INSERT INTO `jd_goods` VALUES ('447', '灭火器', '300', 'images/goodsImg/448.jpg', '灭火器', '3845', '4965', '564', null, '7', '正常', '7', '43');
INSERT INTO `jd_goods` VALUES ('448', '导航仪', '1200', 'images/goodsImg/449.jpg', '导航仪', '6542', '8900', '5426', null, '7', '正常', '11', '43');
INSERT INTO `jd_goods` VALUES ('449', '车用座位', '780', 'images/goodsImg/500.jpg', '车用座位', '2225', '6348', '4576', null, '7', '正常', '7', '43');
INSERT INTO `jd_goods` VALUES ('450', '吹风机', '125', 'images/goodsImg/502.jpg', '吹风机', '2546', '4569', '2500', null, '7', '正常', '11', '38');
INSERT INTO `jd_goods` VALUES ('451', '剃须刀', '278', 'images/goodsImg/503.jpg', '剃须刀', '1523', '1825', '1562', null, '9', '正常', '14', '51');
INSERT INTO `jd_goods` VALUES ('452', '剃须刀', '300', 'images/goodsImg/504.jpg', '剃须刀', '1568', '2372', '1256', null, '9', '正常', '14', '51');
INSERT INTO `jd_goods` VALUES ('453', '剃须刀', '265', 'images/goodsImg/505.jpg', '剃须刀', '1789', '2566', '1365', null, '9', '正常', '14', '51');
INSERT INTO `jd_goods` VALUES ('454', '微波炉', '389', 'images/goodsImg/506.jpg', '微波炉', '2569', '3564', '1356', null, '7', '正常', '7', '42');
INSERT INTO `jd_goods` VALUES ('455', '微波炉', '398', 'images/goodsImg/507.jpg', '微波炉', '2345', '3456', '1250', null, '7', '正常', '7', '42');
INSERT INTO `jd_goods` VALUES ('456', '热水壶', '100', 'images/goodsImg/508.jpg', '热水壶', '4569', '6320', '5600', null, '7', '正常', '8', '42');
INSERT INTO `jd_goods` VALUES ('457', '吹风机', '120', 'images/goodsImg/509.jpg', '吹风机', '568', '1425', '897', null, '7', '正常', '11', '38');
INSERT INTO `jd_goods` VALUES ('458', '吹风机', '120', 'images/goodsImg/510.jpg', '吹风机', '789', '1102', '745', null, '7', '正常', '11', '89');
INSERT INTO `jd_goods` VALUES ('459', '剃须刀', '260', 'images/goodsImg/511.jpg', '剃须刀', '890', '1251', '1250', null, '9', '正常', '14', '51');
INSERT INTO `jd_goods` VALUES ('460', '电风扇', '88', 'images/goodsImg/512.jpg', '电风扇', '785', '1245', '785', null, '7', '正常', '11', '38');
INSERT INTO `jd_goods` VALUES ('461', '电风扇', '150', 'images/goodsImg/513.jpg', '电风扇', '987', '1236', '1245', null, '7', '正常', '11', '38');
INSERT INTO `jd_goods` VALUES ('462', '油烟机', '526', 'images/goodsImg/514.jpg', '油烟机', '564', '789', '456', null, '7', '正常', '8', '42');
INSERT INTO `jd_goods` VALUES ('463', '电饭锅', '256', 'images/goodsImg/515.jpg', '电饭锅', '1256', '1897', '1436', null, '7', '正常', '11', '42');
INSERT INTO `jd_goods` VALUES ('464', '复印机', '1200', 'images/goodsImg/516.jpg', '复印机', '98', '258', '256', null, '2', '正常', '11', '14');
INSERT INTO `jd_goods` VALUES ('465', '摄影机', '1000', 'images/goodsImg/517.jpg', '摄影机', '1245', '2464', '1236', null, '2', '正常', '11', '10');
INSERT INTO `jd_goods` VALUES ('466', '车用踏垫', '218', 'images/goodsImg/518.jpg', '车用踏垫', '1256', '1654', '1546', null, '7', '正常', '11', '43');
INSERT INTO `jd_goods` VALUES ('467', '电风扇', '125', 'images/goodsImg/519.jpg', '电风扇', '654', '987', '624', null, '7', '正常', '11', '38');
INSERT INTO `jd_goods` VALUES ('468', '车用踏垫', '126', 'images/goodsImg/520.jpg', '车用踏垫', '567', '891', '1025', null, '7', '正常', '11', '43');
INSERT INTO `jd_goods` VALUES ('469', '车用靠垫', '245', 'images/goodsImg/521.jpg', '车用靠垫', '456', '789', '458', null, '7', '正常', '11', '43');
INSERT INTO `jd_goods` VALUES ('470', '韩版夹克', '398', 'images/goodsImg/522.jpg', '韩版夹克', '567', '657', '1256', null, '8', '正常', '14', '57');
INSERT INTO `jd_goods` VALUES ('471', '男士外衣', '256', 'images/goodsImg/523.jpg', '男士外衣', '589', '760', '598', null, '8', '正常', '14', '57');
INSERT INTO `jd_goods` VALUES ('472', '男士外衣', '245', 'images/goodsImg/524.jpg', '男士外衣', '789', '988', '568', null, '8', '正常', '14', '57');
INSERT INTO `jd_goods` VALUES ('473', '旗袍', '568', 'images/goodsImg/525.jpg', '旗袍', '894', '1257', '786', null, '8', '正常', '12', '52');
INSERT INTO `jd_goods` VALUES ('474', '钟', '98', 'images/goodsImg/526.jpg', '钟', '256', '547', '245', null, '5', '正常', '9', '28');
INSERT INTO `jd_goods` VALUES ('475', '女士外衣', '289', 'images/goodsImg/527.jpg', '女士外衣', '456', '560', '558', null, '8', '正常', '12', '52');
INSERT INTO `jd_goods` VALUES ('476', '女士外衣', '298', 'images/goodsImg/528.jpg', '女士外衣', '565', '685', '456', null, '8', '正常', '12', '52');
INSERT INTO `jd_goods` VALUES ('477', '女士手表', '198', 'images/goodsImg/530.jpg', '女士手表', '452', '546', '554', null, '7', '正常', '9', '38');
INSERT INTO `jd_goods` VALUES ('478', '男士手表', '198', 'images/goodsImg/531.jpg', '男士手表', '567', '669', '542', null, '9', '正常', '14', '51');
INSERT INTO `jd_goods` VALUES ('479', '女士戒指', '555', 'images/goodsImg/532.jpg', '女士戒指', '456', '987', '569', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('480', '女士戒指', '589', 'images/goodsImg/533.jpg', '女士戒指', '456', '875', '1235', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('481', '女士吊坠', '1250', 'images/goodsImg/534.jpg', '女士吊坠', '589', '689', '456', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('482', '女士戒指', '654', 'images/goodsImg/535.jpg', '女士戒指', '654', '789', '564', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('483', '女士戒指', '568', 'images/goodsImg/536.jpg', '女士戒指', '568', '987', '459', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('484', '女士戒指', '568', 'images/goodsImg/537.jpg', '女士戒指', '589', '987', '584', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('485', '女士吊坠', '548', 'images/goodsImg/538.jpg', '女士吊坠', '568', '958', '456', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('486', '女士吊坠', '598', 'images/goodsImg/539.jpg', '女士吊坠', '452', '687', '569', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('487', '女士吊坠', '625', 'images/goodsImg/540.jpg', '女士吊坠', '458', '987', '654', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('488', '女士戒指', '568', 'images/goodsImg/541.jpg', '女士戒指', '458', '625', '452', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('489', '女士戒指', '548', 'images/goodsImg/542.jpg', '女士戒指', '654', '985', '456', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('490', '女士吊坠', '459', 'images/goodsImg/543.jpg', '女士吊坠', '549', '698', '485', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('491', '女士手表', '198', 'images/goodsImg/544.jpg', '女士手表', '548', '897', '458', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('492', '女士手表', '198', 'images/goodsImg/546.jpg', '女士手表', '542', '689', '654', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('493', '女士吊坠', '546', 'images/goodsImg/547.jpg', '女士吊坠', '568', '987', '456', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('494', '女士吊坠', '569', 'images/goodsImg/548.jpg', '女士吊坠', '579', '759', '472', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('495', '女士手表', '286', 'images/goodsImg/549.jpg', '女士手表', '429', '625', '356', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('496', '女士吊坠', '598', 'images/goodsImg/550.jpg', '女士吊坠', '498', '665', '514', null, '3', '正常', '12', '18');
INSERT INTO `jd_goods` VALUES ('587', '十字绣挂画', '22', 'images/goodsImg/331.jpg', '十字绣挂画', '5924', '5078', '7224', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('588', '檀香茶几', '40', 'images/goodsImg/332.jpg', '檀香茶几', '5168', '7439', '5581', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('589', '碎花雨伞', '71', 'images/goodsImg/333.jpg', '碎花雨伞', '5196', '9424', '5533', null, '5', '正常', '9', '28');
INSERT INTO `jd_goods` VALUES ('590', '个性吊灯', '75', 'images/goodsImg/334.jpg', '个性吊灯', '5637', '6674', '7239', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('591', '迎客松十字绣', '19', 'images/goodsImg/335.jpg', '迎客松十字绣', '5738', '9625', '6457', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('592', '真皮沙发', '89', 'images/goodsImg/336.jpg', '真皮沙发', '5040', '6706', '5201', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('593', '真皮沙发', '99', 'images/goodsImg/337.jpg', '真皮沙发', '5434', '9615', '9690', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('594', '不锈钢炒锅', '28', 'images/goodsImg/338.jpg', '不锈钢炒锅', '5529', '5294', '6405', null, '5', '正常', '9', '25');
INSERT INTO `jd_goods` VALUES ('595', '灯头', '30', 'images/goodsImg/339.jpg', '灯头', '5910', '6539', '5074', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('596', '装饰柜', '58', 'images/goodsImg/340.jpg', '装饰柜', '5626', '7493', '8590', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('597', '檀香长凳', '32', 'images/goodsImg/341.jpg', '檀香长凳', '5242', '6624', '9436', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('598', '床头柜', '53', 'images/goodsImg/342.jpg', '床头柜', '5871', '8171', '9930', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('599', '真皮沙发', '52', 'images/goodsImg/344.jpg', '真皮沙发', '5234', '5962', '8467', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('600', '婴儿护肤湿巾', '41', 'images/goodsImg/346.jpg', '婴儿护肤湿巾', '5792', '6415', '5498', null, '6', '正常', '10', '31');
INSERT INTO `jd_goods` VALUES ('601', '婴儿护肤纸巾', '77', 'images/goodsImg/347.jpg', '婴儿护肤纸巾', '5903', '8417', '9427', null, '6', '正常', '10', '31');
INSERT INTO `jd_goods` VALUES ('602', '宝宝裙子', '71', 'images/goodsImg/348.jpg', '宝宝裙子', '5469', '8331', '8340', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('603', '帮宝适', '36', 'images/goodsImg/349.jpg', '帮宝适', '5919', '5073', '9644', null, '6', '正常', '10', '31');
INSERT INTO `jd_goods` VALUES ('604', '养亲亲奶粉', '86', 'images/goodsImg/351.jpg', '养亲亲奶粉', '5576', '5525', '7058', null, '6', '正常', '10', '30');
INSERT INTO `jd_goods` VALUES ('605', '连衣裙', '35', 'images/goodsImg/352.jpg', '连衣裙', '5256', '6721', '7484', null, '8', '正常', '13', '55');
INSERT INTO `jd_goods` VALUES ('606', '婴儿床', '60', 'images/goodsImg/354.jpg', '婴儿床', '5866', '7684', '6469', null, '6', '正常', '10', '35');
INSERT INTO `jd_goods` VALUES ('607', '宝宝裙子', '48', 'images/goodsImg/355.jpg', '宝宝裙子', '5696', '8364', '9035', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('608', '宝宝裙子', '90', 'images/goodsImg/358.jpg', '宝宝裙子', '5551', '5567', '6401', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('609', '宝宝裙子', '84', 'images/goodsImg/359.jpg', '宝宝裙子', '5663', '8393', '9925', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('610', '宝宝夏衣裤', '70', 'images/goodsImg/360.jpg', '宝宝夏衣裤', '5951', '7144', '8023', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('611', '宝宝夏衣裤', '60', 'images/goodsImg/361.jpg', '宝宝夏衣裤', '5855', '7404', '9117', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('612', '睡衣', '37', 'images/goodsImg/362.jpg', '睡衣', '5003', '6240', '9027', null, '6', '正常', '10', '33');
INSERT INTO `jd_goods` VALUES ('613', '宝宝玩具', '82', 'images/goodsImg/364.jpg', '宝宝玩具', '5600', '5629', '8887', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('614', '豹纹外衣', '70', 'images/goodsImg/365.jpg', '豹纹外衣', '5778', '8982', '8087', null, '8', '正常', '13', '52');
INSERT INTO `jd_goods` VALUES ('615', '婴儿床', '64', 'images/goodsImg/368.jpg', '婴儿床', '5373', '7283', '6567', null, '6', '正常', '10', '35');
INSERT INTO `jd_goods` VALUES ('616', '宝宝玩具琴', '56', 'images/goodsImg/369.jpg', '宝宝玩具琴', '5357', '5306', '5558', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('617', '婴儿护肤霜', '34', 'images/goodsImg/371.jpg', '婴儿护肤霜', '5366', '9439', '5498', null, '6', '正常', '10', '32');
INSERT INTO `jd_goods` VALUES ('618', '孕妇装', '80', 'images/goodsImg/372.jpg', '孕妇装', '5359', '9179', '7074', null, '6', '正常', '10', '33');
INSERT INTO `jd_goods` VALUES ('619', '婴儿床', '13', 'images/goodsImg/373.jpg', '婴儿床', '5615', '6085', '5026', null, '6', '正常', '10', '35');
INSERT INTO `jd_goods` VALUES ('620', '婴儿床', '25', 'images/goodsImg/374.jpg', '婴儿床', '5806', '9922', '8227', null, '6', '正常', '10', '35');
INSERT INTO `jd_goods` VALUES ('621', '婴儿床', '29', 'images/goodsImg/375.jpg', '婴儿床', '5230', '6326', '5475', null, '6', '正常', '10', '35');
INSERT INTO `jd_goods` VALUES ('622', '宝宝玩具琴', '64', 'images/goodsImg/376.jpg', '宝宝玩具琴', '5243', '7032', '7997', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('623', '婴儿沙发', '27', 'images/goodsImg/378.jpg', '婴儿沙发', '5204', '8475', '6303', null, '6', '正常', '10', '35');
INSERT INTO `jd_goods` VALUES ('624', '婴儿奶粉', '93', 'images/goodsImg/379.jpg', '婴儿奶粉', '5873', '8128', '7659', null, '6', '正常', '10', '30');
INSERT INTO `jd_goods` VALUES ('625', '尿不湿', '5', 'images/goodsImg/380.jpg', '尿不湿', '5366', '8601', '7139', null, '6', '正常', '10', '31');
INSERT INTO `jd_goods` VALUES ('626', '婴儿玩具鼓', '83', 'images/goodsImg/381.jpg', '婴儿玩具鼓', '5121', '5201', '5101', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('627', '婴儿护肤乳液', '66', 'images/goodsImg/382.jpg', '婴儿护肤乳液', '5097', '7661', '9620', null, '6', '正常', '10', '32');
INSERT INTO `jd_goods` VALUES ('628', '尿不湿', '53', 'images/goodsImg/383.jpg', '尿不湿', '5842', '6270', '8934', null, '6', '正常', '10', '31');
INSERT INTO `jd_goods` VALUES ('629', '具因美奶粉', '12', 'images/goodsImg/386.jpg', '具因美奶粉', '5574', '5933', '5470', null, '6', '正常', '10', '30');
INSERT INTO `jd_goods` VALUES ('630', '婴儿奶粉', '84', 'images/goodsImg/387.jpg', '婴儿奶粉', '5043', '6852', '9485', null, '6', '正常', '10', '30');
INSERT INTO `jd_goods` VALUES ('631', '巧克力', '66', 'images/goodsImg/388.jpg', '巧克力', '5936', '10047', '5255', null, '1', '正常', '1', '30');
INSERT INTO `jd_goods` VALUES ('632', '婴儿玩具', '53', 'images/goodsImg/390.jpg', '婴儿玩具', '5673', '9366', '8802', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('633', '婴儿玩具', '69', 'images/goodsImg/391.jpg', '婴儿玩具', '5944', '9875', '9550', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('634', '婴儿玩具', '82', 'images/goodsImg/392.jpg', '婴儿玩具', '5050', '5569', '5842', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('635', '婴儿衣裤', '25', 'images/goodsImg/393.jpg', '婴儿衣裤', '5233', '5742', '9291', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('636', '婴儿玩具床', '93', 'images/goodsImg/395.jpg', '婴儿玩具床', '5524', '6052', '8925', null, '6', '正常', '10', '35');
INSERT INTO `jd_goods` VALUES ('637', '儿童数学玩具', '51', 'images/goodsImg/396.jpg', '儿童数学玩具', '5416', '5058', '6282', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('638', '脆脆香食品', '4', 'images/goodsImg/397.jpg', '脆脆香食品', '5463', '5749', '8086', null, '1', '正常', '1', '30');
INSERT INTO `jd_goods` VALUES ('639', '婴儿床', '95', 'images/goodsImg/398.jpg', '婴儿床', '5393', '7296', '8977', null, '6', '正常', '10', '35');
INSERT INTO `jd_goods` VALUES ('640', '施恩奶粉', '97', 'images/goodsImg/400.jpg', '施恩奶粉', '5389', '7415', '5618', null, '6', '正常', '10', '30');
INSERT INTO `jd_goods` VALUES ('641', '宝宝熊', '94', 'images/goodsImg/401.jpg', '宝宝熊', '5023', '6668', '6566', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('642', '儿童玩具', '62', 'images/goodsImg/403.jpg', '儿童玩具', '5014', '8371', '8845', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('643', '尿不湿', '53', 'images/goodsImg/407.jpg', '尿不湿', '5266', '7219', '5833', null, '6', '正常', '10', '31');
INSERT INTO `jd_goods` VALUES ('644', '婴儿开裆裤', '49', 'images/goodsImg/408.jpg', '婴儿开裆裤', '5648', '9632', '9115', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('645', '宝宝护肤液', '49', 'images/goodsImg/409.jpg', '宝宝护肤液', '5260', '8434', '8912', null, '6', '正常', '10', '32');
INSERT INTO `jd_goods` VALUES ('646', '儿童套装衣服', '97', 'images/goodsImg/411.jpg', '儿童套装衣服', '5940', '6448', '8297', null, '6', '正常', '10', '34');
INSERT INTO `jd_goods` VALUES ('647', '婴儿玩具', '49', 'images/goodsImg/412.jpg', '婴儿玩具', '5900', '5884', '8555', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('648', '儿童玩具', '26', 'images/goodsImg/413.jpg', '儿童玩具', '5142', '8989', '8390', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('649', '婴儿玩具', '68', 'images/goodsImg/414.jpg', '婴儿玩具', '5118', '8930', '5869', null, '6', '正常', '10', '36');
INSERT INTO `jd_goods` VALUES ('650', '美的洗衣机', '500', 'images/goodsImg/417.jpg', '美的洗衣机', '5660', '8499', '8445', null, '7', '正常', '9', '40');
INSERT INTO `jd_goods` VALUES ('651', '轿车坐垫', '88', 'images/goodsImg/418.jpg', '轿车坐垫', '5193', '8318', '9776', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('652', '轿车换挡套', '30', 'images/goodsImg/419.jpg', '轿车换挡套', '5383', '6970', '5044', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('653', '轿车换挡套', '53', 'images/goodsImg/420.jpg', '轿车换挡套', '5502', '6922', '5229', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('654', '微波炉', '150', 'images/goodsImg/421.jpg', '微波炉', '5432', '8939', '6219', null, '7', '正常', '9', '42');
INSERT INTO `jd_goods` VALUES ('655', '剩茶水具', '99', 'images/goodsImg/422.jpg', '剩茶水具', '5199', '9373', '5590', null, '7', '正常', '9', '42');
INSERT INTO `jd_goods` VALUES ('656', '美的冰箱', '450', 'images/goodsImg/423.jpg', '美的冰箱', '5390', '6622', '9312', null, '7', '正常', '9', '40');
INSERT INTO `jd_goods` VALUES ('657', '剩碗家具', '61', 'images/goodsImg/424.jpg', '剩碗家具', '5305', '7568', '6264', null, '7', '正常', '9', '42');
INSERT INTO `jd_goods` VALUES ('658', '智能电视机', '5500', 'images/goodsImg/425.jpg', '智能电视机', '5797', '6751', '8552', null, '7', '正常', '9', '40');
INSERT INTO `jd_goods` VALUES ('659', '雨刷', '69', 'images/goodsImg/426.jpg', '雨刷', '5962', '5094', '9056', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('660', '智能电视机', '6300', 'images/goodsImg/427.jpg', '智能电视机', '5256', '5971', '9338', null, '7', '正常', '9', '40');
INSERT INTO `jd_goods` VALUES ('661', '智能电视机', '8800', 'images/goodsImg/428.jpg', '智能电视机', '5126', '9562', '6030', null, '7', '正常', '9', '40');
INSERT INTO `jd_goods` VALUES ('662', '美的电饭煲', '430', 'images/goodsImg/429.jpg', '美的电饭煲', '5975', '6438', '7083', null, '7', '正常', '17', '42');
INSERT INTO `jd_goods` VALUES ('663', '按摩椅', '300', 'images/goodsImg/430.jpg', '按摩椅', '5114', '8563', '5800', null, '7', '正常', '9', '43');
INSERT INTO `jd_goods` VALUES ('664', '纸筒', '68', 'images/goodsImg/431.jpg', '纸筒', '5382', '9984', '5429', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('665', '轿车座椅', '790', 'images/goodsImg/432.jpg', '轿车座椅', '5267', '5709', '5167', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('666', '轿车机油', '410', 'images/goodsImg/433.jpg', '轿车机油', '5714', '5497', '9850', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('667', '美的电饭煲', '300', 'images/goodsImg/434.jpg', '美的电饭煲', '5251', '9553', '5262', null, '7', '正常', '9', '42');
INSERT INTO `jd_goods` VALUES ('668', '榨果机', '81', 'images/goodsImg/435.jpg', '榨果机', '5731', '5374', '8939', null, '7', '正常', '9', '42');
INSERT INTO `jd_goods` VALUES ('669', '气嘴', '410', 'images/goodsImg/436.jpg', '气嘴', '5771', '9374', '7610', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('670', '刹车片', '359', 'images/goodsImg/437.jpg', '刹车片', '5923', '8196', '6902', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('671', '雪佛兰风向盘', '5300', 'images/goodsImg/438.jpg', '雪佛兰风向盘', '5705', '8078', '6757', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('672', '导航', '610', 'images/goodsImg/439.jpg', '导航', '5898', '5987', '7065', null, '7', '正常', '17', '43');
INSERT INTO `jd_goods` VALUES ('673', '机车轮胎', '1200', 'images/goodsImg/440.jpg', '机车轮胎', '5940', '8730', '7403', null, '7', '正常', '14', '43');
INSERT INTO `jd_goods` VALUES ('674', '阿迪达斯-男鞋', '250', 'images/goodsImg/220.jpg', '阿迪达斯-男鞋', '1500', '54654', '2000', null, '3', '正常', '6', '20');
INSERT INTO `jd_goods` VALUES ('675', '361男鞋', '30', 'images/goodsImg/221.jpg', '361男鞋', '2000', '45465', '3000', null, '3', '正常', '6', '20');
INSERT INTO `jd_goods` VALUES ('676', '男士单肩包', '80', 'images/goodsImg/222.jpg', '男士单肩包', '1500', '15411', '5000', null, '3', '正常', '5', '16');
INSERT INTO `jd_goods` VALUES ('677', '男生黑鞋', '150', 'images/goodsImg/223.jpg', '男生黑鞋', '1550', '15511', '11333', null, '3', '正常', '6', '20');
INSERT INTO `jd_goods` VALUES ('678', '男生黑皮小包', '250', 'images/goodsImg/224.jpg', '男生黑皮小包', '1540', '48551', '26511', null, '3', '正常', '5', '16');
INSERT INTO `jd_goods` VALUES ('679', '潮流小包', '236', 'images/goodsImg/225.jpg', '潮流小包', '1543', '45541', '4500', null, '3', '正常', '5', '16');
INSERT INTO `jd_goods` VALUES ('680', '白色小鞋', '263', 'images/goodsImg/226.jpg', '白色小鞋', '1511', '25151', '5520', null, '3', '正常', '6', '20');
INSERT INTO `jd_goods` VALUES ('681', '抱枕', '20', 'images/goodsImg/227.jpg', '抱枕', '1523', '13236', '5631', null, '3', '正常', '6', '16');
INSERT INTO `jd_goods` VALUES ('682', '钱包', '50', 'images/goodsImg/228.jpg', '钱包', '1236', '1523', '2536', null, '3', '正常', '14', '16');
INSERT INTO `jd_goods` VALUES ('683', '粉红女包', '650', 'images/goodsImg/229.jpg', '粉红女包', '1236', '1527', '5632', null, '3', '正常', '5', '15');
INSERT INTO `jd_goods` VALUES ('684', '手提女包', '500', 'images/goodsImg/230.jpg', '手提女包', '2511', '2541', '5545', null, '3', '正常', '13', '15');
INSERT INTO `jd_goods` VALUES ('685', '按摩枕头', '100', 'images/goodsImg/231.jpg', '按摩枕头', '2555', '5223', '5112', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('686', '零钱包', '50', 'images/goodsImg/232.jpg', '零钱包', '2354', '5632', '5222', null, '3', '正常', '5', '18');
INSERT INTO `jd_goods` VALUES ('687', '女包', '562', 'images/goodsImg/233.jpg', '女包', '5222', '6526', '8544', null, '3', '正常', '5', '15');
INSERT INTO `jd_goods` VALUES ('688', '红色女鞋', '123', 'images/goodsImg/234.jpg', '红色女鞋', '5112', '2655', '6521', null, '3', '正常', '13', '19');
INSERT INTO `jd_goods` VALUES ('689', '电脑包', '80', 'images/goodsImg/235.jpg', '电脑包', '1226', '5512', '5454', null, '3', '正常', '5', '17');
INSERT INTO `jd_goods` VALUES ('690', '男生单肩包', '203', 'images/goodsImg/236.jpg', '男生单肩包', '1235', '2356', '1254', null, '3', '正常', '5', '16');
INSERT INTO `jd_goods` VALUES ('691', '清凉布鞋', '120', 'images/goodsImg/237.jpg', '清凉布鞋', '1555', '2541', '5562', null, '3', '正常', '6', '20');
INSERT INTO `jd_goods` VALUES ('692', '透气男鞋', '200', 'images/goodsImg/238.jpg', '透气男鞋', '1256', '2365', '2553', null, '3', '正常', '6', '20');
INSERT INTO `jd_goods` VALUES ('693', '潮流男鞋', '300', 'images/goodsImg/239.jpg', '潮流男鞋', '1236', '2366', '5631', null, '3', '正常', '6', '20');
INSERT INTO `jd_goods` VALUES ('694', '女鞋', '200', 'images/goodsImg/240.jpg', '女鞋', '1365', '1245', '5637', null, '3', '正常', '6', '19');
INSERT INTO `jd_goods` VALUES ('695', '女生包包', '256', 'images/goodsImg/241.jpg', '女生包包', '1254', '2365', '4551', null, '3', '正常', '5', '15');
INSERT INTO `jd_goods` VALUES ('696', '行旅箱', '150', 'images/goodsImg/242.jpg', '行旅箱', '1254', '2366', '4125', null, '3', '正常', '5', '17');
INSERT INTO `jd_goods` VALUES ('697', '背包', '120', 'images/goodsImg/243.jpg', '背包', '1463', '2351', '1245', null, '3', '正常', '5', '15');
INSERT INTO `jd_goods` VALUES ('698', '女生钱包', '80', 'images/goodsImg/244.jpg', '女生钱包', '1563', '2418', '2366', null, '3', '正常', '5', '15');
INSERT INTO `jd_goods` VALUES ('699', '消毒液', '56', 'images/goodsImg/245.jpg', '消毒液', '1523', '2563', '1452', null, '4', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('700', '保鲜膜', '8', 'images/goodsImg/246.jpg', '保鲜膜', '1552', '3254', '2545', null, '4', '正常', '8', '58');
INSERT INTO `jd_goods` VALUES ('701', '锅', '50', 'images/goodsImg/247.jpg', '锅', '1512', '5111', '32441', null, '4', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('702', '茶具', '200', 'images/goodsImg/248.jpg', '茶具', '2112', '5121', '2111', null, '5', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('703', '茶杯', '250', 'images/goodsImg/249.jpg', '茶杯', '2415', '5362', '2554', null, '5', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('704', '消毒液', '20', 'images/goodsImg/250.jpg', '消毒液', '1542', '2541', '2154', null, '4', '正常', '8', '60');
INSERT INTO `jd_goods` VALUES ('705', '煮蛋锅', '180', 'images/goodsImg/251.jpg', '煮蛋锅', '1122', '1541', '1544', null, '7', '正常', '8', '41');
INSERT INTO `jd_goods` VALUES ('706', '卫生纸', '15', 'images/goodsImg/252.jpg', '卫生纸', '26522', '25116', '23215', '', '5', '正常', '9', '21');
INSERT INTO `jd_goods` VALUES ('707', '高压锅', '250', 'images/goodsImg/253.jpg', '高压锅', '2151', '2318', '2211', null, '7', '正常', '8', '42');
INSERT INTO `jd_goods` VALUES ('708', '洗衣粉', '8', 'images/goodsImg/254.jpg', '洗衣粉', '2143', '3511', '8512', null, '4', '正常', '9', '60');
INSERT INTO `jd_goods` VALUES ('709', '奥妙洗衣粉', '8', 'images/goodsImg/255.jpg', '奥妙洗衣粉', '21222', '24525', '221455', null, '4', '正常', '9', '60');
INSERT INTO `jd_goods` VALUES ('710', '拖布', '50', 'images/goodsImg/256.jpg', '拖布', '2241', '8565', '2411', null, '4', '正常', '8', '63');
INSERT INTO `jd_goods` VALUES ('711', '拖把', '30', 'images/goodsImg/257.jpg', '拖把', '5512', '6552', '2412', null, '4', '正常', '8', '63');
INSERT INTO `jd_goods` VALUES ('712', '拖把', '29', 'images/goodsImg/258.jpg', '拖把', '2211', '5414', '3621', null, '4', '正常', '8', '63');
INSERT INTO `jd_goods` VALUES ('713', '立白洗衣粉', '8', 'images/goodsImg/259.jpg', '立白洗衣粉', '55122', '3275', '6511', null, '4', '正常', '9', '60');
INSERT INTO `jd_goods` VALUES ('714', '空气清新剂', '6', 'images/goodsImg/260.jpg', '空气清新剂', '2541', '9632', '2451', null, '5', '正常', '9', '24');
INSERT INTO `jd_goods` VALUES ('715', '空气清新剂', '7', 'images/goodsImg/261.jpg', '空气清新剂', '1246', '3246', '3652', null, '5', '正常', '9', '24');
INSERT INTO `jd_goods` VALUES ('716', '卫生纸', '12', 'images/goodsImg/262.jpg', '卫生纸', '1254', '4865', '2365', null, '5', '正常', '9', '21');
INSERT INTO `jd_goods` VALUES ('717', '微波炉', '350', 'images/goodsImg/263.jpg', '微波炉', '1522', '2416', '5111', null, '7', '正常', '8', '37');
INSERT INTO `jd_goods` VALUES ('718', '卫生纸', '5', 'images/goodsImg/264.jpg', '卫生纸', '11235', '11542', '12325', null, '5', '正常', '9', '21');
INSERT INTO `jd_goods` VALUES ('719', '卫生纸', '6', 'images/goodsImg/265.jpg', '卫生纸', '5512', '12452', '5511', null, '5', '正常', '9', '21');
INSERT INTO `jd_goods` VALUES ('720', '卫生纸', '6', 'images/goodsImg/266.jpg', '卫生纸', '5221', '5124', '25412', null, '5', '正常', '9', '21');
INSERT INTO `jd_goods` VALUES ('721', '空气清新剂', '8', 'images/goodsImg/267.jpg', '空气清新剂', '5512', '4123', '2146', null, '5', '正常', '9', '24');
INSERT INTO `jd_goods` VALUES ('722', '茶具', '300', 'images/goodsImg/268.jpg', '茶具', '2143', '1236', '3214', null, '5', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('723', '热水器', '80', 'images/goodsImg/269.jpg', '热水器', '2146', '1234', '2231', null, '5', '正常', '8', '25');
INSERT INTO `jd_goods` VALUES ('724', '洗衣液', '20', 'images/goodsImg/270.jpg', '洗衣液', '5214', '3652', '2145', null, '5', '正常', '8', '22');
INSERT INTO `jd_goods` VALUES ('725', '垃圾袋', '5', 'images/goodsImg/271.jpg', '垃圾袋', '2411', '2511', '6325', null, '5', '正常', '8', '24');
INSERT INTO `jd_goods` VALUES ('726', '消毒液', '30', 'images/goodsImg/272.jpg', '消毒液', '2145', '2541', '2541', null, '5', '正常', '8', '23');
INSERT INTO `jd_goods` VALUES ('727', '消毒液', '25', 'images/goodsImg/273.jpg', '消毒液', '2512', '3251', '1254', null, '5', '正常', '8', '23');
INSERT INTO `jd_goods` VALUES ('728', '奥妙洗衣粉', '9', 'images/goodsImg/274.jpg', '奥妙洗衣粉', '2211', '2242', '3361', null, '4', '正常', '9', '60');
INSERT INTO `jd_goods` VALUES ('729', '茶具', '200', 'images/goodsImg/275.jpg', '茶具', '1245', '1324', '1234', null, '5', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('730', '杀虫剂', '6', 'images/goodsImg/276.jpg', '杀虫剂', '1236', '2542', '1452', null, '4', '正常', '9', '60');
INSERT INTO `jd_goods` VALUES ('731', '洗衣粉', '8', 'images/goodsImg/277.jpg', '洗衣粉', '1152', '2365', '1245', null, '5', '正常', '8', '22');
INSERT INTO `jd_goods` VALUES ('732', '拖把', '20', 'images/goodsImg/278.jpg', '拖把', '1122', '5232', '2136', null, '4', '正常', '8', '63');
INSERT INTO `jd_goods` VALUES ('733', '茶具', '250', 'images/goodsImg/279.jpg', '茶具', '1245', '3214', '1426', null, '5', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('734', '保鲜膜', '5', 'images/goodsImg/280.jpg', '保鲜膜', '1512', '2365', '1455', null, '5', '正常', '9', '24');
INSERT INTO `jd_goods` VALUES ('735', '贴画', '3', 'images/goodsImg/281.jpg', '贴画', '5252', '2136', '1452', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('736', '贴画', '2', 'images/goodsImg/282.jpg', '贴画', '1523', '1263', '1523', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('737', '对联', '6', 'images/goodsImg/283.jpg', '对联', '1236', '2511', '2411', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('738', '书桌', '150', 'images/goodsImg/284.jpg', '书桌', '1236', '1452', '1326', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('739', '水杯', '80', 'images/goodsImg/285.jpg', '水杯', '1236', '4125', '3621', null, '5', '正常', '9', '25');
INSERT INTO `jd_goods` VALUES ('740', '沙发', '150', 'images/goodsImg/286.jpg', '沙发', '1236', '1236', '1254', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('741', '浴巾', '50', 'images/goodsImg/287.jpg', '浴巾', '1236', '1244', '3621', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('742', '伞', '20', 'images/goodsImg/288.jpg', '伞', '1256', '3652', '2414', null, '5', '正常', '9', '28');
INSERT INTO `jd_goods` VALUES ('743', '刀具 ', '50', 'images/goodsImg/289.jpg', '刀具 ', '1263', '3621', '1263', null, '5', '正常', '8', '25');
INSERT INTO `jd_goods` VALUES ('744', '刀具', '80', 'images/goodsImg/290.jpg', '刀具', '3214', '3562', '3652', null, '5', '正常', '8', '25');
INSERT INTO `jd_goods` VALUES ('745', '浴巾', '55', 'images/goodsImg/291.jpg', '浴巾', '1245', '2365', '4512', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('746', '电灯', '120', 'images/goodsImg/292.jpg', '电灯', '1263', '1426', '6321', null, '7', '正常', '9', '38');
INSERT INTO `jd_goods` VALUES ('747', '抱枕', '50', 'images/goodsImg/293.jpg', '抱枕', '1236', '4551', '3625', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('748', '浴巾', '80', 'images/goodsImg/294.jpg', '浴巾', '5236', '6325', '1452', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('749', '厨具', '180', 'images/goodsImg/295.jpg', '厨具', '1256', '3623', '1245', null, '4', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('750', '伞', '25', 'images/goodsImg/296.jpg', '伞', '2563', '3652', '1452', null, '5', '正常', '9', '28');
INSERT INTO `jd_goods` VALUES ('751', '床上用品', '250', 'images/goodsImg/297.jpg', '床上用品', '8562', '4570', '5241', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('752', '床上用品', '260', 'images/goodsImg/298.jpg', '床上用品', '2563', '4125', '3654', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('753', '浴巾', '100', 'images/goodsImg/299.jpg', '浴巾', '1452', '5236', '5641', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('754', '抱枕', '60', 'images/goodsImg/300.jpg', '抱枕', '5214', '6325', '5214', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('755', '抱枕', '50', 'images/goodsImg/301.jpg', '抱枕', '1236', '2365', '1254', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('756', '床上用品', '300', 'images/goodsImg/302.jpg', '床上用品', '3652', '5263', '4563', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('757', '毛巾', '6', 'images/goodsImg/303.jpg', '毛巾', '2363', '1452', '2541', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('758', '毛巾', '36', 'images/goodsImg/304.jpg', '毛巾', '1256', '6326', '4152', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('759', '口罩', '5', 'images/goodsImg/305.jpg', '口罩', '1256', '4185', '3621', null, '5', '正常', '9', '24');
INSERT INTO `jd_goods` VALUES ('760', '厨具', '300', 'images/goodsImg/306.jpg', '厨具', '1522', '1257', '3622', null, '4', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('762', '伞', '30', 'images/goodsImg/308.jpg', '伞', '1524', '3621', '1452', null, '5', '正常', '9', '28');
INSERT INTO `jd_goods` VALUES ('763', '椅子', '50', 'images/goodsImg/309.jpg', '椅子', '1524', '3625', '1452', null, '5', '正常', '9', '28');
INSERT INTO `jd_goods` VALUES ('764', '书柜', '100', 'images/goodsImg/310.jpg', '书柜', '12364', '5236', '1425', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('765', '酒柜', '500', 'images/goodsImg/311.jpg', '酒柜', '1552', '2365', '5412', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('766', '水杯', '80', 'images/goodsImg/312.jpg', '水杯', '2563', '2364', '1425', null, '5', '正常', '9', '25');
INSERT INTO `jd_goods` VALUES ('767', '水杯', '100', 'images/goodsImg/313.jpg', '水杯', '5214', '3251', '4852', null, '5', '正常', '9', '25');
INSERT INTO `jd_goods` VALUES ('768', '书柜', '90', 'images/goodsImg/314.jpg', '书柜', '8564', '8551', '6255', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('769', '沙发', '80', 'images/goodsImg/315.jpg', '沙发', '5224', '3254', '1452', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('770', '口罩', '5', 'images/goodsImg/316.jpg', '口罩', '5241', '6325', '4125', null, '5', '正常', '9', '24');
INSERT INTO `jd_goods` VALUES ('771', '衣柜', '500', 'images/goodsImg/317.jpg', '衣柜', '5541', '6325', '5214', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('772', '书桌', '300', 'images/goodsImg/318.jpg', '书桌', '1253', '2365', '1452', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('773', '水杯', '120', 'images/goodsImg/319.jpg', '水杯', '5236', '1454', '2415', null, '5', '正常', '9', '25');
INSERT INTO `jd_goods` VALUES ('774', '水杯', '50', 'images/goodsImg/320.jpg', '水杯', '5631', '4524', '6214', null, '5', '正常', '9', '25');
INSERT INTO `jd_goods` VALUES ('775', '书桌+书柜', '800', 'images/goodsImg/321.jpg', '书桌+书柜', '5541', '5202', '3620', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('776', '衣柜', '800', 'images/goodsImg/322.jpg', '衣柜', '5236', '4113', '6332', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('777', '鞋柜', '450', 'images/goodsImg/323.jpg', '鞋柜', '5410', '6524', '3652', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('778', '床上用品', '500', 'images/goodsImg/324.jpg', '床上用品', '4125', '3659', '5412', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('779', '沙发', '400', 'images/goodsImg/325.jpg', '沙发', '5221', '6326', '4125', null, '5', '正常', '9', '27');
INSERT INTO `jd_goods` VALUES ('780', '厨具', '80', 'images/goodsImg/326.jpg', '厨具', '5223', '4513', '5223', null, '4', '正常', '8', '59');
INSERT INTO `jd_goods` VALUES ('781', '灯', '180', 'images/goodsImg/327.jpg', '灯', '4563', '1235', '5214', null, '7', '正常', '9', '28');
INSERT INTO `jd_goods` VALUES ('782', '水杯', '40', 'images/goodsImg/328.jpg', '水杯', '2541', '5241', '4125', null, '5', '正常', '9', '25');
INSERT INTO `jd_goods` VALUES ('783', '浴巾', '60', 'images/goodsImg/329.jpg', '浴巾', '5241', '6327', '5221', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('784', '毛巾', '5', 'images/goodsImg/330.jpg', '毛巾', '5412', '3655', '4125', null, '5', '正常', '9', '26');
INSERT INTO `jd_goods` VALUES ('785', '维维麦片', '10', 'images/goodsImg/1.jpg', '维维麦片', '1500', '54761', '2000', null, '1', '正常', '1', '2');
INSERT INTO `jd_goods` VALUES ('787', '高跟鞋', '199', 'images/goodsImg/117.jpg', '高跟靴', '80', '32145', '30', null, '3', '正常', '6', '3');
INSERT INTO `jd_goods` VALUES ('788', '开心跑步机', '3666', 'images/goodsImg/118.jpg', '跑步机', '23', '54233', '18', null, '7', '正常', '11', '7');
INSERT INTO `jd_goods` VALUES ('789', 'CAMEL运动鞋', '288', 'images/goodsImg/119.jpg', '运动鞋', '322', '46542', '86', null, '3', '正常', '6', '4');
INSERT INTO `jd_goods` VALUES ('790', '帐篷', '588', 'images/goodsImg/200.jpg', '户外帐篷', '83', '8846', '25', null, '3', '正常', '9', '7');
INSERT INTO `jd_goods` VALUES ('791', '镂空女式钱包', '188', 'images/goodsImg/201.jpg', '钱包', '586', '32647', '163', null, '3', '正常', '5', '3');
INSERT INTO `jd_goods` VALUES ('792', '奢华旅行箱', '688', 'images/goodsImg/202.jpg', '旅行箱', '264', '24567', '55', null, '3', '正常', '5', '3');
INSERT INTO `jd_goods` VALUES ('793', '361深蓝男士运动鞋', '388', 'images/goodsImg/203.jpg', '运动鞋', '563', '54698', '128', null, '3', '正常', '6', '3');
INSERT INTO `jd_goods` VALUES ('794', '361浅蓝男士板鞋', '298', 'images/goodsImg/204.jpg', '板鞋', '687', '58642', '254', null, '3', '正常', '6', '3');
INSERT INTO `jd_goods` VALUES ('795', '安踏白色男士运动鞋', '356', 'images/goodsImg/205.jpg', '运动鞋', '465', '48632', '186', null, '3', '正常', '6', '3');
INSERT INTO `jd_goods` VALUES ('796', '安踏白色男士板鞋', '256', 'images/goodsImg/206.jpg', '板鞋', '351', '35621', '153', null, '3', '正常', '6', '3');
INSERT INTO `jd_goods` VALUES ('797', '红色旅行箱', '368', 'images/goodsImg/207.jpg', '旅行箱', '128', '36549', '48', null, '3', '正常', '5', '3');
INSERT INTO `jd_goods` VALUES ('798', '登山镐', '586', 'images/goodsImg/208.jpg', '户外用品', '58', '49663', '58', null, '3', '正常', '6', '4');
INSERT INTO `jd_goods` VALUES ('799', '多功能健身机', '5888', 'images/goodsImg/209.jpg', '健身器材', '28', '68462', '20', null, '7', '正常', '11', '7');
INSERT INTO `jd_goods` VALUES ('800', '安踏蓝色男士运动鞋', '356', 'images/goodsImg/210.jpg', '运动鞋', '456', '64266', '150', null, '3', '正常', '6', '3');
INSERT INTO `jd_goods` VALUES ('801', 'bpine手提包', '1256', 'images/goodsImg/211.jpg', '手提包', '238', '56343', '154', null, '3', '正常', '5', '3');
INSERT INTO `jd_goods` VALUES ('802', '铆钉高帮女式皮鞋', '668', 'images/goodsImg/212.jpg', '皮鞋', '236', '64583', '34', null, '3', '正常', '6', '3');
INSERT INTO `jd_goods` VALUES ('803', '格子男士真皮挎包', '568', 'images/goodsImg/213.jpg', '挎包', '88', '25690', '21', null, '3', '正常', '5', '3');
INSERT INTO `jd_goods` VALUES ('804', '银色旅行箱', '368', 'images/goodsImg/214.jpg', '旅行箱', '156', '45967', '36', null, '3', '正常', '5', '3');
INSERT INTO `jd_goods` VALUES ('805', '美式工兵铲', '598', 'images/goodsImg/215.jpg', '户外用品', '89', '35990', '56', null, '3', '正常', '6', '4');
INSERT INTO `jd_goods` VALUES ('806', '旋风健身机', '3888', 'images/goodsImg/216.jpg', '健身器材', '26', '59765', '15', null, '7', '正常', '11', '7');
INSERT INTO `jd_goods` VALUES ('807', '多功能跑步机', '4888', 'images/goodsImg/217.jpg', '健身器材', '49', '36590', '25', null, '7', '正常', '11', '7');
INSERT INTO `jd_goods` VALUES ('808', 'nvihq跑步机', '3999', 'images/goodsImg/218.jpg', '健身器材', '28', '36549', '14', null, '7', '正常', '11', '7');
INSERT INTO `jd_goods` VALUES ('809', 'adidas白色跑鞋', '698', 'images/goodsImg/219.jpg', '运动鞋', '1288', '65992', '685', null, '3', '正常', '6', '4');
INSERT INTO `jd_goods` VALUES ('810', 'adidas蓝色跑鞋', '698', 'images/goodsImg/220.jpg', '运动鞋', '562', '36599', '365', null, '3', '正常', '6', '4');
INSERT INTO `jd_goods` VALUES ('811', '小天才电话手表', '298', 'images/goodsImg/111.jpg', '手表', '268', '48968', '98', null, '2', '正常', '4', '2');
INSERT INTO `jd_goods` VALUES ('812', '薰香器', '66', 'images/goodsImg/112.jpg', '电器', '698', '69876', '596', null, '7', '正常', '9', '2');
INSERT INTO `jd_goods` VALUES ('813', '16G大U盘', '128', 'images/goodsImg/113.jpg', '数码产品', '1586', '36625', '588', null, '2', '正常', '4', '2');
INSERT INTO `jd_goods` VALUES ('814', '迷你音响', '256', 'images/goodsImg/114.jpg', '数码产品', '896', '37022', '256', null, '2', '正常', '4', '2');
INSERT INTO `jd_goods` VALUES ('815', '便携式MP3', '365', 'images/goodsImg/115.jpg', '数码产品', '569', '59687', '159', null, '2', '正常', '4', '2');

-- ----------------------------
-- Table structure for `jd_myfootprint`
-- ----------------------------
DROP TABLE IF EXISTS `jd_myfootprint`;
CREATE TABLE `jd_myfootprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `goodsName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `goodsProPic` varchar(255) CHARACTER SET utf8 NOT NULL,
  `goodsPrice` double NOT NULL,
  `time` date NOT NULL,
  `shopid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_myfootprint
-- ----------------------------
INSERT INTO `jd_myfootprint` VALUES ('53', '61', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '2016-10-19', '1');
INSERT INTO `jd_myfootprint` VALUES ('54', '61', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '2016-10-19', '1');
INSERT INTO `jd_myfootprint` VALUES ('57', '62', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('58', '62', '104', '美年达', 'images/goodsImg/7.jpg', '3', '2016-10-20', '3');
INSERT INTO `jd_myfootprint` VALUES ('59', '62', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('60', '62', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('61', '63', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('62', '63', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('63', '63', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('72', '65', '810', 'adidas蓝色跑鞋', 'images/goodsImg/220.jpg', '698', '2016-10-20', '6');
INSERT INTO `jd_myfootprint` VALUES ('73', '65', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('74', '65', '8', '女性文胸', 'images/goodsImg/554.jpg', '20', '2016-10-20', '13');
INSERT INTO `jd_myfootprint` VALUES ('77', '65', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('82', '65', '812', '薰香器', 'images/goodsImg/112.jpg', '66', '2016-10-20', '9');
INSERT INTO `jd_myfootprint` VALUES ('83', '65', '659', '雨刷', 'images/goodsImg/426.jpg', '69', '2016-10-20', '17');
INSERT INTO `jd_myfootprint` VALUES ('84', '65', '673', '机车轮胎', 'images/goodsImg/440.jpg', '1200', '2016-10-20', '14');
INSERT INTO `jd_myfootprint` VALUES ('85', '64', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('86', '64', '758', '毛巾', 'images/goodsImg/304.jpg', '36', '2016-10-20', '9');
INSERT INTO `jd_myfootprint` VALUES ('87', '64', '783', '浴巾', 'images/goodsImg/329.jpg', '60', '2016-10-20', '9');
INSERT INTO `jd_myfootprint` VALUES ('88', '64', '39', '海飞丝', 'images/goodsImg/586.jpg', '18', '2016-10-20', '12');
INSERT INTO `jd_myfootprint` VALUES ('89', '64', '33', '女士运动装', 'images/goodsImg/580.jpg', '99', '2016-10-20', '13');
INSERT INTO `jd_myfootprint` VALUES ('90', '65', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('91', '64', '812', '薰香器', 'images/goodsImg/112.jpg', '66', '2016-10-20', '9');
INSERT INTO `jd_myfootprint` VALUES ('92', '65', '474', '钟', 'images/goodsImg/526.jpg', '98', '2016-10-20', '9');
INSERT INTO `jd_myfootprint` VALUES ('93', '66', '147', 'HTCWatch', 'images/goodsImg/51.jpg', '1200', '2016-10-20', '16');
INSERT INTO `jd_myfootprint` VALUES ('94', '66', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('95', '24', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('96', '24', '36', '女士上衣', 'images/goodsImg/583.jpg', '90', '2016-10-21', '14');
INSERT INTO `jd_myfootprint` VALUES ('97', '24', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('98', '67', '140', '来宾 河蟹', 'images/goodsImg/32.jpg', '88', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('99', '67', '141', 'Netual豆奶', 'images/goodsImg/34.jpg', '23', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('100', '68', '104', '美年达', 'images/goodsImg/7.jpg', '3', '2016-10-20', '3');
INSERT INTO `jd_myfootprint` VALUES ('101', '24', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('102', '68', '141', 'Netual豆奶', 'images/goodsImg/34.jpg', '23', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('103', '68', '110', '音华月饼', 'images/goodsImg/13.jpg', '45', '2016-10-20', '2');
INSERT INTO `jd_myfootprint` VALUES ('104', '68', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('105', '24', '147', 'HTCWatch', 'images/goodsImg/51.jpg', '1200', '2016-10-20', '16');
INSERT INTO `jd_myfootprint` VALUES ('106', '24', '706', '卫生纸', 'images/goodsImg/252.jpg', '15', '2016-10-20', '9');
INSERT INTO `jd_myfootprint` VALUES ('107', '24', '804', '银色旅行箱', 'images/goodsImg/214.jpg', '368', '2016-10-20', '5');
INSERT INTO `jd_myfootprint` VALUES ('108', '24', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '2016-10-20', '1');
INSERT INTO `jd_myfootprint` VALUES ('109', '70', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-21', '1');
INSERT INTO `jd_myfootprint` VALUES ('110', '70', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '2016-10-21', '1');
INSERT INTO `jd_myfootprint` VALUES ('111', '70', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-21', '1');
INSERT INTO `jd_myfootprint` VALUES ('112', '70', '138', 'EMPERIAL', 'images/goodsImg/46.jpg', '12', '2016-10-21', '1');
INSERT INTO `jd_myfootprint` VALUES ('113', '69', '605', '连衣裙', 'images/goodsImg/352.jpg', '35', '2016-10-21', '13');
INSERT INTO `jd_myfootprint` VALUES ('114', '70', '814', '迷你音响', 'images/goodsImg/114.jpg', '256', '2016-10-21', '4');
INSERT INTO `jd_myfootprint` VALUES ('115', '70', '137', '益达木糖醇', 'images/goodsImg/45.jpg', '7', '2016-10-21', '1');
INSERT INTO `jd_myfootprint` VALUES ('116', '69', '717', '微波炉', 'images/goodsImg/263.jpg', '350', '2016-10-21', '8');
INSERT INTO `jd_myfootprint` VALUES ('117', '69', '648', '儿童玩具', 'images/goodsImg/413.jpg', '26', '2016-10-21', '10');
INSERT INTO `jd_myfootprint` VALUES ('118', '69', '798', '登山镐', 'images/goodsImg/208.jpg', '586', '2016-10-21', '6');
INSERT INTO `jd_myfootprint` VALUES ('119', '70', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '2016-10-21', '1');
INSERT INTO `jd_myfootprint` VALUES ('120', '70', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '2016-10-21', '1');
INSERT INTO `jd_myfootprint` VALUES ('121', '71', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '2016-10-21', '1');
INSERT INTO `jd_myfootprint` VALUES ('122', '70', '620', '婴儿床', 'images/goodsImg/374.jpg', '25', '2016-10-21', '10');
INSERT INTO `jd_myfootprint` VALUES ('123', '70', '799', '多功能健身机', 'images/goodsImg/209.jpg', '5888', '2016-10-21', '11');
INSERT INTO `jd_myfootprint` VALUES ('124', '64', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('125', '64', '811', '小天才电话手表', 'images/goodsImg/111.jpg', '298', '2016-10-22', '4');
INSERT INTO `jd_myfootprint` VALUES ('126', '64', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('127', '72', '751', '床上用品', 'images/goodsImg/297.jpg', '250', '2016-10-22', '9');
INSERT INTO `jd_myfootprint` VALUES ('128', '72', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('129', '74', '190', '爵士  AK47', 'images/goodsImg/94.jpg', '230', '2016-10-22', '16');
INSERT INTO `jd_myfootprint` VALUES ('130', '75', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('131', '73', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('132', '76', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('133', '74', '137', '益达木糖醇', 'images/goodsImg/45.jpg', '7', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('134', '73', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('135', '72', '97', '睫毛膏', 'images/goodsImg/665.jpg', '77', '2016-10-22', '12');
INSERT INTO `jd_myfootprint` VALUES ('136', '73', '104', '美年达', 'images/goodsImg/7.jpg', '3', '2016-10-22', '3');
INSERT INTO `jd_myfootprint` VALUES ('137', '73', '107', '夏进纯牛奶', 'images/goodsImg/10.jpg', '3', '2016-10-22', '1');
INSERT INTO `jd_myfootprint` VALUES ('138', '72', '683', '粉红女包', 'images/goodsImg/229.jpg', '650', '2016-10-22', '5');
INSERT INTO `jd_myfootprint` VALUES ('139', '72', '784', '毛巾', 'images/goodsImg/330.jpg', '5', '2016-10-22', '9');
INSERT INTO `jd_myfootprint` VALUES ('140', '74', '775', '书桌+书柜', 'images/goodsImg/321.jpg', '800', '2016-10-22', '9');
INSERT INTO `jd_myfootprint` VALUES ('141', '73', '806', '旋风健身机', 'images/goodsImg/216.jpg', '3888', '2016-10-22', '11');
INSERT INTO `jd_myfootprint` VALUES ('142', '74', '587', '十字绣挂画', 'images/goodsImg/331.jpg', '22', '2016-10-22', '9');
INSERT INTO `jd_myfootprint` VALUES ('143', '76', '110', '音华月饼', 'images/goodsImg/13.jpg', '45', '2016-10-22', '2');

-- ----------------------------
-- Table structure for `jd_order`
-- ----------------------------
DROP TABLE IF EXISTS `jd_order`;
CREATE TABLE `jd_order` (
  `id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `userId` int(11) NOT NULL,
  `total` double NOT NULL,
  `addressId` int(11) NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` date NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_order
-- ----------------------------
INSERT INTO `jd_order` VALUES ('147616595434715', '24', '21', '10', '', '2016-10-11', '6');
INSERT INTO `jd_order` VALUES ('147616595440513', '24', '7', '10', '', '2016-10-11', '6');
INSERT INTO `jd_order` VALUES ('147616599580017', '24', '12', '10', '', '2016-10-11', '2');
INSERT INTO `jd_order` VALUES ('147616704447590', '24', '12', '10', '', '2016-10-11', '6');
INSERT INTO `jd_order` VALUES ('147616704453329', '24', '5', '10', '', '2016-10-11', '6');
INSERT INTO `jd_order` VALUES ('147617023644671', '24', '66', '1', null, '2016-10-11', '1');
INSERT INTO `jd_order` VALUES ('147617025459516', '24', '66', '1', null, '2016-10-11', '1');
INSERT INTO `jd_order` VALUES ('147617079396473', '24', '4', '1', null, '2016-10-11', '1');
INSERT INTO `jd_order` VALUES ('147617081217219', '24', '4', '1', null, '2016-10-11', '1');
INSERT INTO `jd_order` VALUES ('147617892110824', '24', '66', '1', null, '2016-10-11', '1');
INSERT INTO `jd_order` VALUES ('147618082751882', '24', '66', '1', null, '2016-10-11', '1');
INSERT INTO `jd_order` VALUES ('147619074699059', '24', '5', '3', 'aasfdf', '2016-10-11', '2');
INSERT INTO `jd_order` VALUES ('147649814635538', '24', '70', '1', null, '2016-10-15', '1');
INSERT INTO `jd_order` VALUES ('147652463725810', '24', '3650', '3', '', '2016-10-15', '6');
INSERT INTO `jd_order` VALUES ('147677983494811', '24', '3', '3', '', '2016-10-18', '6');
INSERT INTO `jd_order` VALUES ('147677986628937', '24', '10', '3', '', '2016-10-18', '6');
INSERT INTO `jd_order` VALUES ('147677986634761', '24', '8', '3', '', '2016-10-18', '6');
INSERT INTO `jd_order` VALUES ('147677986645362', '24', '3', '3', '', '2016-10-18', '6');
INSERT INTO `jd_order` VALUES ('147692425846479', '62', '3', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692447215915', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692459864943', '62', '3', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692531345010', '24', '129', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692558400050', '24', '129', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692563059492', '62', '126', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692591623240', '62', '5', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692596882037', '62', '3', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692599458372', '62', '63', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692611164053', '62', '63', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692614256131', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692616791872', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692617121671', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692628397424', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692630985890', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692631254150', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692633661229', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692634938895', '62', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147692638558084', '62', '66', '11', '', '2016-10-20', '6');
INSERT INTO `jd_order` VALUES ('147694895720812', '63', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147694917764273', '63', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147694918514642', '63', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147694920076235', '63', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147694939191450', '63', '10', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147694942183115', '63', '10', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695127256423', '64', '5', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695135389020', '64', '5', '14', '', '2016-10-20', '6');
INSERT INTO `jd_order` VALUES ('147695157378335', '24', '5', '1', '', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695164920090', '65', '1396', '15', '辣么贵', '2016-10-20', '6');
INSERT INTO `jd_order` VALUES ('147695167909716', '64', '23', '1', '辣么贵', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695170031384', '24', '5', '1', '辣么贵', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695178374161', '24', '4', '1', '辣么贵', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695184637751', '64', '63', '1', '辣么贵', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695186748326', '64', '10', '1', '辣么贵', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695190223233', '64', '4', '1', '辣么贵', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695263397996', '66', '1200', '1', '辣么贵', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147695268432515', '66', '1200', '16', '', '2016-10-20', '6');
INSERT INTO `jd_order` VALUES ('147695297219599', '24', '66', '3', '', '2016-10-20', '6');
INSERT INTO `jd_order` VALUES ('147695306127229', '24', '5', '1', '', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696511241713', '24', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696513742518', '24', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696590449085', '67', '88', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696598441430', '67', '111', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696672440970', '68', '3', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696677331257', '24', '4', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696705853848', '24', '4', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696709478210', '24', '4', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696720098212', '24', '4', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696760844910', '24', '4', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696770196511', '24', '4', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696774012532', '24', '4', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696789935566', '24', '4', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696825796881', '24', '1200', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696859447444', '24', '1200', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696873912369', '24', '1200', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696876041924', '24', '1200', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696950743895', '24', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696967356761', '24', '66', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147696982113186', '24', '15', '1', null, '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147697010233189', '24', '66', '22', '', '2016-10-20', '6');
INSERT INTO `jd_order` VALUES ('147697118624917', '24', '66', '1', '', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147697122970240', '24', '66', '1', '', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147697149902320', '24', '27', '1', '', '2016-10-20', '1');
INSERT INTO `jd_order` VALUES ('147704805108177', '24', '90', '1', null, '2016-10-21', '1');
INSERT INTO `jd_order` VALUES ('147704822559018', '24', '156', '1', null, '2016-10-21', '1');
INSERT INTO `jd_order` VALUES ('147704850856773', '24', '156', '1', null, '2016-10-21', '1');
INSERT INTO `jd_order` VALUES ('147705533049966', '70', '42860', '1', null, '2016-10-21', '1');
INSERT INTO `jd_order` VALUES ('147705537504018', '69', '586', '1', null, '2016-10-21', '1');
INSERT INTO `jd_order` VALUES ('147705543337733', '69', '586', '29', '', '2016-10-21', '6');
INSERT INTO `jd_order` VALUES ('147705546905674', '69', '11720', '29', '', '2016-10-21', '6');
INSERT INTO `jd_order` VALUES ('147705550923922', '70', '471575', '1', '', '2016-10-21', '1');
INSERT INTO `jd_order` VALUES ('14770556108819', '71', '81567', '1', '', '2016-10-21', '1');
INSERT INTO `jd_order` VALUES ('147705569125743', '71', '81567', '31', '', '2016-10-21', '6');
INSERT INTO `jd_order` VALUES ('147705571164735', '71', '81567', '31', '', '2016-10-21', '6');
INSERT INTO `jd_order` VALUES ('147710666034174', '74', '7', '1', null, '2016-10-22', '1');
INSERT INTO `jd_order` VALUES ('147710669037140', '73', '3', '1', null, '2016-10-22', '1');
INSERT INTO `jd_order` VALUES ('147710669160481', '76', '10', '1', null, '2016-10-22', '1');
INSERT INTO `jd_order` VALUES ('147710673918471', '74', '7', '32', '', '2016-10-22', '6');
INSERT INTO `jd_order` VALUES ('147710676706149', '73', '3', '34', '', '2016-10-22', '6');
INSERT INTO `jd_order` VALUES ('147710708606621', '73', '3888', '1', '', '2016-10-22', '1');

-- ----------------------------
-- Table structure for `jd_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `jd_orderitem`;
CREATE TABLE `jd_orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) NOT NULL,
  `goodsName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `proPic` varchar(255) NOT NULL,
  `goodsPrice` double NOT NULL,
  `sum` int(11) NOT NULL,
  `sumTotal` double NOT NULL,
  `orderId` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_orderitem
-- ----------------------------
INSERT INTO `jd_orderitem` VALUES ('221', '107', '夏进纯牛奶', 'images/goodsImg/10.jpg', '3', '7', '21', '147616595434715');
INSERT INTO `jd_orderitem` VALUES ('222', '137', '益达木糖醇', 'images/goodsImg/45.jpg', '7', '1', '7', '147616595440513');
INSERT INTO `jd_orderitem` VALUES ('223', '138', 'EMPERIAL', 'images/goodsImg/46.jpg', '12', '1', '12', '147616599580017');
INSERT INTO `jd_orderitem` VALUES ('225', '138', 'EMPERIAL', 'images/goodsImg/46.jpg', '12', '1', '12', '147616704447590');
INSERT INTO `jd_orderitem` VALUES ('226', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '1', '5', '147616704453329');
INSERT INTO `jd_orderitem` VALUES ('227', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147617023644671');
INSERT INTO `jd_orderitem` VALUES ('228', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147617025459516');
INSERT INTO `jd_orderitem` VALUES ('229', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147617079396473');
INSERT INTO `jd_orderitem` VALUES ('230', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147617081217219');
INSERT INTO `jd_orderitem` VALUES ('232', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147617892110824');
INSERT INTO `jd_orderitem` VALUES ('233', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147618082751882');
INSERT INTO `jd_orderitem` VALUES ('234', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '1', '5', '147619074699059');
INSERT INTO `jd_orderitem` VALUES ('235', '610', '宝宝夏衣裤', 'images/goodsImg/360.jpg', '70', '1', '70', '147649814635538');
INSERT INTO `jd_orderitem` VALUES ('236', '204', 'SUMSUNG G1', 'images/goodsImg/108.jpg', '3650', '1', '3650', '147652463725810');
INSERT INTO `jd_orderitem` VALUES ('237', '104', '美年达', 'images/goodsImg/7.jpg', '3', '1', '3', '147677983494811');
INSERT INTO `jd_orderitem` VALUES ('238', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '1', '10', '147677986628937');
INSERT INTO `jd_orderitem` VALUES ('239', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '2', '8', '147677986634761');
INSERT INTO `jd_orderitem` VALUES ('240', '104', '美年达', 'images/goodsImg/7.jpg', '3', '1', '3', '147677986645362');
INSERT INTO `jd_orderitem` VALUES ('241', '104', '美年达', 'images/goodsImg/7.jpg', '3', '1', '3', '147692425846479');
INSERT INTO `jd_orderitem` VALUES ('242', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692447215915');
INSERT INTO `jd_orderitem` VALUES ('243', '104', '美年达', 'images/goodsImg/7.jpg', '3', '1', '3', '147692459864943');
INSERT INTO `jd_orderitem` VALUES ('244', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '1', '63', '147692531345010');
INSERT INTO `jd_orderitem` VALUES ('245', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692531345010');
INSERT INTO `jd_orderitem` VALUES ('246', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '1', '63', '147692558400050');
INSERT INTO `jd_orderitem` VALUES ('247', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692558400050');
INSERT INTO `jd_orderitem` VALUES ('248', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '2', '126', '147692563059492');
INSERT INTO `jd_orderitem` VALUES ('249', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '1', '5', '147692591623240');
INSERT INTO `jd_orderitem` VALUES ('250', '104', '美年达', 'images/goodsImg/7.jpg', '3', '1', '3', '147692596882037');
INSERT INTO `jd_orderitem` VALUES ('251', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '1', '63', '147692599458372');
INSERT INTO `jd_orderitem` VALUES ('252', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '1', '63', '147692611164053');
INSERT INTO `jd_orderitem` VALUES ('253', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692614256131');
INSERT INTO `jd_orderitem` VALUES ('254', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692616791872');
INSERT INTO `jd_orderitem` VALUES ('255', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692617121671');
INSERT INTO `jd_orderitem` VALUES ('256', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692628397424');
INSERT INTO `jd_orderitem` VALUES ('257', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692630985890');
INSERT INTO `jd_orderitem` VALUES ('258', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692631254150');
INSERT INTO `jd_orderitem` VALUES ('259', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692633661229');
INSERT INTO `jd_orderitem` VALUES ('260', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692634938895');
INSERT INTO `jd_orderitem` VALUES ('261', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147692638558084');
INSERT INTO `jd_orderitem` VALUES ('262', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147694895720812');
INSERT INTO `jd_orderitem` VALUES ('263', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147694917764273');
INSERT INTO `jd_orderitem` VALUES ('264', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147694918514642');
INSERT INTO `jd_orderitem` VALUES ('265', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147694920076235');
INSERT INTO `jd_orderitem` VALUES ('266', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '1', '10', '147694939191450');
INSERT INTO `jd_orderitem` VALUES ('267', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '1', '10', '147694942183115');
INSERT INTO `jd_orderitem` VALUES ('268', '136', '统一卤香牛肉面', 'images/goodsImg/44.jpg', '5', '1', '5', '147695127256423');
INSERT INTO `jd_orderitem` VALUES ('269', '136', '统一卤香牛肉面', 'images/goodsImg/44.jpg', '5', '1', '5', '147695135389020');
INSERT INTO `jd_orderitem` VALUES ('272', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '1', '5', '147695157378335');
INSERT INTO `jd_orderitem` VALUES ('273', '810', 'adidas蓝色跑鞋', 'images/goodsImg/220.jpg', '698', '2', '1396', '147695164920090');
INSERT INTO `jd_orderitem` VALUES ('274', '141', 'Netual豆奶', 'images/goodsImg/34.jpg', '23', '1', '23', '147695167909716');
INSERT INTO `jd_orderitem` VALUES ('275', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '1', '5', '147695170031384');
INSERT INTO `jd_orderitem` VALUES ('277', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147695178374161');
INSERT INTO `jd_orderitem` VALUES ('278', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147695297219599');
INSERT INTO `jd_orderitem` VALUES ('279', '142', 'Joson-Musli', 'images/goodsImg/35.jpg', '63', '1', '63', '147695184637751');
INSERT INTO `jd_orderitem` VALUES ('280', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '1', '10', '147695186748326');
INSERT INTO `jd_orderitem` VALUES ('281', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147695190223233');
INSERT INTO `jd_orderitem` VALUES ('283', '147', 'HTCWatch', 'images/goodsImg/51.jpg', '1200', '1', '1200', '147695263397996');
INSERT INTO `jd_orderitem` VALUES ('284', '147', 'HTCWatch', 'images/goodsImg/51.jpg', '1200', '1', '1200', '147695268432515');
INSERT INTO `jd_orderitem` VALUES ('285', '3', '益达口香糖', 'images/goodsImg/3.jpg', '5', '1', '5', '147695306127229');
INSERT INTO `jd_orderitem` VALUES ('286', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147696511241713');
INSERT INTO `jd_orderitem` VALUES ('287', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147696513742518');
INSERT INTO `jd_orderitem` VALUES ('288', '140', '来宾 河蟹', 'images/goodsImg/32.jpg', '88', '1', '88', '147696590449085');
INSERT INTO `jd_orderitem` VALUES ('289', '140', '来宾 河蟹', 'images/goodsImg/32.jpg', '88', '1', '88', '147696598441430');
INSERT INTO `jd_orderitem` VALUES ('290', '141', 'Netual豆奶', 'images/goodsImg/34.jpg', '23', '1', '23', '147696598441430');
INSERT INTO `jd_orderitem` VALUES ('291', '104', '美年达', 'images/goodsImg/7.jpg', '3', '1', '3', '147696672440970');
INSERT INTO `jd_orderitem` VALUES ('292', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147696677331257');
INSERT INTO `jd_orderitem` VALUES ('293', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147696705853848');
INSERT INTO `jd_orderitem` VALUES ('294', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147696709478210');
INSERT INTO `jd_orderitem` VALUES ('295', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147696720098212');
INSERT INTO `jd_orderitem` VALUES ('296', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147696760844910');
INSERT INTO `jd_orderitem` VALUES ('297', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147696770196511');
INSERT INTO `jd_orderitem` VALUES ('298', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147696774012532');
INSERT INTO `jd_orderitem` VALUES ('299', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '1', '4', '147696789935566');
INSERT INTO `jd_orderitem` VALUES ('300', '147', 'HTCWatch', 'images/goodsImg/51.jpg', '1200', '1', '1200', '147696825796881');
INSERT INTO `jd_orderitem` VALUES ('301', '147', 'HTCWatch', 'images/goodsImg/51.jpg', '1200', '1', '1200', '147696859447444');
INSERT INTO `jd_orderitem` VALUES ('302', '147', 'HTCWatch', 'images/goodsImg/51.jpg', '1200', '1', '1200', '147696873912369');
INSERT INTO `jd_orderitem` VALUES ('303', '147', 'HTCWatch', 'images/goodsImg/51.jpg', '1200', '1', '1200', '147696876041924');
INSERT INTO `jd_orderitem` VALUES ('304', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147696950743895');
INSERT INTO `jd_orderitem` VALUES ('305', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147696967356761');
INSERT INTO `jd_orderitem` VALUES ('306', '706', '卫生纸', 'images/goodsImg/252.jpg', '15', '1', '15', '147696982113186');
INSERT INTO `jd_orderitem` VALUES ('307', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147697010233189');
INSERT INTO `jd_orderitem` VALUES ('308', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147697118624917');
INSERT INTO `jd_orderitem` VALUES ('309', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147697122970240');
INSERT INTO `jd_orderitem` VALUES ('310', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '1', '27', '147697149902320');
INSERT INTO `jd_orderitem` VALUES ('311', '36', '女士上衣', 'images/goodsImg/583.jpg', '90', '1', '90', '147704805108177');
INSERT INTO `jd_orderitem` VALUES ('312', '36', '女士上衣', 'images/goodsImg/583.jpg', '90', '1', '90', '147704822559018');
INSERT INTO `jd_orderitem` VALUES ('313', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147704822559018');
INSERT INTO `jd_orderitem` VALUES ('314', '36', '女士上衣', 'images/goodsImg/583.jpg', '90', '1', '90', '147704850856773');
INSERT INTO `jd_orderitem` VALUES ('315', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '1', '66', '147704850856773');
INSERT INTO `jd_orderitem` VALUES ('316', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '7', '70', '147705533049966');
INSERT INTO `jd_orderitem` VALUES ('317', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '8', '32', '147705533049966');
INSERT INTO `jd_orderitem` VALUES ('318', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '10', '660', '147705533049966');
INSERT INTO `jd_orderitem` VALUES ('319', '138', 'EMPERIAL', 'images/goodsImg/46.jpg', '12', '12', '144', '147705533049966');
INSERT INTO `jd_orderitem` VALUES ('320', '814', '迷你音响', 'images/goodsImg/114.jpg', '256', '20', '5120', '147705533049966');
INSERT INTO `jd_orderitem` VALUES ('321', '137', '益达木糖醇', 'images/goodsImg/45.jpg', '7', '5262', '36834', '147705533049966');
INSERT INTO `jd_orderitem` VALUES ('322', '798', '登山镐', 'images/goodsImg/208.jpg', '586', '1', '586', '147705537504018');
INSERT INTO `jd_orderitem` VALUES ('323', '798', '登山镐', 'images/goodsImg/208.jpg', '586', '1', '586', '147705543337733');
INSERT INTO `jd_orderitem` VALUES ('324', '798', '登山镐', 'images/goodsImg/208.jpg', '586', '20', '11720', '147705546905674');
INSERT INTO `jd_orderitem` VALUES ('325', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '7', '70', '147705550923922');
INSERT INTO `jd_orderitem` VALUES ('326', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '8', '32', '147705550923922');
INSERT INTO `jd_orderitem` VALUES ('327', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '5272', '347952', '147705550923922');
INSERT INTO `jd_orderitem` VALUES ('328', '814', '迷你音响', 'images/goodsImg/114.jpg', '256', '20', '5120', '147705550923922');
INSERT INTO `jd_orderitem` VALUES ('329', '137', '益达木糖醇', 'images/goodsImg/45.jpg', '7', '5262', '36834', '147705550923922');
INSERT INTO `jd_orderitem` VALUES ('330', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '3021', '81567', '147705550923922');
INSERT INTO `jd_orderitem` VALUES ('331', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '3021', '81567', '14770556108819');
INSERT INTO `jd_orderitem` VALUES ('332', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '3021', '81567', '147705569125743');
INSERT INTO `jd_orderitem` VALUES ('333', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '3021', '81567', '147705571164735');
INSERT INTO `jd_orderitem` VALUES ('334', '137', '益达木糖醇', 'images/goodsImg/45.jpg', '7', '1', '7', '147710666034174');
INSERT INTO `jd_orderitem` VALUES ('335', '107', '夏进纯牛奶', 'images/goodsImg/10.jpg', '3', '1', '3', '147710669037140');
INSERT INTO `jd_orderitem` VALUES ('336', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '1', '10', '147710669160481');
INSERT INTO `jd_orderitem` VALUES ('337', '137', '益达木糖醇', 'images/goodsImg/45.jpg', '7', '1', '7', '147710673918471');
INSERT INTO `jd_orderitem` VALUES ('338', '107', '夏进纯牛奶', 'images/goodsImg/10.jpg', '3', '1', '3', '147710676706149');
INSERT INTO `jd_orderitem` VALUES ('339', '806', '旋风健身机', 'images/goodsImg/216.jpg', '3888', '1', '3888', '147710708606621');

-- ----------------------------
-- Table structure for `jd_smalltype`
-- ----------------------------
DROP TABLE IF EXISTS `jd_smalltype`;
CREATE TABLE `jd_smalltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `bigTypeId` int(11) NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_smalltype
-- ----------------------------
INSERT INTO `jd_smalltype` VALUES ('1', '零食', '1', '零食、糖果、巧克力');
INSERT INTO `jd_smalltype` VALUES ('2', '饼干', '1', '饼干、糕点、无糖食品');
INSERT INTO `jd_smalltype` VALUES ('3', '油粮', '1', '油粮、干货');
INSERT INTO `jd_smalltype` VALUES ('4', '调味', '1', '调味、素食');
INSERT INTO `jd_smalltype` VALUES ('5', '酒', '1', '酒、饮料、夏日冰饮');
INSERT INTO `jd_smalltype` VALUES ('6', '牛奶乳品', '1', '牛奶乳品');
INSERT INTO `jd_smalltype` VALUES ('7', '冲饮', '1', '冲饮、咖啡、茶');
INSERT INTO `jd_smalltype` VALUES ('8', '生鲜', '1', '生鲜');
INSERT INTO `jd_smalltype` VALUES ('9', '手机通讯', '2', '手机通讯');
INSERT INTO `jd_smalltype` VALUES ('10', '数码产品', '2', '数码产品');
INSERT INTO `jd_smalltype` VALUES ('11', '电脑整机', '2', '电脑整机');
INSERT INTO `jd_smalltype` VALUES ('12', '大牌手机', '2', '大牌手机');
INSERT INTO `jd_smalltype` VALUES ('13', '手机', '2', '手机/数码配件');
INSERT INTO `jd_smalltype` VALUES ('14', '办公用品', '2', '办公用品、设备');
INSERT INTO `jd_smalltype` VALUES ('15', '潮流女包', '3', '潮流女包');
INSERT INTO `jd_smalltype` VALUES ('16', '精品男包', '3', '精品男包');
INSERT INTO `jd_smalltype` VALUES ('17', '功能箱包', '3', '功能箱包');
INSERT INTO `jd_smalltype` VALUES ('18', '钱包', '3', '钱包、皮具');
INSERT INTO `jd_smalltype` VALUES ('19', '女鞋', '3', '女鞋');
INSERT INTO `jd_smalltype` VALUES ('20', '男鞋', '3', '男鞋');
INSERT INTO `jd_smalltype` VALUES ('21', '纸品湿巾', '5', '纸品湿巾');
INSERT INTO `jd_smalltype` VALUES ('22', '衣物清洁', '5', '衣物清洁');
INSERT INTO `jd_smalltype` VALUES ('23', '家庭清洁', '5', '家庭清洁');
INSERT INTO `jd_smalltype` VALUES ('24', '清洁工具', '5', '清洁工具、一次性用品');
INSERT INTO `jd_smalltype` VALUES ('25', '餐具水具', '5', '餐具水具、厨具锅具');
INSERT INTO `jd_smalltype` VALUES ('26', '床上用品', '5', '家纺、床上用品');
INSERT INTO `jd_smalltype` VALUES ('27', '家具', '5', '家具、家装、家饰、园艺');
INSERT INTO `jd_smalltype` VALUES ('28', '居家日用', '5', '收纳、居家日用、宠物用');
INSERT INTO `jd_smalltype` VALUES ('29', '进口母婴', '6', '进口母婴');
INSERT INTO `jd_smalltype` VALUES ('30', '奶粉', '6', '奶粉、辅食、营养品');
INSERT INTO `jd_smalltype` VALUES ('31', '尿裤湿巾', '6', '尿裤湿巾');
INSERT INTO `jd_smalltype` VALUES ('32', '宝宝喂养', '6', '宝宝喂养、洗护清洁');
INSERT INTO `jd_smalltype` VALUES ('33', '孕妈专区', '6', '孕妈专区');
INSERT INTO `jd_smalltype` VALUES ('34', '童装', '6', '童装、童鞋、婴儿服饰');
INSERT INTO `jd_smalltype` VALUES ('35', '童车床', '6', '童车床、家纺、安全');
INSERT INTO `jd_smalltype` VALUES ('36', '玩具', '6', '玩具、文具');
INSERT INTO `jd_smalltype` VALUES ('37', '中式厨房小家电', '7', '中式厨房');
INSERT INTO `jd_smalltype` VALUES ('38', '生活电器', '7', '生活电器');
INSERT INTO `jd_smalltype` VALUES ('39', '个户健康', '7', '个户健康');
INSERT INTO `jd_smalltype` VALUES ('40', '大家电', '7', '大家电');
INSERT INTO `jd_smalltype` VALUES ('41', '西式厨房小家电', '7', '西式厨房');
INSERT INTO `jd_smalltype` VALUES ('42', '厨卫电器', '7', '厨卫电器');
INSERT INTO `jd_smalltype` VALUES ('43', '车品', '7', '车品、车载电器');
INSERT INTO `jd_smalltype` VALUES ('44', '进口美护', '9', '进口美护');
INSERT INTO `jd_smalltype` VALUES ('45', '洗发护发', '9', '洗发护发');
INSERT INTO `jd_smalltype` VALUES ('46', '沐浴', '9', '身体、沐浴');
INSERT INTO `jd_smalltype` VALUES ('47', '女性护理', '9', '女性护理');
INSERT INTO `jd_smalltype` VALUES ('48', '面膜护肤', '9', '面膜护肤');
INSERT INTO `jd_smalltype` VALUES ('49', '香氛', '9', '彩妆、香氛、工具、精油');
INSERT INTO `jd_smalltype` VALUES ('50', '口红', '9', '口红');
INSERT INTO `jd_smalltype` VALUES ('51', '男士护理', '9', '男士护理');
INSERT INTO `jd_smalltype` VALUES ('52', '女士上装', '8', '女士上装');
INSERT INTO `jd_smalltype` VALUES ('53', '腕表珠宝', '8', '珠宝');
INSERT INTO `jd_smalltype` VALUES ('54', '妈妈装', '8', '妈妈装');
INSERT INTO `jd_smalltype` VALUES ('55', '裙装', '8', '裙装、套装');
INSERT INTO `jd_smalltype` VALUES ('56', '文胸', '8', '文胸、塑身、内裤');
INSERT INTO `jd_smalltype` VALUES ('57', '男装', '8', '男装');
INSERT INTO `jd_smalltype` VALUES ('58', '保鲜膜', '4', '保鲜膜');
INSERT INTO `jd_smalltype` VALUES ('59', '厨房用品', '4', '厨房用品');
INSERT INTO `jd_smalltype` VALUES ('60', '洗衣液', '4', '洗衣液');
INSERT INTO `jd_smalltype` VALUES ('61', '纸巾', '4', '纸巾');
INSERT INTO `jd_smalltype` VALUES ('62', '运动鞋', '4', '运动鞋');
INSERT INTO `jd_smalltype` VALUES ('63', '拖把', '4', '拖把');
INSERT INTO `jd_smalltype` VALUES ('66', '茶壶', '4', '茶壶');

-- ----------------------------
-- Table structure for `jd_user`
-- ----------------------------
DROP TABLE IF EXISTS `jd_user`;
CREATE TABLE `jd_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `statusId` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `truename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `usertype2` int(11) DEFAULT NULL,
  `usertype1` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_user
-- ----------------------------
INSERT INTO `jd_user` VALUES ('24', 'liubao', '65d5f454ac1a9812b92a18cfb4916363', '715521387@qq.com', '18788593896', '120222199205184817', '刘宝', '男', '1992-05-18', '2', '9');
INSERT INTO `jd_user` VALUES ('30', '吃货之家', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('31', '粮食大亨', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('32', '无敌碳酸', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('33', '手机之家', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('34', '潮流包包', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('35', '精英鞋店', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('36', '精品服装', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('37', '厨房用品', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('38', '海蓝家居', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('39', '母婴专区', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('40', '生活必须家电', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('41', '做最美的自己', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('42', '女人要对自己好一点', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('43', '男士精选', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('44', '珠宝之家', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('45', '电脑之家', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('46', '汽车之家', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, '2', '1');
INSERT INTO `jd_user` VALUES ('48', 'liu', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('49', 'liu1', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('50', 'liu12', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('51', 'liu125', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('52', 'liu789', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('53', 'safd', 'b96aed87c58f6a994d5f03d52cf149f5', 'asdf@qq.com', 'sadf', 'asdf', 'afsd', '男', '2016-10-10', null, '1');
INSERT INTO `jd_user` VALUES ('55', 'safd', 'b96aed87c58f6a994d5f03d52cf149f5', 'asdf@qq.com', 'sadf', 'asdf', 'afsd', '男', '2016-10-10', null, '1');
INSERT INTO `jd_user` VALUES ('56', 'asfd', '76f07c98025de2b2bc7ecbc9905ca4b0', 'saf@qq.com', 'asdf', 'sadf', 'afsdf', '男', '2016-10-05', null, '1');
INSERT INTO `jd_user` VALUES ('57', 'sdaf', '5f95b79accf9386a7f3673765f7687b5', 'asfd@qq.com', 'asfd', 'asdf', 'liuba', '男', '2016-10-18', null, '1');
INSERT INTO `jd_user` VALUES ('58', 'sdaf', '5f95b79accf9386a7f3673765f7687b5', 'asfd@qq.com', 'asfd', 'asdf', 'liuba', '男', '2016-10-18', null, '1');
INSERT INTO `jd_user` VALUES ('59', 'asdf', 'b96aed87c58f6a994d5f03d52cf149f5', 'asdf@qq.com', 'adsf', 'asfd', 'fasdf', '男', '2016-10-12', null, '1');
INSERT INTO `jd_user` VALUES ('60', 'sf', 'b96aed87c58f6a994d5f03d52cf149f5', 'saf@qq.com', 'asf', 'afsd', 'sdfa', '男', '2016-10-04', null, '1');
INSERT INTO `jd_user` VALUES ('61', 'asdfasdf', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('62', 'bao', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('63', 'qusi', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('64', '12345', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('65', 'shitnimu', 'e530b9e074709e049f0234517a06090b', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('66', '147258369', 'f7ad2b22fdbcc1b03fb9301d37f3ad53', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('67', 'asdasdasd', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('68', '何志雄', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('69', 'xiaobao1', 'ae6eabb736ab05ac9130f21e9fffd25a', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('70', '123456789', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('71', '1234', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('72', 'chendj', '5e16a66b0a951718127081a09aac74d3', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('73', '18388408888888', '60bc6799e8524664def420c9c8f6c0d1', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('74', 'hanyaxing_007', 'b0ec40435d65634e607e5d44d570c2ca', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('75', '1234567', '24ea64be52dd11a39fc4019e15007a04', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('76', '921355592', '6c7d4b8925a2890c61778f63ddf75f1c', null, null, null, null, null, null, null, '1');
INSERT INTO `jd_user` VALUES ('77', 'l1416253764', '4a061218c5397df83901057b9bf10697', null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `jd_useradress`
-- ----------------------------
DROP TABLE IF EXISTS `jd_useradress`;
CREATE TABLE `jd_useradress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provice` varchar(255) CHARACTER SET utf8 NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 NOT NULL,
  `area` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 NOT NULL,
  `userid` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `msg` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd_useradress
-- ----------------------------
INSERT INTO `jd_useradress` VALUES ('3', '天津市', '天津市', '武清区', '18788593896', '24', '河西务镇小沙河村', '刘宝', '0');
INSERT INTO `jd_useradress` VALUES ('10', '云南省', '昆明市', '官渡区', '18788593896', '24', '证券大厦', '刘宝', '0');
INSERT INTO `jd_useradress` VALUES ('11', '天津市', '天津市', '武清区', '18788593896', '62', 'asf', 'asdf', '1');
INSERT INTO `jd_useradress` VALUES ('13', '北京市', '北京市', '东城区', '15111111111', '64', 'gddg', 'dfyhdf', '0');
INSERT INTO `jd_useradress` VALUES ('14', '北京市', '北京市', '东城区', '15111111111', '64', 'gddg', 'dfyhdf', '1');
INSERT INTO `jd_useradress` VALUES ('15', '重庆市', '重庆市', '大渡口区', '13629693667', '65', 'webIsnot', 'Saber', '1');
INSERT INTO `jd_useradress` VALUES ('16', '北京市', '北京市', '崇文区', '14725836936', '66', 'ghhgd h', 'gfrdhd d', '1');
INSERT INTO `jd_useradress` VALUES ('22', '北京市', '北京市', '东城区', '18788593896', '24', 'sadf', 'asdf', '0');
INSERT INTO `jd_useradress` VALUES ('23', '北京市', '北京市', '东城区', '18788593896', '24', 'asdf', 'asdf', '0');
INSERT INTO `jd_useradress` VALUES ('24', '北京市', '北京市', '东城区', '18788593896', '24', 'asdf', 'asdf', '0');
INSERT INTO `jd_useradress` VALUES ('25', '北京市', '北京市', '东城区', '18788593896', '24', 'asdf', 'asdf', '0');
INSERT INTO `jd_useradress` VALUES ('26', '北京市', '北京市', '东城区', '18788593896', '24', 'asdf', 'asfd', '0');
INSERT INTO `jd_useradress` VALUES ('27', '天津市', '天津市', '和平区', '18788593896', '24', 'asdf', 'asfd', '0');
INSERT INTO `jd_useradress` VALUES ('28', '北京市', '北京市', '东城区', '18788593896', '24', 'sdf', 'fas', '1');
INSERT INTO `jd_useradress` VALUES ('29', '北京市', '北京市', '西城区', '15475214575', '69', 'xioshkjcgbascckcba', 'xiaobao', '1');
INSERT INTO `jd_useradress` VALUES ('30', '北京市', '北京市', '东城区', '18234134123', '71', 'asdf', 'asdf', '0');
INSERT INTO `jd_useradress` VALUES ('31', '北京市', '北京市', '东城区', '18234134123', '71', 'asdf', 'asdf', '1');
INSERT INTO `jd_useradress` VALUES ('32', '云南省', '昆明市', '官渡区', '18288252340', '74', '证券大厦附楼6楼', '星星', '1');
INSERT INTO `jd_useradress` VALUES ('33', '重庆市', '重庆市', '渝中区', '18388408381', '73', '231342', '31232', '0');
INSERT INTO `jd_useradress` VALUES ('34', '重庆市', '重庆市', '渝中区', '18388408381', '73', '231342', '31232', '1');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `discripe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '吃货之家', null, '30');
INSERT INTO `shop` VALUES ('2', '粮食大亨', null, '31');
INSERT INTO `shop` VALUES ('3', '无敌碳酸', null, '32');
INSERT INTO `shop` VALUES ('4', '手机之家', null, '33');
INSERT INTO `shop` VALUES ('5', '潮流包包', null, '34');
INSERT INTO `shop` VALUES ('6', '精英鞋店', null, '35');
INSERT INTO `shop` VALUES ('7', '精品服装', null, '36');
INSERT INTO `shop` VALUES ('8', '厨房用品', null, '37');
INSERT INTO `shop` VALUES ('9', '海蓝家居', null, '38');
INSERT INTO `shop` VALUES ('10', '母婴专区', null, '39');
INSERT INTO `shop` VALUES ('11', '生活必须家电', null, '40');
INSERT INTO `shop` VALUES ('12', '做最美的自己', null, '41');
INSERT INTO `shop` VALUES ('13', '女人要对自己好一点', null, '42');
INSERT INTO `shop` VALUES ('14', '男士精选', null, '43');
INSERT INTO `shop` VALUES ('15', '珠宝之家', null, '44');
INSERT INTO `shop` VALUES ('16', '电脑之家', null, '45');
INSERT INTO `shop` VALUES ('17', '汽车之家', null, '46');

-- ----------------------------
-- Table structure for `shop_list`
-- ----------------------------
DROP TABLE IF EXISTS `shop_list`;
CREATE TABLE `shop_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `goodsName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `proPic` varchar(255) CHARACTER SET utf8 NOT NULL,
  `goodsPrice` double NOT NULL,
  `userid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shop_list
-- ----------------------------
INSERT INTO `shop_list` VALUES ('20', '141', 'Netual豆奶', 'images/goodsImg/34.jpg', '23', '67', '1', '1');
INSERT INTO `shop_list` VALUES ('22', '104', '美年达', 'images/goodsImg/7.jpg', '3', '68', '3', '1');
INSERT INTO `shop_list` VALUES ('23', '141', 'Netual豆奶', 'images/goodsImg/34.jpg', '23', '68', '1', '2');
INSERT INTO `shop_list` VALUES ('24', '110', '音华月饼', 'images/goodsImg/13.jpg', '45', '68', '2', '1');
INSERT INTO `shop_list` VALUES ('25', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '24', '1', '1');
INSERT INTO `shop_list` VALUES ('26', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '70', '1', '7');
INSERT INTO `shop_list` VALUES ('27', '638', '脆脆香食品', 'images/goodsImg/397.jpg', '4', '70', '1', '8');
INSERT INTO `shop_list` VALUES ('28', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '70', '1', '5272');
INSERT INTO `shop_list` VALUES ('30', '814', '迷你音响', 'images/goodsImg/114.jpg', '256', '70', '4', '20');
INSERT INTO `shop_list` VALUES ('31', '605', '连衣裙', 'images/goodsImg/352.jpg', '35', '69', '13', '3');
INSERT INTO `shop_list` VALUES ('32', '137', '益达木糖醇', 'images/goodsImg/45.jpg', '7', '70', '1', '5262');
INSERT INTO `shop_list` VALUES ('33', '717', '微波炉', 'images/goodsImg/263.jpg', '350', '69', '8', '1');
INSERT INTO `shop_list` VALUES ('34', '648', '儿童玩具', 'images/goodsImg/413.jpg', '26', '69', '10', '1');
INSERT INTO `shop_list` VALUES ('36', '139', 'CalBee果奶', 'images/goodsImg/31.jpg', '27', '70', '1', '3021');
INSERT INTO `shop_list` VALUES ('37', '620', '婴儿床', 'images/goodsImg/374.jpg', '25', '70', '10', '16454');
INSERT INTO `shop_list` VALUES ('38', '811', '小天才电话手表', 'images/goodsImg/111.jpg', '298', '64', '4', '1');
INSERT INTO `shop_list` VALUES ('39', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '75', '1', '2');
INSERT INTO `shop_list` VALUES ('40', '631', '巧克力', 'images/goodsImg/388.jpg', '66', '73', '1', '1');
INSERT INTO `shop_list` VALUES ('41', '785', '维维麦片', 'images/goodsImg/1.jpg', '10', '76', '1', '2');
INSERT INTO `shop_list` VALUES ('42', '587', '十字绣挂画', 'images/goodsImg/331.jpg', '22', '74', '9', '2');
INSERT INTO `shop_list` VALUES ('43', '110', '音华月饼', 'images/goodsImg/13.jpg', '45', '76', '2', '1');
