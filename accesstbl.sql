/*
Navicat MySQL Data Transfer

Source Server         : kpa
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : chador

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2020-07-15 03:07:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesstbl
-- ----------------------------
DROP TABLE IF EXISTS `accesstbl`;
CREATE TABLE `accesstbl` (
  `AutoN` int(11) NOT NULL AUTO_INCREMENT,
  `AccessCode` int(11) NOT NULL DEFAULT '0',
  `Descrip` varchar(500) NOT NULL,
  `Admin` varchar(5) NOT NULL DEFAULT 'NO',
  `Manager` varchar(5) NOT NULL DEFAULT 'NO',
  `Cashier` varchar(5) NOT NULL DEFAULT 'NO',
  `User` varchar(5) NOT NULL DEFAULT 'NO',
  `Accounts` varchar(5) NOT NULL DEFAULT 'NO',
  `Procurement` varchar(5) NOT NULL DEFAULT 'NO',
  `Director` varchar(5) NOT NULL DEFAULT 'NO',
  `IT` varchar(5) NOT NULL DEFAULT 'NO',
  `Secretary` varchar(5) NOT NULL DEFAULT 'NO',
  `BackOffice` varchar(5) NOT NULL DEFAULT 'NO',
  `BranchManager` varchar(5) NOT NULL DEFAULT 'NO',
  `Sales` varchar(5) NOT NULL DEFAULT 'NO',
  `FieldPerson` varchar(5) DEFAULT NULL,
  `BranchOfficer` varchar(5) DEFAULT NULL,
  `SaccoUser` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`AutoN`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accesstbl
-- ----------------------------
INSERT INTO `accesstbl` VALUES ('1', '101', 'DASHBOARD', 'YES', 'NO', 'YES', 'YES', 'YES', '', 'YES', '', '', '', 'NO', '', 'YES', null, null);
INSERT INTO `accesstbl` VALUES ('14', '102', 'NEW CLIENT', 'YES', 'YES', 'YES', 'YES', 'YES', '', 'YES', '', '', '', 'YES', '', 'YES', null, null);
INSERT INTO `accesstbl` VALUES ('15', '103', 'FIND CLIENT', 'YES', 'NO', 'NO', 'YES', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('18', '104', 'EDIT CLIENT', 'YES', 'NO', 'NO', 'YES', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('19', '105', 'CLIENT FILE', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('20', '106', 'CLIENT FILE UPLOAD', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('21', '107', 'ARCHIVE CLIENT', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('22', '108', 'ARCHIVED CLIENT', 'YES', 'NO', 'YES', 'NO', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('23', '109', 'NEW DEBT COLLECTION', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('24', '110', 'FIND  DEBT COLLECTION', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('25', '111', 'EDIT  DEBT COLLECTION', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('26', '112', 'DEBT FILE', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('27', '113', 'DEBT FILE UPLOAD', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('28', '114', 'ARCHIVE DEBT COLLECTION', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', 'YES', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('29', '115', 'ARCHIVED DEBT COLLECTION', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('30', '116', 'NEW WARRANT', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('31', '117', 'FIND WARRANT', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('32', '118', 'EDIT WARRANT', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('33', '119', 'WARRANT FILE', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('34', '120', 'WARRANT FILE UPLOADS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', 'YES', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('35', '121', 'ARCHIVE WARRANT', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', 'YES', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('36', '122', 'ARCHIVED WARRANT', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('37', '123', 'NEW DISTRESS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('38', '124', 'FIND DISTRESS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('39', '125', 'EDIT DISTRESS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('40', '126', 'DISTRESS FILE', 'YES', 'NO', 'NO', 'NO', 'YES', 'YES', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('41', '127', 'DISTRESS FILE UPLOAD', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('42', '128', 'ARCHIVE DISTRESS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('43', '129', 'ARCHIVED DISTRESS', 'YES', 'NO', 'NO', 'NO', 'YES', 'YES', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('44', '130', 'NEW IMMOVABLE PROPERTY', 'YES', 'NO', 'NO', 'NO', 'YES', 'YES', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('45', '131', 'FIND IMMOVABLE PROPERTY', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('46', '132', 'EDIT IMMOVABLE PROPERTY', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('47', '133', 'IMMOVABLE PROPERTY FILE', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('48', '134', ' IMMOVABLE PROPERTY FILE UPLOADS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('49', '135', 'ARCHIVE IMMOVABLE PROPERTY', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('50', '136', 'ARCHIVED IMMOVABLE PROPERTY', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('51', '137', 'NEW REPOSSESSION', 'YES', 'NO', 'YES', 'NO', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('52', '138', 'FIND REPOSSESSION', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'YES', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('53', '139', 'EDIT REPOSSESSION', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('54', '140', 'REPOSSESSION FILE', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('55', '141', 'REPOSSESSION FILE UPLOADS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('56', '142', 'ARCHIVE REPOSSESSION ', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('57', '143', 'ARCHIVED REPOSSESSION', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('58', '144', 'BULK SMS', 'YES', 'NO', 'NO', 'YES', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('59', '145', 'BULK EMAIL', 'YES', 'NO', 'NO', 'YES', 'YES', 'YES', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('60', '146', 'FIND SMS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('61', '147', 'FIND EMAIL', 'YES', 'NO', 'NO', 'YES', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('62', '148', 'LANDLORD TRANSACTIONS', 'YES', 'NO', 'NO', 'YES', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('63', '157', 'PAY LANDLORD A/C', 'YES', 'NO', 'NO', 'YES', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('64', '158', 'COMPANY DETAILS', 'YES', 'NO', 'NO', 'NO', 'YES', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('65', '159', 'SYSTEM USERS MANAGER', 'YES', 'NO', 'NO', 'NO', 'NO', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('66', '160', 'USER ACCESS RIGHTS', 'YES', 'NO', 'NO', 'NO', 'NO', '', 'YES', '', '', '', 'NO', '', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('67', '161', 'ADD/EDIT SYSTEM VARIABLES', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('68', '162', 'CHANGE PASSWORD', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, 'YES');
INSERT INTO `accesstbl` VALUES ('69', '163', 'FINANCIAL STATEMENTS', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('70', '164', 'INCOME REPORTS', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('71', '165', 'TENANTS REPORTS', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('72', '166', 'INQUIRIES REPORTS', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('73', '167', 'PROPERTIES REPORTS', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('74', '168', 'MAINTENANCE REPORTS', 'YES', 'NO', 'NO', 'NO', 'YES', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('75', '169', 'ACCOUNTS REPORTS', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('76', '170', 'UTILITIES REPORTS', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('77', '171', 'ADMIN REPORTS', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('78', '172', 'VIEW ALL PROPERTIES', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('79', '173', 'EDIT LETTER OF OFFER', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('80', '174', 'OPEN SPACE BOOKING', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('81', '175', 'CREDIT NOTES', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('82', '176', 'SET BILLABLE ITEMS', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('83', '177', 'TENANT REFUNDS', 'YES', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('84', '178', 'LANDLORD FILE', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
INSERT INTO `accesstbl` VALUES ('85', '179', 'LANDLORD STATEMENT GENERATOR', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
INSERT INTO `accesstbl` VALUES ('86', '180', 'CASHIER REPORTS', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
INSERT INTO `accesstbl` VALUES ('87', '181', 'DELETE LANDLORD STATEMENT', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
INSERT INTO `accesstbl` VALUES ('88', '182', 'FIELD PERSON REPORTS', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
INSERT INTO `accesstbl` VALUES ('89', '183', 'BUDGET MANAGEMENT', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
INSERT INTO `accesstbl` VALUES ('92', '186', 'LANDLORD TRANSACTIONS PANEL', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
INSERT INTO `accesstbl` VALUES ('93', '187', 'EMPLOYEE LOANS/ADVANCES', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
INSERT INTO `accesstbl` VALUES ('94', '188', 'UPLOAD/DOWNLOAD SACCO REPORTS', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, 'YES');
INSERT INTO `accesstbl` VALUES ('95', '189', 'DELETE TX FROM LANDLORD STATEMENT', 'YES', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', null, null, null);
