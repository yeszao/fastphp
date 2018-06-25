/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : app_dwm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-25 23:48:44
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
) ENGINE=InnoDB AUTO_INCREMENT=1630 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1186', '1', '77', '2018-06-17', 'block-0-1');
INSERT INTO `item` VALUES ('1187', '1', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1188', '1', '77', '2018-06-17', 'block-0-2');
INSERT INTO `item` VALUES ('1189', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1190', '1', '77', '2018-06-17', 'block-0-3');
INSERT INTO `item` VALUES ('1191', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('1192', '1', '77', '2018-06-17', 'block-0-4');
INSERT INTO `item` VALUES ('1193', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('1194', '3', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1195', '3', '77', '2018-06-23', 'block-1-2');
INSERT INTO `item` VALUES ('1196', '3', '77', '2018-06-23', 'block-1-3');
INSERT INTO `item` VALUES ('1197', '3', '77', '2018-06-23', 'block-1-4');
INSERT INTO `item` VALUES ('1198', '4', '77', '2018-06-23', 'block-2-1');
INSERT INTO `item` VALUES ('1199', '4', '77', '2018-06-23', 'block-2-2');
INSERT INTO `item` VALUES ('1200', '4', '77', '2018-06-23', 'block-2-3');
INSERT INTO `item` VALUES ('1201', '1', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('1202', '1', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1203', '1', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('1204', '1', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('1205', '1', '77', '2018-06-22', 'block-0-3');
INSERT INTO `item` VALUES ('1206', '1', '77', '2018-06-23', 'block-0-3');
INSERT INTO `item` VALUES ('1207', '1', '77', '2018-06-22', 'block-0-4');
INSERT INTO `item` VALUES ('1208', '1', '77', '2018-06-23', 'block-0-4');
INSERT INTO `item` VALUES ('1209', '3', '77', '2018-06-22', 'block-1-2');
INSERT INTO `item` VALUES ('1210', '3', '77', '2018-06-23', 'block-1-2');
INSERT INTO `item` VALUES ('1211', '3', '77', '2018-06-22', 'block-1-3');
INSERT INTO `item` VALUES ('1212', '3', '77', '2018-06-23', 'block-1-3');
INSERT INTO `item` VALUES ('1213', '3', '77', '2018-06-22', 'block-1-4');
INSERT INTO `item` VALUES ('1214', '3', '77', '2018-06-23', 'block-1-4');
INSERT INTO `item` VALUES ('1215', '1', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1216', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1217', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('1218', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('1219', '3', '77', '2018-06-18', 'block-1-2');
INSERT INTO `item` VALUES ('1220', '3', '77', '2018-06-18', 'block-1-3');
INSERT INTO `item` VALUES ('1221', '3', '77', '2018-06-18', 'block-1-4');
INSERT INTO `item` VALUES ('1222', '4', '77', '2018-06-18', 'block-2-1');
INSERT INTO `item` VALUES ('1223', '4', '77', '2018-06-18', 'block-2-2');
INSERT INTO `item` VALUES ('1224', '6', '77', '2018-06-18', 'block-4-2');
INSERT INTO `item` VALUES ('1225', '6', '77', '2018-06-18', 'block-4-3');
INSERT INTO `item` VALUES ('1226', '1', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1227', '1', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1228', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1229', '1', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1230', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('1231', '1', '77', '2018-06-19', 'block-0-3');
INSERT INTO `item` VALUES ('1232', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('1233', '1', '77', '2018-06-19', 'block-0-4');
INSERT INTO `item` VALUES ('1234', '3', '77', '2018-06-18', 'block-1-2');
INSERT INTO `item` VALUES ('1235', '3', '77', '2018-06-19', 'block-1-2');
INSERT INTO `item` VALUES ('1236', '3', '77', '2018-06-18', 'block-1-3');
INSERT INTO `item` VALUES ('1237', '3', '77', '2018-06-19', 'block-1-3');
INSERT INTO `item` VALUES ('1238', '3', '77', '2018-06-18', 'block-1-4');
INSERT INTO `item` VALUES ('1239', '3', '77', '2018-06-19', 'block-1-4');
INSERT INTO `item` VALUES ('1240', '4', '77', '2018-06-18', 'block-2-1');
INSERT INTO `item` VALUES ('1241', '4', '77', '2018-06-19', 'block-2-1');
INSERT INTO `item` VALUES ('1242', '4', '77', '2018-06-18', 'block-2-2');
INSERT INTO `item` VALUES ('1243', '4', '77', '2018-06-19', 'block-2-2');
INSERT INTO `item` VALUES ('1244', '6', '77', '2018-06-18', 'block-4-2');
INSERT INTO `item` VALUES ('1245', '6', '77', '2018-06-19', 'block-4-2');
INSERT INTO `item` VALUES ('1246', '6', '77', '2018-06-18', 'block-4-3');
INSERT INTO `item` VALUES ('1247', '6', '77', '2018-06-19', 'block-4-3');
INSERT INTO `item` VALUES ('1248', '1', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1249', '1', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1250', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1251', '1', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1252', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('1253', '1', '77', '2018-06-19', 'block-0-3');
INSERT INTO `item` VALUES ('1254', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('1255', '1', '77', '2018-06-19', 'block-0-4');
INSERT INTO `item` VALUES ('1256', '3', '77', '2018-06-18', 'block-1-2');
INSERT INTO `item` VALUES ('1257', '3', '77', '2018-06-19', 'block-1-2');
INSERT INTO `item` VALUES ('1258', '3', '77', '2018-06-18', 'block-1-3');
INSERT INTO `item` VALUES ('1259', '3', '77', '2018-06-19', 'block-1-3');
INSERT INTO `item` VALUES ('1260', '3', '77', '2018-06-18', 'block-1-4');
INSERT INTO `item` VALUES ('1261', '3', '77', '2018-06-19', 'block-1-4');
INSERT INTO `item` VALUES ('1262', '4', '77', '2018-06-18', 'block-2-1');
INSERT INTO `item` VALUES ('1263', '4', '77', '2018-06-19', 'block-2-1');
INSERT INTO `item` VALUES ('1264', '4', '77', '2018-06-18', 'block-2-2');
INSERT INTO `item` VALUES ('1265', '4', '77', '2018-06-19', 'block-2-2');
INSERT INTO `item` VALUES ('1266', '6', '77', '2018-06-18', 'block-4-2');
INSERT INTO `item` VALUES ('1267', '6', '77', '2018-06-19', 'block-4-2');
INSERT INTO `item` VALUES ('1268', '6', '77', '2018-06-18', 'block-4-3');
INSERT INTO `item` VALUES ('1269', '6', '77', '2018-06-19', 'block-4-3');
INSERT INTO `item` VALUES ('1270', '1', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1271', '1', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1272', '1', '77', '2018-06-20', 'block-0-1');
INSERT INTO `item` VALUES ('1273', '1', '77', '2018-06-21', 'block-0-1');
INSERT INTO `item` VALUES ('1274', '1', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('1275', '1', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1276', '1', '77', '2018-06-24', 'block-0-1');
INSERT INTO `item` VALUES ('1277', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1278', '1', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1279', '1', '77', '2018-06-20', 'block-0-2');
INSERT INTO `item` VALUES ('1280', '1', '77', '2018-06-21', 'block-0-2');
INSERT INTO `item` VALUES ('1281', '1', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('1282', '1', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('1283', '1', '77', '2018-06-24', 'block-0-2');
INSERT INTO `item` VALUES ('1284', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('1285', '1', '77', '2018-06-19', 'block-0-3');
INSERT INTO `item` VALUES ('1286', '1', '77', '2018-06-20', 'block-0-3');
INSERT INTO `item` VALUES ('1287', '1', '77', '2018-06-21', 'block-0-3');
INSERT INTO `item` VALUES ('1288', '1', '77', '2018-06-22', 'block-0-3');
INSERT INTO `item` VALUES ('1289', '1', '77', '2018-06-23', 'block-0-3');
INSERT INTO `item` VALUES ('1290', '1', '77', '2018-06-24', 'block-0-3');
INSERT INTO `item` VALUES ('1291', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('1292', '1', '77', '2018-06-19', 'block-0-4');
INSERT INTO `item` VALUES ('1293', '1', '77', '2018-06-20', 'block-0-4');
INSERT INTO `item` VALUES ('1294', '1', '77', '2018-06-21', 'block-0-4');
INSERT INTO `item` VALUES ('1295', '1', '77', '2018-06-22', 'block-0-4');
INSERT INTO `item` VALUES ('1296', '1', '77', '2018-06-23', 'block-0-4');
INSERT INTO `item` VALUES ('1297', '1', '77', '2018-06-24', 'block-0-4');
INSERT INTO `item` VALUES ('1298', '3', '77', '2018-06-18', 'block-1-2');
INSERT INTO `item` VALUES ('1299', '3', '77', '2018-06-19', 'block-1-2');
INSERT INTO `item` VALUES ('1300', '3', '77', '2018-06-20', 'block-1-2');
INSERT INTO `item` VALUES ('1301', '3', '77', '2018-06-21', 'block-1-2');
INSERT INTO `item` VALUES ('1302', '3', '77', '2018-06-22', 'block-1-2');
INSERT INTO `item` VALUES ('1303', '3', '77', '2018-06-23', 'block-1-2');
INSERT INTO `item` VALUES ('1304', '3', '77', '2018-06-24', 'block-1-2');
INSERT INTO `item` VALUES ('1305', '3', '77', '2018-06-18', 'block-1-3');
INSERT INTO `item` VALUES ('1306', '3', '77', '2018-06-19', 'block-1-3');
INSERT INTO `item` VALUES ('1307', '3', '77', '2018-06-20', 'block-1-3');
INSERT INTO `item` VALUES ('1308', '3', '77', '2018-06-21', 'block-1-3');
INSERT INTO `item` VALUES ('1309', '3', '77', '2018-06-22', 'block-1-3');
INSERT INTO `item` VALUES ('1310', '3', '77', '2018-06-23', 'block-1-3');
INSERT INTO `item` VALUES ('1311', '3', '77', '2018-06-24', 'block-1-3');
INSERT INTO `item` VALUES ('1312', '3', '77', '2018-06-18', 'block-1-4');
INSERT INTO `item` VALUES ('1313', '3', '77', '2018-06-19', 'block-1-4');
INSERT INTO `item` VALUES ('1314', '3', '77', '2018-06-20', 'block-1-4');
INSERT INTO `item` VALUES ('1315', '3', '77', '2018-06-21', 'block-1-4');
INSERT INTO `item` VALUES ('1316', '3', '77', '2018-06-22', 'block-1-4');
INSERT INTO `item` VALUES ('1317', '3', '77', '2018-06-23', 'block-1-4');
INSERT INTO `item` VALUES ('1318', '3', '77', '2018-06-24', 'block-1-4');
INSERT INTO `item` VALUES ('1319', '4', '77', '2018-06-18', 'block-2-1');
INSERT INTO `item` VALUES ('1320', '4', '77', '2018-06-19', 'block-2-1');
INSERT INTO `item` VALUES ('1321', '4', '77', '2018-06-20', 'block-2-1');
INSERT INTO `item` VALUES ('1322', '4', '77', '2018-06-21', 'block-2-1');
INSERT INTO `item` VALUES ('1323', '4', '77', '2018-06-22', 'block-2-1');
INSERT INTO `item` VALUES ('1324', '4', '77', '2018-06-23', 'block-2-1');
INSERT INTO `item` VALUES ('1325', '4', '77', '2018-06-24', 'block-2-1');
INSERT INTO `item` VALUES ('1326', '4', '77', '2018-06-18', 'block-2-2');
INSERT INTO `item` VALUES ('1327', '4', '77', '2018-06-19', 'block-2-2');
INSERT INTO `item` VALUES ('1328', '4', '77', '2018-06-20', 'block-2-2');
INSERT INTO `item` VALUES ('1329', '4', '77', '2018-06-21', 'block-2-2');
INSERT INTO `item` VALUES ('1330', '4', '77', '2018-06-22', 'block-2-2');
INSERT INTO `item` VALUES ('1331', '4', '77', '2018-06-23', 'block-2-2');
INSERT INTO `item` VALUES ('1332', '4', '77', '2018-06-24', 'block-2-2');
INSERT INTO `item` VALUES ('1333', '6', '77', '2018-06-18', 'block-4-2');
INSERT INTO `item` VALUES ('1334', '6', '77', '2018-06-19', 'block-4-2');
INSERT INTO `item` VALUES ('1335', '6', '77', '2018-06-20', 'block-4-2');
INSERT INTO `item` VALUES ('1336', '6', '77', '2018-06-21', 'block-4-2');
INSERT INTO `item` VALUES ('1337', '6', '77', '2018-06-22', 'block-4-2');
INSERT INTO `item` VALUES ('1338', '6', '77', '2018-06-23', 'block-4-2');
INSERT INTO `item` VALUES ('1339', '6', '77', '2018-06-24', 'block-4-2');
INSERT INTO `item` VALUES ('1340', '6', '77', '2018-06-18', 'block-4-3');
INSERT INTO `item` VALUES ('1341', '6', '77', '2018-06-19', 'block-4-3');
INSERT INTO `item` VALUES ('1342', '6', '77', '2018-06-20', 'block-4-3');
INSERT INTO `item` VALUES ('1343', '6', '77', '2018-06-21', 'block-4-3');
INSERT INTO `item` VALUES ('1344', '6', '77', '2018-06-22', 'block-4-3');
INSERT INTO `item` VALUES ('1345', '6', '77', '2018-06-23', 'block-4-3');
INSERT INTO `item` VALUES ('1346', '6', '77', '2018-06-24', 'block-4-3');
INSERT INTO `item` VALUES ('1347', '1', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1348', '1', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1349', '1', '77', '2018-06-20', 'block-0-1');
INSERT INTO `item` VALUES ('1350', '1', '77', '2018-06-21', 'block-0-1');
INSERT INTO `item` VALUES ('1351', '1', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('1352', '1', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1353', '1', '77', '2018-06-24', 'block-0-1');
INSERT INTO `item` VALUES ('1354', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1355', '1', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1356', '1', '77', '2018-06-20', 'block-0-2');
INSERT INTO `item` VALUES ('1357', '1', '77', '2018-06-21', 'block-0-2');
INSERT INTO `item` VALUES ('1358', '1', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('1359', '1', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('1360', '1', '77', '2018-06-24', 'block-0-2');
INSERT INTO `item` VALUES ('1361', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('1362', '1', '77', '2018-06-19', 'block-0-3');
INSERT INTO `item` VALUES ('1363', '1', '77', '2018-06-20', 'block-0-3');
INSERT INTO `item` VALUES ('1364', '1', '77', '2018-06-21', 'block-0-3');
INSERT INTO `item` VALUES ('1365', '1', '77', '2018-06-22', 'block-0-3');
INSERT INTO `item` VALUES ('1366', '1', '77', '2018-06-23', 'block-0-3');
INSERT INTO `item` VALUES ('1367', '1', '77', '2018-06-24', 'block-0-3');
INSERT INTO `item` VALUES ('1368', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('1369', '1', '77', '2018-06-19', 'block-0-4');
INSERT INTO `item` VALUES ('1370', '1', '77', '2018-06-20', 'block-0-4');
INSERT INTO `item` VALUES ('1371', '1', '77', '2018-06-21', 'block-0-4');
INSERT INTO `item` VALUES ('1372', '1', '77', '2018-06-22', 'block-0-4');
INSERT INTO `item` VALUES ('1373', '1', '77', '2018-06-23', 'block-0-4');
INSERT INTO `item` VALUES ('1374', '1', '77', '2018-06-24', 'block-0-4');
INSERT INTO `item` VALUES ('1375', '3', '77', '2018-06-18', 'block-1-2');
INSERT INTO `item` VALUES ('1376', '3', '77', '2018-06-19', 'block-1-2');
INSERT INTO `item` VALUES ('1377', '3', '77', '2018-06-20', 'block-1-2');
INSERT INTO `item` VALUES ('1378', '3', '77', '2018-06-21', 'block-1-2');
INSERT INTO `item` VALUES ('1379', '3', '77', '2018-06-22', 'block-1-2');
INSERT INTO `item` VALUES ('1380', '3', '77', '2018-06-23', 'block-1-2');
INSERT INTO `item` VALUES ('1381', '3', '77', '2018-06-24', 'block-1-2');
INSERT INTO `item` VALUES ('1382', '3', '77', '2018-06-18', 'block-1-3');
INSERT INTO `item` VALUES ('1383', '3', '77', '2018-06-19', 'block-1-3');
INSERT INTO `item` VALUES ('1384', '3', '77', '2018-06-20', 'block-1-3');
INSERT INTO `item` VALUES ('1385', '3', '77', '2018-06-21', 'block-1-3');
INSERT INTO `item` VALUES ('1386', '3', '77', '2018-06-22', 'block-1-3');
INSERT INTO `item` VALUES ('1387', '3', '77', '2018-06-23', 'block-1-3');
INSERT INTO `item` VALUES ('1388', '3', '77', '2018-06-24', 'block-1-3');
INSERT INTO `item` VALUES ('1389', '3', '77', '2018-06-18', 'block-1-4');
INSERT INTO `item` VALUES ('1390', '3', '77', '2018-06-19', 'block-1-4');
INSERT INTO `item` VALUES ('1391', '3', '77', '2018-06-20', 'block-1-4');
INSERT INTO `item` VALUES ('1392', '3', '77', '2018-06-21', 'block-1-4');
INSERT INTO `item` VALUES ('1393', '3', '77', '2018-06-22', 'block-1-4');
INSERT INTO `item` VALUES ('1394', '3', '77', '2018-06-23', 'block-1-4');
INSERT INTO `item` VALUES ('1395', '3', '77', '2018-06-24', 'block-1-4');
INSERT INTO `item` VALUES ('1396', '4', '77', '2018-06-18', 'block-2-1');
INSERT INTO `item` VALUES ('1397', '4', '77', '2018-06-19', 'block-2-1');
INSERT INTO `item` VALUES ('1398', '4', '77', '2018-06-20', 'block-2-1');
INSERT INTO `item` VALUES ('1399', '4', '77', '2018-06-21', 'block-2-1');
INSERT INTO `item` VALUES ('1400', '4', '77', '2018-06-22', 'block-2-1');
INSERT INTO `item` VALUES ('1401', '4', '77', '2018-06-23', 'block-2-1');
INSERT INTO `item` VALUES ('1402', '4', '77', '2018-06-24', 'block-2-1');
INSERT INTO `item` VALUES ('1403', '4', '77', '2018-06-18', 'block-2-2');
INSERT INTO `item` VALUES ('1404', '4', '77', '2018-06-19', 'block-2-2');
INSERT INTO `item` VALUES ('1405', '4', '77', '2018-06-20', 'block-2-2');
INSERT INTO `item` VALUES ('1406', '4', '77', '2018-06-21', 'block-2-2');
INSERT INTO `item` VALUES ('1407', '4', '77', '2018-06-22', 'block-2-2');
INSERT INTO `item` VALUES ('1408', '4', '77', '2018-06-23', 'block-2-2');
INSERT INTO `item` VALUES ('1409', '4', '77', '2018-06-24', 'block-2-2');
INSERT INTO `item` VALUES ('1410', '6', '77', '2018-06-18', 'block-4-2');
INSERT INTO `item` VALUES ('1411', '6', '77', '2018-06-19', 'block-4-2');
INSERT INTO `item` VALUES ('1412', '6', '77', '2018-06-20', 'block-4-2');
INSERT INTO `item` VALUES ('1413', '6', '77', '2018-06-21', 'block-4-2');
INSERT INTO `item` VALUES ('1414', '6', '77', '2018-06-22', 'block-4-2');
INSERT INTO `item` VALUES ('1415', '6', '77', '2018-06-23', 'block-4-2');
INSERT INTO `item` VALUES ('1416', '6', '77', '2018-06-24', 'block-4-2');
INSERT INTO `item` VALUES ('1417', '6', '77', '2018-06-18', 'block-4-3');
INSERT INTO `item` VALUES ('1418', '6', '77', '2018-06-19', 'block-4-3');
INSERT INTO `item` VALUES ('1419', '6', '77', '2018-06-20', 'block-4-3');
INSERT INTO `item` VALUES ('1420', '6', '77', '2018-06-21', 'block-4-3');
INSERT INTO `item` VALUES ('1421', '6', '77', '2018-06-22', 'block-4-3');
INSERT INTO `item` VALUES ('1422', '6', '77', '2018-06-23', 'block-4-3');
INSERT INTO `item` VALUES ('1423', '6', '77', '2018-06-24', 'block-4-3');
INSERT INTO `item` VALUES ('1424', '5', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1425', '5', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1426', '5', '77', '2018-06-20', 'block-0-1');
INSERT INTO `item` VALUES ('1427', '5', '77', '2018-06-21', 'block-0-1');
INSERT INTO `item` VALUES ('1428', '5', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('1429', '5', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1430', '5', '77', '2018-06-24', 'block-0-1');
INSERT INTO `item` VALUES ('1431', '5', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1432', '5', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1433', '5', '77', '2018-06-20', 'block-0-2');
INSERT INTO `item` VALUES ('1434', '5', '77', '2018-06-21', 'block-0-2');
INSERT INTO `item` VALUES ('1435', '5', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('1436', '5', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('1437', '5', '77', '2018-06-24', 'block-0-2');
INSERT INTO `item` VALUES ('1438', '1', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1439', '1', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1440', '1', '77', '2018-06-20', 'block-0-1');
INSERT INTO `item` VALUES ('1441', '1', '77', '2018-06-21', 'block-0-1');
INSERT INTO `item` VALUES ('1442', '1', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('1443', '1', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1444', '1', '77', '2018-06-24', 'block-0-1');
INSERT INTO `item` VALUES ('1445', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1446', '1', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1447', '1', '77', '2018-06-20', 'block-0-2');
INSERT INTO `item` VALUES ('1448', '1', '77', '2018-06-21', 'block-0-2');
INSERT INTO `item` VALUES ('1449', '1', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('1450', '1', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('1451', '1', '77', '2018-06-24', 'block-0-2');
INSERT INTO `item` VALUES ('1452', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('1453', '1', '77', '2018-06-19', 'block-0-3');
INSERT INTO `item` VALUES ('1454', '1', '77', '2018-06-20', 'block-0-3');
INSERT INTO `item` VALUES ('1455', '1', '77', '2018-06-21', 'block-0-3');
INSERT INTO `item` VALUES ('1456', '1', '77', '2018-06-22', 'block-0-3');
INSERT INTO `item` VALUES ('1457', '1', '77', '2018-06-23', 'block-0-3');
INSERT INTO `item` VALUES ('1458', '1', '77', '2018-06-24', 'block-0-3');
INSERT INTO `item` VALUES ('1459', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('1460', '1', '77', '2018-06-19', 'block-0-4');
INSERT INTO `item` VALUES ('1461', '1', '77', '2018-06-20', 'block-0-4');
INSERT INTO `item` VALUES ('1462', '1', '77', '2018-06-21', 'block-0-4');
INSERT INTO `item` VALUES ('1463', '1', '77', '2018-06-22', 'block-0-4');
INSERT INTO `item` VALUES ('1464', '1', '77', '2018-06-23', 'block-0-4');
INSERT INTO `item` VALUES ('1465', '1', '77', '2018-06-24', 'block-0-4');
INSERT INTO `item` VALUES ('1466', '3', '77', '2018-06-18', 'block-1-2');
INSERT INTO `item` VALUES ('1467', '3', '77', '2018-06-19', 'block-1-2');
INSERT INTO `item` VALUES ('1468', '3', '77', '2018-06-20', 'block-1-2');
INSERT INTO `item` VALUES ('1469', '3', '77', '2018-06-21', 'block-1-2');
INSERT INTO `item` VALUES ('1470', '3', '77', '2018-06-22', 'block-1-2');
INSERT INTO `item` VALUES ('1471', '3', '77', '2018-06-23', 'block-1-2');
INSERT INTO `item` VALUES ('1472', '3', '77', '2018-06-24', 'block-1-2');
INSERT INTO `item` VALUES ('1473', '3', '77', '2018-06-18', 'block-1-3');
INSERT INTO `item` VALUES ('1474', '3', '77', '2018-06-19', 'block-1-3');
INSERT INTO `item` VALUES ('1475', '3', '77', '2018-06-20', 'block-1-3');
INSERT INTO `item` VALUES ('1476', '3', '77', '2018-06-21', 'block-1-3');
INSERT INTO `item` VALUES ('1477', '3', '77', '2018-06-22', 'block-1-3');
INSERT INTO `item` VALUES ('1478', '3', '77', '2018-06-23', 'block-1-3');
INSERT INTO `item` VALUES ('1479', '3', '77', '2018-06-24', 'block-1-3');
INSERT INTO `item` VALUES ('1480', '3', '77', '2018-06-18', 'block-1-4');
INSERT INTO `item` VALUES ('1481', '3', '77', '2018-06-19', 'block-1-4');
INSERT INTO `item` VALUES ('1482', '3', '77', '2018-06-20', 'block-1-4');
INSERT INTO `item` VALUES ('1483', '3', '77', '2018-06-21', 'block-1-4');
INSERT INTO `item` VALUES ('1484', '3', '77', '2018-06-22', 'block-1-4');
INSERT INTO `item` VALUES ('1485', '3', '77', '2018-06-23', 'block-1-4');
INSERT INTO `item` VALUES ('1486', '3', '77', '2018-06-24', 'block-1-4');
INSERT INTO `item` VALUES ('1487', '4', '77', '2018-06-18', 'block-2-1');
INSERT INTO `item` VALUES ('1488', '4', '77', '2018-06-19', 'block-2-1');
INSERT INTO `item` VALUES ('1489', '4', '77', '2018-06-20', 'block-2-1');
INSERT INTO `item` VALUES ('1490', '4', '77', '2018-06-21', 'block-2-1');
INSERT INTO `item` VALUES ('1491', '4', '77', '2018-06-22', 'block-2-1');
INSERT INTO `item` VALUES ('1492', '4', '77', '2018-06-23', 'block-2-1');
INSERT INTO `item` VALUES ('1493', '4', '77', '2018-06-24', 'block-2-1');
INSERT INTO `item` VALUES ('1494', '4', '77', '2018-06-18', 'block-2-2');
INSERT INTO `item` VALUES ('1495', '4', '77', '2018-06-19', 'block-2-2');
INSERT INTO `item` VALUES ('1496', '4', '77', '2018-06-20', 'block-2-2');
INSERT INTO `item` VALUES ('1497', '4', '77', '2018-06-21', 'block-2-2');
INSERT INTO `item` VALUES ('1498', '4', '77', '2018-06-22', 'block-2-2');
INSERT INTO `item` VALUES ('1499', '4', '77', '2018-06-23', 'block-2-2');
INSERT INTO `item` VALUES ('1500', '4', '77', '2018-06-24', 'block-2-2');
INSERT INTO `item` VALUES ('1501', '6', '77', '2018-06-18', 'block-4-2');
INSERT INTO `item` VALUES ('1502', '6', '77', '2018-06-19', 'block-4-2');
INSERT INTO `item` VALUES ('1503', '6', '77', '2018-06-20', 'block-4-2');
INSERT INTO `item` VALUES ('1504', '6', '77', '2018-06-21', 'block-4-2');
INSERT INTO `item` VALUES ('1505', '6', '77', '2018-06-22', 'block-4-2');
INSERT INTO `item` VALUES ('1506', '6', '77', '2018-06-23', 'block-4-2');
INSERT INTO `item` VALUES ('1507', '6', '77', '2018-06-24', 'block-4-2');
INSERT INTO `item` VALUES ('1508', '6', '77', '2018-06-18', 'block-4-3');
INSERT INTO `item` VALUES ('1509', '6', '77', '2018-06-19', 'block-4-3');
INSERT INTO `item` VALUES ('1510', '6', '77', '2018-06-20', 'block-4-3');
INSERT INTO `item` VALUES ('1511', '6', '77', '2018-06-21', 'block-4-3');
INSERT INTO `item` VALUES ('1512', '6', '77', '2018-06-22', 'block-4-3');
INSERT INTO `item` VALUES ('1513', '6', '77', '2018-06-23', 'block-4-3');
INSERT INTO `item` VALUES ('1514', '6', '77', '2018-06-24', 'block-4-3');
INSERT INTO `item` VALUES ('1515', '5', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1516', '5', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1517', '5', '77', '2018-06-20', 'block-0-1');
INSERT INTO `item` VALUES ('1518', '5', '77', '2018-06-21', 'block-0-1');
INSERT INTO `item` VALUES ('1519', '5', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('1520', '5', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1521', '5', '77', '2018-06-24', 'block-0-1');
INSERT INTO `item` VALUES ('1522', '5', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1523', '5', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1524', '5', '77', '2018-06-20', 'block-0-2');
INSERT INTO `item` VALUES ('1525', '5', '77', '2018-06-21', 'block-0-2');
INSERT INTO `item` VALUES ('1526', '5', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('1527', '5', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('1528', '5', '77', '2018-06-24', 'block-0-2');
INSERT INTO `item` VALUES ('1529', '1', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1530', '1', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1531', '1', '77', '2018-06-20', 'block-0-1');
INSERT INTO `item` VALUES ('1532', '1', '77', '2018-06-21', 'block-0-1');
INSERT INTO `item` VALUES ('1533', '1', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('1534', '1', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1535', '1', '77', '2018-06-24', 'block-0-1');
INSERT INTO `item` VALUES ('1536', '1', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1537', '1', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1538', '1', '77', '2018-06-20', 'block-0-2');
INSERT INTO `item` VALUES ('1539', '1', '77', '2018-06-21', 'block-0-2');
INSERT INTO `item` VALUES ('1540', '1', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('1541', '1', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('1542', '1', '77', '2018-06-24', 'block-0-2');
INSERT INTO `item` VALUES ('1543', '1', '77', '2018-06-18', 'block-0-3');
INSERT INTO `item` VALUES ('1544', '1', '77', '2018-06-19', 'block-0-3');
INSERT INTO `item` VALUES ('1545', '1', '77', '2018-06-20', 'block-0-3');
INSERT INTO `item` VALUES ('1546', '1', '77', '2018-06-21', 'block-0-3');
INSERT INTO `item` VALUES ('1547', '1', '77', '2018-06-22', 'block-0-3');
INSERT INTO `item` VALUES ('1548', '1', '77', '2018-06-23', 'block-0-3');
INSERT INTO `item` VALUES ('1549', '1', '77', '2018-06-24', 'block-0-3');
INSERT INTO `item` VALUES ('1550', '1', '77', '2018-06-18', 'block-0-4');
INSERT INTO `item` VALUES ('1551', '1', '77', '2018-06-19', 'block-0-4');
INSERT INTO `item` VALUES ('1552', '1', '77', '2018-06-20', 'block-0-4');
INSERT INTO `item` VALUES ('1553', '1', '77', '2018-06-21', 'block-0-4');
INSERT INTO `item` VALUES ('1554', '1', '77', '2018-06-22', 'block-0-4');
INSERT INTO `item` VALUES ('1555', '1', '77', '2018-06-23', 'block-0-4');
INSERT INTO `item` VALUES ('1556', '1', '77', '2018-06-24', 'block-0-4');
INSERT INTO `item` VALUES ('1557', '3', '77', '2018-06-18', 'block-1-2');
INSERT INTO `item` VALUES ('1558', '3', '77', '2018-06-19', 'block-1-2');
INSERT INTO `item` VALUES ('1559', '3', '77', '2018-06-20', 'block-1-2');
INSERT INTO `item` VALUES ('1560', '3', '77', '2018-06-21', 'block-1-2');
INSERT INTO `item` VALUES ('1561', '3', '77', '2018-06-22', 'block-1-2');
INSERT INTO `item` VALUES ('1562', '3', '77', '2018-06-23', 'block-1-2');
INSERT INTO `item` VALUES ('1563', '3', '77', '2018-06-24', 'block-1-2');
INSERT INTO `item` VALUES ('1564', '3', '77', '2018-06-18', 'block-1-3');
INSERT INTO `item` VALUES ('1565', '3', '77', '2018-06-19', 'block-1-3');
INSERT INTO `item` VALUES ('1566', '3', '77', '2018-06-20', 'block-1-3');
INSERT INTO `item` VALUES ('1567', '3', '77', '2018-06-21', 'block-1-3');
INSERT INTO `item` VALUES ('1568', '3', '77', '2018-06-22', 'block-1-3');
INSERT INTO `item` VALUES ('1569', '3', '77', '2018-06-23', 'block-1-3');
INSERT INTO `item` VALUES ('1570', '3', '77', '2018-06-24', 'block-1-3');
INSERT INTO `item` VALUES ('1571', '3', '77', '2018-06-18', 'block-1-4');
INSERT INTO `item` VALUES ('1572', '3', '77', '2018-06-19', 'block-1-4');
INSERT INTO `item` VALUES ('1573', '3', '77', '2018-06-20', 'block-1-4');
INSERT INTO `item` VALUES ('1574', '3', '77', '2018-06-21', 'block-1-4');
INSERT INTO `item` VALUES ('1575', '3', '77', '2018-06-22', 'block-1-4');
INSERT INTO `item` VALUES ('1576', '3', '77', '2018-06-23', 'block-1-4');
INSERT INTO `item` VALUES ('1577', '3', '77', '2018-06-24', 'block-1-4');
INSERT INTO `item` VALUES ('1578', '4', '77', '2018-06-18', 'block-2-1');
INSERT INTO `item` VALUES ('1579', '4', '77', '2018-06-19', 'block-2-1');
INSERT INTO `item` VALUES ('1580', '4', '77', '2018-06-20', 'block-2-1');
INSERT INTO `item` VALUES ('1581', '4', '77', '2018-06-21', 'block-2-1');
INSERT INTO `item` VALUES ('1582', '4', '77', '2018-06-22', 'block-2-1');
INSERT INTO `item` VALUES ('1583', '4', '77', '2018-06-23', 'block-2-1');
INSERT INTO `item` VALUES ('1584', '4', '77', '2018-06-24', 'block-2-1');
INSERT INTO `item` VALUES ('1585', '4', '77', '2018-06-18', 'block-2-2');
INSERT INTO `item` VALUES ('1586', '4', '77', '2018-06-19', 'block-2-2');
INSERT INTO `item` VALUES ('1587', '4', '77', '2018-06-20', 'block-2-2');
INSERT INTO `item` VALUES ('1588', '4', '77', '2018-06-21', 'block-2-2');
INSERT INTO `item` VALUES ('1589', '4', '77', '2018-06-22', 'block-2-2');
INSERT INTO `item` VALUES ('1590', '4', '77', '2018-06-23', 'block-2-2');
INSERT INTO `item` VALUES ('1591', '4', '77', '2018-06-24', 'block-2-2');
INSERT INTO `item` VALUES ('1592', '6', '77', '2018-06-18', 'block-4-2');
INSERT INTO `item` VALUES ('1593', '6', '77', '2018-06-19', 'block-4-2');
INSERT INTO `item` VALUES ('1594', '6', '77', '2018-06-20', 'block-4-2');
INSERT INTO `item` VALUES ('1595', '6', '77', '2018-06-21', 'block-4-2');
INSERT INTO `item` VALUES ('1596', '6', '77', '2018-06-22', 'block-4-2');
INSERT INTO `item` VALUES ('1597', '6', '77', '2018-06-23', 'block-4-2');
INSERT INTO `item` VALUES ('1598', '6', '77', '2018-06-24', 'block-4-2');
INSERT INTO `item` VALUES ('1599', '6', '77', '2018-06-18', 'block-4-3');
INSERT INTO `item` VALUES ('1600', '6', '77', '2018-06-19', 'block-4-3');
INSERT INTO `item` VALUES ('1601', '6', '77', '2018-06-20', 'block-4-3');
INSERT INTO `item` VALUES ('1602', '6', '77', '2018-06-21', 'block-4-3');
INSERT INTO `item` VALUES ('1603', '6', '77', '2018-06-22', 'block-4-3');
INSERT INTO `item` VALUES ('1604', '6', '77', '2018-06-23', 'block-4-3');
INSERT INTO `item` VALUES ('1605', '6', '77', '2018-06-24', 'block-4-3');
INSERT INTO `item` VALUES ('1606', '5', '77', '2018-06-18', 'block-0-1');
INSERT INTO `item` VALUES ('1607', '5', '77', '2018-06-19', 'block-0-1');
INSERT INTO `item` VALUES ('1608', '5', '77', '2018-06-20', 'block-0-1');
INSERT INTO `item` VALUES ('1609', '5', '77', '2018-06-21', 'block-0-1');
INSERT INTO `item` VALUES ('1610', '5', '77', '2018-06-22', 'block-0-1');
INSERT INTO `item` VALUES ('1611', '5', '77', '2018-06-23', 'block-0-1');
INSERT INTO `item` VALUES ('1612', '5', '77', '2018-06-24', 'block-0-1');
INSERT INTO `item` VALUES ('1613', '5', '77', '2018-06-18', 'block-0-2');
INSERT INTO `item` VALUES ('1614', '5', '77', '2018-06-19', 'block-0-2');
INSERT INTO `item` VALUES ('1615', '5', '77', '2018-06-20', 'block-0-2');
INSERT INTO `item` VALUES ('1616', '5', '77', '2018-06-21', 'block-0-2');
INSERT INTO `item` VALUES ('1617', '5', '77', '2018-06-22', 'block-0-2');
INSERT INTO `item` VALUES ('1618', '5', '77', '2018-06-23', 'block-0-2');
INSERT INTO `item` VALUES ('1619', '5', '77', '2018-06-24', 'block-0-2');
INSERT INTO `item` VALUES ('1620', '3', '77', '2018-06-25', 'block-0-2');
INSERT INTO `item` VALUES ('1621', '3', '77', '2018-06-25', 'block-0-3');
INSERT INTO `item` VALUES ('1622', '3', '77', '2018-06-25', 'block-1-3');
INSERT INTO `item` VALUES ('1623', '4', '77', '2018-06-25', 'block-3-3');
INSERT INTO `item` VALUES ('1624', '5', '77', '2018-06-25', 'block-2-1');
INSERT INTO `item` VALUES ('1625', '5', '77', '2018-06-25', 'block-2-2');
INSERT INTO `item` VALUES ('1626', '4', '77', '2018-06-25', 'block-3-2');
INSERT INTO `item` VALUES ('1627', '4', '77', '2018-06-25', 'block-3-1');
INSERT INTO `item` VALUES ('1628', '2', '77', '2018-06-25', 'block-0-4');
INSERT INTO `item` VALUES ('1629', '2', '77', '2018-06-25', 'block-1-4');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mood
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('1', '1', '77', 'block-0-2');
INSERT INTO `template` VALUES ('2', '1', '77', 'block-0-3');

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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

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
INSERT INTO `user` VALUES ('77', '150410301@stu.hit.edu.cn', '76cc31cedd4f22538514673e97ce64832ee0fadf', '', 'unchecked', '蓝思追', '', null, null, null, null, null, null, null);
