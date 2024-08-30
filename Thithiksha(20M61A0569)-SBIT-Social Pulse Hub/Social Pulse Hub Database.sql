/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - socialhub
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `socialhub`;

USE `socialhub`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `Name` varchar(50) default NULL,
  `Email` varchar(60) default NULL,
  `PhoneNumber` varchar(40) default NULL,
  `Something about yourself` varchar(220) default NULL,
  `inputGender` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`Name`,`Email`,`PhoneNumber`,`Something about yourself`,`inputGender`) values ('Thithiksha Basuvoju','thithikshabasuvoju@gmail.com','8790254262','yes','female'),('Thithiksha Basuvoju','thithikshabasuvoju@gmail.com','8790254262','good','female');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `inputAllowComments` varchar(220) default NULL,
  `inputCommentPolicy` varchar(60) default NULL,
  `inputCommentNotification` varchar(70) default NULL,
  `inputCommentModeration` varchar(70) default NULL,
  `inputCommentApproval` varchar(220) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

insert  into `comments`(`inputAllowComments`,`inputCommentPolicy`,`inputCommentNotification`,`inputCommentModeration`,`inputCommentApproval`) values ('on','Good','yes','yes','yes');

/*Table structure for table `fgtpsw` */

DROP TABLE IF EXISTS `fgtpsw`;

CREATE TABLE `fgtpsw` (
  `inputEmail` varchar(60) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fgtpsw` */

insert  into `fgtpsw`(`inputEmail`) values ('thithikshabasuvoju@gmail.com'),('thithikshabasuvoju@gmail.com'),('thithikshabasuvoju@gmail.com'),('thithikshabasuvoju@gmail.com'),('thithikshabasuvoju@gmail.com');

/*Table structure for table `invite` */

DROP TABLE IF EXISTS `invite`;

CREATE TABLE `invite` (
  `inputAllowFollow` varchar(30) default NULL,
  `inputInviteFriends` varchar(40) default NULL,
  `inputFollowPrivacy` varchar(50) default NULL,
  `inputInvitePolicy` varchar(60) default NULL,
  `inputFollowRequests` varchar(70) default NULL,
  `inputFollowNotification` varchar(80) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `invite` */

insert  into `invite`(`inputAllowFollow`,`inputInviteFriends`,`inputFollowPrivacy`,`inputInvitePolicy`,`inputFollowRequests`,`inputFollowNotification`) values ('on','Meghana','private','Yes','manual','yes');

/*Table structure for table `media` */

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `inputAutoPlay` varchar(40) default NULL,
  `inputImageQuality` varchar(50) default NULL,
  `inputVideoQuality` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `media` */

insert  into `media`(`inputAutoPlay`,`inputImageQuality`,`inputVideoQuality`) values ('off','medium','standard');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `inputNotificationSound` varchar(60) default NULL,
  `inputNotificationFrequency` varchar(70) default NULL,
  `inputNotificationPrivacy` varchar(90) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`inputNotificationSound`,`inputNotificationFrequency`,`inputNotificationPrivacy`) values ('sound1','hourly','private'),('High','hourly','private'),('default','immediate','public'),('default','immediate','public');

/*Table structure for table `password` */

DROP TABLE IF EXISTS `password`;

CREATE TABLE `password` (
  `inputPasswordCurrent` varchar(50) default NULL,
  `inputPasswordNew` varchar(70) default NULL,
  `inputPasswordNew2` varchar(90) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `password` */

insert  into `password`(`inputPasswordCurrent`,`inputPasswordNew`,`inputPasswordNew2`) values ('megi@123','1234','1234');

/*Table structure for table `privacy` */

DROP TABLE IF EXISTS `privacy`;

CREATE TABLE `privacy` (
  `inputAccountType` varchar(40) default NULL,
  `inputVisibility` varchar(50) default NULL,
  `inputTwoFactorAuth` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `privacy` */

insert  into `privacy`(`inputAccountType`,`inputVisibility`,`inputTwoFactorAuth`) values ('public','everyone','on');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `FirstName` varchar(220) default NULL,
  `LastName` varchar(220) default NULL,
  `ContactNumber` varchar(220) default NULL,
  `Email` varchar(220) default NULL,
  `Username` varchar(220) default NULL,
  `Password` varchar(220) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`FirstName`,`LastName`,`ContactNumber`,`Email`,`Username`,`Password`) values ('Thithiksha','Basuvoju','8790254262','thithikshabasuvoju@gmail.com','thithiksha@gmail.com','megi@123'),('Thithiksha','Basuvoju','8790254262','thithikshabasuvoju@gmail.com','thithiksha@gmail.com','megi@123'),('Thithiksha','Basuvoju','8790254262','thithikshabasuvoju@gmail.com','thithiksha@gmail.com','megi@123'),('Thithiksha','Basuvoju','8790254262','thithikshabasuvoju@gmail.com','thithikshabasuvoju@gmail.com','megi@123'),('Thithiksha','Basuvoju','8790254262','thithikshabasuvoju@gmail.com','thithikshabasuvoju@gmail.com','megi@123'),('Thithiksha','Basuvoju','8790254262','thithikshabasuvoju@gmail.com','thithikshabasuvoju@gmail.com','megi@123'),('Thithiksha','Basuvoju','8790254262','thithikshabasuvoju@gmail.com','thithikshabasuvoju@gmail.com','megi@123');

/*Table structure for table `sharing` */

DROP TABLE IF EXISTS `sharing`;

CREATE TABLE `sharing` (
  `inputSharePosts` varchar(30) default NULL,
  `inputShareLocation` varchar(50) default NULL,
  `inputShareVisibility` varchar(60) default NULL,
  `inputCustomShareList` varchar(70) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sharing` */

insert  into `sharing`(`inputSharePosts`,`inputShareLocation`,`inputShareVisibility`,`inputCustomShareList`) values ('on','on','private','Thithiksha');

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `inputTagsMentions` varchar(20) default NULL,
  `inputTagSuggestions` varchar(70) default NULL,
  `inputTagPrivacy` varchar(80) default NULL,
  `inputMentionNotification` varchar(90) default NULL,
  `inputMentionSettings` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tags` */

insert  into `tags`(`inputTagsMentions`,`inputTagSuggestions`,`inputTagPrivacy`,`inputMentionNotification`,`inputMentionSettings`) values ('@meghanabasuvoju','alex_jones','private','on','allowAll');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
