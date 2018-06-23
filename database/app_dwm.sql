/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : app_dwm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-23 01:28:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` varchar(11) NOT NULL,
  `owner_id` varchar(11) NOT NULL,
  `belong_date` date NOT NULL,
  `block_code` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=953 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('859', '1', '77', '2018-06-04', 'block-0-2');
INSERT INTO `item` VALUES ('860', '1', '77', '2018-06-04', 'block-0-4');
INSERT INTO `item` VALUES ('861', '1', '77', '2018-06-04', 'block-0-3');
INSERT INTO `item` VALUES ('862', '1', '77', '2018-06-04', 'block-0-1');
INSERT INTO `item` VALUES ('863', '3', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('864', '3', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('865', '3', '77', '2018-06-22', 'block-0-3');
INSERT INTO `item` VALUES ('866', '3', '77', '2018-06-22', 'block-0-4');
INSERT INTO `item` VALUES ('867', '4', '77', '2018-06-22', 'block-1-2');
INSERT INTO `item` VALUES ('868', '4', '77', '2018-06-22', 'block-1-3');
INSERT INTO `item` VALUES ('869', '4', '77', '2018-06-22', 'block-2-2');
INSERT INTO `item` VALUES ('870', '4', '77', '2018-06-22', 'block-2-3');
INSERT INTO `item` VALUES ('871', '4', '77', '2018-06-22', 'block-3-3');
INSERT INTO `item` VALUES ('872', '4', '77', '2018-06-22', 'block-3-2');
INSERT INTO `item` VALUES ('873', '1', '77', '2018-06-17', 'block-0-2');
INSERT INTO `item` VALUES ('874', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('875', '1', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('876', '1', '77', '2018-06-20', 'block-0-2');
INSERT INTO `item` VALUES ('877', '1', '77', '2018-06-21', 'block-0-2');
INSERT INTO `item` VALUES ('878', '1', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('879', '1', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('880', '1', '77', '2018-06-17', 'block-0-3');
INSERT INTO `item` VALUES ('881', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('882', '1', '77', '2018-06-19', 'block-0-3');
INSERT INTO `item` VALUES ('883', '1', '77', '2018-06-20', 'block-0-3');
INSERT INTO `item` VALUES ('884', '1', '77', '2018-06-21', 'block-0-3');
INSERT INTO `item` VALUES ('885', '1', '77', '2018-06-22', 'block-0-3');
INSERT INTO `item` VALUES ('886', '1', '77', '2018-06-23', 'block-0-3');
INSERT INTO `item` VALUES ('887', '1', '77', '2018-06-17', 'block-0-4');
INSERT INTO `item` VALUES ('888', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('889', '1', '77', '2018-06-19', 'block-0-4');
INSERT INTO `item` VALUES ('890', '1', '77', '2018-06-20', 'block-0-4');
INSERT INTO `item` VALUES ('891', '1', '77', '2018-06-21', 'block-0-4');
INSERT INTO `item` VALUES ('892', '1', '77', '2018-06-22', 'block-0-4');
INSERT INTO `item` VALUES ('893', '1', '77', '2018-06-23', 'block-0-4');
INSERT INTO `item` VALUES ('894', '6', '77', '2018-06-17', 'block-3-1');
INSERT INTO `item` VALUES ('895', '6', '77', '2018-06-18', 'block-3-1');
INSERT INTO `item` VALUES ('896', '6', '77', '2018-06-19', 'block-3-1');
INSERT INTO `item` VALUES ('897', '6', '77', '2018-06-20', 'block-3-1');
INSERT INTO `item` VALUES ('898', '6', '77', '2018-06-21', 'block-3-1');
INSERT INTO `item` VALUES ('899', '6', '77', '2018-06-22', 'block-3-1');
INSERT INTO `item` VALUES ('900', '6', '77', '2018-06-23', 'block-3-1');
INSERT INTO `item` VALUES ('901', '6', '77', '2018-06-17', 'block-3-2');
INSERT INTO `item` VALUES ('902', '6', '77', '2018-06-18', 'block-3-2');
INSERT INTO `item` VALUES ('903', '6', '77', '2018-06-19', 'block-3-2');
INSERT INTO `item` VALUES ('904', '6', '77', '2018-06-20', 'block-3-2');
INSERT INTO `item` VALUES ('905', '6', '77', '2018-06-21', 'block-3-2');
INSERT INTO `item` VALUES ('906', '6', '77', '2018-06-22', 'block-3-2');
INSERT INTO `item` VALUES ('907', '6', '77', '2018-06-23', 'block-3-2');
INSERT INTO `item` VALUES ('908', '6', '77', '2018-06-17', 'block-3-3');
INSERT INTO `item` VALUES ('909', '6', '77', '2018-06-18', 'block-3-3');
INSERT INTO `item` VALUES ('910', '6', '77', '2018-06-19', 'block-3-3');
INSERT INTO `item` VALUES ('911', '6', '77', '2018-06-20', 'block-3-3');
INSERT INTO `item` VALUES ('912', '6', '77', '2018-06-21', 'block-3-3');
INSERT INTO `item` VALUES ('913', '6', '77', '2018-06-22', 'block-3-3');
INSERT INTO `item` VALUES ('914', '6', '77', '2018-06-23', 'block-3-3');
INSERT INTO `item` VALUES ('915', '6', '77', '2018-06-17', 'block-3-4');
INSERT INTO `item` VALUES ('916', '6', '77', '2018-06-18', 'block-3-4');
INSERT INTO `item` VALUES ('917', '6', '77', '2018-06-19', 'block-3-4');
INSERT INTO `item` VALUES ('918', '6', '77', '2018-06-20', 'block-3-4');
INSERT INTO `item` VALUES ('919', '6', '77', '2018-06-21', 'block-3-4');
INSERT INTO `item` VALUES ('920', '6', '77', '2018-06-22', 'block-3-4');
INSERT INTO `item` VALUES ('921', '6', '77', '2018-06-23', 'block-3-4');
INSERT INTO `item` VALUES ('922', '4', '77', '2018-06-23', 'block-2-1');
INSERT INTO `item` VALUES ('923', '4', '77', '2018-06-23', 'block-2-2');
INSERT INTO `item` VALUES ('924', '4', '77', '2018-06-23', 'block-2-3');
INSERT INTO `item` VALUES ('925', '4', '77', '2018-06-23', 'block-2-4');
INSERT INTO `item` VALUES ('926', '5', '77', '2018-06-23', 'block-3-1');
INSERT INTO `item` VALUES ('927', '5', '77', '2018-06-23', 'block-2-1');
INSERT INTO `item` VALUES ('928', '5', '77', '2018-06-23', 'block-3-2');
INSERT INTO `item` VALUES ('929', '3', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('930', '3', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('931', '6', '77', '2018-06-23', 'block-4-2');
INSERT INTO `item` VALUES ('932', '6', '77', '2018-06-23', 'block-4-3');
INSERT INTO `item` VALUES ('933', '6', '77', '2018-06-23', 'block-4-4');
INSERT INTO `item` VALUES ('934', '5', '77', '2018-06-23', 'block-5-1');
INSERT INTO `item` VALUES ('935', '5', '77', '2018-06-23', 'block-5-2');
INSERT INTO `item` VALUES ('936', '5', '77', '2018-06-23', 'block-5-3');
INSERT INTO `item` VALUES ('937', '5', '77', '2018-06-23', 'block-5-4');
INSERT INTO `item` VALUES ('938', '6', '77', '2018-06-23', 'block-6-1');
INSERT INTO `item` VALUES ('939', '6', '77', '2018-06-23', 'block-6-2');
INSERT INTO `item` VALUES ('940', '6', '77', '2018-06-23', 'block-6-3');
INSERT INTO `item` VALUES ('941', '4', '77', '2018-06-23', 'block-6-2');
INSERT INTO `item` VALUES ('942', '4', '77', '2018-06-23', 'block-6-3');
INSERT INTO `item` VALUES ('943', '4', '77', '2018-06-23', 'block-6-4');
INSERT INTO `item` VALUES ('944', '6', '77', '2018-06-23', 'block-7-1');
INSERT INTO `item` VALUES ('945', '6', '77', '2018-06-23', 'block-7-2');
INSERT INTO `item` VALUES ('946', '5', '77', '2018-06-23', 'block-7-3');
INSERT INTO `item` VALUES ('947', '5', '77', '2018-06-23', 'block-7-4');
INSERT INTO `item` VALUES ('948', '3', '77', '2018-06-23', 'block-1-2');
INSERT INTO `item` VALUES ('949', '3', '77', '2018-06-23', 'block-1-3');
INSERT INTO `item` VALUES ('950', '3', '77', '2018-06-23', 'block-1-4');
INSERT INTO `item` VALUES ('951', '5', '77', '2018-06-23', 'block-1-1');
INSERT INTO `item` VALUES ('952', '5', '77', '2018-06-23', 'block-1-2');

-- ----------------------------
-- Table structure for `mood`
-- ----------------------------
DROP TABLE IF EXISTS `mood`;
CREATE TABLE `mood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `create_time` varchar(22) NOT NULL,
  `update_time` varchar(22) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mood
-- ----------------------------
INSERT INTO `mood` VALUES ('8', '77', '用户密码加密', '1529631179', '1529631179', '蓝思追');
INSERT INTO `mood` VALUES ('9', null, '你好哇', '1529636301', '1529636301', '蓝思追');
INSERT INTO `mood` VALUES ('10', null, '你好哇', '1529636860', '1529636860', '蓝思追');
INSERT INTO `mood` VALUES ('11', null, '应该可以了吧', '1529636932', '1529636932', '蓝思追');
INSERT INTO `mood` VALUES ('12', null, '你好哇李银河', '1529637153', '1529637153', '蓝思追');

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `tag_color` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '数学', '77', '#54FF9F');
INSERT INTO `tag` VALUES ('2', '英语', '77', '#FFF68F');
INSERT INTO `tag` VALUES ('3', '政治', '77', '#FFFF00');
INSERT INTO `tag` VALUES ('4', '数据结构', '77', '#00FF00');
INSERT INTO `tag` VALUES ('5', '计组', '77', '#9400D3');
INSERT INTO `tag` VALUES ('6', '打麻将', '77', '#FF4500');

-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` varchar(11) NOT NULL,
  `owner_id` varchar(11) NOT NULL,
  `block_code` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('305', '1', '77', 'block-0-1');
INSERT INTO `template` VALUES ('306', '1', '77', 'block-0-2');
INSERT INTO `template` VALUES ('307', '3', '77', 'block-1-1');
INSERT INTO `template` VALUES ('308', '3', '77', 'block-1-2');
INSERT INTO `template` VALUES ('309', '3', '77', 'block-1-3');
INSERT INTO `template` VALUES ('310', '3', '77', 'block-1-4');
INSERT INTO `template` VALUES ('311', '4', '77', 'block-2-1');
INSERT INTO `template` VALUES ('312', '4', '77', 'block-2-2');
INSERT INTO `template` VALUES ('313', '4', '77', 'block-2-3');
INSERT INTO `template` VALUES ('314', '4', '77', 'block-2-4');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(60) NOT NULL,
  `user_group` varchar(10) DEFAULT '',
  `user_state` varchar(11) DEFAULT '',
  `user_name` varchar(60) DEFAULT '',
  `dept_code` varchar(2) DEFAULT '' COMMENT '院系代码，学号3-4位',
  `user_intro` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `user_sex` varchar(10) DEFAULT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '140210115@stu.hit.edu.cn', '470908437210483227187612295559357336079187711756', 'student', 'uncheck', '温宁', '02', '', '2018-05-18 23:36:44', '2018-05-18 23:36:44', '2018-05-18 23:36:44', '女', '178652533996', null);
INSERT INTO `user` VALUES ('2', '18125050124@stu.hit.edu.cn', '436215297635677146224909699291096490619568670579', 'teacher', 'uncheck', '蓝曦臣', '12', '', '2018-05-18 23:36:45', '2018-05-18 23:36:45', '2018-05-19 15:35:07', '男', '178627096977', null);
INSERT INTO `user` VALUES ('3', '1814505169@stu.hit.edu.cn', '542273425488301150688334405073665485016583188349', 'teacher', 'uncheck', '魏无羡', '14', '', '2018-05-18 23:36:45', '2018-05-18 23:36:45', '2018-05-18 23:36:45', '女', '178631324924', null);
INSERT INTO `user` VALUES ('4', '1610303117@stu.hit.edu.cn', '-41068996843929275973274783410779769749893649668', 'student', 'uncheck', '魏无羡', '10', '', '2018-05-18 23:36:45', '2018-05-18 23:36:45', '2018-05-19 16:00:06', '女', '178631358482', null);
INSERT INTO `user` VALUES ('5', '1501202136@stu.hit.edu.cn', '44989871372715196914789097519243595348141245159', 'teacher', 'uncheck', '金凌', '01', '', '2018-05-18 23:36:46', '2018-05-18 23:36:46', '2018-05-18 23:36:46', '男', '178627059043', null);
INSERT INTO `user` VALUES ('6', '16113030127@stu.hit.edu.cn', '-726159512174268575621404439930220827239639652324', 'teacher', 'uncheck', '江厌离', '11', '', '2018-05-18 23:36:46', '2018-05-18 23:36:46', '2018-05-19 16:01:30', '女', '178652599905', null);
INSERT INTO `user` VALUES ('7', '1409101105@stu.hit.edu.cn', '-333556405000064557746541213689101154818427627369', 'student', 'uncheck', '蓝忘机', '09', '', '2018-05-18 23:36:46', '2018-05-18 23:36:46', '2018-05-18 23:36:46', '女', '178631317168', null);
INSERT INTO `user` VALUES ('9', '1614303197@stu.hit.edu.cn', '-311035565685128622189016039630371067506225088979', 'alu', 'uncheck', '温宁', '14', '', '2018-05-18 23:36:47', '2018-05-18 23:36:47', '2018-05-18 23:36:47', '女', '178631324955', null);
INSERT INTO `user` VALUES ('10', '1510202036@stu.hit.edu.cn', '146418900179770531708301797787198643865047441878', 'student', 'uncheck', '江厌离', '10', '', '2018-05-18 23:36:47', '2018-05-18 23:36:47', '2018-05-18 23:36:47', '男', '178627081355', null);
INSERT INTO `user` VALUES ('11', '161130302@stu.hit.edu.cn', '271199660193112971313362842270572010765795211754', 'alu', 'uncheck', '温宁', '11', '', '2018-05-18 23:36:48', '2018-05-18 23:36:48', '2018-05-18 23:36:48', '男', '178643117570', null);
INSERT INTO `user` VALUES ('12', '169930377@stu.hit.edu.cn', '704019475616440062766319006976959023505117096237', 'alu', 'uncheck', '宋岚', '99', '', '2018-05-18 23:36:48', '2018-05-18 23:36:48', '2018-05-18 23:36:48', '女', '178631321907', null);
INSERT INTO `user` VALUES ('13', '18045050129@stu.hit.edu.cn', '286584880224984203485229884426420840858591559159', 'student', 'uncheck', '宋岚', '04', '', '2018-05-18 23:36:48', '2018-05-18 23:36:48', '2018-05-18 23:36:48', '女', '178631354271', null);
INSERT INTO `user` VALUES ('14', '1707404198@stu.hit.edu.cn', '241414439503224172775223406610422065039942269652', 'student', 'uncheck', '薛洋', '07', '', '2018-05-18 23:36:49', '2018-05-18 23:36:49', '2018-05-18 23:36:49', '男', '178643150583', null);
INSERT INTO `user` VALUES ('15', '149910115@stu.hit.edu.cn', '580363265036805739762060184061842376153586687509', 'student', 'uncheck', '温宁', '99', '', '2018-05-18 23:36:49', '2018-05-18 23:36:49', '2018-05-18 23:36:49', '女', '178652543472', null);
INSERT INTO `user` VALUES ('16', '1613303162@stu.hit.edu.cn', '-494836753408262042124774867574717423670316523399', 'student', 'uncheck', '金凌', '13', '', '2018-05-18 23:37:00', '2018-05-18 23:37:00', '2018-05-18 23:37:00', '男', '178643171210', null);
INSERT INTO `user` VALUES ('17', '1812505179@stu.hit.edu.cn', '343132488345938823647439363090027888825582207686', 'alu', 'uncheck', '江厌离', '12', '', '2018-05-18 23:37:01', '2018-05-18 23:37:01', '2018-05-18 23:37:01', '女', '178652568953', null);
INSERT INTO `user` VALUES ('18', '18085050189@stu.hit.edu.cn', '294482316745980455863811171985278632449866604259', 'student', 'uncheck', '蓝曦臣', '08', '', '2018-05-18 23:37:01', '2018-05-18 23:37:01', '2018-05-18 23:37:01', '女', '178631376061', null);
INSERT INTO `user` VALUES ('19', '1610303167@stu.hit.edu.cn', '-71724959368475911944859654655420808507474316713', 'alu', 'uncheck', '温如冰', '10', '', '2018-05-18 23:37:01', '2018-05-18 23:37:01', '2018-05-18 23:37:01', '女', '178652549419', null);
INSERT INTO `user` VALUES ('20', '1608303162@stu.hit.edu.cn', '258982752948088146223212851047248683578155177861', 'student', 'uncheck', '金凌', '08', '', '2018-05-18 23:37:02', '2018-05-18 23:37:02', '2018-05-18 23:37:02', '男', '178643182745', null);
INSERT INTO `user` VALUES ('21', '170140483@stu.hit.edu.cn', '695116580461084652481088063574944437460022993767', 'alu', 'uncheck', '蓝愿', '01', '', '2018-05-18 23:37:02', '2018-05-18 23:37:02', '2018-05-18 23:37:02', '女', '178652598990', null);
INSERT INTO `user` VALUES ('22', '150820206@stu.hit.edu.cn', '-4399188861016966665411648398006865614572232609', 'student', 'uncheck', '金凌', '08', '', '2018-05-18 23:37:02', '2018-05-18 23:37:02', '2018-05-18 23:37:02', '男', '178643135007', null);
INSERT INTO `user` VALUES ('23', '15082020121@stu.hit.edu.cn', '489615101074527455245498745222168434008222577571', 'teacher', 'uncheck', '晓星尘', '08', '', '2018-05-18 23:37:03', '2018-05-18 23:37:03', '2018-05-19 03:31:37', '女', '178631380133', null);
INSERT INTO `user` VALUES ('24', '1502202196@stu.hit.edu.cn', '-74401187903553554673156894198204235668323935276', 'teacher', 'uncheck', '蓝忘机', '02', '', '2018-05-18 23:37:03', '2018-05-18 23:37:03', '2018-05-18 23:37:03', '男', '178627084999', null);
INSERT INTO `user` VALUES ('25', '140510130@stu.hit.edu.cn', '101801853329555524711701879704013613980016328403', 'student', 'uncheck', '蓝曦臣', '05', '', '2018-05-18 23:37:03', '2018-05-18 23:37:03', '2018-05-18 23:37:03', '男', '178643123127', null);
INSERT INTO `user` VALUES ('26', '1604303112@stu.hit.edu.cn', '-628384947089615384849795301857485133042340399314', 'teacher', 'uncheck', '金光瑶', '04', '', '2018-05-18 23:37:04', '2018-05-18 23:37:04', '2018-05-18 23:37:04', '男', '178627069877', null);
INSERT INTO `user` VALUES ('27', '180450529@stu.hit.edu.cn', '-128859956017582099481651146617994515136009252264', 'alu', 'uncheck', '薛洋', '04', '', '2018-05-18 23:37:04', '2018-05-18 23:37:04', '2018-05-18 23:37:04', '女', '178631314952', null);
INSERT INTO `user` VALUES ('28', '180750544@stu.hit.edu.cn', '588705817282335951617238542823203349702148330405', 'alu', 'uncheck', '蓝愿', '07', '', '2018-05-18 23:37:04', '2018-05-18 23:37:04', '2018-05-18 23:37:04', '男', '178627016780', null);
INSERT INTO `user` VALUES ('29', '1801505164@stu.hit.edu.cn', '5547447625278182991869647565934525581654626573', 'alu', 'uncheck', '金光瑶', '01', '', '2018-05-18 23:37:04', '2018-05-18 23:37:04', '2018-05-18 23:37:04', '男', '178627093502', null);
INSERT INTO `user` VALUES ('30', '1507202136@stu.hit.edu.cn', '-364256337339925439596770436345194315226734544573', 'teacher', 'uncheck', '金凌', '07', '', '2018-05-18 23:37:05', '2018-05-18 23:37:05', '2018-05-18 23:37:05', '男', '178627053742', null);
INSERT INTO `user` VALUES ('31', '1807505164@stu.hit.edu.cn', '520470638435655613821727074588290284229203396478', 'alu', 'uncheck', '金光瑶', '07', '', '2018-05-18 23:37:05', '2018-05-18 23:37:05', '2018-05-18 23:37:05', '男', '178627080469', null);
INSERT INTO `user` VALUES ('32', '1402101135@stu.hit.edu.cn', '154591916358123921264890366557557701702299954002', 'student', 'uncheck', '蓝愿', '02', '', '2018-05-18 23:37:06', '2018-05-18 23:37:06', '2018-05-18 23:37:06', '女', '178652585149', null);
INSERT INTO `user` VALUES ('33', '180250519@stu.hit.edu.cn', '-509864019331433738289998832273688939064982246124', 'teacher', 'uncheck', '金凌', '02', '', '2018-05-18 23:37:06', '2018-05-18 23:37:06', '2018-05-18 23:37:06', '女', '178652574060', null);
INSERT INTO `user` VALUES ('34', '18045050124@stu.hit.edu.cn', '-516824546299032739516997284427465792550156839008', 'teacher', 'uncheck', '蓝曦臣', '04', '', '2018-05-18 23:37:06', '2018-05-18 23:37:06', '2018-05-18 23:37:06', '男', '178627025560', null);
INSERT INTO `user` VALUES ('35', '170240418@stu.hit.edu.cn', '698779794677279653498272032028427674957540335629', 'student', 'uncheck', '蓝愿', '02', '', '2018-05-18 23:37:07', '2018-05-18 23:37:07', '2018-05-18 23:37:07', '男', '178643123885', null);
INSERT INTO `user` VALUES ('36', '1612303067@stu.hit.edu.cn', '727059217046793076110358562300591419910453291984', 'teacher', 'uncheck', '温宁', '12', '', '2018-05-18 23:37:07', '2018-05-18 23:37:07', '2018-05-18 23:37:07', '女', '178652565668', null);
INSERT INTO `user` VALUES ('37', '171140443@stu.hit.edu.cn', '398312553529142055716146869904273373319031068522', 'teacher', 'uncheck', '晓星尘', '11', '', '2018-05-18 23:37:07', '2018-05-18 23:37:07', '2018-05-18 23:37:07', '女', '178652578610', null);
INSERT INTO `user` VALUES ('38', '180150504@stu.hit.edu.cn', '-398858838024491984748212212940642584201566260386', 'teacher', 'uncheck', '晓星尘', '01', '', '2018-05-18 23:37:08', '2018-05-18 23:37:08', '2018-05-18 23:37:08', '男', '178627085878', null);
INSERT INTO `user` VALUES ('39', '1410101190@stu.hit.edu.cn', '-285764027082674304661235804194449281149181321126', 'teacher', 'uncheck', '金光瑶', '10', '', '2018-05-18 23:37:08', '2018-05-18 23:37:08', '2018-05-18 23:37:08', '男', '178643118195', null);
INSERT INTO `user` VALUES ('40', '140310155@stu.hit.edu.cn', '-56035153651427317559012363626569932500219739823', 'teacher', 'uncheck', '薛洋', '03', '', '2018-05-18 23:37:08', '2018-05-18 23:37:08', '2018-05-18 23:37:08', '女', '178652592194', null);
INSERT INTO `user` VALUES ('41', '1405101110@stu.hit.edu.cn', '-507629715581262832648929271708749082718782352836', 'alu', 'uncheck', '金凌', '05', '', '2018-05-18 23:37:09', '2018-05-18 23:37:09', '2018-05-18 23:37:09', '男', '178643168108', null);
INSERT INTO `user` VALUES ('42', '1611303037@stu.hit.edu.cn', '-134028874070935334233405476476866084820882904278', 'teacher', 'uncheck', '温如冰', '11', '', '2018-05-18 23:37:09', '2018-05-18 23:37:09', '2018-05-18 23:37:09', '女', '178631363211', null);
INSERT INTO `user` VALUES ('43', '171040478@stu.hit.edu.cn', '151965473095007027091682397059806505881290770823', 'student', 'uncheck', '魏无羡', '10', '', '2018-05-18 23:37:09', '2018-05-18 23:37:09', '2018-05-18 23:37:09', '男', '178643131746', null);
INSERT INTO `user` VALUES ('44', '1803505164@stu.hit.edu.cn', '-237541853494938978528858966769283711065808526418', 'alu', 'uncheck', '金光瑶', '03', '', '2018-05-18 23:37:10', '2018-05-18 23:37:10', '2018-05-18 23:37:10', '男', '178627037133', null);
INSERT INTO `user` VALUES ('45', '1414101095@stu.hit.edu.cn', '-61051345814786911722861945650197654814455919760', 'alu', 'uncheck', '晓星尘', '14', '', '2018-05-18 23:37:10', '2018-05-18 23:37:10', '2018-05-18 23:37:10', '女', '178652548354', null);
INSERT INTO `user` VALUES ('46', '1805505164@stu.hit.edu.cn', '-238157223824501690850187697334570542801780556984', 'alu', 'uncheck', '金光瑶', '05', '', '2018-05-18 23:37:10', '2018-05-18 23:37:10', '2018-05-18 23:37:10', '男', '178627071489', null);
INSERT INTO `user` VALUES ('47', '140110110@stu.hit.edu.cn', '-443339441138774041619169021023754153182035829919', 'teacher', 'uncheck', '江厌离', '01', '', '2018-05-18 23:37:10', '2018-05-18 23:37:10', '2018-05-18 23:37:10', '男', '178643128935', null);
INSERT INTO `user` VALUES ('48', '1802505194@stu.hit.edu.cn', '-380541857675553741672357947790930072796182935590', 'alu', 'uncheck', '宋岚', '02', '', '2018-05-18 23:37:11', '2018-05-18 23:37:11', '2018-05-18 23:37:11', '男', '178643152046', null);
INSERT INTO `user` VALUES ('49', '18105050189@stu.hit.edu.cn', '-728950114388527373868481087976083671937889387262', 'student', 'uncheck', '蓝曦臣', '10', '', '2018-05-18 23:37:11', '2018-05-18 23:37:11', '2018-05-18 23:37:11', '女', '178631338659', null);
INSERT INTO `user` VALUES ('50', '1799404138@stu.hit.edu.cn', '-450638443587019390868516271302755858193875492135', 'student', 'uncheck', '金光瑶', '99', '', '2018-05-18 23:37:11', '2018-05-18 23:37:11', '2018-05-18 23:37:11', '男', '178643189330', null);
INSERT INTO `user` VALUES ('51', '1608303067@stu.hit.edu.cn', '-116352803338148326753458778243644692649022614786', 'teacher', 'uncheck', '温宁', '08', '', '2018-05-18 23:37:12', '2018-05-18 23:37:12', '2018-05-18 23:37:12', '女', '178652595845', null);
INSERT INTO `user` VALUES ('52', '151420226@stu.hit.edu.cn', '-637772638599057815118881192130572169017776832140', 'alu', 'uncheck', '魏无羡', '14', '', '2018-05-18 23:37:12', '2018-05-18 23:37:12', '2018-05-18 23:37:12', '男', '178643172818', null);
INSERT INTO `user` VALUES ('53', '1513202106@stu.hit.edu.cn', '554031364823783798265610485444473205896780429255', 'teacher', 'uncheck', '温宁', '13', '', '2018-05-18 23:37:12', '2018-05-18 23:37:12', '2018-05-18 23:37:12', '男', '178643199233', null);
INSERT INTO `user` VALUES ('54', '17014040153@stu.hit.edu.cn', '-332249628288653386355370709128195300690076879374', 'student', 'uncheck', '江厌离', '01', '', '2018-05-18 23:37:12', '2018-05-18 23:37:12', '2018-05-18 23:37:12', '女', '178631372606', null);
INSERT INTO `user` VALUES ('55', '160630357@stu.hit.edu.cn', '-492457429651770032782682253135272023862232029063', 'student', 'uncheck', '蓝愿', '06', '', '2018-05-18 23:37:13', '2018-05-18 23:37:13', '2018-05-18 23:37:13', '女', '178631394489', null);
INSERT INTO `user` VALUES ('56', '1708404118@stu.hit.edu.cn', '385373187004159436752552967339555605301537085466', 'teacher', 'uncheck', '蓝忘机', '08', '', '2018-05-18 23:37:13', '2018-05-18 23:37:13', '2018-05-18 23:37:13', '男', '178643183227', null);
INSERT INTO `user` VALUES ('57', '1401101175@stu.hit.edu.cn', '-135993657520549811801976470682015015657184086794', 'teacher', 'uncheck', '金凌', '01', '', '2018-05-18 23:37:13', '2018-05-18 23:37:13', '2018-05-18 23:37:13', '女', '178652580070', null);
INSERT INTO `user` VALUES ('58', '1512202106@stu.hit.edu.cn', '-327980211407788504437762979491158491067506974776', 'teacher', 'uncheck', '温宁', '12', '', '2018-05-18 23:37:14', '2018-05-18 23:37:14', '2018-05-18 23:37:14', '男', '178643172839', null);
INSERT INTO `user` VALUES ('59', '18025050129@stu.hit.edu.cn', '-205311754972151956242657700975742462020183378748', 'student', 'uncheck', '宋岚', '02', '', '2018-05-18 23:37:14', '2018-05-18 23:37:14', '2018-05-18 23:37:14', '女', '178631341985', null);
INSERT INTO `user` VALUES ('60', '141010115@stu.hit.edu.cn', '-42277012702783448674033927443792460304854774987', 'student', 'uncheck', '温宁', '10', '', '2018-05-18 23:37:14', '2018-05-18 23:37:14', '2018-05-18 23:37:14', '女', '178652515671', null);
INSERT INTO `user` VALUES ('61', '1509202031@stu.hit.edu.cn', '-325583202126711265290468627936157885813641589315', 'teacher', 'uncheck', '蓝愿', '09', '', '2018-05-18 23:37:15', '2018-05-18 23:37:15', '2018-05-18 23:37:15', '女', '178652566908', null);
INSERT INTO `user` VALUES ('62', '170740453@stu.hit.edu.cn', '-546547145484168797973548927323209614674605363447', 'alu', 'uncheck', '蓝忘机', '07', '', '2018-05-18 23:37:15', '2018-05-18 23:37:15', '2018-05-18 23:37:15', '女', '178631325231', null);
INSERT INTO `user` VALUES ('63', '1403101175@stu.hit.edu.cn', '196262623557658108744616437958563658740660471406', 'teacher', 'uncheck', '金凌', '03', '', '2018-05-18 23:37:15', '2018-05-18 23:37:15', '2018-05-18 23:37:15', '女', '178652546455', null);
INSERT INTO `user` VALUES ('64', '1805505144@stu.hit.edu.cn', '-52684277049390829412496326525857826339747439480', 'student', 'uncheck', '蓝忘机', '05', '', '2018-05-18 23:37:16', '2018-05-18 23:37:16', '2018-05-18 23:37:16', '男', '178627048041', null);
INSERT INTO `user` VALUES ('65', '1406101130@stu.hit.edu.cn', '414780695494301309607631754693041586781388717783', 'teacher', 'uncheck', '魏无羡', '06', '', '2018-05-18 23:37:16', '2018-05-18 23:37:16', '2018-05-18 23:37:16', '男', '178643180498', null);
INSERT INTO `user` VALUES ('66', '140110145@stu.hit.edu.cn', '335569429261446149841012504022251255441213348893', 'student', 'uncheck', '金凌', '01', '', '2018-05-18 23:37:16', '2018-05-18 23:37:16', '2018-05-18 23:37:16', '女', '178631331857', null);
INSERT INTO `user` VALUES ('67', '16143030187@stu.hit.edu.cn', '-600406148282353702347378709595355510122485629206', 'teacher', 'uncheck', '蓝愿', '14', '', '2018-05-18 23:37:17', '2018-05-18 23:37:17', '2018-05-18 23:37:17', '女', '178652549770', null);
INSERT INTO `user` VALUES ('68', '1603303147@stu.hit.edu.cn', '306672690954814214860760013370993809611622299067', 'student', 'uncheck', '晓星尘', '03', '', '2018-05-18 23:37:17', '2018-05-18 23:37:17', '2018-05-18 23:37:17', '女', '178652591326', null);
INSERT INTO `user` VALUES ('69', '1710404103@stu.hit.edu.cn', '203317075522396192059179236000609705612898474927', 'teacher', 'uncheck', '宋岚', '10', '', '2018-05-18 23:37:17', '2018-05-18 23:37:17', '2018-05-18 23:37:17', '女', '178652573846', null);
INSERT INTO `user` VALUES ('70', '16093030187@stu.hit.edu.cn', '451078077135207312347512213831929312245985443539', 'teacher', 'uncheck', '蓝愿', '09', '', '2018-05-18 23:37:18', '2018-05-18 23:37:18', '2018-05-18 23:37:18', '女', '178652547451', null);
INSERT INTO `user` VALUES ('71', '1404101115@stu.hit.edu.cn', '-361735473740377713716974129590900844347161037385', 'teacher', 'uncheck', '温如冰', '04', '', '2018-05-18 23:37:18', '2018-05-18 23:37:18', '2018-05-18 23:37:18', '女', '178652558305', null);
INSERT INTO `user` VALUES ('72', '180250589@stu.hit.edu.cn', '27448831379610529705458180327439652040322018972', 'alu', 'uncheck', '温如冰', '02', '', '2018-05-18 23:37:18', '2018-05-18 23:37:18', '2018-05-18 23:37:18', '女', '178631393363', null);
INSERT INTO `user` VALUES ('77', '1504103101@stu.hit.edu.cn', '76cc31cedd4f22538514673e97ce64832ee0fadf', '', 'unchecked', '蓝思追', '', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('78', '111', '011c945f30ce2cbafc452f39840f025693339c42', '', 'unchecked', '蓝忘机', '', null, null, null, null, null, null, null);
