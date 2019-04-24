/*
MySQL Data Transfer
Source Host: localhost
Source Database: resource
Target Host: localhost
Target Database: resource
Date: 6/10/2013 7:40:52 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cspacc
-- ----------------------------
DROP TABLE IF EXISTS `cspacc`;
CREATE TABLE `cspacc` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for domainrequest
-- ----------------------------
DROP TABLE IF EXISTS `domainrequest`;
CREATE TABLE `domainrequest` (
  `hostingplan` varchar(255) NOT NULL,
  `paytype` varchar(255) NOT NULL,
  `cardnumber` varchar(255) NOT NULL,
  `cardexpire` varchar(255) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `pay` varchar(255) NOT NULL,
  `siteowner` varchar(255) NOT NULL,
  `domainname` varchar(255) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `streetaddress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `used` int(255) NOT NULL,
  `server` varchar(255) NOT NULL,
  `first` varchar(255) NOT NULL,
  PRIMARY KEY  (`siteowner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ownerreg
-- ----------------------------
DROP TABLE IF EXISTS `ownerreg`;
CREATE TABLE `ownerreg` (
  `id` int(59) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `server` varchar(255) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `used` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cspacc` VALUES ('ravi@gmail.com', 'Ravi', 'ravi', 'SiteOwner', 'ravi', '10/06/2013 07:34:57 PM');
INSERT INTO `domainrequest` VALUES ('Rupees7000', 'Visa', '954465465', '22/2013', '56566', 'paied', 'aswin@gmail.com', 'www.jabong.com', '180', '20', 'Allocated', '2013-06-25', 'sssss', 'kodambakkam', 'chennai', 'india', '9043436331', '3', 'ServerB', 'jabong.html');
INSERT INTO `domainrequest` VALUES ('Rupees7000', 'Visa', '123456', '03/2015', '1234', 'paied', 'ram@gmail.com', 'www.ebay.com', '90', '20', 'Allocated', '2013-09-08', 'ebay', 'kodambakkam', 'chennai', 'India', '9565655655', '2', 'ServerB', 'ebay.html');
INSERT INTO `ownerreg` VALUES ('1', 'aswin', 'aswin', 'aswin@gmail.com', '9565655655', '10/06/2013 12:26:51 PM');
INSERT INTO `ownerreg` VALUES ('2', 'Ram', 'ram', 'ram@gmail.com', '9453454500', '10/06/2013 07:31:21 PM');
INSERT INTO `server` VALUES ('serverA', '500', '60');
INSERT INTO `server` VALUES ('serverB', '500', '80');
INSERT INTO `server` VALUES ('serverC', '500', '80');
