/*
Navicat MySQL Data Transfer

Source Server         : kpa
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : chador

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2020-07-08 05:18:32
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
  `FieldPerson` varchar(5) CHARACTER SET latin2 DEFAULT '',
  `BranchOfficer` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`AutoN`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accesstbl
-- ----------------------------
INSERT INTO `accesstbl` VALUES ('1', '101', 'DASHBOARD', 'YES', 'YES', 'YES', 'YES', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'YES', null);
INSERT INTO `accesstbl` VALUES ('14', '102', 'NEW CLIENT', 'YES', 'YES', 'YES', 'YES', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'YES', null);
INSERT INTO `accesstbl` VALUES ('15', '103', 'FIND CLIENT', 'YES', 'YES', 'NO', 'YES', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('18', '104', 'EDIT CLIENT INFORMATION', 'YES', 'YES', 'NO', 'YES', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('19', '105', 'NEW DEBT COLLECTION FILE', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('20', '106', 'FIND DEBT COLLECTION FILE', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('21', '107', 'EDIT DEBT COLLECTION FILE', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('22', '108', 'FIND WARRANT FILE', 'YES', 'YES', 'YES', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('23', '109', 'EDIT WARRANT FILE', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('24', '110', 'FIND WARRANT FILE', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('25', '111', 'UPLOAD FILES', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('26', '112', 'NEW DISTRESS FILE', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('27', '113', 'FIND DISTRESS FILE', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('28', '114', 'EDIT DISTRESS FILE', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('30', '116', 'RENEW/EXTEND CONTRACT', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('32', '118', 'DOCUMENTS REGISTER', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('35', '129', 'FIND UNITS', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('38', '132', 'ADD UNITS', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('39', '133', 'EDIT/DELETE UNIT', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('40', '134', 'MAKE REQUISITION', 'YES', 'YES', 'NO', 'NO', 'NO', 'YES', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('41', '135', 'APPROVE REQUISITION', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('42', '136', 'REQUISITION CLOSE OUT', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('43', '137', 'FIND ENTRIES', 'YES', 'YES', 'NO', 'NO', 'NO', 'YES', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('44', '138', 'ADD/EDIT ITEMS', 'YES', 'YES', 'NO', 'NO', 'NO', 'YES', 'YES', '', 'YES', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('45', '139', ' INVOICING', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('46', '140', 'ELECTRICITY INVOICING', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('47', '141', 'UTILITY BILLS PAYMENTS', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('48', '142', 'COURTS INVOICING', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('50', '144', 'MONTHLY PENALTY INVOICING', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('51', '145', 'RECEIVE PAYMENTS', 'YES', 'YES', 'YES', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', 'YES', 'NO', null);
INSERT INTO `accesstbl` VALUES ('52', '146', 'FIND INVOICES/RECEIPTS', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('53', '147', 'MAKE JOURNAL ENTRIES', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('54', '148', 'FIND JOURNAL ENTRIES', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('55', '149', 'CHART OF ACCOUNTS', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', 'YES', 'NO', null);
INSERT INTO `accesstbl` VALUES ('56', '150', 'POST SUPPLIER INVOICES', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('57', '151', 'FIND SUPPLIER INVOICES', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('58', '152', 'EXPENSE MANAGEMENT', 'YES', 'YES', 'NO', 'YES', 'YES', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('59', '153', 'ADD/EDIT SUPPLIERS', 'YES', 'YES', 'NO', 'YES', 'YES', 'YES', 'YES', '', '', 'YES', 'YES', 'YES', 'NO', null);
INSERT INTO `accesstbl` VALUES ('60', '154', 'PAY SUPPLIER INVOICES', 'YES', 'YES', 'NO', 'NO', 'YES', '', 'YES', '', '', 'YES', 'YES', 'YES', 'NO', null);
INSERT INTO `accesstbl` VALUES ('61', '155', 'BANK TRANSACTIONS', 'YES', 'YES', 'NO', 'YES', 'YES', '', 'YES', '', '', 'YES', 'NO', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('64', '158', 'COMPANY DETAILS', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'NO', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('65', '159', 'SYSTEM USERS MANAGER', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', '', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('66', '160', 'USER ACCESS RIGHTS', 'YES', 'YES', 'NO', 'NO', 'NO', '', 'YES', '', 'NO', 'YES', 'YES', '', 'NO', null);
INSERT INTO `accesstbl` VALUES ('67', '161', 'ADD/EDIT SYSTEM VARIABLES', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('68', '162', 'CHANGE PASSWORD', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('69', '163', 'FINANCIAL STATEMENTS', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('70', '164', 'INCOME REPORTS', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'YES', 'NO', null);
INSERT INTO `accesstbl` VALUES ('72', '166', 'INQUIRIES REPORTS', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('74', '168', 'MAINTENANCE REPORTS', 'YES', 'YES', 'NO', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('75', '169', 'ACCOUNTS REPORTS', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('76', '170', 'UTILITIES REPORTS', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('77', '171', 'ADMIN REPORTS', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('79', '173', 'EDIT LETTER OF OFFER', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'YES', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('81', '175', 'CREDIT NOTES', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('82', '176', 'SET BILLABLE ITEMS', 'YES', 'YES', 'NO', 'NO', 'NO', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', 'NO', null);
INSERT INTO `accesstbl` VALUES ('86', '180', 'CASHIER REPORTS', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'YES', 'YES', 'YES', 'YES', null, null);
INSERT INTO `accesstbl` VALUES ('89', '183', 'BUDGET MANAGEMENT', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', null, null);
INSERT INTO `accesstbl` VALUES ('93', '187', 'EMPLOYEE LOANS/ADVANCES', 'YES', 'YES', 'NO', 'NO', 'YES', 'NO', 'YES', 'NO', 'NO', 'YES', 'YES', 'NO', null, null);
