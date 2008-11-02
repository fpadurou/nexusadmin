-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema lradmin
--

CREATE DATABASE IF NOT EXISTS lradmin;
USE lradmin;

--
-- Definition of table `account_`
--

DROP TABLE IF EXISTS `account_`;
CREATE TABLE `account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `parentAccountId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `legalName` varchar(75) default NULL,
  `legalId` varchar(75) default NULL,
  `legalType` varchar(75) default NULL,
  `sicCode` varchar(75) default NULL,
  `tickerSymbol` varchar(75) default NULL,
  `industry` varchar(75) default NULL,
  `type_` varchar(75) default NULL,
  `size_` varchar(75) default NULL,
  PRIMARY KEY  (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_`
--

/*!40000 ALTER TABLE `account_` DISABLE KEYS */;
INSERT INTO `account_` (`accountId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`parentAccountId`,`name`,`legalName`,`legalId`,`legalType`,`sicCode`,`tickerSymbol`,`industry`,`type_`,`size_`) VALUES 
 (10110,10109,0,'','2008-09-29 22:36:35','2008-09-29 22:36:35',0,'liferay.com','','','','','','','','');
/*!40000 ALTER TABLE `account_` ENABLE KEYS */;


--
-- Definition of table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `street1` varchar(75) default NULL,
  `street2` varchar(75) default NULL,
  `street3` varchar(75) default NULL,
  `city` varchar(75) default NULL,
  `zip` varchar(75) default NULL,
  `regionId` bigint(20) default NULL,
  `countryId` bigint(20) default NULL,
  `typeId` int(11) default NULL,
  `mailing` tinyint(4) default NULL,
  `primary_` tinyint(4) default NULL,
  PRIMARY KEY  (`addressId`),
  KEY `IX_93D5AD4E` (`companyId`),
  KEY `IX_ABD7DAC0` (`companyId`,`classNameId`),
  KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


--
-- Definition of table `announcementsdelivery`
--

DROP TABLE IF EXISTS `announcementsdelivery`;
CREATE TABLE `announcementsdelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `type_` varchar(75) default NULL,
  `email` tinyint(4) default NULL,
  `sms` tinyint(4) default NULL,
  `website` tinyint(4) default NULL,
  PRIMARY KEY  (`deliveryId`),
  KEY `IX_6EDB9600` (`userId`),
  KEY `IX_BA4413D5` (`userId`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announcementsdelivery`
--

/*!40000 ALTER TABLE `announcementsdelivery` DISABLE KEYS */;
INSERT INTO `announcementsdelivery` (`deliveryId`,`companyId`,`userId`,`type_`,`email`,`sms`,`website`) VALUES 
 (10219,10109,10129,'general',0,0,1),
 (10220,10109,10129,'news',0,0,1),
 (10221,10109,10129,'test',0,0,1);
/*!40000 ALTER TABLE `announcementsdelivery` ENABLE KEYS */;


--
-- Definition of table `announcementsentry`
--

DROP TABLE IF EXISTS `announcementsentry`;
CREATE TABLE `announcementsentry` (
  `uuid_` varchar(75) default NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `title` varchar(75) default NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) default NULL,
  `displayDate` datetime default NULL,
  `expirationDate` datetime default NULL,
  `priority` int(11) default NULL,
  `alert` tinyint(4) default NULL,
  PRIMARY KEY  (`entryId`),
  KEY `IX_A6EF0B81` (`classNameId`,`classPK`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_1AFBDE08` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announcementsentry`
--

/*!40000 ALTER TABLE `announcementsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsentry` ENABLE KEYS */;


--
-- Definition of table `announcementsflag`
--

DROP TABLE IF EXISTS `announcementsflag`;
CREATE TABLE `announcementsflag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `entryId` bigint(20) default NULL,
  `value` int(11) default NULL,
  PRIMARY KEY  (`flagId`),
  KEY `IX_9C7EB9F` (`entryId`),
  KEY `IX_4539A99C` (`userId`,`entryId`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announcementsflag`
--

/*!40000 ALTER TABLE `announcementsflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsflag` ENABLE KEYS */;


--
-- Definition of table `blogscategory`
--

DROP TABLE IF EXISTS `blogscategory`;
CREATE TABLE `blogscategory` (
  `categoryId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `parentCategoryId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  PRIMARY KEY  (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogscategory`
--

/*!40000 ALTER TABLE `blogscategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogscategory` ENABLE KEYS */;


--
-- Definition of table `blogsentry`
--

DROP TABLE IF EXISTS `blogsentry`;
CREATE TABLE `blogsentry` (
  `uuid_` varchar(75) default NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `title` varchar(150) default NULL,
  `urlTitle` varchar(150) default NULL,
  `content` longtext,
  `displayDate` datetime default NULL,
  `draft` tinyint(4) default NULL,
  `allowTrackbacks` tinyint(4) default NULL,
  `trackbacks` longtext,
  PRIMARY KEY  (`entryId`),
  KEY `IX_72EF6041` (`companyId`),
  KEY `IX_3D3D30B0` (`companyId`,`draft`),
  KEY `IX_81A50303` (`groupId`),
  KEY `IX_5FF14FAE` (`groupId`,`draft`),
  KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  KEY `IX_C07CA83D` (`groupId`,`userId`),
  KEY `IX_BC2A3534` (`groupId`,`userId`,`draft`),
  KEY `IX_69157A4D` (`uuid_`),
  KEY `IX_1B1040FD` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogsentry`
--

/*!40000 ALTER TABLE `blogsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsentry` ENABLE KEYS */;


--
-- Definition of table `blogsstatsuser`
--

DROP TABLE IF EXISTS `blogsstatsuser`;
CREATE TABLE `blogsstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `entryCount` int(11) default NULL,
  `lastPostDate` datetime default NULL,
  `ratingsTotalEntries` int(11) default NULL,
  `ratingsTotalScore` double default NULL,
  `ratingsAverageScore` double default NULL,
  PRIMARY KEY  (`statsUserId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_43840EEB` (`groupId`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_BB51F1D9` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogsstatsuser`
--

/*!40000 ALTER TABLE `blogsstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsstatsuser` ENABLE KEYS */;


--
-- Definition of table `bookmarksentry`
--

DROP TABLE IF EXISTS `bookmarksentry`;
CREATE TABLE `bookmarksentry` (
  `uuid_` varchar(75) default NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `folderId` bigint(20) default NULL,
  `name` varchar(300) default NULL,
  `url` longtext,
  `comments` longtext,
  `visits` int(11) default NULL,
  `priority` int(11) default NULL,
  PRIMARY KEY  (`entryId`),
  KEY `IX_443BDC38` (`folderId`),
  KEY `IX_B670BA39` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookmarksentry`
--

/*!40000 ALTER TABLE `bookmarksentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksentry` ENABLE KEYS */;


--
-- Definition of table `bookmarksfolder`
--

DROP TABLE IF EXISTS `bookmarksfolder`;
CREATE TABLE `bookmarksfolder` (
  `uuid_` varchar(75) default NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `parentFolderId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  PRIMARY KEY  (`folderId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_451E7AE3` (`uuid_`),
  KEY `IX_DC2F8927` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookmarksfolder`
--

/*!40000 ALTER TABLE `bookmarksfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksfolder` ENABLE KEYS */;


--
-- Definition of table `calevent`
--

DROP TABLE IF EXISTS `calevent`;
CREATE TABLE `calevent` (
  `uuid_` varchar(75) default NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `title` varchar(75) default NULL,
  `description` longtext,
  `startDate` datetime default NULL,
  `endDate` datetime default NULL,
  `durationHour` int(11) default NULL,
  `durationMinute` int(11) default NULL,
  `allDay` tinyint(4) default NULL,
  `timeZoneSensitive` tinyint(4) default NULL,
  `type_` varchar(75) default NULL,
  `repeating` tinyint(4) default NULL,
  `recurrence` longtext,
  `remindBy` varchar(75) default NULL,
  `firstReminder` int(11) default NULL,
  `secondReminder` int(11) default NULL,
  PRIMARY KEY  (`eventId`),
  KEY `IX_12EE4898` (`groupId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FCD7C63D` (`groupId`,`type_`),
  KEY `IX_C1AD2122` (`uuid_`),
  KEY `IX_5CCE79C8` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calevent`
--

/*!40000 ALTER TABLE `calevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `calevent` ENABLE KEYS */;


--
-- Definition of table `classname_`
--

DROP TABLE IF EXISTS `classname_`;
CREATE TABLE `classname_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) default NULL,
  PRIMARY KEY  (`classNameId`),
  KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classname_`
--

/*!40000 ALTER TABLE `classname_` DISABLE KEYS */;
INSERT INTO `classname_` (`classNameId`,`value`) VALUES 
 (10001,'com.liferay.portal.model.Account'),
 (10002,'com.liferay.portal.model.Address'),
 (10003,'com.liferay.portal.model.ClassName'),
 (10004,'com.liferay.portal.model.Company'),
 (10005,'com.liferay.portal.model.Contact'),
 (10006,'com.liferay.portal.model.Country'),
 (10007,'com.liferay.portal.model.EmailAddress'),
 (10008,'com.liferay.portal.model.Group'),
 (10009,'com.liferay.portal.model.Image'),
 (10010,'com.liferay.portal.model.Layout'),
 (10011,'com.liferay.portal.model.LayoutSet'),
 (10012,'com.liferay.portal.model.ListType'),
 (10013,'com.liferay.portal.model.MembershipRequest'),
 (10017,'com.liferay.portal.model.Organization'),
 (10014,'com.liferay.portal.model.OrgGroupPermission'),
 (10015,'com.liferay.portal.model.OrgGroupRole'),
 (10016,'com.liferay.portal.model.OrgLabor'),
 (10018,'com.liferay.portal.model.PasswordPolicy'),
 (10019,'com.liferay.portal.model.PasswordPolicyRel'),
 (10020,'com.liferay.portal.model.PasswordTracker'),
 (10021,'com.liferay.portal.model.Permission'),
 (10022,'com.liferay.portal.model.Phone'),
 (10023,'com.liferay.portal.model.PluginSetting'),
 (10024,'com.liferay.portal.model.Portlet'),
 (10025,'com.liferay.portal.model.PortletItem'),
 (10026,'com.liferay.portal.model.PortletPreferences'),
 (10027,'com.liferay.portal.model.Region'),
 (10028,'com.liferay.portal.model.Release'),
 (10029,'com.liferay.portal.model.Resource'),
 (10030,'com.liferay.portal.model.ResourceCode'),
 (10031,'com.liferay.portal.model.Role'),
 (10032,'com.liferay.portal.model.ServiceComponent'),
 (10033,'com.liferay.portal.model.Subscription'),
 (10034,'com.liferay.portal.model.User'),
 (10035,'com.liferay.portal.model.UserGroup'),
 (10036,'com.liferay.portal.model.UserGroupRole'),
 (10037,'com.liferay.portal.model.UserIdMapper'),
 (10038,'com.liferay.portal.model.UserTracker'),
 (10039,'com.liferay.portal.model.UserTrackerPath'),
 (10040,'com.liferay.portal.model.WebDAVProps'),
 (10041,'com.liferay.portal.model.Website'),
 (10042,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),
 (10043,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),
 (10044,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),
 (10045,'com.liferay.portlet.blogs.model.BlogsEntry'),
 (10046,'com.liferay.portlet.blogs.model.BlogsStatsUser'),
 (10047,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),
 (10048,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),
 (10049,'com.liferay.portlet.calendar.model.CalEvent'),
 (10050,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),
 (10051,'com.liferay.portlet.documentlibrary.model.DLFileRank'),
 (10052,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),
 (10053,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),
 (10054,'com.liferay.portlet.documentlibrary.model.DLFolder'),
 (10055,'com.liferay.portlet.expando.model.ExpandoColumn'),
 (10056,'com.liferay.portlet.expando.model.ExpandoRow'),
 (10057,'com.liferay.portlet.expando.model.ExpandoTable'),
 (10058,'com.liferay.portlet.expando.model.ExpandoValue'),
 (10059,'com.liferay.portlet.imagegallery.model.IGFolder'),
 (10060,'com.liferay.portlet.imagegallery.model.IGImage'),
 (10061,'com.liferay.portlet.journal.model.JournalArticle'),
 (10062,'com.liferay.portlet.journal.model.JournalArticleImage'),
 (10063,'com.liferay.portlet.journal.model.JournalArticleResource'),
 (10064,'com.liferay.portlet.journal.model.JournalContentSearch'),
 (10065,'com.liferay.portlet.journal.model.JournalFeed'),
 (10066,'com.liferay.portlet.journal.model.JournalStructure'),
 (10067,'com.liferay.portlet.journal.model.JournalTemplate'),
 (10068,'com.liferay.portlet.messageboards.model.MBBan'),
 (10069,'com.liferay.portlet.messageboards.model.MBCategory'),
 (10070,'com.liferay.portlet.messageboards.model.MBDiscussion'),
 (10071,'com.liferay.portlet.messageboards.model.MBMessage'),
 (10072,'com.liferay.portlet.messageboards.model.MBMessageFlag'),
 (10073,'com.liferay.portlet.messageboards.model.MBStatsUser'),
 (10074,'com.liferay.portlet.messageboards.model.MBThread'),
 (10075,'com.liferay.portlet.polls.model.PollsChoice'),
 (10076,'com.liferay.portlet.polls.model.PollsQuestion'),
 (10077,'com.liferay.portlet.polls.model.PollsVote'),
 (10078,'com.liferay.portlet.ratings.model.RatingsEntry'),
 (10079,'com.liferay.portlet.ratings.model.RatingsStats'),
 (10080,'com.liferay.portlet.shopping.model.ShoppingCart'),
 (10081,'com.liferay.portlet.shopping.model.ShoppingCategory'),
 (10082,'com.liferay.portlet.shopping.model.ShoppingCoupon'),
 (10083,'com.liferay.portlet.shopping.model.ShoppingItem'),
 (10084,'com.liferay.portlet.shopping.model.ShoppingItemField'),
 (10085,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),
 (10086,'com.liferay.portlet.shopping.model.ShoppingOrder'),
 (10087,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),
 (10088,'com.liferay.portlet.social.model.SocialActivity'),
 (10089,'com.liferay.portlet.social.model.SocialRelation'),
 (10090,'com.liferay.portlet.social.model.SocialRequest'),
 (10091,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),
 (10092,'com.liferay.portlet.softwarecatalog.model.SCLicense'),
 (10093,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),
 (10094,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),
 (10095,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),
 (10096,'com.liferay.portlet.tags.model.TagsAsset'),
 (10097,'com.liferay.portlet.tags.model.TagsEntry'),
 (10098,'com.liferay.portlet.tags.model.TagsProperty'),
 (10099,'com.liferay.portlet.tags.model.TagsSource'),
 (10100,'com.liferay.portlet.tasks.model.TasksProposal'),
 (10101,'com.liferay.portlet.tasks.model.TasksReview'),
 (10102,'com.liferay.portlet.wiki.model.WikiNode'),
 (10103,'com.liferay.portlet.wiki.model.WikiPage'),
 (10104,'com.liferay.portlet.wiki.model.WikiPageResource'),
 (10105,'com.liferay.portlet.workflow.model.WorkflowDefinition'),
 (10106,'com.liferay.portlet.workflow.model.WorkflowInstance'),
 (10107,'com.liferay.portlet.workflow.model.WorkflowTask');
/*!40000 ALTER TABLE `classname_` ENABLE KEYS */;


--
-- Definition of table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) default NULL,
  `webId` varchar(75) default NULL,
  `key_` longtext,
  `virtualHost` varchar(75) default NULL,
  `mx` varchar(75) default NULL,
  `logoId` bigint(20) default NULL,
  PRIMARY KEY  (`companyId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_975996C0` (`virtualHost`),
  KEY `IX_EC00543C` (`webId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`companyId`,`accountId`,`webId`,`key_`,`virtualHost`,`mx`,`logoId`) VALUES 
 (10109,10110,'liferay.com','rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACAQBdQJ5vF5bdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=','localhost','liferay.com',0);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


--
-- Definition of table `contact_`
--

DROP TABLE IF EXISTS `contact_`;
CREATE TABLE `contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `accountId` bigint(20) default NULL,
  `parentContactId` bigint(20) default NULL,
  `firstName` varchar(75) default NULL,
  `middleName` varchar(75) default NULL,
  `lastName` varchar(75) default NULL,
  `prefixId` int(11) default NULL,
  `suffixId` int(11) default NULL,
  `male` tinyint(4) default NULL,
  `birthday` datetime default NULL,
  `smsSn` varchar(75) default NULL,
  `aimSn` varchar(75) default NULL,
  `facebookSn` varchar(75) default NULL,
  `icqSn` varchar(75) default NULL,
  `jabberSn` varchar(75) default NULL,
  `msnSn` varchar(75) default NULL,
  `mySpaceSn` varchar(75) default NULL,
  `skypeSn` varchar(75) default NULL,
  `twitterSn` varchar(75) default NULL,
  `ymSn` varchar(75) default NULL,
  `employeeStatusId` varchar(75) default NULL,
  `employeeNumber` varchar(75) default NULL,
  `jobTitle` varchar(100) default NULL,
  `jobClass` varchar(75) default NULL,
  `hoursOfOperation` varchar(75) default NULL,
  PRIMARY KEY  (`contactId`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_`
--

/*!40000 ALTER TABLE `contact_` DISABLE KEYS */;
INSERT INTO `contact_` (`contactId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`accountId`,`parentContactId`,`firstName`,`middleName`,`lastName`,`prefixId`,`suffixId`,`male`,`birthday`,`smsSn`,`aimSn`,`facebookSn`,`icqSn`,`jabberSn`,`msnSn`,`mySpaceSn`,`skypeSn`,`twitterSn`,`ymSn`,`employeeStatusId`,`employeeNumber`,`jobTitle`,`jobClass`,`hoursOfOperation`) VALUES 
 (10112,10109,10111,'','2008-09-29 22:36:34','2008-09-29 22:36:34',10110,0,'','','',0,0,1,'2008-09-29 22:36:34','','','','','','','','','','','','','','',''),
 (10130,10109,10129,'','2008-09-29 22:36:37','2008-10-24 01:31:56',10110,0,'Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),
 (10403,10109,10402,'','2008-10-01 21:27:44','2008-10-01 21:27:44',10110,0,'Florin','L','Paduroiu',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `contact_` ENABLE KEYS */;


--
-- Definition of table `counter`
--

DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter`
--

/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` (`name`,`currentId`) VALUES 
 ('com.liferay.counter.model.Counter',10700),
 ('com.liferay.portal.model.Permission',600),
 ('com.liferay.portal.model.Resource',600),
 ('com.liferay.portal.model.ResourceCode',400);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;


--
-- Definition of table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) default NULL,
  `a2` varchar(75) default NULL,
  `a3` varchar(75) default NULL,
  `number_` varchar(75) default NULL,
  `idd_` varchar(75) default NULL,
  `active_` tinyint(4) default NULL,
  PRIMARY KEY  (`countryId`),
  KEY `IX_717B97E1` (`a2`),
  KEY `IX_717B9BA2` (`a3`),
  KEY `IX_25D734CD` (`active_`),
  KEY `IX_19DA007B` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`countryId`,`name`,`a2`,`a3`,`number_`,`idd_`,`active_`) VALUES 
 (1,'Canada','CA','CAN','124','001',1),
 (2,'China','CN','CHN','156','086',1),
 (3,'France','FR','FRA','250','033',1),
 (4,'Germany','DE','DEU','276','049',1),
 (5,'Hong Kong','HK','HKG','344','852',1),
 (6,'Hungary','HU','HUN','348','036',1),
 (7,'Israel','IL','ISR','376','972',1),
 (8,'Italy','IT','ITA','380','039',1),
 (9,'Japan','JP','JPN','392','081',1),
 (10,'South Korea','KR','KOR','410','082',1),
 (11,'Netherlands','NL','NLD','528','031',1),
 (12,'Portugal','PT','PRT','620','351',1),
 (13,'Russia','RU','RUS','643','007',1),
 (14,'Singapore','SG','SGP','702','065',1),
 (15,'Spain','ES','ESP','724','034',1),
 (16,'Turkey','TR','TUR','792','090',1),
 (17,'Vietnam','VM','VNM','704','084',1),
 (18,'United Kingdom','GB','GBR','826','044',1),
 (19,'United States','US','USA','840','001',1),
 (20,'Afghanistan','AF','AFG','4','093',1),
 (21,'Albania','AL','ALB','8','355',1),
 (22,'Algeria','DZ','DZA','12','213',1),
 (23,'American Samoa','AS','ASM','16','684',1),
 (24,'Andorra','AD','AND','20','376',1),
 (25,'Angola','AO','AGO','24','244',1),
 (26,'Anguilla','AI','AIA','660','264',1),
 (27,'Antarctica','AQ','ATA','10','672',1),
 (28,'Antigua','AG','ATG','28','268',1),
 (29,'Argentina','AR','ARG','32','054',1),
 (30,'Armenia','AM','ARM','51','374',1),
 (31,'Aruba','AW','ABW','533','297',1),
 (32,'Australia','AU','AUS','36','061',1),
 (33,'Austria','AT','AUT','40','043',1),
 (34,'Azerbaijan','AZ','AZE','31','994',1),
 (35,'Bahamas','BS','BHS','44','242',1),
 (36,'Bahrain','BH','BHR','48','973',1),
 (37,'Bangladesh','BD','BGD','50','880',1),
 (38,'Barbados','BB','BRB','52','246',1),
 (39,'Belarus','BY','BLR','112','375',1),
 (40,'Belgium','BE','BEL','56','032',1),
 (41,'Belize','BZ','BLZ','84','501',1),
 (42,'Benin','BJ','BEN','204','229',1),
 (43,'Bermuda','BM','BMU','60','441',1),
 (44,'Bhutan','BT','BTN','64','975',1),
 (45,'Bolivia','BO','BOL','68','591',1),
 (46,'Bosnia-Herzegovina','BA','BIH','70','387',1),
 (47,'Botswana','BW','BWA','72','267',1),
 (48,'Brazil','BR','BRA','76','055',1),
 (49,'British Virgin Islands','VG','VGB','92','284',1),
 (50,'Brunei','BN','BRN','96','673',1),
 (51,'Bulgaria','BG','BGR','100','359',1),
 (52,'Burkina Faso','BF','BFA','854','226',1),
 (53,'Burma (Myanmar)','MM','MMR','104','095',1),
 (54,'Burundi','BI','BDI','108','257',1),
 (55,'Cambodia','KH','KHM','116','855',1),
 (56,'Cameroon','CM','CMR','120','237',1),
 (57,'Cape Verde Island','CV','CPV','132','238',1),
 (58,'Cayman Islands','KY','CYM','136','345',1),
 (59,'Central African Republic','CF','CAF','140','236',1),
 (60,'Chad','TD','TCD','148','235',1),
 (61,'Chile','CL','CHL','152','056',1),
 (62,'Christmas Island','CX','CXR','162','061',1),
 (63,'Cocos Islands','CC','CCK','166','061',1),
 (64,'Colombia','CO','COL','170','057',1),
 (65,'Comoros','KM','COM','174','269',1),
 (66,'Republic of Congo','CD','COD','180','242',1),
 (67,'Democratic Republic of Congo','CG','COG','178','243',1),
 (68,'Cook Islands','CK','COK','184','682',1),
 (69,'Costa Rica','CR','CRI','188','506',1),
 (70,'Croatia','HR','HRV','191','385',1),
 (71,'Cuba','CU','CUB','192','053',1),
 (72,'Cyprus','CY','CYP','196','357',1),
 (73,'Czech Republic','CZ','CZE','203','420',1),
 (74,'Denmark','DK','DNK','208','045',1),
 (75,'Djibouti','DJ','DJI','262','253',1),
 (76,'Dominica','DM','DMA','212','767',1),
 (77,'Dominican Republic','DO','DOM','214','809',1),
 (78,'Ecuador','EC','ECU','218','593',1),
 (79,'Egypt','EG','EGY','818','020',1),
 (80,'El Salvador','SV','SLV','222','503',1),
 (81,'Equatorial Guinea','GQ','GNQ','226','240',1),
 (82,'Eritrea','ER','ERI','232','291',1),
 (83,'Estonia','EE','EST','233','372',1),
 (84,'Ethiopia','ET','ETH','231','251',1),
 (85,'Faeroe Islands','FO','FRO','234','298',1),
 (86,'Falkland Islands','FK','FLK','238','500',1),
 (87,'Fiji Islands','FJ','FJI','242','679',1),
 (88,'Finland','FI','FIN','246','358',1),
 (89,'French Guiana','GF','GUF','254','594',1),
 (90,'French Polynesia','PF','PYF','258','689',1),
 (91,'Gabon','GA','GAB','266','241',1),
 (92,'Gambia','GM','GMB','270','220',1),
 (93,'Georgia','GE','GEO','268','995',1),
 (94,'Ghana','GH','GHA','288','233',1),
 (95,'Gibraltar','GI','GIB','292','350',1),
 (96,'Greece','GR','GRC','300','030',1),
 (97,'Greenland','GL','GRL','304','299',1),
 (98,'Grenada','GD','GRD','308','473',1),
 (99,'Guadeloupe','GP','GLP','312','590',1),
 (100,'Guam','GU','GUM','316','671',1),
 (101,'Guatemala','GT','GTM','320','502',1),
 (102,'Guinea','GN','GIN','324','224',1),
 (103,'Guinea-Bissau','GW','GNB','624','245',1),
 (104,'Guyana','GY','GUY','328','592',1),
 (105,'Haiti','HT','HTI','332','509',1),
 (106,'Honduras','HN','HND','340','504',1),
 (107,'Iceland','IS','ISL','352','354',1),
 (108,'India','IN','IND','356','091',1),
 (109,'Indonesia','ID','IDN','360','062',1),
 (110,'Iran','IR','IRN','364','098',1),
 (111,'Iraq','IQ','IRQ','368','964',1),
 (112,'Ireland','IE','IRL','372','353',1),
 (113,'Ivory Coast','CI','CIV','384','225',1),
 (114,'Jamaica','JM','JAM','388','876',1),
 (115,'Jordan','JO','JOR','400','962',1),
 (116,'Kazakhstan','KZ','KAZ','398','007',1),
 (117,'Kenya','KE','KEN','404','254',1),
 (118,'Kiribati','KI','KIR','408','686',1),
 (119,'Kuwait','KW','KWT','414','965',1),
 (120,'North Korea','KP','PRK','408','850',1),
 (121,'Kyrgyzstan','KG','KGZ','471','996',1),
 (122,'Laos','LA','LAO','418','856',1),
 (123,'Latvia','LV','LVA','428','371',1),
 (124,'Lebanon','LB','LBN','422','961',1),
 (125,'Lesotho','LS','LSO','426','266',1),
 (126,'Liberia','LR','LBR','430','231',1),
 (127,'Libya','LY','LBY','434','218',1),
 (128,'Liechtenstein','LI','LIE','438','423',1),
 (129,'Lithuania','LT','LTU','440','370',1),
 (130,'Luxembourg','LU','LUX','442','352',1),
 (131,'Macau','MO','MAC','446','853',1),
 (132,'Macedonia','MK','MKD','807','389',1),
 (133,'Madagascar','MG','MDG','450','261',1),
 (134,'Malawi','MW','MWI','454','265',1),
 (135,'Malaysia','MY','MYS','458','060',1),
 (136,'Maldives','MV','MDV','462','960',1),
 (137,'Mali','ML','MLI','466','223',1),
 (138,'Malta','MT','MLT','470','356',1),
 (139,'Marshall Islands','MH','MHL','584','692',1),
 (140,'Martinique','MQ','MTQ','474','596',1),
 (141,'Mauritania','MR','MRT','478','222',1),
 (142,'Mauritius','MU','MUS','480','230',1),
 (143,'Mayotte Island','YT','MYT','175','269',1),
 (144,'Mexico','MX','MEX','484','052',1),
 (145,'Micronesia','FM','FSM','583','691',1),
 (146,'Moldova','MD','MDA','498','373',1),
 (147,'Monaco','MC','MCO','492','377',1),
 (148,'Mongolia','MN','MNG','496','976',1),
 (149,'Montenegro','ME','MNE','499','382',1),
 (150,'Montserrat','MS','MSR','500','664',1),
 (151,'Morocco','MA','MAR','504','212',1),
 (152,'Mozambique','MZ','MOZ','508','258',1),
 (153,'Namibia','NA','NAM','516','264',1),
 (154,'Nauru','NR','NRU','520','674',1),
 (155,'Nepal','NP','NPL','524','977',1),
 (156,'Netherlands Antilles','AN','ANT','530','599',1),
 (157,'New Caledonia','NC','NCL','540','687',1),
 (158,'New Zealand','NZ','NZL','554','064',1),
 (159,'Nicaragua','NI','NIC','558','505',1),
 (160,'Niger','NE','NER','562','227',1),
 (161,'Nigeria','NG','NGA','566','234',1),
 (162,'Niue','NU','NIU','570','683',1),
 (163,'Norfolk Island','NF','NFK','574','672',1),
 (164,'Norway','NO','NOR','578','047',1),
 (165,'Oman','OM','OMN','512','968',1),
 (166,'Pakistan','PK','PAK','586','092',1),
 (167,'Palau','PW','PLW','585','680',1),
 (168,'Palestine','PS','PSE','275','970',1),
 (169,'Panama','PA','PAN','591','507',1),
 (170,'Papua New Guinea','PG','PNG','598','675',1),
 (171,'Paraguay','PY','PRY','600','595',1),
 (172,'Peru','PE','PER','604','051',1),
 (173,'Philippines','PH','PHL','608','063',1),
 (174,'Poland','PL','POL','616','048',1),
 (175,'Puerto Rico','PR','PRI','630','787',1),
 (176,'Qatar','QA','QAT','634','974',1),
 (177,'Reunion Island','RE','REU','638','262',1),
 (178,'Romania','RO','ROU','642','040',1),
 (179,'Rwanda','RW','RWA','646','250',1),
 (180,'St. Helena','SH','SHN','654','290',1),
 (181,'St. Kitts','KN','KNA','659','869',1),
 (182,'St. Lucia','LC','LCA','662','758',1),
 (183,'St. Pierre & Miquelon','PM','SPM','666','508',1),
 (184,'St. Vincent','VC','VCT','670','784',1),
 (185,'San Marino','SM','SMR','674','378',1),
 (186,'Sao Tome & Principe','ST','STP','678','239',1),
 (187,'Saudi Arabia','SA','SAU','682','966',1),
 (188,'Senegal','SN','SEN','686','221',1),
 (189,'Serbia','RS','SRB','688','381',1),
 (190,'Seychelles','SC','SYC','690','248',1),
 (191,'Sierra Leone','SL','SLE','694','249',1),
 (192,'Slovakia','SK','SVK','703','421',1),
 (193,'Slovenia','SI','SVN','705','386',1),
 (194,'Solomon Islands','SB','SLB','90','677',1),
 (195,'Somalia','SO','SOM','706','252',1),
 (196,'South Africa','ZA','ZAF','710','027',1),
 (197,'Sri Lanka','LK','LKA','144','094',1),
 (198,'Sudan','SD','SDN','736','095',1),
 (199,'Suriname','SR','SUR','740','597',1),
 (200,'Swaziland','SZ','SWZ','748','268',1),
 (201,'Sweden','SE','SWE','752','046',1),
 (202,'Switzerland','CH','CHE','756','041',1),
 (203,'Syria','SY','SYR','760','963',1),
 (204,'Taiwan','TW','TWN','158','886',1),
 (205,'Tajikistan','TJ','TJK','762','992',1),
 (206,'Tanzania','TZ','TZA','834','255',1),
 (207,'Thailand','TH','THA','764','066',1),
 (208,'Togo','TG','TGO','768','228',1),
 (209,'Tonga','TO','TON','776','676',1),
 (210,'Trinidad & Tobago','TT','TTO','780','868',1),
 (211,'Tunisia','TN','TUN','788','216',1),
 (212,'Turkmenistan','TM','TKM','795','993',1),
 (213,'Turks & Caicos','TC','TCA','796','649',1),
 (214,'Tuvalu','TV','TUV','798','688',1),
 (215,'Uganda','UG','UGA','800','256',1),
 (216,'Ukraine','UA','UKR','804','380',1),
 (217,'United Arab Emirates','AE','ARE','784','971',1),
 (218,'Uruguay','UY','URY','858','598',1),
 (219,'Uzbekistan','UZ','UZB','860','998',1),
 (220,'Vanuatu','VU','VUT','548','678',1),
 (221,'Vatican City','VA','VAT','336','039',1),
 (222,'Venezuela','VE','VEN','862','058',1),
 (223,'Wallis & Futuna','WF','WLF','876','681',1),
 (224,'Western Samoa','EH','ESH','732','685',1),
 (225,'Yemen','YE','YEM','887','967',1),
 (226,'Zambia','ZM','ZMB','894','260',1),
 (227,'Zimbabwe','ZW','ZWE','716','263',1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


--
-- Definition of table `cyrususer`
--

DROP TABLE IF EXISTS `cyrususer`;
CREATE TABLE `cyrususer` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cyrususer`
--

/*!40000 ALTER TABLE `cyrususer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrususer` ENABLE KEYS */;


--
-- Definition of table `cyrusvirtual`
--

DROP TABLE IF EXISTS `cyrusvirtual`;
CREATE TABLE `cyrusvirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY  (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cyrusvirtual`
--

/*!40000 ALTER TABLE `cyrusvirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrusvirtual` ENABLE KEYS */;


--
-- Definition of table `dlfileentry`
--

DROP TABLE IF EXISTS `dlfileentry`;
CREATE TABLE `dlfileentry` (
  `uuid_` varchar(75) default NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `versionUserId` bigint(20) default NULL,
  `versionUserName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `folderId` bigint(20) default NULL,
  `name` varchar(300) default NULL,
  `title` varchar(300) default NULL,
  `description` longtext,
  `version` double default NULL,
  `size_` int(11) default NULL,
  `readCount` int(11) default NULL,
  `extraSettings` longtext,
  PRIMARY KEY  (`fileEntryId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_24A846D1` (`folderId`),
  KEY `IX_8F6C75D0` (`folderId`,`name`(255)),
  KEY `IX_A9951F17` (`folderId`,`title`(255)),
  KEY `IX_64F0FE40` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dlfileentry`
--

/*!40000 ALTER TABLE `dlfileentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentry` ENABLE KEYS */;


--
-- Definition of table `dlfilerank`
--

DROP TABLE IF EXISTS `dlfilerank`;
CREATE TABLE `dlfilerank` (
  `fileRankId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `folderId` bigint(20) default NULL,
  `name` varchar(300) default NULL,
  PRIMARY KEY  (`fileRankId`),
  KEY `IX_CE705D48` (`companyId`,`userId`,`folderId`,`name`(255)),
  KEY `IX_40B56512` (`folderId`,`name`(255)),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dlfilerank`
--

/*!40000 ALTER TABLE `dlfilerank` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfilerank` ENABLE KEYS */;


--
-- Definition of table `dlfileshortcut`
--

DROP TABLE IF EXISTS `dlfileshortcut`;
CREATE TABLE `dlfileshortcut` (
  `uuid_` varchar(75) default NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `folderId` bigint(20) default NULL,
  `toFolderId` bigint(20) default NULL,
  `toName` varchar(300) default NULL,
  PRIMARY KEY  (`fileShortcutId`),
  KEY `IX_E56EC6AD` (`folderId`),
  KEY `IX_CA2708A2` (`toFolderId`,`toName`(255)),
  KEY `IX_4831EBE4` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dlfileshortcut`
--

/*!40000 ALTER TABLE `dlfileshortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileshortcut` ENABLE KEYS */;


--
-- Definition of table `dlfileversion`
--

DROP TABLE IF EXISTS `dlfileversion`;
CREATE TABLE `dlfileversion` (
  `fileVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `folderId` bigint(20) default NULL,
  `name` varchar(300) default NULL,
  `version` double default NULL,
  `size_` int(11) default NULL,
  PRIMARY KEY  (`fileVersionId`),
  KEY `IX_9CD91DB6` (`folderId`,`name`(255)),
  KEY `IX_6C5E6512` (`folderId`,`name`(255),`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dlfileversion`
--

/*!40000 ALTER TABLE `dlfileversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileversion` ENABLE KEYS */;


--
-- Definition of table `dlfolder`
--

DROP TABLE IF EXISTS `dlfolder`;
CREATE TABLE `dlfolder` (
  `uuid_` varchar(75) default NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `parentFolderId` bigint(20) default NULL,
  `name` varchar(100) default NULL,
  `description` longtext,
  `lastPostDate` datetime default NULL,
  PRIMARY KEY  (`folderId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_CBC408D8` (`uuid_`),
  KEY `IX_3CC1DED2` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dlfolder`
--

/*!40000 ALTER TABLE `dlfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfolder` ENABLE KEYS */;


--
-- Definition of table `emailaddress`
--

DROP TABLE IF EXISTS `emailaddress`;
CREATE TABLE `emailaddress` (
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `address` varchar(75) default NULL,
  `typeId` int(11) default NULL,
  `primary_` tinyint(4) default NULL,
  PRIMARY KEY  (`emailAddressId`),
  KEY `IX_1BB072CA` (`companyId`),
  KEY `IX_49D2DEC4` (`companyId`,`classNameId`),
  KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailaddress`
--

/*!40000 ALTER TABLE `emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailaddress` ENABLE KEYS */;


--
-- Definition of table `expandocolumn`
--

DROP TABLE IF EXISTS `expandocolumn`;
CREATE TABLE `expandocolumn` (
  `columnId` bigint(20) NOT NULL,
  `tableId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `type_` int(11) default NULL,
  PRIMARY KEY  (`columnId`),
  KEY `IX_A8C0CBE8` (`tableId`),
  KEY `IX_FEFC8DA7` (`tableId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expandocolumn`
--

/*!40000 ALTER TABLE `expandocolumn` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandocolumn` ENABLE KEYS */;


--
-- Definition of table `expandorow`
--

DROP TABLE IF EXISTS `expandorow`;
CREATE TABLE `expandorow` (
  `rowId_` bigint(20) NOT NULL,
  `tableId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  PRIMARY KEY  (`rowId_`),
  KEY `IX_D3F5D7AE` (`tableId`),
  KEY `IX_81EFBFF5` (`tableId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expandorow`
--

/*!40000 ALTER TABLE `expandorow` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandorow` ENABLE KEYS */;


--
-- Definition of table `expandotable`
--

DROP TABLE IF EXISTS `expandotable`;
CREATE TABLE `expandotable` (
  `tableId` bigint(20) NOT NULL,
  `classNameId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  PRIMARY KEY  (`tableId`),
  KEY `IX_F0A86A4F` (`classNameId`),
  KEY `IX_DED782CE` (`classNameId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expandotable`
--

/*!40000 ALTER TABLE `expandotable` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandotable` ENABLE KEYS */;


--
-- Definition of table `expandovalue`
--

DROP TABLE IF EXISTS `expandovalue`;
CREATE TABLE `expandovalue` (
  `valueId` bigint(20) NOT NULL,
  `tableId` bigint(20) default NULL,
  `columnId` bigint(20) default NULL,
  `rowId_` bigint(20) default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `data_` longtext,
  PRIMARY KEY  (`valueId`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_F7DD0987` (`columnId`),
  KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_F0566A77` (`tableId`),
  KEY `IX_886B68D1` (`tableId`,`columnId`,`classNameId`,`classPK`),
  KEY `IX_B5984EDA` (`tableId`,`columnId`,`rowId_`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expandovalue`
--

/*!40000 ALTER TABLE `expandovalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandovalue` ENABLE KEYS */;


--
-- Definition of table `group_`
--

DROP TABLE IF EXISTS `group_`;
CREATE TABLE `group_` (
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `creatorUserId` bigint(20) default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `parentGroupId` bigint(20) default NULL,
  `liveGroupId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `type_` int(11) default NULL,
  `typeSettings` longtext,
  `friendlyURL` varchar(100) default NULL,
  `active_` tinyint(4) default NULL,
  PRIMARY KEY  (`groupId`),
  KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  KEY `IX_5AA68501` (`companyId`,`name`),
  KEY `IX_16218A38` (`liveGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_`
--

/*!40000 ALTER TABLE `group_` DISABLE KEYS */;
INSERT INTO `group_` (`groupId`,`companyId`,`creatorUserId`,`classNameId`,`classPK`,`parentGroupId`,`liveGroupId`,`name`,`description`,`type_`,`typeSettings`,`friendlyURL`,`active_`) VALUES 
 (10124,10109,10111,0,0,0,0,'Guest','',1,'','/guest',1),
 (10131,10109,10129,10034,10129,0,0,'','',0,'','/test',1),
 (10135,10109,10129,10017,10134,0,0,'','',0,'','/10134',1),
 (10139,10109,10129,10017,10138,0,0,'','',0,'','/10138',1),
 (10404,10109,10402,10034,10402,0,0,'','',0,'','/fpa',1);
/*!40000 ALTER TABLE `group_` ENABLE KEYS */;


--
-- Definition of table `groups_orgs`
--

DROP TABLE IF EXISTS `groups_orgs`;
CREATE TABLE `groups_orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY  (`groupId`,`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_orgs`
--

/*!40000 ALTER TABLE `groups_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_orgs` ENABLE KEYS */;


--
-- Definition of table `groups_permissions`
--

DROP TABLE IF EXISTS `groups_permissions`;
CREATE TABLE `groups_permissions` (
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY  (`groupId`,`permissionId`),
  KEY `LIFERAY_001` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_permissions`
--

/*!40000 ALTER TABLE `groups_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_permissions` ENABLE KEYS */;


--
-- Definition of table `groups_roles`
--

DROP TABLE IF EXISTS `groups_roles`;
CREATE TABLE `groups_roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY  (`groupId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_roles`
--

/*!40000 ALTER TABLE `groups_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_roles` ENABLE KEYS */;


--
-- Definition of table `groups_usergroups`
--

DROP TABLE IF EXISTS `groups_usergroups`;
CREATE TABLE `groups_usergroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY  (`groupId`,`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_usergroups`
--

/*!40000 ALTER TABLE `groups_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_usergroups` ENABLE KEYS */;


--
-- Definition of table `igfolder`
--

DROP TABLE IF EXISTS `igfolder`;
CREATE TABLE `igfolder` (
  `uuid_` varchar(75) default NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `parentFolderId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  PRIMARY KEY  (`folderId`),
  KEY `IX_60214CF6` (`companyId`),
  KEY `IX_206498F8` (`groupId`),
  KEY `IX_1A605E9F` (`groupId`,`parentFolderId`),
  KEY `IX_9BBAFB1E` (`groupId`,`parentFolderId`,`name`),
  KEY `IX_F73C0982` (`uuid_`),
  KEY `IX_B10EFD68` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `igfolder`
--

/*!40000 ALTER TABLE `igfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `igfolder` ENABLE KEYS */;


--
-- Definition of table `igimage`
--

DROP TABLE IF EXISTS `igimage`;
CREATE TABLE `igimage` (
  `uuid_` varchar(75) default NULL,
  `imageId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `folderId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `smallImageId` bigint(20) default NULL,
  `largeImageId` bigint(20) default NULL,
  `custom1ImageId` bigint(20) default NULL,
  `custom2ImageId` bigint(20) default NULL,
  PRIMARY KEY  (`imageId`),
  KEY `IX_E597322D` (`custom1ImageId`),
  KEY `IX_D9E0A34C` (`custom2ImageId`),
  KEY `IX_4438CA80` (`folderId`),
  KEY `IX_BCB13A3F` (`folderId`,`name`),
  KEY `IX_64F0B572` (`largeImageId`),
  KEY `IX_D3D32126` (`smallImageId`),
  KEY `IX_265BB0F1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `igimage`
--

/*!40000 ALTER TABLE `igimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `igimage` ENABLE KEYS */;


--
-- Definition of table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime default NULL,
  `text_` longtext,
  `type_` varchar(75) default NULL,
  `height` int(11) default NULL,
  `width` int(11) default NULL,
  `size_` int(11) default NULL,
  PRIMARY KEY  (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;


--
-- Definition of table `journalarticle`
--

DROP TABLE IF EXISTS `journalarticle`;
CREATE TABLE `journalarticle` (
  `uuid_` varchar(75) default NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) default NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `articleId` varchar(75) default NULL,
  `version` double default NULL,
  `title` varchar(100) default NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) default NULL,
  `structureId` varchar(75) default NULL,
  `templateId` varchar(75) default NULL,
  `displayDate` datetime default NULL,
  `approved` tinyint(4) default NULL,
  `approvedByUserId` bigint(20) default NULL,
  `approvedByUserName` varchar(75) default NULL,
  `approvedDate` datetime default NULL,
  `expired` tinyint(4) default NULL,
  `expirationDate` datetime default NULL,
  `reviewDate` datetime default NULL,
  `indexable` tinyint(4) default NULL,
  `smallImage` tinyint(4) default NULL,
  `smallImageId` bigint(20) default NULL,
  `smallImageURL` varchar(75) default NULL,
  PRIMARY KEY  (`id_`),
  KEY `IX_DFF98523` (`companyId`),
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_8DBF1387` (`groupId`,`articleId`,`approved`),
  KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_F029602F` (`uuid_`),
  KEY `IX_3463D95B` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journalarticle`
--

/*!40000 ALTER TABLE `journalarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticle` ENABLE KEYS */;


--
-- Definition of table `journalarticleimage`
--

DROP TABLE IF EXISTS `journalarticleimage`;
CREATE TABLE `journalarticleimage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `articleId` varchar(75) default NULL,
  `version` double default NULL,
  `elName` varchar(75) default NULL,
  `languageId` varchar(75) default NULL,
  `tempImage` tinyint(4) default NULL,
  PRIMARY KEY  (`articleImageId`),
  KEY `IX_3B51BB68` (`groupId`),
  KEY `IX_158B526F` (`groupId`,`articleId`,`version`),
  KEY `IX_D67292FC` (`groupId`,`articleId`,`version`,`elName`,`languageId`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journalarticleimage`
--

/*!40000 ALTER TABLE `journalarticleimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticleimage` ENABLE KEYS */;


--
-- Definition of table `journalarticleresource`
--

DROP TABLE IF EXISTS `journalarticleresource`;
CREATE TABLE `journalarticleresource` (
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `articleId` varchar(75) default NULL,
  PRIMARY KEY  (`resourcePrimKey`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_88DF994A` (`groupId`,`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journalarticleresource`
--

/*!40000 ALTER TABLE `journalarticleresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticleresource` ENABLE KEYS */;


--
-- Definition of table `journalcontentsearch`
--

DROP TABLE IF EXISTS `journalcontentsearch`;
CREATE TABLE `journalcontentsearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `privateLayout` tinyint(4) default NULL,
  `layoutId` bigint(20) default NULL,
  `portletId` varchar(200) default NULL,
  `articleId` varchar(75) default NULL,
  PRIMARY KEY  (`contentSearchId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_20962903` (`groupId`,`privateLayout`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`),
  KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journalcontentsearch`
--

/*!40000 ALTER TABLE `journalcontentsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalcontentsearch` ENABLE KEYS */;


--
-- Definition of table `journalfeed`
--

DROP TABLE IF EXISTS `journalfeed`;
CREATE TABLE `journalfeed` (
  `uuid_` varchar(75) default NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `feedId` varchar(75) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `type_` varchar(75) default NULL,
  `structureId` varchar(75) default NULL,
  `templateId` varchar(75) default NULL,
  `rendererTemplateId` varchar(75) default NULL,
  `delta` int(11) default NULL,
  `orderByCol` varchar(75) default NULL,
  `orderByType` varchar(75) default NULL,
  `targetLayoutFriendlyUrl` varchar(75) default NULL,
  `targetPortletId` varchar(75) default NULL,
  `contentField` varchar(75) default NULL,
  `feedType` varchar(75) default NULL,
  `feedVersion` double default NULL,
  PRIMARY KEY  (`id_`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_65576CBC` (`groupId`,`feedId`),
  KEY `IX_50C36D79` (`uuid_`),
  KEY `IX_39031F51` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journalfeed`
--

/*!40000 ALTER TABLE `journalfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalfeed` ENABLE KEYS */;


--
-- Definition of table `journalstructure`
--

DROP TABLE IF EXISTS `journalstructure`;
CREATE TABLE `journalstructure` (
  `uuid_` varchar(75) default NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `structureId` varchar(75) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `xsd` longtext,
  PRIMARY KEY  (`id_`),
  KEY `IX_B97F5608` (`groupId`),
  KEY `IX_AB6E9996` (`groupId`,`structureId`),
  KEY `IX_8831E4FC` (`structureId`),
  KEY `IX_6702CA92` (`uuid_`),
  KEY `IX_42E86E58` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journalstructure`
--

/*!40000 ALTER TABLE `journalstructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalstructure` ENABLE KEYS */;


--
-- Definition of table `journaltemplate`
--

DROP TABLE IF EXISTS `journaltemplate`;
CREATE TABLE `journaltemplate` (
  `uuid_` varchar(75) default NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `templateId` varchar(75) default NULL,
  `structureId` varchar(75) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `xsl` longtext,
  `langType` varchar(75) default NULL,
  `cacheable` tinyint(4) default NULL,
  `smallImage` tinyint(4) default NULL,
  `smallImageId` bigint(20) default NULL,
  `smallImageURL` varchar(75) default NULL,
  PRIMARY KEY  (`id_`),
  KEY `IX_77923653` (`groupId`),
  KEY `IX_1701CB2B` (`groupId`,`structureId`),
  KEY `IX_E802AA3C` (`groupId`,`templateId`),
  KEY `IX_25FFB6FA` (`smallImageId`),
  KEY `IX_1B12CA20` (`templateId`),
  KEY `IX_2857419D` (`uuid_`),
  KEY `IX_62D1B3AD` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journaltemplate`
--

/*!40000 ALTER TABLE `journaltemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `journaltemplate` ENABLE KEYS */;


--
-- Definition of table `layout`
--

DROP TABLE IF EXISTS `layout`;
CREATE TABLE `layout` (
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `privateLayout` tinyint(4) default NULL,
  `layoutId` bigint(20) default NULL,
  `parentLayoutId` bigint(20) default NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `type_` varchar(75) default NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) default NULL,
  `friendlyURL` varchar(100) default NULL,
  `iconImage` tinyint(4) default NULL,
  `iconImageId` bigint(20) default NULL,
  `themeId` varchar(75) default NULL,
  `colorSchemeId` varchar(75) default NULL,
  `wapThemeId` varchar(75) default NULL,
  `wapColorSchemeId` varchar(75) default NULL,
  `css` longtext,
  `priority` int(11) default NULL,
  `dlFolderId` bigint(20) default NULL,
  PRIMARY KEY  (`plid`),
  KEY `IX_C7FBC998` (`companyId`),
  KEY `IX_FAD05595` (`dlFolderId`),
  KEY `IX_C099D61A` (`groupId`),
  KEY `IX_705F5AA3` (`groupId`,`privateLayout`),
  KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layout`
--

/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` (`plid`,`groupId`,`companyId`,`privateLayout`,`layoutId`,`parentLayoutId`,`name`,`title`,`description`,`type_`,`typeSettings`,`hidden_`,`friendlyURL`,`iconImage`,`iconImageId`,`themeId`,`colorSchemeId`,`wapThemeId`,`wapColorSchemeId`,`css`,`priority`,`dlFolderId`) VALUES 
 (10127,10124,10109,0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><name language-id=\"en_US\">Bine ati venit</name></root>','<root />','','portlet','layout-template-id=2_columns_ii\ncolumn-2=47,11,\ncolumn-1=111,109_INSTANCE_kd8w,50,58',0,'/home',0,0,'','','','','',0,0),
 (10205,10131,10109,1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><name language-id=\"en_US\">Welcome</name></root>','<root />','','portlet','layout-template-id=2_columns_ii\ncolumn-2=11,29,8,19,\ncolumn-1=71_INSTANCE_OY0d,82,23,61,',0,'/home',0,0,'','','','','',0,0),
 (10206,10131,10109,0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><name language-id=\"en_US\">Welcome</name></root>','<root />','','portlet','layout-template-id=2_columns_ii\ncolumn-2=8,19,\ncolumn-1=82,23,',0,'/home',0,0,'','','','','',0,0),
 (10209,10124,10109,0,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><name language-id=\"en_US\">Inregistrare Asociatie</name></root>','<root />','','portlet','layout-template-id=1_column\ncolumn-1=Partnerprofile_WAR_Partnerprofileportlet_INSTANCE_IDCB',0,'/2',0,0,'','','','','',1,0),
 (10211,10124,10109,0,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><name language-id=\"en_US\">Cautare</name></root>','<root />','','portlet','layout-template-id=1_column\ncolumn-1=Partnersearch_WAR_Partnersearchportlet_INSTANCE_rSUK',0,'/4',0,0,'','','','','',3,0),
 (10407,10404,10109,1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><name language-id=\"en_US\">Welcome</name></root>','<root />','','portlet','layout-template-id=2_columns_ii\ncolumn-2=11,29,8,19,\ncolumn-1=71_INSTANCE_OY0d,82,23,61,',0,'/home',0,0,'','','','','',0,0),
 (10408,10404,10109,0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><name language-id=\"en_US\">Welcome</name></root>','<root />','','portlet','layout-template-id=2_columns_ii\ncolumn-2=8,19,\ncolumn-1=82,23,',0,'/home',0,0,'','','','','',0,0);
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;


--
-- Definition of table `layoutset`
--

DROP TABLE IF EXISTS `layoutset`;
CREATE TABLE `layoutset` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `privateLayout` tinyint(4) default NULL,
  `logo` tinyint(4) default NULL,
  `logoId` bigint(20) default NULL,
  `themeId` varchar(75) default NULL,
  `colorSchemeId` varchar(75) default NULL,
  `wapThemeId` varchar(75) default NULL,
  `wapColorSchemeId` varchar(75) default NULL,
  `css` longtext,
  `pageCount` int(11) default NULL,
  `virtualHost` varchar(75) default NULL,
  PRIMARY KEY  (`layoutSetId`),
  KEY `IX_A40B8BEC` (`groupId`),
  KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_5ABC2905` (`virtualHost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layoutset`
--

/*!40000 ALTER TABLE `layoutset` DISABLE KEYS */;
INSERT INTO `layoutset` (`layoutSetId`,`groupId`,`companyId`,`privateLayout`,`logo`,`logoId`,`themeId`,`colorSchemeId`,`wapThemeId`,`wapColorSchemeId`,`css`,`pageCount`,`virtualHost`) VALUES 
 (10125,10124,10109,1,0,0,'classic','01','mobile','01','',0,''),
 (10126,10124,10109,0,0,0,'classic','01','mobile','01','',3,''),
 (10132,10131,10109,1,0,0,'classic','01','mobile','01','',1,''),
 (10133,10131,10109,0,0,0,'classic','01','mobile','01','',1,''),
 (10136,10135,10109,1,0,0,'classic','01','mobile','01','',0,''),
 (10137,10135,10109,0,0,0,'classic','01','mobile','01','',0,''),
 (10140,10139,10109,1,0,0,'classic','01','mobile','01','',0,''),
 (10141,10139,10109,0,0,0,'classic','01','mobile','01','',0,''),
 (10405,10404,10109,1,0,0,'classic','01','mobile','01','',1,''),
 (10406,10404,10109,0,0,0,'classic','01','mobile','01','',1,'');
/*!40000 ALTER TABLE `layoutset` ENABLE KEYS */;


--
-- Definition of table `listtype`
--

DROP TABLE IF EXISTS `listtype`;
CREATE TABLE `listtype` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) default NULL,
  `type_` varchar(75) default NULL,
  PRIMARY KEY  (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listtype`
--

/*!40000 ALTER TABLE `listtype` DISABLE KEYS */;
INSERT INTO `listtype` (`listTypeId`,`name`,`type_`) VALUES 
 (10000,'Billing','com.liferay.portal.model.Account.address'),
 (10001,'Other','com.liferay.portal.model.Account.address'),
 (10002,'P.O. Box','com.liferay.portal.model.Account.address'),
 (10003,'Shipping','com.liferay.portal.model.Account.address'),
 (10004,'E-mail','com.liferay.portal.model.Account.emailAddress'),
 (10005,'E-mail 2','com.liferay.portal.model.Account.emailAddress'),
 (10006,'E-mail 3','com.liferay.portal.model.Account.emailAddress'),
 (10007,'Fax','com.liferay.portal.model.Account.phone'),
 (10008,'Local','com.liferay.portal.model.Account.phone'),
 (10009,'Other','com.liferay.portal.model.Account.phone'),
 (10010,'Toll-Free','com.liferay.portal.model.Account.phone'),
 (10011,'TTY','com.liferay.portal.model.Account.phone'),
 (10012,'Intranet','com.liferay.portal.model.Account.website'),
 (10013,'Public','com.liferay.portal.model.Account.website'),
 (11000,'Business','com.liferay.portal.model.Contact.address'),
 (11001,'Other','com.liferay.portal.model.Contact.address'),
 (11002,'Personal','com.liferay.portal.model.Contact.address'),
 (11003,'E-mail','com.liferay.portal.model.Contact.emailAddress'),
 (11004,'E-mail 2','com.liferay.portal.model.Contact.emailAddress'),
 (11005,'E-mail 3','com.liferay.portal.model.Contact.emailAddress'),
 (11006,'Business','com.liferay.portal.model.Contact.phone'),
 (11007,'Business Fax','com.liferay.portal.model.Contact.phone'),
 (11008,'Mobile','com.liferay.portal.model.Contact.phone'),
 (11009,'Other','com.liferay.portal.model.Contact.phone'),
 (11010,'Pager','com.liferay.portal.model.Contact.phone'),
 (11011,'Personal','com.liferay.portal.model.Contact.phone'),
 (11012,'Personal Fax','com.liferay.portal.model.Contact.phone'),
 (11013,'TTY','com.liferay.portal.model.Contact.phone'),
 (11014,'Dr.','com.liferay.portal.model.Contact.prefix'),
 (11015,'Mr.','com.liferay.portal.model.Contact.prefix'),
 (11016,'Mrs.','com.liferay.portal.model.Contact.prefix'),
 (11017,'Ms.','com.liferay.portal.model.Contact.prefix'),
 (11020,'II','com.liferay.portal.model.Contact.suffix'),
 (11021,'III','com.liferay.portal.model.Contact.suffix'),
 (11022,'IV','com.liferay.portal.model.Contact.suffix'),
 (11023,'Jr.','com.liferay.portal.model.Contact.suffix'),
 (11024,'PhD.','com.liferay.portal.model.Contact.suffix'),
 (11025,'Sr.','com.liferay.portal.model.Contact.suffix'),
 (11026,'Blog','com.liferay.portal.model.Contact.website'),
 (11027,'Business','com.liferay.portal.model.Contact.website'),
 (11028,'Other','com.liferay.portal.model.Contact.website'),
 (11029,'Personal','com.liferay.portal.model.Contact.website'),
 (12000,'Billing','com.liferay.portal.model.Organization.address'),
 (12001,'Other','com.liferay.portal.model.Organization.address'),
 (12002,'P.O. Box','com.liferay.portal.model.Organization.address'),
 (12003,'Shipping','com.liferay.portal.model.Organization.address'),
 (12004,'E-mail','com.liferay.portal.model.Organization.emailAddress'),
 (12005,'E-mail 2','com.liferay.portal.model.Organization.emailAddress'),
 (12006,'E-mail 3','com.liferay.portal.model.Organization.emailAddress'),
 (12007,'Fax','com.liferay.portal.model.Organization.phone'),
 (12008,'Local','com.liferay.portal.model.Organization.phone'),
 (12009,'Other','com.liferay.portal.model.Organization.phone'),
 (12010,'Toll-Free','com.liferay.portal.model.Organization.phone'),
 (12011,'TTY','com.liferay.portal.model.Organization.phone'),
 (12012,'Administrative','com.liferay.portal.model.Organization.service'),
 (12013,'Contracts','com.liferay.portal.model.Organization.service'),
 (12014,'Donation','com.liferay.portal.model.Organization.service'),
 (12015,'Retail','com.liferay.portal.model.Organization.service'),
 (12016,'Training','com.liferay.portal.model.Organization.service'),
 (12017,'Full Member','com.liferay.portal.model.Organization.status'),
 (12018,'Provisional Member','com.liferay.portal.model.Organization.status'),
 (12019,'Intranet','com.liferay.portal.model.Organization.website'),
 (12020,'Public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `listtype` ENABLE KEYS */;


--
-- Definition of table `mbban`
--

DROP TABLE IF EXISTS `mbban`;
CREATE TABLE `mbban` (
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `banUserId` bigint(20) default NULL,
  PRIMARY KEY  (`banId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  KEY `IX_48814BBA` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mbban`
--

/*!40000 ALTER TABLE `mbban` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbban` ENABLE KEYS */;


--
-- Definition of table `mbcategory`
--

DROP TABLE IF EXISTS `mbcategory`;
CREATE TABLE `mbcategory` (
  `uuid_` varchar(75) default NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `parentCategoryId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `lastPostDate` datetime default NULL,
  PRIMARY KEY  (`categoryId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C2626EDB` (`uuid_`),
  KEY `IX_F7D28C2F` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mbcategory`
--

/*!40000 ALTER TABLE `mbcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbcategory` ENABLE KEYS */;


--
-- Definition of table `mbdiscussion`
--

DROP TABLE IF EXISTS `mbdiscussion`;
CREATE TABLE `mbdiscussion` (
  `discussionId` bigint(20) NOT NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `threadId` bigint(20) default NULL,
  PRIMARY KEY  (`discussionId`),
  KEY `IX_79D0120B` (`classNameId`),
  KEY `IX_33A4DE38` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mbdiscussion`
--

/*!40000 ALTER TABLE `mbdiscussion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbdiscussion` ENABLE KEYS */;


--
-- Definition of table `mbmessage`
--

DROP TABLE IF EXISTS `mbmessage`;
CREATE TABLE `mbmessage` (
  `uuid_` varchar(75) default NULL,
  `messageId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `categoryId` bigint(20) default NULL,
  `threadId` bigint(20) default NULL,
  `parentMessageId` bigint(20) default NULL,
  `subject` varchar(75) default NULL,
  `body` longtext,
  `attachments` tinyint(4) default NULL,
  `anonymous` tinyint(4) default NULL,
  PRIMARY KEY  (`messageId`),
  KEY `IX_3C865EE5` (`categoryId`),
  KEY `IX_138C7F1E` (`categoryId`,`threadId`),
  KEY `IX_B1432D30` (`companyId`),
  KEY `IX_75B95071` (`threadId`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_C57B16BC` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mbmessage`
--

/*!40000 ALTER TABLE `mbmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbmessage` ENABLE KEYS */;


--
-- Definition of table `mbmessageflag`
--

DROP TABLE IF EXISTS `mbmessageflag`;
CREATE TABLE `mbmessageflag` (
  `messageFlagId` bigint(20) NOT NULL,
  `userId` bigint(20) default NULL,
  `messageId` bigint(20) default NULL,
  `flag` int(11) default NULL,
  PRIMARY KEY  (`messageFlagId`),
  KEY `IX_D180D4AE` (`messageId`),
  KEY `IX_7B2917BE` (`userId`),
  KEY `IX_94A83834` (`userId`,`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mbmessageflag`
--

/*!40000 ALTER TABLE `mbmessageflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbmessageflag` ENABLE KEYS */;


--
-- Definition of table `mbstatsuser`
--

DROP TABLE IF EXISTS `mbstatsuser`;
CREATE TABLE `mbstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `messageCount` int(11) default NULL,
  `lastPostDate` datetime default NULL,
  PRIMARY KEY  (`statsUserId`),
  KEY `IX_A00A898F` (`groupId`),
  KEY `IX_FAB5A88B` (`groupId`,`messageCount`),
  KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mbstatsuser`
--

/*!40000 ALTER TABLE `mbstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbstatsuser` ENABLE KEYS */;


--
-- Definition of table `mbthread`
--

DROP TABLE IF EXISTS `mbthread`;
CREATE TABLE `mbthread` (
  `threadId` bigint(20) NOT NULL,
  `categoryId` bigint(20) default NULL,
  `rootMessageId` bigint(20) default NULL,
  `messageCount` int(11) default NULL,
  `viewCount` int(11) default NULL,
  `lastPostByUserId` bigint(20) default NULL,
  `lastPostDate` datetime default NULL,
  `priority` double default NULL,
  PRIMARY KEY  (`threadId`),
  KEY `IX_CB854772` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mbthread`
--

/*!40000 ALTER TABLE `mbthread` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbthread` ENABLE KEYS */;


--
-- Definition of table `membershiprequest`
--

DROP TABLE IF EXISTS `membershiprequest`;
CREATE TABLE `membershiprequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `groupId` bigint(20) default NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime default NULL,
  `replierUserId` bigint(20) default NULL,
  `statusId` int(11) default NULL,
  PRIMARY KEY  (`membershipRequestId`),
  KEY `IX_8A1CC4B` (`groupId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membershiprequest`
--

/*!40000 ALTER TABLE `membershiprequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `membershiprequest` ENABLE KEYS */;


--
-- Definition of table `organization_`
--

DROP TABLE IF EXISTS `organization_`;
CREATE TABLE `organization_` (
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `parentOrganizationId` bigint(20) default NULL,
  `name` varchar(100) default NULL,
  `location` tinyint(4) default NULL,
  `recursable` tinyint(4) default NULL,
  `regionId` bigint(20) default NULL,
  `countryId` bigint(20) default NULL,
  `statusId` int(11) default NULL,
  `comments` longtext,
  PRIMARY KEY  (`organizationId`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization_`
--

/*!40000 ALTER TABLE `organization_` DISABLE KEYS */;
INSERT INTO `organization_` (`organizationId`,`companyId`,`parentOrganizationId`,`name`,`location`,`recursable`,`regionId`,`countryId`,`statusId`,`comments`) VALUES 
 (10134,10109,0,'Test Organization',0,1,5,19,12017,''),
 (10138,10109,10134,'Test Location',1,1,5,19,12017,'');
/*!40000 ALTER TABLE `organization_` ENABLE KEYS */;


--
-- Definition of table `orggrouppermission`
--

DROP TABLE IF EXISTS `orggrouppermission`;
CREATE TABLE `orggrouppermission` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY  (`organizationId`,`groupId`,`permissionId`),
  KEY `IX_A425F71A` (`groupId`),
  KEY `IX_6C53DA4E` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orggrouppermission`
--

/*!40000 ALTER TABLE `orggrouppermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouppermission` ENABLE KEYS */;


--
-- Definition of table `orggrouprole`
--

DROP TABLE IF EXISTS `orggrouprole`;
CREATE TABLE `orggrouprole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY  (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orggrouprole`
--

/*!40000 ALTER TABLE `orggrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouprole` ENABLE KEYS */;


--
-- Definition of table `orglabor`
--

DROP TABLE IF EXISTS `orglabor`;
CREATE TABLE `orglabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) default NULL,
  `typeId` int(11) default NULL,
  `sunOpen` int(11) default NULL,
  `sunClose` int(11) default NULL,
  `monOpen` int(11) default NULL,
  `monClose` int(11) default NULL,
  `tueOpen` int(11) default NULL,
  `tueClose` int(11) default NULL,
  `wedOpen` int(11) default NULL,
  `wedClose` int(11) default NULL,
  `thuOpen` int(11) default NULL,
  `thuClose` int(11) default NULL,
  `friOpen` int(11) default NULL,
  `friClose` int(11) default NULL,
  `satOpen` int(11) default NULL,
  `satClose` int(11) default NULL,
  PRIMARY KEY  (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orglabor`
--

/*!40000 ALTER TABLE `orglabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `orglabor` ENABLE KEYS */;


--
-- Definition of table `passwordpolicy`
--

DROP TABLE IF EXISTS `passwordpolicy`;
CREATE TABLE `passwordpolicy` (
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `defaultPolicy` tinyint(4) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `changeable` tinyint(4) default NULL,
  `changeRequired` tinyint(4) default NULL,
  `minAge` bigint(20) default NULL,
  `checkSyntax` tinyint(4) default NULL,
  `allowDictionaryWords` tinyint(4) default NULL,
  `minLength` int(11) default NULL,
  `history` tinyint(4) default NULL,
  `historyCount` int(11) default NULL,
  `expireable` tinyint(4) default NULL,
  `maxAge` bigint(20) default NULL,
  `warningTime` bigint(20) default NULL,
  `graceLimit` int(11) default NULL,
  `lockout` tinyint(4) default NULL,
  `maxFailure` int(11) default NULL,
  `lockoutDuration` bigint(20) default NULL,
  `requireUnlock` tinyint(4) default NULL,
  `resetFailureCount` bigint(20) default NULL,
  PRIMARY KEY  (`passwordPolicyId`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`),
  KEY `IX_3FBFA9F4` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passwordpolicy`
--

/*!40000 ALTER TABLE `passwordpolicy` DISABLE KEYS */;
INSERT INTO `passwordpolicy` (`passwordPolicyId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`defaultPolicy`,`name`,`description`,`changeable`,`changeRequired`,`minAge`,`checkSyntax`,`allowDictionaryWords`,`minLength`,`history`,`historyCount`,`expireable`,`maxAge`,`warningTime`,`graceLimit`,`lockout`,`maxFailure`,`lockoutDuration`,`requireUnlock`,`resetFailureCount`) VALUES 
 (10128,10109,10111,'','2008-09-29 22:36:37','2008-09-29 22:36:37',1,'Default Password Policy','Default Password Policy',1,0,0,0,1,6,0,6,0,8640000,86400,0,0,3,0,1,600);
/*!40000 ALTER TABLE `passwordpolicy` ENABLE KEYS */;


--
-- Definition of table `passwordpolicyrel`
--

DROP TABLE IF EXISTS `passwordpolicyrel`;
CREATE TABLE `passwordpolicyrel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  PRIMARY KEY  (`passwordPolicyRelId`),
  KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_ED7CF243` (`passwordPolicyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passwordpolicyrel`
--

/*!40000 ALTER TABLE `passwordpolicyrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordpolicyrel` ENABLE KEYS */;


--
-- Definition of table `passwordtracker`
--

DROP TABLE IF EXISTS `passwordtracker`;
CREATE TABLE `passwordtracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `password_` varchar(75) default NULL,
  PRIMARY KEY  (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passwordtracker`
--

/*!40000 ALTER TABLE `passwordtracker` DISABLE KEYS */;
INSERT INTO `passwordtracker` (`passwordTrackerId`,`userId`,`createDate`,`password_`) VALUES 
 (10503,10129,'2008-10-24 01:31:56','qUqP5cyxm6YcTAhz05Hph5gvu9M=');
/*!40000 ALTER TABLE `passwordtracker` ENABLE KEYS */;


--
-- Definition of table `permission_`
--

DROP TABLE IF EXISTS `permission_`;
CREATE TABLE `permission_` (
  `permissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `actionId` varchar(75) default NULL,
  `resourceId` bigint(20) default NULL,
  PRIMARY KEY  (`permissionId`),
  KEY `IX_4D19C2B8` (`actionId`,`resourceId`),
  KEY `IX_F090C113` (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_`
--

/*!40000 ALTER TABLE `permission_` DISABLE KEYS */;
INSERT INTO `permission_` (`permissionId`,`companyId`,`actionId`,`resourceId`) VALUES 
 (2,10109,'ADD_DISCUSSION',4),
 (3,10109,'VIEW',4),
 (101,10109,'VIEW',103),
 (102,10109,'VIEW',106),
 (103,10109,'VIEW',109),
 (104,10109,'ADD_DISCUSSION',111),
 (105,10109,'VIEW',111),
 (106,10109,'ADD_DISCUSSION',112),
 (107,10109,'VIEW',112),
 (108,10109,'ADD_DISCUSSION',113),
 (109,10109,'VIEW',113),
 (112,10109,'ADD_DISCUSSION',115),
 (113,10109,'VIEW',115),
 (120,10109,'VIEW',121),
 (121,10109,'VIEW',124),
 (122,10109,'VIEW',127),
 (124,10109,'VIEW',134),
 (201,10109,'VIEW',201),
 (202,10109,'VIEW',202),
 (203,10109,'VIEW',205),
 (206,10109,'VIEW',210),
 (207,10109,'VIEW',211),
 (208,10109,'VIEW',214),
 (301,10109,'VIEW',303),
 (302,10109,'ADD_DISCUSSION',306),
 (303,10109,'VIEW',306),
 (304,10109,'ADD_DISCUSSION',307),
 (305,10109,'VIEW',307),
 (306,10109,'VIEW',309),
 (307,10109,'VIEW',314),
 (308,10109,'VIEW',317),
 (309,10109,'VIEW',320),
 (310,10109,'VIEW',323),
 (311,10109,'VIEW',326),
 (312,10109,'VIEW',329),
 (313,10109,'VIEW',332),
 (501,10109,'VIEW',502),
 (502,10109,'VIEW',504),
 (503,10109,'VIEW',506),
 (504,10109,'VIEW',508),
 (505,10109,'VIEW',510);
/*!40000 ALTER TABLE `permission_` ENABLE KEYS */;


--
-- Definition of table `phone`
--

DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `number_` varchar(75) default NULL,
  `extension` varchar(75) default NULL,
  `typeId` int(11) default NULL,
  `primary_` tinyint(4) default NULL,
  PRIMARY KEY  (`phoneId`),
  KEY `IX_9F704A14` (`companyId`),
  KEY `IX_A2E4AFBA` (`companyId`,`classNameId`),
  KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone`
--

/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;


--
-- Definition of table `pluginsetting`
--

DROP TABLE IF EXISTS `pluginsetting`;
CREATE TABLE `pluginsetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `pluginId` varchar(75) default NULL,
  `pluginType` varchar(75) default NULL,
  `roles` longtext,
  `active_` tinyint(4) default NULL,
  PRIMARY KEY  (`pluginSettingId`),
  KEY `IX_B9746445` (`companyId`),
  KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pluginsetting`
--

/*!40000 ALTER TABLE `pluginsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluginsetting` ENABLE KEYS */;


--
-- Definition of table `pollschoice`
--

DROP TABLE IF EXISTS `pollschoice`;
CREATE TABLE `pollschoice` (
  `uuid_` varchar(75) default NULL,
  `choiceId` bigint(20) NOT NULL,
  `questionId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` varchar(1000) default NULL,
  PRIMARY KEY  (`choiceId`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_D76DD2CF` (`questionId`,`name`),
  KEY `IX_6660B399` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pollschoice`
--

/*!40000 ALTER TABLE `pollschoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollschoice` ENABLE KEYS */;


--
-- Definition of table `pollsquestion`
--

DROP TABLE IF EXISTS `pollsquestion`;
CREATE TABLE `pollsquestion` (
  `uuid_` varchar(75) default NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `title` varchar(500) default NULL,
  `description` longtext,
  `expirationDate` datetime default NULL,
  `lastVoteDate` datetime default NULL,
  PRIMARY KEY  (`questionId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_51F087F4` (`uuid_`),
  KEY `IX_F3C9F36` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pollsquestion`
--

/*!40000 ALTER TABLE `pollsquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsquestion` ENABLE KEYS */;


--
-- Definition of table `pollsvote`
--

DROP TABLE IF EXISTS `pollsvote`;
CREATE TABLE `pollsvote` (
  `voteId` bigint(20) NOT NULL,
  `userId` bigint(20) default NULL,
  `questionId` bigint(20) default NULL,
  `choiceId` bigint(20) default NULL,
  `voteDate` datetime default NULL,
  PRIMARY KEY  (`voteId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`),
  KEY `IX_1BBFD4D3` (`questionId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pollsvote`
--

/*!40000 ALTER TABLE `pollsvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsvote` ENABLE KEYS */;


--
-- Definition of table `portlet`
--

DROP TABLE IF EXISTS `portlet`;
CREATE TABLE `portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `portletId` varchar(200) default NULL,
  `roles` longtext,
  `active_` tinyint(4) default NULL,
  PRIMARY KEY  (`id_`),
  KEY `IX_80CC9508` (`companyId`),
  KEY `IX_12B5E51D` (`companyId`,`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portlet`
--

/*!40000 ALTER TABLE `portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `portlet` ENABLE KEYS */;


--
-- Definition of table `portletitem`
--

DROP TABLE IF EXISTS `portletitem`;
CREATE TABLE `portletitem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `name` varchar(75) default NULL,
  `portletId` varchar(75) default NULL,
  `classNameId` bigint(20) default NULL,
  PRIMARY KEY  (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portletitem`
--

/*!40000 ALTER TABLE `portletitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `portletitem` ENABLE KEYS */;


--
-- Definition of table `portletpreferences`
--

DROP TABLE IF EXISTS `portletpreferences`;
CREATE TABLE `portletpreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) default NULL,
  `ownerType` int(11) default NULL,
  `plid` bigint(20) default NULL,
  `portletId` varchar(200) default NULL,
  `preferences` longtext,
  PRIMARY KEY  (`portletPreferencesId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portletpreferences`
--

/*!40000 ALTER TABLE `portletpreferences` DISABLE KEYS */;
INSERT INTO `portletpreferences` (`portletPreferencesId`,`ownerId`,`ownerType`,`plid`,`portletId`,`preferences`) VALUES 
 (10108,0,1,0,'LIFERAY_PORTAL','<portlet-preferences />'),
 (10113,10109,1,0,'LIFERAY_PORTAL','<portlet-preferences />'),
 (10201,0,3,10127,'103','<portlet-preferences />'),
 (10202,0,3,10127,'47','<portlet-preferences />'),
 (10203,0,3,10127,'58','<portlet-preferences />'),
 (10204,10111,4,0,'LIFERAY_PORTAL','<portlet-preferences />'),
 (10207,10129,4,0,'LIFERAY_PORTAL','<portlet-preferences />'),
 (10208,0,3,10205,'88','<portlet-preferences />'),
 (10215,0,3,10127,'87','<portlet-preferences />'),
 (10216,0,3,10127,'50','<portlet-preferences />'),
 (10217,0,3,10127,'109_INSTANCE_kd8w','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\"><preference><name>title</name><value>Suggestions</value></preference><preference><name>description</name><value>Your input is valuable to us. Please send us your suggestions.</value></preference><preference><name>subject</name><value>Suggestions</value></preference><preference><name>saveToDatabase</name><value>true</value></preference><preference><name>fieldLabel1</name><value>Name</value></preference><preference><name>fieldType1</name><value>text</value></preference><preference><name>fieldLabel2</name><value>Rating</value></preference><preference><name>fieldType2</name><value>options</value></preference><preference><name>fieldOptions2</name><value>Excellent,Good,Satisfactory,Poor</value></preference><preference><name>fieldLabel3</name><value>Comments</value></preference><preference><name>fieldType3</name><value>textarea</value></preference></portlet-preferences>'),
 (10218,0,3,10127,'11','<portlet-preferences />'),
 (10223,0,3,10127,'111','<portlet-preferences />'),
 (10301,0,3,10209,'103','<portlet-preferences />'),
 (10302,0,3,10209,'87','<portlet-preferences />'),
 (10303,0,3,10209,'Partnerprofile_WAR_Partnerprofileportlet_INSTANCE_IDCB','<portlet-preferences />'),
 (10306,0,3,10211,'103','<portlet-preferences />'),
 (10307,0,3,10211,'87','<portlet-preferences />'),
 (10308,0,3,10211,'Partnersearch_WAR_Partnersearchportlet_INSTANCE_rSUK','<portlet-preferences />'),
 (10401,0,3,10209,'2','<portlet-preferences />'),
 (10409,10402,4,0,'LIFERAY_PORTAL','<portlet-preferences />'),
 (10410,0,3,10407,'103','<portlet-preferences />'),
 (10411,0,3,10407,'11','<portlet-preferences />'),
 (10412,0,3,10407,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\"><preference><name>priorities</name><value>Urgent,/message_boards/priority_urgent.png,3.0</value><value>Sticky,/message_boards/priority_sticky.png,2.0</value><value>Announcement,/message_boards/priority_announcement.png,1.0</value></preference><preference><name>ranks</name><value>Youngling=0</value><value>Padawan=25</value><value>Jedi Knight=100</value><value>Jedi Master=250</value><value>Jedi Council Member=500</value><value>Yoda=1000</value><value>Moderator=community-role:Message Boards Administrator</value><value>Moderator=organization:Message Boards Administrator</value><value>Moderator=organization-role:Message Boards Administrator</value><value>Moderator=regular-role:Message Boards Administrator</value><value>Moderator=user-group:Message Boards Administrator</value></preference></portlet-preferences>'),
 (10413,10404,2,0,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\"><preference><name>priorities</name><value>Urgent,/message_boards/priority_urgent.png,3.0</value><value>Sticky,/message_boards/priority_sticky.png,2.0</value><value>Announcement,/message_boards/priority_announcement.png,1.0</value></preference><preference><name>ranks</name><value>Youngling=0</value><value>Padawan=25</value><value>Jedi Knight=100</value><value>Jedi Master=250</value><value>Jedi Council Member=500</value><value>Yoda=1000</value><value>Moderator=community-role:Message Boards Administrator</value><value>Moderator=organization:Message Boards Administrator</value><value>Moderator=organization-role:Message Boards Administrator</value><value>Moderator=regular-role:Message Boards Administrator</value><value>Moderator=user-group:Message Boards Administrator</value></preference></portlet-preferences>'),
 (10414,0,3,10407,'23','<portlet-preferences />'),
 (10415,0,3,10407,'29','<portlet-preferences />'),
 (10416,0,3,10407,'61','<portlet-preferences />'),
 (10417,0,3,10407,'71_INSTANCE_OY0d','<portlet-preferences />'),
 (10418,0,3,10407,'8','<portlet-preferences />'),
 (10419,10404,2,0,'8','<portlet-preferences />'),
 (10420,0,3,10407,'82','<portlet-preferences />'),
 (10602,0,3,10206,'103','<portlet-preferences />'),
 (10603,0,3,10206,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\"><preference><name>priorities</name><value>Urgent,/message_boards/priority_urgent.png,3.0</value><value>Sticky,/message_boards/priority_sticky.png,2.0</value><value>Announcement,/message_boards/priority_announcement.png,1.0</value></preference><preference><name>ranks</name><value>Youngling=0</value><value>Padawan=25</value><value>Jedi Knight=100</value><value>Jedi Master=250</value><value>Jedi Council Member=500</value><value>Yoda=1000</value><value>Moderator=community-role:Message Boards Administrator</value><value>Moderator=organization:Message Boards Administrator</value><value>Moderator=organization-role:Message Boards Administrator</value><value>Moderator=regular-role:Message Boards Administrator</value><value>Moderator=user-group:Message Boards Administrator</value></preference></portlet-preferences>'),
 (10604,10131,2,0,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\"><preference><name>priorities</name><value>Urgent,/message_boards/priority_urgent.png,3.0</value><value>Sticky,/message_boards/priority_sticky.png,2.0</value><value>Announcement,/message_boards/priority_announcement.png,1.0</value></preference><preference><name>ranks</name><value>Youngling=0</value><value>Padawan=25</value><value>Jedi Knight=100</value><value>Jedi Master=250</value><value>Jedi Council Member=500</value><value>Yoda=1000</value><value>Moderator=community-role:Message Boards Administrator</value><value>Moderator=organization:Message Boards Administrator</value><value>Moderator=organization-role:Message Boards Administrator</value><value>Moderator=regular-role:Message Boards Administrator</value><value>Moderator=user-group:Message Boards Administrator</value></preference></portlet-preferences>'),
 (10605,0,3,10206,'23','<portlet-preferences />'),
 (10606,0,3,10206,'8','<portlet-preferences />'),
 (10607,10131,2,0,'8','<portlet-preferences />'),
 (10608,0,3,10206,'82','<portlet-preferences />'),
 (10609,0,3,10206,'49','<portlet-preferences />'),
 (10613,0,3,10209,'88','<portlet-preferences />'),
 (10614,0,3,10211,'88','<portlet-preferences />'),
 (10615,0,3,10127,'88','<portlet-preferences />');
/*!40000 ALTER TABLE `portletpreferences` ENABLE KEYS */;


--
-- Definition of table `quartz_blob_triggers`
--

DROP TABLE IF EXISTS `quartz_blob_triggers`;
CREATE TABLE `quartz_blob_triggers` (
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY  (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_blob_triggers`
--

/*!40000 ALTER TABLE `quartz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_blob_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_calendars`
--

DROP TABLE IF EXISTS `quartz_calendars`;
CREATE TABLE `quartz_calendars` (
  `CALENDAR_NAME` varchar(80) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY  (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_calendars`
--

/*!40000 ALTER TABLE `quartz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_calendars` ENABLE KEYS */;


--
-- Definition of table `quartz_cron_triggers`
--

DROP TABLE IF EXISTS `quartz_cron_triggers`;
CREATE TABLE `quartz_cron_triggers` (
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `CRON_EXPRESSION` varchar(80) NOT NULL,
  `TIME_ZONE_ID` varchar(80) default NULL,
  PRIMARY KEY  (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_cron_triggers`
--

/*!40000 ALTER TABLE `quartz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_cron_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_fired_triggers`
--

DROP TABLE IF EXISTS `quartz_fired_triggers`;
CREATE TABLE `quartz_fired_triggers` (
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `IS_VOLATILE` tinyint(4) NOT NULL,
  `INSTANCE_NAME` varchar(80) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(80) default NULL,
  `JOB_GROUP` varchar(80) default NULL,
  `IS_STATEFUL` tinyint(4) default NULL,
  `REQUESTS_RECOVERY` tinyint(4) default NULL,
  PRIMARY KEY  (`ENTRY_ID`),
  KEY `IX_804154AF` (`INSTANCE_NAME`),
  KEY `IX_BAB9A1F7` (`JOB_GROUP`),
  KEY `IX_ADEE6A17` (`JOB_NAME`),
  KEY `IX_64B194F2` (`TRIGGER_GROUP`),
  KEY `IX_5FEABBC` (`TRIGGER_NAME`),
  KEY `IX_20D8706C` (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_fired_triggers`
--

/*!40000 ALTER TABLE `quartz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_fired_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_job_details`
--

DROP TABLE IF EXISTS `quartz_job_details`;
CREATE TABLE `quartz_job_details` (
  `JOB_NAME` varchar(80) NOT NULL,
  `JOB_GROUP` varchar(80) NOT NULL,
  `DESCRIPTION` varchar(120) default NULL,
  `JOB_CLASS_NAME` varchar(128) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_VOLATILE` tinyint(4) NOT NULL,
  `IS_STATEFUL` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY  (`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_job_details`
--

/*!40000 ALTER TABLE `quartz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_job_details` ENABLE KEYS */;


--
-- Definition of table `quartz_job_listeners`
--

DROP TABLE IF EXISTS `quartz_job_listeners`;
CREATE TABLE `quartz_job_listeners` (
  `JOB_NAME` varchar(80) NOT NULL,
  `JOB_GROUP` varchar(80) NOT NULL,
  `JOB_LISTENER` varchar(80) NOT NULL,
  PRIMARY KEY  (`JOB_NAME`,`JOB_GROUP`,`JOB_LISTENER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_job_listeners`
--

/*!40000 ALTER TABLE `quartz_job_listeners` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_job_listeners` ENABLE KEYS */;


--
-- Definition of table `quartz_locks`
--

DROP TABLE IF EXISTS `quartz_locks`;
CREATE TABLE `quartz_locks` (
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY  (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_locks`
--

/*!40000 ALTER TABLE `quartz_locks` DISABLE KEYS */;
INSERT INTO `quartz_locks` (`LOCK_NAME`) VALUES 
 ('CALENDAR_ACCESS'),
 ('JOB_ACCESS'),
 ('MISFIRE_ACCESS'),
 ('STATE_ACCESS'),
 ('TRIGGER_ACCESS');
/*!40000 ALTER TABLE `quartz_locks` ENABLE KEYS */;


--
-- Definition of table `quartz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `quartz_paused_trigger_grps`;
CREATE TABLE `quartz_paused_trigger_grps` (
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  PRIMARY KEY  (`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_paused_trigger_grps`
--

/*!40000 ALTER TABLE `quartz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_paused_trigger_grps` ENABLE KEYS */;


--
-- Definition of table `quartz_scheduler_state`
--

DROP TABLE IF EXISTS `quartz_scheduler_state`;
CREATE TABLE `quartz_scheduler_state` (
  `INSTANCE_NAME` varchar(80) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY  (`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_scheduler_state`
--

/*!40000 ALTER TABLE `quartz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_scheduler_state` ENABLE KEYS */;


--
-- Definition of table `quartz_simple_triggers`
--

DROP TABLE IF EXISTS `quartz_simple_triggers`;
CREATE TABLE `quartz_simple_triggers` (
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY  (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_simple_triggers`
--

/*!40000 ALTER TABLE `quartz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simple_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_trigger_listeners`
--

DROP TABLE IF EXISTS `quartz_trigger_listeners`;
CREATE TABLE `quartz_trigger_listeners` (
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `TRIGGER_LISTENER` varchar(80) NOT NULL,
  PRIMARY KEY  (`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_LISTENER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_trigger_listeners`
--

/*!40000 ALTER TABLE `quartz_trigger_listeners` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_trigger_listeners` ENABLE KEYS */;


--
-- Definition of table `quartz_triggers`
--

DROP TABLE IF EXISTS `quartz_triggers`;
CREATE TABLE `quartz_triggers` (
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `JOB_NAME` varchar(80) NOT NULL,
  `JOB_GROUP` varchar(80) NOT NULL,
  `IS_VOLATILE` tinyint(4) NOT NULL,
  `DESCRIPTION` varchar(120) default NULL,
  `NEXT_FIRE_TIME` bigint(20) default NULL,
  `PREV_FIRE_TIME` bigint(20) default NULL,
  `PRIORITY` int(11) default NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) default NULL,
  `CALENDAR_NAME` varchar(80) default NULL,
  `MISFIRE_INSTR` int(11) default NULL,
  `JOB_DATA` blob,
  PRIMARY KEY  (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_F7655CC3` (`NEXT_FIRE_TIME`),
  KEY `IX_9955EFB5` (`TRIGGER_STATE`),
  KEY `IX_8040C593` (`TRIGGER_STATE`,`NEXT_FIRE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartz_triggers`
--

/*!40000 ALTER TABLE `quartz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_triggers` ENABLE KEYS */;


--
-- Definition of table `ratingsentry`
--

DROP TABLE IF EXISTS `ratingsentry`;
CREATE TABLE `ratingsentry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `score` double default NULL,
  PRIMARY KEY  (`entryId`),
  KEY `IX_16184D57` (`classNameId`,`classPK`),
  KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratingsentry`
--

/*!40000 ALTER TABLE `ratingsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsentry` ENABLE KEYS */;


--
-- Definition of table `ratingsstats`
--

DROP TABLE IF EXISTS `ratingsstats`;
CREATE TABLE `ratingsstats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `totalEntries` int(11) default NULL,
  `totalScore` double default NULL,
  `averageScore` double default NULL,
  PRIMARY KEY  (`statsId`),
  KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratingsstats`
--

/*!40000 ALTER TABLE `ratingsstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsstats` ENABLE KEYS */;


--
-- Definition of table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) default NULL,
  `regionCode` varchar(75) default NULL,
  `name` varchar(75) default NULL,
  `active_` tinyint(4) default NULL,
  PRIMARY KEY  (`regionId`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_16D87CA7` (`countryId`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`regionId`,`countryId`,`regionCode`,`name`,`active_`) VALUES 
 (1,19,'AL','Alabama',1),
 (2,19,'AK','Alaska',1),
 (3,19,'AZ','Arizona',1),
 (4,19,'AR','Arkansas',1),
 (5,19,'CA','California',1),
 (6,19,'CO','Colorado',1),
 (7,19,'CT','Connecticut',1),
 (8,19,'DC','District of Columbia',1),
 (9,19,'DE','Delaware',1),
 (10,19,'FL','Florida',1),
 (11,19,'GA','Georgia',1),
 (12,19,'HI','Hawaii',1),
 (13,19,'ID','Idaho',1),
 (14,19,'IL','Illinois',1),
 (15,19,'IN','Indiana',1),
 (16,19,'IA','Iowa',1),
 (17,19,'KS','Kansas',1),
 (18,19,'KY','Kentucky ',1),
 (19,19,'LA','Louisiana ',1),
 (20,19,'ME','Maine',1),
 (21,19,'MD','Maryland',1),
 (22,19,'MA','Massachusetts',1),
 (23,19,'MI','Michigan',1),
 (24,19,'MN','Minnesota',1),
 (25,19,'MS','Mississippi',1),
 (26,19,'MO','Missouri',1),
 (27,19,'MT','Montana',1),
 (28,19,'NE','Nebraska',1),
 (29,19,'NV','Nevada',1),
 (30,19,'NH','New Hampshire',1),
 (31,19,'NJ','New Jersey',1),
 (32,19,'NM','New Mexico',1),
 (33,19,'NY','New York',1),
 (34,19,'NC','North Carolina',1),
 (35,19,'ND','North Dakota',1),
 (36,19,'OH','Ohio',1),
 (37,19,'OK','Oklahoma ',1),
 (38,19,'OR','Oregon',1),
 (39,19,'PA','Pennsylvania',1),
 (40,19,'PR','Puerto Rico',1),
 (41,19,'RI','Rhode Island',1),
 (42,19,'SC','South Carolina',1),
 (43,19,'SD','South Dakota',1),
 (44,19,'TN','Tennessee',1),
 (45,19,'TX','Texas',1),
 (46,19,'UT','Utah',1),
 (47,19,'VT','Vermont',1),
 (48,19,'VA','Virginia',1),
 (49,19,'WA','Washington',1),
 (50,19,'WV','West Virginia',1),
 (51,19,'WI','Wisconsin',1),
 (52,19,'WY','Wyoming',1),
 (53,1,'AL','Alberta',1),
 (54,1,'BC','British Columbia',1),
 (55,1,'MB','Manitoba',1),
 (56,1,'NB','New Brunswick',1),
 (57,1,'NL','Newfoundland and Labrador',1),
 (58,1,'NT','Northwest Territories',1),
 (59,1,'NS','Nova Scotia',1),
 (60,1,'NU','Nunavut',1),
 (61,1,'ON','Ontario',1),
 (62,1,'PE','Prince Edward Island',1),
 (63,1,'QC','Quebec',1),
 (64,1,'SK','Saskatchewan',1),
 (65,1,'YT','Yukon',1),
 (66,15,'AN','Andalusia',1),
 (67,15,'AR','Aragon',1),
 (68,15,'AS','Asturias',1),
 (69,15,'IB','Balearic Islands',1),
 (70,15,'PV','Basque Country',1),
 (71,15,'CN','Canary Islands',1),
 (72,15,'CB','Cantabria',1),
 (73,15,'CL','Castile and Leon',1),
 (74,15,'CM','Castile-La Mancha',1),
 (75,15,'CT','Catalonia',1),
 (76,15,'CE','Ceuta',1),
 (77,15,'EX','Extremadura',1),
 (78,15,'GA','Galicia',1),
 (79,15,'LO','La Rioja',1),
 (80,15,'M','Madrid',1),
 (81,15,'ML','Melilla',1),
 (82,15,'MU','Murcia',1),
 (83,15,'NA','Navarra',1),
 (84,15,'VC','Valencia',1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;


--
-- Definition of table `release_`
--

DROP TABLE IF EXISTS `release_`;
CREATE TABLE `release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `buildNumber` int(11) default NULL,
  `buildDate` datetime default NULL,
  `verified` tinyint(4) default NULL,
  PRIMARY KEY  (`releaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `release_`
--

/*!40000 ALTER TABLE `release_` DISABLE KEYS */;
INSERT INTO `release_` (`releaseId`,`createDate`,`modifiedDate`,`buildNumber`,`buildDate`,`verified`) VALUES 
 (1,'2008-09-30 01:31:02','2008-11-02 12:04:45',5101,'2008-11-02 12:04:45',1);
/*!40000 ALTER TABLE `release_` ENABLE KEYS */;


--
-- Definition of table `resource_`
--

DROP TABLE IF EXISTS `resource_`;
CREATE TABLE `resource_` (
  `resourceId` bigint(20) NOT NULL,
  `codeId` bigint(20) default NULL,
  `primKey` varchar(300) default NULL,
  PRIMARY KEY  (`resourceId`),
  KEY `IX_2578FBD3` (`codeId`),
  KEY `IX_67DE7856` (`codeId`,`primKey`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resource_`
--

/*!40000 ALTER TABLE `resource_` DISABLE KEYS */;
INSERT INTO `resource_` (`resourceId`,`codeId`,`primKey`) VALUES 
 (2,1,'10109'),
 (3,2,'10124'),
 (4,3,'10127'),
 (5,4,'10109'),
 (6,5,'10129'),
 (7,6,'10124'),
 (8,7,'10109'),
 (9,6,'10135'),
 (10,8,'10109'),
 (11,9,'10134'),
 (12,6,'10139'),
 (13,10,'10109'),
 (14,11,'10138'),
 (101,102,'10109'),
 (102,103,'10124'),
 (103,101,'10127_LAYOUT_103'),
 (104,105,'10109'),
 (105,106,'10124'),
 (106,104,'10127_LAYOUT_47'),
 (107,108,'10109'),
 (108,109,'10124'),
 (109,107,'10127_LAYOUT_58'),
 (110,2,'10131'),
 (111,3,'10205'),
 (112,3,'10206'),
 (113,3,'10209'),
 (115,3,'10211'),
 (119,111,'10109'),
 (120,112,'10124'),
 (121,110,'10127_LAYOUT_87'),
 (122,114,'10109'),
 (123,115,'10124'),
 (124,113,'10127_LAYOUT_50'),
 (125,117,'10109'),
 (126,118,'10124'),
 (127,116,'10127_LAYOUT_109_INSTANCE_kd8w'),
 (128,120,'10109'),
 (129,121,'10124'),
 (130,119,'10127_LAYOUT_11'),
 (132,123,'10109'),
 (133,124,'10124'),
 (134,122,'10127_LAYOUT_111'),
 (201,101,'10209_LAYOUT_103'),
 (202,110,'10209_LAYOUT_87'),
 (203,202,'10109'),
 (204,203,'10124'),
 (205,201,'10209_LAYOUT_Partnerprofile_WAR_Partnerprofileportlet_INSTANCE_IDCB'),
 (207,205,'10109'),
 (208,206,'10124'),
 (210,101,'10211_LAYOUT_103'),
 (211,110,'10211_LAYOUT_87'),
 (212,208,'10109'),
 (213,209,'10124'),
 (214,207,'10211_LAYOUT_Partnersearch_WAR_Partnersearchportlet_INSTANCE_rSUK'),
 (217,211,'10109'),
 (218,212,'10124'),
 (222,214,'10109'),
 (223,215,'10124'),
 (227,217,'10109'),
 (228,218,'10124'),
 (301,302,'10109'),
 (302,303,'10124'),
 (303,301,'10209_LAYOUT_2'),
 (304,5,'10402'),
 (305,2,'10404'),
 (306,3,'10407'),
 (307,3,'10408'),
 (308,103,'10404'),
 (309,101,'10407_LAYOUT_103'),
 (310,121,'10404'),
 (311,119,'10407_LAYOUT_11'),
 (312,311,'10109'),
 (313,312,'10404'),
 (314,310,'10407_LAYOUT_19'),
 (315,314,'10109'),
 (316,315,'10404'),
 (317,313,'10407_LAYOUT_23'),
 (318,317,'10109'),
 (319,318,'10404'),
 (320,316,'10407_LAYOUT_29'),
 (321,322,'10109'),
 (322,323,'10404'),
 (323,321,'10407_LAYOUT_61'),
 (324,325,'10109'),
 (325,326,'10404'),
 (326,324,'10407_LAYOUT_71_INSTANCE_OY0d'),
 (327,328,'10109'),
 (328,329,'10404'),
 (329,327,'10407_LAYOUT_8'),
 (330,331,'10109'),
 (331,332,'10404'),
 (332,330,'10407_LAYOUT_82'),
 (501,103,'10131'),
 (502,101,'10206_LAYOUT_103'),
 (503,312,'10131'),
 (504,310,'10206_LAYOUT_19'),
 (505,315,'10131'),
 (506,313,'10206_LAYOUT_23'),
 (507,329,'10131'),
 (508,327,'10206_LAYOUT_8'),
 (509,332,'10131'),
 (510,330,'10206_LAYOUT_82');
/*!40000 ALTER TABLE `resource_` ENABLE KEYS */;


--
-- Definition of table `resourcecode`
--

DROP TABLE IF EXISTS `resourcecode`;
CREATE TABLE `resourcecode` (
  `codeId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `name` varchar(300) default NULL,
  `scope` int(11) default NULL,
  PRIMARY KEY  (`codeId`),
  KEY `IX_717FDD47` (`companyId`),
  KEY `IX_A32C097E` (`companyId`,`name`(255),`scope`),
  KEY `IX_AACAFF40` (`name`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resourcecode`
--

/*!40000 ALTER TABLE `resourcecode` DISABLE KEYS */;
INSERT INTO `resourcecode` (`codeId`,`companyId`,`name`,`scope`) VALUES 
 (1,10109,'com.liferay.portal.model.Layout',1),
 (2,10109,'com.liferay.portal.model.Layout',2),
 (3,10109,'com.liferay.portal.model.Layout',4),
 (4,10109,'com.liferay.portal.model.User',1),
 (5,10109,'com.liferay.portal.model.User',4),
 (6,10109,'com.liferay.portal.model.Group',4),
 (7,10109,'com.liferay.portal.model.Group',1),
 (8,10109,'com.liferay.portal.model.Organization',1),
 (9,10109,'com.liferay.portal.model.Organization',4),
 (10,10109,'com.liferay.portal.model.Location',1),
 (11,10109,'com.liferay.portal.model.Location',4),
 (101,10109,'103',4),
 (102,10109,'103',1),
 (103,10109,'103',2),
 (104,10109,'47',4),
 (105,10109,'47',1),
 (106,10109,'47',2),
 (107,10109,'58',4),
 (108,10109,'58',1),
 (109,10109,'58',2),
 (110,10109,'87',4),
 (111,10109,'87',1),
 (112,10109,'87',2),
 (113,10109,'50',4),
 (114,10109,'50',1),
 (115,10109,'50',2),
 (116,10109,'109',4),
 (117,10109,'109',1),
 (118,10109,'109',2),
 (119,10109,'11',4),
 (120,10109,'11',1),
 (121,10109,'11',2),
 (122,10109,'111',4),
 (123,10109,'111',1),
 (124,10109,'111',2),
 (201,10109,'Partnerprofile_WAR_Partnerprofileportlet',4),
 (202,10109,'Partnerprofile_WAR_Partnerprofileportlet',1),
 (203,10109,'Partnerprofile_WAR_Partnerprofileportlet',2),
 (204,10109,'viewallpartners_WAR_viewallpartnersportlet',4),
 (205,10109,'viewallpartners_WAR_viewallpartnersportlet',1),
 (206,10109,'viewallpartners_WAR_viewallpartnersportlet',2),
 (207,10109,'Partnersearch_WAR_Partnersearchportlet',4),
 (208,10109,'Partnersearch_WAR_Partnersearchportlet',1),
 (209,10109,'Partnersearch_WAR_Partnersearchportlet',2),
 (210,10109,'partnersolution_WAR_partnersolutionportlet',4),
 (211,10109,'partnersolution_WAR_partnersolutionportlet',1),
 (212,10109,'partnersolution_WAR_partnersolutionportlet',2),
 (213,10109,'viewallsolutions_WAR_viewallsolutionsportlet',4),
 (214,10109,'viewallsolutions_WAR_viewallsolutionsportlet',1),
 (215,10109,'viewallsolutions_WAR_viewallsolutionsportlet',2),
 (216,10109,'solutionsearch_WAR_solutionsearchportlet',4),
 (217,10109,'solutionsearch_WAR_solutionsearchportlet',1),
 (218,10109,'solutionsearch_WAR_solutionsearchportlet',2),
 (301,10109,'2',4),
 (302,10109,'2',1),
 (303,10109,'2',2),
 (304,10109,'com.liferay.portal.model.Group',2),
 (305,10109,'com.liferay.portal.model.Group',3),
 (306,10109,'com.liferay.portal.model.Layout',3),
 (307,10109,'103',3),
 (308,10109,'Partnerprofile_WAR_Partnerprofileportlet',3),
 (309,10109,'partnersolution_WAR_partnersolutionportlet',3),
 (310,10109,'19',4),
 (311,10109,'19',1),
 (312,10109,'19',2),
 (313,10109,'23',4),
 (314,10109,'23',1),
 (315,10109,'23',2),
 (316,10109,'29',4),
 (317,10109,'29',1),
 (318,10109,'29',2),
 (319,10109,'90',4),
 (320,10109,'90',1),
 (321,10109,'61',4),
 (322,10109,'61',1),
 (323,10109,'61',2),
 (324,10109,'71',4),
 (325,10109,'71',1),
 (326,10109,'71',2),
 (327,10109,'8',4),
 (328,10109,'8',1),
 (329,10109,'8',2),
 (330,10109,'82',4),
 (331,10109,'82',1),
 (332,10109,'82',2),
 (333,10109,'109',3),
 (334,10109,'11',3),
 (335,10109,'111',3),
 (336,10109,'47',3),
 (337,10109,'50',3),
 (338,10109,'58',3),
 (339,10109,'solutionsearch_WAR_solutionsearchportlet',3),
 (340,10109,'viewallsolutions_WAR_viewallsolutionsportlet',3);
/*!40000 ALTER TABLE `resourcecode` ENABLE KEYS */;


--
-- Definition of table `role_`
--

DROP TABLE IF EXISTS `role_`;
CREATE TABLE `role_` (
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `type_` int(11) default NULL,
  PRIMARY KEY  (`roleId`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_EBC931B8` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_`
--

/*!40000 ALTER TABLE `role_` DISABLE KEYS */;
INSERT INTO `role_` (`roleId`,`companyId`,`classNameId`,`classPK`,`name`,`description`,`type_`) VALUES 
 (10114,10109,0,0,'Administrator','Administrators are super users who can do anything.',1),
 (10115,10109,0,0,'Guest','Unauthenticated users always have this role.',1),
 (10116,10109,0,0,'Power User','Power Users have their own public and private pages.',1),
 (10117,10109,0,0,'User','Authenticated users should be assigned this role.',1),
 (10118,10109,0,0,'Community Administrator','Community Administrators are super users of their community but cannot make other users into Community Administrators.',2),
 (10119,10109,0,0,'Community Member','All users who belong to a community have this role within that community.',2),
 (10120,10109,0,0,'Community Owner','Community Owners are super users of their community and can assign community roles to users.',2),
 (10121,10109,0,0,'Organization Administrator','Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.',3),
 (10122,10109,0,0,'Organization Member','All users who belong to a organization have this role within that organization.',3),
 (10123,10109,0,0,'Organization Owner','Organization Owners are super users of their organization and can assign organization roles to users.',3);
/*!40000 ALTER TABLE `role_` ENABLE KEYS */;


--
-- Definition of table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `roleId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY  (`roleId`,`permissionId`),
  KEY `LIFERAY_002` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--

/*!40000 ALTER TABLE `roles_permissions` DISABLE KEYS */;
INSERT INTO `roles_permissions` (`roleId`,`permissionId`) VALUES 
 (10119,2),
 (10115,3),
 (10119,3),
 (10115,101),
 (10119,101),
 (10115,102),
 (10119,102),
 (10115,103),
 (10119,103),
 (10116,104),
 (10115,105),
 (10116,105),
 (10116,106),
 (10115,107),
 (10116,107),
 (10119,108),
 (10115,109),
 (10119,109),
 (10119,112),
 (10115,113),
 (10119,113),
 (10115,120),
 (10119,120),
 (10115,121),
 (10119,121),
 (10115,122),
 (10119,122),
 (10115,124),
 (10119,124),
 (10115,201),
 (10119,201),
 (10115,202),
 (10119,202),
 (10115,203),
 (10119,203),
 (10115,206),
 (10119,206),
 (10115,207),
 (10119,207),
 (10115,208),
 (10119,208),
 (10115,301),
 (10119,301),
 (10116,302),
 (10115,303),
 (10116,303),
 (10116,304),
 (10115,305),
 (10116,305),
 (10115,306),
 (10116,306),
 (10115,307),
 (10116,307),
 (10115,308),
 (10116,308),
 (10115,309),
 (10116,309),
 (10115,310),
 (10116,310),
 (10115,311),
 (10116,311),
 (10115,312),
 (10116,312),
 (10115,313),
 (10116,313),
 (10115,501),
 (10116,501),
 (10115,502),
 (10116,502),
 (10115,503),
 (10116,503),
 (10115,504),
 (10116,504),
 (10115,505),
 (10116,505);
/*!40000 ALTER TABLE `roles_permissions` ENABLE KEYS */;


--
-- Definition of table `scframeworkversi_scproductvers`
--

DROP TABLE IF EXISTS `scframeworkversi_scproductvers`;
CREATE TABLE `scframeworkversi_scproductvers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY  (`frameworkVersionId`,`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scframeworkversi_scproductvers`
--

/*!40000 ALTER TABLE `scframeworkversi_scproductvers` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` ENABLE KEYS */;


--
-- Definition of table `scframeworkversion`
--

DROP TABLE IF EXISTS `scframeworkversion`;
CREATE TABLE `scframeworkversion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `name` varchar(75) default NULL,
  `url` longtext,
  `active_` tinyint(4) default NULL,
  `priority` int(11) default NULL,
  PRIMARY KEY  (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_272991FA` (`groupId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scframeworkversion`
--

/*!40000 ALTER TABLE `scframeworkversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversion` ENABLE KEYS */;


--
-- Definition of table `sclicense`
--

DROP TABLE IF EXISTS `sclicense`;
CREATE TABLE `sclicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) default NULL,
  `url` longtext,
  `openSource` tinyint(4) default NULL,
  `active_` tinyint(4) default NULL,
  `recommended` tinyint(4) default NULL,
  PRIMARY KEY  (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sclicense`
--

/*!40000 ALTER TABLE `sclicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicense` ENABLE KEYS */;


--
-- Definition of table `sclicenses_scproductentries`
--

DROP TABLE IF EXISTS `sclicenses_scproductentries`;
CREATE TABLE `sclicenses_scproductentries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY  (`licenseId`,`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sclicenses_scproductentries`
--

/*!40000 ALTER TABLE `sclicenses_scproductentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicenses_scproductentries` ENABLE KEYS */;


--
-- Definition of table `scproductentry`
--

DROP TABLE IF EXISTS `scproductentry`;
CREATE TABLE `scproductentry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `name` varchar(75) default NULL,
  `type_` varchar(75) default NULL,
  `tags` varchar(300) default NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) default NULL,
  `repoGroupId` varchar(75) default NULL,
  `repoArtifactId` varchar(75) default NULL,
  PRIMARY KEY  (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_72F87291` (`groupId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scproductentry`
--

/*!40000 ALTER TABLE `scproductentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductentry` ENABLE KEYS */;


--
-- Definition of table `scproductscreenshot`
--

DROP TABLE IF EXISTS `scproductscreenshot`;
CREATE TABLE `scproductscreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `groupId` bigint(20) default NULL,
  `productEntryId` bigint(20) default NULL,
  `thumbnailId` bigint(20) default NULL,
  `fullImageId` bigint(20) default NULL,
  `priority` int(11) default NULL,
  PRIMARY KEY  (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_467956FD` (`productEntryId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scproductscreenshot`
--

/*!40000 ALTER TABLE `scproductscreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductscreenshot` ENABLE KEYS */;


--
-- Definition of table `scproductversion`
--

DROP TABLE IF EXISTS `scproductversion`;
CREATE TABLE `scproductversion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `productEntryId` bigint(20) default NULL,
  `version` varchar(75) default NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) default NULL,
  `repoStoreArtifact` tinyint(4) default NULL,
  PRIMARY KEY  (`productVersionId`),
  KEY `IX_7020130F` (`directDownloadURL`(255)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scproductversion`
--

/*!40000 ALTER TABLE `scproductversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductversion` ENABLE KEYS */;


--
-- Definition of table `servicecomponent`
--

DROP TABLE IF EXISTS `servicecomponent`;
CREATE TABLE `servicecomponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) default NULL,
  `buildNumber` bigint(20) default NULL,
  `buildDate` bigint(20) default NULL,
  `data_` longtext,
  PRIMARY KEY  (`serviceComponentId`),
  KEY `IX_7338606F` (`buildNamespace`),
  KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servicecomponent`
--

/*!40000 ALTER TABLE `servicecomponent` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicecomponent` ENABLE KEYS */;


--
-- Definition of table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) default NULL,
  `altShipping` int(11) default NULL,
  `insure` tinyint(4) default NULL,
  PRIMARY KEY  (`cartId`),
  KEY `IX_C28B41DC` (`groupId`),
  KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoppingcart`
--

/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;


--
-- Definition of table `shoppingcategory`
--

DROP TABLE IF EXISTS `shoppingcategory`;
CREATE TABLE `shoppingcategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `parentCategoryId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  PRIMARY KEY  (`categoryId`),
  KEY `IX_5F615D3E` (`groupId`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoppingcategory`
--

/*!40000 ALTER TABLE `shoppingcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcategory` ENABLE KEYS */;


--
-- Definition of table `shoppingcoupon`
--

DROP TABLE IF EXISTS `shoppingcoupon`;
CREATE TABLE `shoppingcoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `code_` varchar(75) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `startDate` datetime default NULL,
  `endDate` datetime default NULL,
  `active_` tinyint(4) default NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double default NULL,
  `discount` double default NULL,
  `discountType` varchar(75) default NULL,
  PRIMARY KEY  (`couponId`),
  KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoppingcoupon`
--

/*!40000 ALTER TABLE `shoppingcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcoupon` ENABLE KEYS */;


--
-- Definition of table `shoppingitem`
--

DROP TABLE IF EXISTS `shoppingitem`;
CREATE TABLE `shoppingitem` (
  `itemId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `categoryId` bigint(20) default NULL,
  `sku` varchar(75) default NULL,
  `name` varchar(200) default NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) default NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) default NULL,
  `maxQuantity` int(11) default NULL,
  `price` double default NULL,
  `discount` double default NULL,
  `taxable` tinyint(4) default NULL,
  `shipping` double default NULL,
  `useShippingFormula` tinyint(4) default NULL,
  `requiresShipping` tinyint(4) default NULL,
  `stockQuantity` int(11) default NULL,
  `featured_` tinyint(4) default NULL,
  `sale_` tinyint(4) default NULL,
  `smallImage` tinyint(4) default NULL,
  `smallImageId` bigint(20) default NULL,
  `smallImageURL` varchar(75) default NULL,
  `mediumImage` tinyint(4) default NULL,
  `mediumImageId` bigint(20) default NULL,
  `mediumImageURL` varchar(75) default NULL,
  `largeImage` tinyint(4) default NULL,
  `largeImageId` bigint(20) default NULL,
  `largeImageURL` varchar(75) default NULL,
  PRIMARY KEY  (`itemId`),
  KEY `IX_C8EACF2E` (`categoryId`),
  KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoppingitem`
--

/*!40000 ALTER TABLE `shoppingitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitem` ENABLE KEYS */;


--
-- Definition of table `shoppingitemfield`
--

DROP TABLE IF EXISTS `shoppingitemfield`;
CREATE TABLE `shoppingitemfield` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY  (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoppingitemfield`
--

/*!40000 ALTER TABLE `shoppingitemfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemfield` ENABLE KEYS */;


--
-- Definition of table `shoppingitemprice`
--

DROP TABLE IF EXISTS `shoppingitemprice`;
CREATE TABLE `shoppingitemprice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) default NULL,
  `minQuantity` int(11) default NULL,
  `maxQuantity` int(11) default NULL,
  `price` double default NULL,
  `discount` double default NULL,
  `taxable` tinyint(4) default NULL,
  `shipping` double default NULL,
  `useShippingFormula` tinyint(4) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoppingitemprice`
--

/*!40000 ALTER TABLE `shoppingitemprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemprice` ENABLE KEYS */;


--
-- Definition of table `shoppingorder`
--

DROP TABLE IF EXISTS `shoppingorder`;
CREATE TABLE `shoppingorder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `number_` varchar(75) default NULL,
  `tax` double default NULL,
  `shipping` double default NULL,
  `altShipping` varchar(75) default NULL,
  `requiresShipping` tinyint(4) default NULL,
  `insure` tinyint(4) default NULL,
  `insurance` double default NULL,
  `couponCodes` varchar(75) default NULL,
  `couponDiscount` double default NULL,
  `billingFirstName` varchar(75) default NULL,
  `billingLastName` varchar(75) default NULL,
  `billingEmailAddress` varchar(75) default NULL,
  `billingCompany` varchar(75) default NULL,
  `billingStreet` varchar(75) default NULL,
  `billingCity` varchar(75) default NULL,
  `billingState` varchar(75) default NULL,
  `billingZip` varchar(75) default NULL,
  `billingCountry` varchar(75) default NULL,
  `billingPhone` varchar(75) default NULL,
  `shipToBilling` tinyint(4) default NULL,
  `shippingFirstName` varchar(75) default NULL,
  `shippingLastName` varchar(75) default NULL,
  `shippingEmailAddress` varchar(75) default NULL,
  `shippingCompany` varchar(75) default NULL,
  `shippingStreet` varchar(75) default NULL,
  `shippingCity` varchar(75) default NULL,
  `shippingState` varchar(75) default NULL,
  `shippingZip` varchar(75) default NULL,
  `shippingCountry` varchar(75) default NULL,
  `shippingPhone` varchar(75) default NULL,
  `ccName` varchar(75) default NULL,
  `ccType` varchar(75) default NULL,
  `ccNumber` varchar(75) default NULL,
  `ccExpMonth` int(11) default NULL,
  `ccExpYear` int(11) default NULL,
  `ccVerNumber` varchar(75) default NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) default NULL,
  `ppPaymentStatus` varchar(75) default NULL,
  `ppPaymentGross` double default NULL,
  `ppReceiverEmail` varchar(75) default NULL,
  `ppPayerEmail` varchar(75) default NULL,
  `sendOrderEmail` tinyint(4) default NULL,
  `sendShippingEmail` tinyint(4) default NULL,
  PRIMARY KEY  (`orderId`),
  KEY `IX_1D15553E` (`groupId`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoppingorder`
--

/*!40000 ALTER TABLE `shoppingorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorder` ENABLE KEYS */;


--
-- Definition of table `shoppingorderitem`
--

DROP TABLE IF EXISTS `shoppingorderitem`;
CREATE TABLE `shoppingorderitem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) default NULL,
  `itemId` varchar(75) default NULL,
  `sku` varchar(75) default NULL,
  `name` varchar(200) default NULL,
  `description` longtext,
  `properties` longtext,
  `price` double default NULL,
  `quantity` int(11) default NULL,
  `shippedDate` datetime default NULL,
  PRIMARY KEY  (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoppingorderitem`
--

/*!40000 ALTER TABLE `shoppingorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorderitem` ENABLE KEYS */;


--
-- Definition of table `socialactivity`
--

DROP TABLE IF EXISTS `socialactivity`;
CREATE TABLE `socialactivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `mirrorActivityId` bigint(20) default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `type_` int(11) default NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) default NULL,
  PRIMARY KEY  (`activityId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socialactivity`
--

/*!40000 ALTER TABLE `socialactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivity` ENABLE KEYS */;


--
-- Definition of table `socialrelation`
--

DROP TABLE IF EXISTS `socialrelation`;
CREATE TABLE `socialrelation` (
  `uuid_` varchar(75) default NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `userId1` bigint(20) default NULL,
  `userId2` bigint(20) default NULL,
  `type_` int(11) default NULL,
  PRIMARY KEY  (`relationId`),
  KEY `IX_61171E99` (`companyId`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_5A40CDCC` (`userId1`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_5A40D18D` (`userId2`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_F0CA24A5` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socialrelation`
--

/*!40000 ALTER TABLE `socialrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrelation` ENABLE KEYS */;


--
-- Definition of table `socialrequest`
--

DROP TABLE IF EXISTS `socialrequest`;
CREATE TABLE `socialrequest` (
  `uuid_` varchar(75) default NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `type_` int(11) default NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`requestId`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_32292ED1` (`receiverUserId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_80F7A9C2` (`userId`),
  KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_F3BFB48D` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_49D5872C` (`uuid_`),
  KEY `IX_4F973EFE` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socialrequest`
--

/*!40000 ALTER TABLE `socialrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrequest` ENABLE KEYS */;


--
-- Definition of table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
CREATE TABLE `subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `frequency` varchar(75) default NULL,
  PRIMARY KEY  (`subscriptionId`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_54243AFD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription`
--

/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;


--
-- Definition of table `tagsasset`
--

DROP TABLE IF EXISTS `tagsasset`;
CREATE TABLE `tagsasset` (
  `assetId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `startDate` datetime default NULL,
  `endDate` datetime default NULL,
  `publishDate` datetime default NULL,
  `expirationDate` datetime default NULL,
  `mimeType` varchar(75) default NULL,
  `title` varchar(300) default NULL,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `height` int(11) default NULL,
  `width` int(11) default NULL,
  `priority` double default NULL,
  `viewCount` int(11) default NULL,
  PRIMARY KEY  (`assetId`),
  KEY `IX_1AB6D6D2` (`classNameId`,`classPK`),
  KEY `IX_AB3D8BCB` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tagsasset`
--

/*!40000 ALTER TABLE `tagsasset` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagsasset` ENABLE KEYS */;


--
-- Definition of table `tagsassets_tagsentries`
--

DROP TABLE IF EXISTS `tagsassets_tagsentries`;
CREATE TABLE `tagsassets_tagsentries` (
  `assetId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY  (`assetId`,`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tagsassets_tagsentries`
--

/*!40000 ALTER TABLE `tagsassets_tagsentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagsassets_tagsentries` ENABLE KEYS */;


--
-- Definition of table `tagsentry`
--

DROP TABLE IF EXISTS `tagsentry`;
CREATE TABLE `tagsentry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `name` varchar(75) default NULL,
  PRIMARY KEY  (`entryId`),
  KEY `IX_10563688` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tagsentry`
--

/*!40000 ALTER TABLE `tagsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagsentry` ENABLE KEYS */;


--
-- Definition of table `tagsproperty`
--

DROP TABLE IF EXISTS `tagsproperty`;
CREATE TABLE `tagsproperty` (
  `propertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `entryId` bigint(20) default NULL,
  `key_` varchar(75) default NULL,
  `value` varchar(300) default NULL,
  PRIMARY KEY  (`propertyId`),
  KEY `IX_C134234` (`companyId`),
  KEY `IX_EB974D08` (`companyId`,`key_`),
  KEY `IX_5200A629` (`entryId`),
  KEY `IX_F505253D` (`entryId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tagsproperty`
--

/*!40000 ALTER TABLE `tagsproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagsproperty` ENABLE KEYS */;


--
-- Definition of table `tagssource`
--

DROP TABLE IF EXISTS `tagssource`;
CREATE TABLE `tagssource` (
  `sourceId` bigint(20) NOT NULL,
  `parentSourceId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `acronym` varchar(75) default NULL,
  PRIMARY KEY  (`sourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tagssource`
--

/*!40000 ALTER TABLE `tagssource` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagssource` ENABLE KEYS */;


--
-- Definition of table `tasksproposal`
--

DROP TABLE IF EXISTS `tasksproposal`;
CREATE TABLE `tasksproposal` (
  `proposalId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` varchar(75) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `publishDate` datetime default NULL,
  `dueDate` datetime default NULL,
  PRIMARY KEY  (`proposalId`),
  KEY `IX_181A4A1B` (`classNameId`,`classPK`),
  KEY `IX_7FB27324` (`groupId`),
  KEY `IX_6EEC675E` (`groupId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasksproposal`
--

/*!40000 ALTER TABLE `tasksproposal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasksproposal` ENABLE KEYS */;


--
-- Definition of table `tasksreview`
--

DROP TABLE IF EXISTS `tasksreview`;
CREATE TABLE `tasksreview` (
  `reviewId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `proposalId` bigint(20) default NULL,
  `assignedByUserId` bigint(20) default NULL,
  `assignedByUserName` varchar(75) default NULL,
  `stage` int(11) default NULL,
  `completed` tinyint(4) default NULL,
  `rejected` tinyint(4) default NULL,
  PRIMARY KEY  (`reviewId`),
  KEY `IX_4D0C7F8D` (`proposalId`),
  KEY `IX_70AFEA01` (`proposalId`,`stage`),
  KEY `IX_1894B29A` (`proposalId`,`stage`,`completed`),
  KEY `IX_41AFC20C` (`proposalId`,`stage`,`completed`,`rejected`),
  KEY `IX_36F512E6` (`userId`),
  KEY `IX_5C6BE4C7` (`userId`,`proposalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasksreview`
--

/*!40000 ALTER TABLE `tasksreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasksreview` ENABLE KEYS */;


--
-- Definition of table `user_`
--

DROP TABLE IF EXISTS `user_`;
CREATE TABLE `user_` (
  `uuid_` varchar(75) default NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `defaultUser` tinyint(4) default NULL,
  `contactId` bigint(20) default NULL,
  `password_` varchar(75) default NULL,
  `passwordEncrypted` tinyint(4) default NULL,
  `passwordReset` tinyint(4) default NULL,
  `passwordModifiedDate` datetime default NULL,
  `graceLoginCount` int(11) default NULL,
  `screenName` varchar(75) default NULL,
  `emailAddress` varchar(75) default NULL,
  `openId` varchar(1024) default NULL,
  `portraitId` bigint(20) default NULL,
  `languageId` varchar(75) default NULL,
  `timeZoneId` varchar(75) default NULL,
  `greeting` varchar(75) default NULL,
  `comments` longtext,
  `loginDate` datetime default NULL,
  `loginIP` varchar(75) default NULL,
  `lastLoginDate` datetime default NULL,
  `lastLoginIP` varchar(75) default NULL,
  `lastFailedLoginDate` datetime default NULL,
  `failedLoginAttempts` int(11) default NULL,
  `lockout` tinyint(4) default NULL,
  `lockoutDate` datetime default NULL,
  `agreedToTermsOfUse` tinyint(4) default NULL,
  `active_` tinyint(4) default NULL,
  PRIMARY KEY  (`userId`),
  KEY `IX_3A1E834E` (`companyId`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  KEY `IX_765A87C6` (`companyId`,`password_`),
  KEY `IX_C5806019` (`companyId`,`screenName`),
  KEY `IX_9782AD88` (`companyId`,`userId`),
  KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A9ED7DD3` (`openId`(255)),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_`
--

/*!40000 ALTER TABLE `user_` DISABLE KEYS */;
INSERT INTO `user_` (`uuid_`,`userId`,`companyId`,`createDate`,`modifiedDate`,`defaultUser`,`contactId`,`password_`,`passwordEncrypted`,`passwordReset`,`passwordModifiedDate`,`graceLoginCount`,`screenName`,`emailAddress`,`openId`,`portraitId`,`languageId`,`timeZoneId`,`greeting`,`comments`,`loginDate`,`loginIP`,`lastLoginDate`,`lastLoginIP`,`lastFailedLoginDate`,`failedLoginAttempts`,`lockout`,`lockoutDate`,`agreedToTermsOfUse`,`active_`) VALUES 
 ('a8798ffe-ec9f-4356-bbe5-a740b0a006f9',10111,10109,'2008-09-29 22:36:34','2008-09-29 22:36:34',1,10112,'password',0,0,NULL,0,'10111','default@liferay.com','',0,'en_US','GMT','Welcome!','','2008-09-29 22:36:34','',NULL,'',NULL,0,0,NULL,1,1),
 ('0c8ea117-3091-48ce-b10d-f90d4b8ed1f7',10129,10109,'2008-09-29 22:36:37','2008-10-24 01:31:56',0,10130,'tESsBmE/yNY3lb6a0L6vVQEZNqw=',1,0,'2008-10-24 01:31:56',0,'test','test@liferay.com','',0,'en_US','Pacific/Midway','Welcome Test Test!','','2008-11-02 11:27:05','192.168.0.198','2008-10-24 01:30:39','192.168.0.198',NULL,0,0,NULL,1,1),
 ('708e91c4-2fa4-4429-ae20-47b355e4bf94',10402,10109,'2008-10-01 21:27:44','2008-10-01 21:27:44',0,10403,'nW+WNtmqTwC8muYO1q32N57wT10=',1,0,NULL,0,'fpa','fpadurou@yahoo.com','',0,'en_US','GMT','Welcome Florin L Paduroiu!','','2008-10-01 22:08:34','0:0:0:0:0:0:0:1','2008-10-01 21:29:57','0:0:0:0:0:0:0:1',NULL,0,0,NULL,1,1);
/*!40000 ALTER TABLE `user_` ENABLE KEYS */;


--
-- Definition of table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup` (
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `parentUserGroupId` bigint(20) default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  PRIMARY KEY  (`userGroupId`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergroup`
--

/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;


--
-- Definition of table `usergrouprole`
--

DROP TABLE IF EXISTS `usergrouprole`;
CREATE TABLE `usergrouprole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY  (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergrouprole`
--

/*!40000 ALTER TABLE `usergrouprole` DISABLE KEYS */;
INSERT INTO `usergrouprole` (`userId`,`groupId`,`roleId`) VALUES 
 (10129,10124,10119),
 (10129,10135,10123),
 (10129,10139,10123);
/*!40000 ALTER TABLE `usergrouprole` ENABLE KEYS */;


--
-- Definition of table `useridmapper`
--

DROP TABLE IF EXISTS `useridmapper`;
CREATE TABLE `useridmapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) default NULL,
  `type_` varchar(75) default NULL,
  `description` varchar(75) default NULL,
  `externalUserId` varchar(75) default NULL,
  PRIMARY KEY  (`userIdMapperId`),
  KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  KEY `IX_E60EA987` (`userId`),
  KEY `IX_D1C44A6E` (`userId`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useridmapper`
--

/*!40000 ALTER TABLE `useridmapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `useridmapper` ENABLE KEYS */;


--
-- Definition of table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  PRIMARY KEY  (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` (`userId`,`groupId`) VALUES 
 (10129,10124);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;


--
-- Definition of table `users_orgs`
--

DROP TABLE IF EXISTS `users_orgs`;
CREATE TABLE `users_orgs` (
  `userId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY  (`userId`,`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_orgs`
--

/*!40000 ALTER TABLE `users_orgs` DISABLE KEYS */;
INSERT INTO `users_orgs` (`userId`,`organizationId`) VALUES 
 (10129,10134),
 (10129,10138);
/*!40000 ALTER TABLE `users_orgs` ENABLE KEYS */;


--
-- Definition of table `users_permissions`
--

DROP TABLE IF EXISTS `users_permissions`;
CREATE TABLE `users_permissions` (
  `userId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY  (`userId`,`permissionId`),
  KEY `LIFERAY_003` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_permissions`
--

/*!40000 ALTER TABLE `users_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_permissions` ENABLE KEYS */;


--
-- Definition of table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY  (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_roles`
--

/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` (`userId`,`roleId`) VALUES 
 (10111,10115),
 (10129,10114),
 (10129,10116),
 (10402,10116),
 (10402,10117);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;


--
-- Definition of table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
CREATE TABLE `users_usergroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY  (`userId`,`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_usergroups`
--

/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;


--
-- Definition of table `usertracker`
--

DROP TABLE IF EXISTS `usertracker`;
CREATE TABLE `usertracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `modifiedDate` datetime default NULL,
  `sessionId` varchar(200) default NULL,
  `remoteAddr` varchar(75) default NULL,
  `remoteHost` varchar(75) default NULL,
  `userAgent` varchar(200) default NULL,
  PRIMARY KEY  (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertracker`
--

/*!40000 ALTER TABLE `usertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertracker` ENABLE KEYS */;


--
-- Definition of table `usertrackerpath`
--

DROP TABLE IF EXISTS `usertrackerpath`;
CREATE TABLE `usertrackerpath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) default NULL,
  `path_` longtext,
  `pathDate` datetime default NULL,
  PRIMARY KEY  (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertrackerpath`
--

/*!40000 ALTER TABLE `usertrackerpath` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertrackerpath` ENABLE KEYS */;


--
-- Definition of table `webdavprops`
--

DROP TABLE IF EXISTS `webdavprops`;
CREATE TABLE `webdavprops` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `props` longtext,
  PRIMARY KEY  (`webDavPropsId`),
  KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webdavprops`
--

/*!40000 ALTER TABLE `webdavprops` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdavprops` ENABLE KEYS */;


--
-- Definition of table `website`
--

DROP TABLE IF EXISTS `website`;
CREATE TABLE `website` (
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `classNameId` bigint(20) default NULL,
  `classPK` bigint(20) default NULL,
  `url` longtext,
  `typeId` int(11) default NULL,
  `primary_` tinyint(4) default NULL,
  PRIMARY KEY  (`websiteId`),
  KEY `IX_96F07007` (`companyId`),
  KEY `IX_4F0F0CA7` (`companyId`,`classNameId`),
  KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website`
--

/*!40000 ALTER TABLE `website` DISABLE KEYS */;
/*!40000 ALTER TABLE `website` ENABLE KEYS */;


--
-- Definition of table `wikinode`
--

DROP TABLE IF EXISTS `wikinode`;
CREATE TABLE `wikinode` (
  `uuid_` varchar(75) default NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `name` varchar(75) default NULL,
  `description` longtext,
  `lastPostDate` datetime default NULL,
  PRIMARY KEY  (`nodeId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_920CD8B1` (`groupId`,`name`),
  KEY `IX_6C112D7C` (`uuid_`),
  KEY `IX_7609B2AE` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wikinode`
--

/*!40000 ALTER TABLE `wikinode` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikinode` ENABLE KEYS */;


--
-- Definition of table `wikipage`
--

DROP TABLE IF EXISTS `wikipage`;
CREATE TABLE `wikipage` (
  `uuid_` varchar(75) default NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) default NULL,
  `companyId` bigint(20) default NULL,
  `userId` bigint(20) default NULL,
  `userName` varchar(75) default NULL,
  `createDate` datetime default NULL,
  `modifiedDate` datetime default NULL,
  `nodeId` bigint(20) default NULL,
  `title` varchar(75) default NULL,
  `version` double default NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) default NULL,
  `head` tinyint(4) default NULL,
  `parentTitle` varchar(75) default NULL,
  `redirectTitle` varchar(75) default NULL,
  PRIMARY KEY  (`pageId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_C8A9C476` (`nodeId`),
  KEY `IX_E7F635CA` (`nodeId`,`head`),
  KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  KEY `IX_9C0E478F` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wikipage`
--

/*!40000 ALTER TABLE `wikipage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipage` ENABLE KEYS */;


--
-- Definition of table `wikipageresource`
--

DROP TABLE IF EXISTS `wikipageresource`;
CREATE TABLE `wikipageresource` (
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) default NULL,
  `title` varchar(75) default NULL,
  PRIMARY KEY  (`resourcePrimKey`),
  KEY `IX_21277664` (`nodeId`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wikipageresource`
--

/*!40000 ALTER TABLE `wikipageresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipageresource` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;