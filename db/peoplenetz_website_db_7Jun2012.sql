-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: peoplenetz_development
-- ------------------------------------------------------
-- Server version	5.1.61-0ubuntu0.10.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@peoplenetz.com','$2a$10$dAn6m7nTMkcACYKBGgUd6eZh3DeGwZynNRoLjkdFW8jqzDiA5EsBu',NULL,NULL,NULL,15,'2012-06-06 09:58:27','2012-06-04 03:09:42','101.161.51.17','174.73.103.96','2012-05-03 22:06:52','2012-06-06 09:58:27'),(2,'jdavis@peoplenetz.com','$2a$10$hPB9xNgvleoBKVKE6Z4yN.2V9UMW9HQyKaxH7hBdMMmDMnPpowljq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2012-06-04 04:35:15','2012-06-04 04:35:15');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `industry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (1,'Financial','100 - 500','United States','','2012-04-26 22:39:27','2012-04-26 22:39:27'),(2,'Financial','100 - 500','United States','','2012-04-27 02:41:07','2012-04-27 02:41:07'),(3,'Financial','100 - 500','Albania','','2012-04-27 15:52:19','2012-04-27 15:52:19'),(4,'Manufacturing','100 - 500','United States','','2012-04-30 04:05:21','2012-04-30 04:05:21'),(5,'Consulting','100 - 500','United States','','2012-05-04 20:49:48','2012-05-04 20:49:48'),(6,'Manufacturing','500 - 5,000','United States','','2012-05-08 11:06:38','2012-05-08 11:06:38');
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industries`
--

DROP TABLE IF EXISTS `industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `pnetz_response` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industries`
--

LOCK TABLES `industries` WRITE;
/*!40000 ALTER TABLE `industries` DISABLE KEYS */;
INSERT INTO `industries` VALUES (1,'Agriculture','<h4>Strategic Environmental Assessment</h4>\r\n<p>Nations around the world have developed agricultural legislation aimed to increase the adoption of sustainable agricultural practices by developing new tools and methods. This provides the industry the support required to accelerate its efforts to address environmental challenges and implement actions to improve their environmental performance.</p>\r\n<p>Countries are developing programs that adopt environmental risk assessments that will accelerate the adoption of beneficial management practices for both farming and agricultural landscapes. The difficulty is rolling out the assessments in a cost effective and efficient manner. Specializ has the power and simplicity to easily rollout such assessments to a vast array of individuals that are geographically separated in a consistent and cohesive manner and with very little effort.</p>\r\n<p>Along similar lines, the feedback from these assessments is not only used to assess individual producers but also to develop agricultural legislature and regulation that requires organizations to ensure that environmental considerations are integrated with economic and social factors at an early stage of policy and program decision making. Specializ automates and streamlines the process of providing agri-environmental risk assessment and planning to largely increase the value of sustainable agriculture practices to the general public.</p>\r\n<p>Specializ assists in the assessment process by automating and streamlining the following steps most agricultural regulation follows:\r\n<ul>\r\n<li>Initial Review - Specializ accelerates the process to review to determine whether the potential for environmental effects could be ruled out or whether a previously conducted assessment still applies by polling the appropriate stakeholders and achieving consensus in their decisions.</li>\r\n<li>Preliminary Scan – Specializ provides the vehicle to quickly deliver assessments consistently and without manual intervention to determine whether important environmental effects would result from the implementation of agricultural initiatives.</li>\r\n<li>Strategic Environmental Assessment – Special may also be utilized for more in-depth assessment to develop more details on the environmental effects, strategies to mitigate the negative or enhance the positive effects, or measures to address any possible public concerns. Specializ can push these types of assessments to thousands of people as easily as it can to 10 people.\r\nQuickening Risk Assessments</li>\r\n</ul>\r\n</p>\r\n<p>Agri-Environment Risk Assessments provide a systemic approach to farmers, through federal/provincial partnerships, to assess priority environmental risks and address them by developing effective plans to mitigate these risks. Specializ allows producers and agencies to quickly develop libraries to measure and gain consensus on risk, their impacts, likelihoods and mitigation strategies. With Specializ is it also possible to guarantee different levels of consensus among participants on different topics of interest.</p>\r\n\r\n<h4>Assessing Mitigation Strategies</h4>\r\n<p>Agri-environmental risk assessment aims to increase the adoption of sustainable agriculture practices at farm and landscape levels by increasing the number of on-farm beneficial management practices projects completed by producers. Specializ may be implemented to identify mitigation impacts easily and risks to the environment by maintaining or improving the quality of soil, water, air and biodiversity.</p>\r\n\r\n<h4>Measuring Management Practices</h4>\r\n<p>Specializ may identify practices to increase the understanding of the effectiveness of beneficial management practices across various agricultural settings. Specializ’s information elicitation and consensus capabilities will enable producers, policy-makers, planners and the general public to make informed decisions as to which practices are likely to be most effective and where in the landscape they might best be applied.</p>\r\n\r\n<h4>Assisting Sustainable Development</h4>\r\n<p>Specializ provides the platform enabling the agriculture industry to develop a more systematic management approach to decision-making with respect to environmental risks and suitable corrective actions. Agricultural regulators and producers may utilize Specilaiz to rapidly develop policy and test adherence to policy efficiently, quickly and cheaply. Specializ automates allowing rapid deployment of business risk management programs, ensuring food safety and bio-security risk management, and providing more options for producers to increase trade and market access.</p>\r\n</br>\r\n</br>','Our solution','2012-05-03 17:07:21','2012-05-10 08:57:02'),(2,'Professional Services','<h4>Delivering Quality within Budget</h4>\r\n<p>The professional services firms perform many different types of assessments for clients. These assessments are typically performed to help the client understand the current state of an activity, function or event. The primary source of information for these assessments is the client’s employees themselves however there are significant limitations to the data due to the data collection process itself.</p>\r\n<h4>Inherent Limitations</h4>\r\n<p>Such limitations are driven by the inability of professional services’ teams to interview and question all relevant stakeholders within client budgets. Specializ offers the ability to perform assessments with large groups of stakeholders quickly and effectively. The activities related to a client assessments shift from mobilizing teams to interview client stakeholders to acquire relevant information to working with the client to design the types of information and consensus levels that are needed to meet the client’s needs.</p>\r\n<h4>Agreement at Atomic Levels</h4>\r\n<p>Specializ can not only generate information from 1,000 participants as easily as it can from 10 people but it can also gain consensus on that information in one or more hierarchically designed logical groups. For example, if the client needs to assessment the design of controls across multiple domains of ISO 31000 then Specializ would be able to generate design and efficiency agreement per domain, per geographic location per role making it possible to assess the design and efficiency of controls at atomic levels such as geography, role and so forth.</p>\r\n<br/>\r\n<br/>\r\n','Our solution','2012-05-03 17:07:21','2012-05-23 04:02:59'),(3,'Manufacturing','Coming soon.','Our solution','2012-05-03 17:07:21','2012-05-08 19:28:38'),(5,'Financial Services','Coming soon.','Our solution','2012-05-03 17:07:21','2012-05-08 19:28:17'),(8,'Consulting','Coming soon.','Our solution','2012-05-03 17:07:21','2012-05-08 19:27:30'),(9,'Retail & Wholesale','Coming soon.','Our solution','2012-05-03 17:07:21','2012-05-08 19:27:18'),(14,'Defense','Coming soon.','Our solution','2012-05-03 17:07:21','2012-05-08 19:25:39'),(15,'Academia','<h4>Streamlining Research</h4>\r\n<p>We offer solutions to simplify the ability to process of gaining consensus on one or more topics of interest from a large body of participants. Unlike surveys in which participants are simply responding to predetermined questions surrounding a topic of interest, our Specializ solution allows academics to allow the participants to not only develop the content for a given body of knowledge but also to gain a specified level of consensus on that knowledge.</p>\r\n<h4>Group Your Design</h4>\r\n<p>Specializ allows researchers to hierarchically group participants so that each group of the same topic creates its own, unique information that is agreed upon to required levels at the group layer.</p>\r\n<h4>Behind the Scenes</h4>\r\n<p>Specializ implements an anonymous Delphi-based technique, but with a twist. Specializ is an online solution that allows researchers to specify required levels of agreements for each and group of participants and automatically manages the process of achieving specified consensus levels. The Delphi technique is typically only used on small groups because the process is time consuming and expensive but with Specializ that is no longer the case. Specializ makes it is efficient and cost effective to elicit information from groups and with little to no involvement from researchers themselves.</p>\r\n<h4>No More Sampling</h4>\r\n<p>Specializ allows researchers to generate agreed upon information from 10,000 participants as easily as 10 participants. This means that with Specializ there is no more sampling, we make it easy to use populations of participants that have the ability to feed off of each other’s ideas and iteratively agree on the output of their information.</p>\r\n<br/>','Our solution','2012-05-03 17:07:21','2012-05-29 11:49:23'),(16,'Technology','<h4>Better Design</h4>\r\n<p>Technology is deployed to help businesses run more efficiently. There is often a divide between IT and business staff due to miscommunication of requirements and expectations. This divide can reduced by providing technological solutions to business problems within contexts that both groups understand. Specializ allows organizations quickly and accurately generate detailed business requirements which have been validated by all relevant stakeholders. Then Specializ may be used to generate and gain consensus on the technology required to deliver business requirements. This means that \r\n\r\n</p>\r\n\r\n<h4>Better Design</h4>\r\n<p>\r\n\r\n</p>\r\n\r\n<h4>Better Design</h4>\r\n<p>\r\n\r\n</p>\r\n','Our solution','2012-05-03 17:07:21','2012-05-23 05:55:51'),(17,'Energy','<h4>Energy Assessments</h4>\r\n\r\n<img src=\"../page_images/rainbow.gif\" align=\"left\">\r\n<p>Specializ has helped firms lower the cost of providing energy and environmental assessments to meet regulatory and policy requirements. Specializ makes it possible to not only incorporate a large number of individuals when assessing regulatory and policy compliance and maturity but also to guarantee consensus on the outcomes. The assessment process is simple and fast and from the participants perspective takes less than 15 minutes to complete and gain consensus on assessments.</p>\r\n\r\n<p>Specializ has helped firms lower the cost of providing energy and environmental assessments to meet regulatory and policy requirements. Specializ makes it possible to not only incorporate a large number of individuals when assessing regulatory and policy compliance and maturity but also to guarantee consensus on the outcomes. The assessment process is simple and fast and from the participants perspective takes less than 15 minutes to complete and gain consensus on assessments.</p>\r\n\r\n<p>Specializ has helped firms lower the cost of providing energy and environmental assessments to meet regulatory and policy requirements. Specializ makes it possible to not only incorporate a large number of individuals when assessing regulatory and policy compliance and maturity but also to guarantee consensus on the outcomes. The assessment process is simple and fast and from the participants perspective takes less than 15 minutes to complete and gain consensus on assessments.</p>\r\n\r\n<p>Specializ has helped firms lower the cost of providing energy and environmental assessments to meet regulatory and policy requirements. Specializ makes it possible to not only incorporate a large number of individuals when assessing regulatory and policy compliance and maturity but also to guarantee consensus on the outcomes. The assessment process is simple and fast and from the participants perspective takes less than 15 minutes to complete and gain consensus on assessments.</p>','Our solution','2012-05-03 17:07:21','2012-06-04 03:10:29');
/*!40000 ALTER TABLE `industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_topics`
--

DROP TABLE IF EXISTS `industry_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_topics`
--

LOCK TABLES `industry_topics` WRITE;
/*!40000 ALTER TABLE `industry_topics` DISABLE KEYS */;
INSERT INTO `industry_topics` VALUES (1,'Physical Sciences','',2,15,'2012-05-21 08:43:36','2012-05-21 10:41:10'),(2,'Social Sciences','',1,15,'2012-05-21 10:16:07','2012-05-21 11:04:27');
/*!40000 ALTER TABLE `industry_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libraries`
--

DROP TABLE IF EXISTS `libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libraries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libraries`
--

LOCK TABLES `libraries` WRITE;
/*!40000 ALTER TABLE `libraries` DISABLE KEYS */;
INSERT INTO `libraries` VALUES (1,'Basel II/III','<p>Basel III regulatory compliance is difficult and time consuming. Specializ has the ability to minimize the effort required to assess the consistency of your organization’s Basel III program.</p>\r\n<p>Full, timely and consistent implementation of Basel III is fundamental to raising the resilience of the global banking system, in maintaining market confidence in regulatory ratios and in providing a level playing field.</p>\r\n<p>Specializ helps implement the assessment programme the members of the Basel Committee have agreed on that will review and report on their implementation of Basel III. Specifically, Specializ has a pre-built to help organizations with the assessment of the Level 2 of the assessment programme, which is to ensure regulatory consistency with Basel III.</p>','2012-05-03 17:07:21','2012-05-07 15:37:22'),(2,'Solvency II','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:31:21'),(3,'ISO 27000','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:30:53'),(4,'ISO 14000','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:30:43'),(5,'ISO 31000','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:30:32'),(6,'COSO ERM','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:30:21'),(7,'COBIT 5','Coming soon.','2012-05-03 17:07:21','2012-05-10 22:16:51'),(8,'FAS-133','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:30:00'),(9,'COBIT 4.1','Coming soon.','2012-05-03 17:07:21','2012-05-10 22:16:35'),(10,'AML/CT','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:29:40'),(11,'FATCA','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:29:29'),(12,'SSAE-16','Coming soon.','2012-05-03 17:07:21','2012-05-08 19:29:21');
/*!40000 ALTER TABLE `libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_topics`
--

DROP TABLE IF EXISTS `library_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `library_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_topics`
--

LOCK TABLES `library_topics` WRITE;
/*!40000 ALTER TABLE `library_topics` DISABLE KEYS */;
INSERT INTO `library_topics` VALUES (1,'Compliance scale','<p>Specializ utilizes the assessment scale in accordance to that of the Basel Committee consisting of a four-grade scale including: compliant, largely compliant, materially non-compliant and non-compliant.</p>\r\n<p>The outcome of the assessment process is expected to take the form of an overall assessment of the compliance of the jurisdiction’s regulation with Basel III and assessments of the compliance of the jurisdiction’s regulation for each of the key components of the capital framework as listed in the annex.</p>\r\n<br/>\r\n<br/>',1,'2012-05-07 15:38:31','2012-05-21 11:54:59',6),(2,'Assessment process','<p>Specializ focuses on Level 2 and has a built-in library to provide efficiency and effectiveness to its process by automating the assessment of the current state and compliance to Basel III requirements and guaranteeing consensus.</p>',1,'2012-05-07 15:39:16','2012-05-21 11:33:13',1),(3,'Phase 1: Preparatory phase','<p>The preparatory phase will be used to establish the assessment team and to collect the relevant material.</p>\r\n<ul>\r\n<li> Establishment of assessment teams\r\nAd-hoc assessment teams will be established to conduct the assessment of individual jurisdictions. A typical team will involve 5-7 persons, comprising:\r\n<ul>\r\n<li> a team leader with seniority and/or experience equivalent to those of a Committee member</li>\r\n<li> selected experts from member authorities; and</li>\r\n<li> member(s) of the Basel Committee Secretariat.</li>\r\n</ul>\r\n<li> Collection of Information and data\r\n<p>The preparatory phase will be used to collect the information needed for supporting the assessment. Jurisdictions will be requested to answer a detailed self-assessment questionnaire, using a standardised template, and to provide all components of the domestic regulation that implement Basel III at the domestic level. Relevant background documents should also be communicated, including in particular copies of the most recent FSAPs or other external assessments which cover capital adequacy regulation. The jurisdiction should also transmit any other document that could usefully inform the assessment.</p>\r\n</li>\r\n</ul>\r\n<br/>\r\n<br/>',1,'2012-05-07 15:44:49','2012-05-21 11:54:03',2),(4,'Phase 2: Assessment phase','<p>The assessment phase will rely on a combination of off-site and on-site assessments.</p>\r\n<ul>\r\n<li>Off-site assessment\r\n<p>Specializ can automate the assessment team in analysing the compliance of the domestic regulations using all the information provided by the country, as well as other relevant information available to the Basel Committee. Specializ can identify the gaps and the issues that will need to be explored and discussed in more detail during the on-site review.</p>\r\n</li>\r\n<li> On-site assessment\r\n<p>As a general principle, on-site reviews are expected to be conducted as part of the assessment process. Specializ will also automate on-site reviews to ensure the correct understanding of issues related to the adoption and implementation of Basel III were identified during the off-site review, by having exchanges with relevant experts and the senior authorities responsible for the transposition of Basel III into domestic regulations. Specializ can streamline the information exchange and extraction process between relevant parties (including the finance ministry or treasury, industry representatives, accounting representatives, analysts) to guarantee that the assessment team collects a broad range of views and develops a sound understanding of local regulatory requirements. </p>\r\n</li>\r\n<li> Drafting of the assessment report\r\n<p>Specializ may be used to report the consensus on the information obtained in the assessment programme by both the on-site assessments.</p>\r\n</li>\r\n</ul>\r\n<br/>\r\n<br/>',1,'2012-05-07 15:48:37','2012-05-21 11:52:49',3),(5,'Phase 3: Review phase','<p>Specializ assists in Phase 3, the review phase, by producing reports that summarizes the results of the assessment programme that may be made available to a broader set of peers prior to finalization, approval and publication.</p>\r\n<ul>\r\n<li> Review by the Standards Implementation Group\r\n<p>Specializ assists in eliciting the necessary information and obtaining consensus on the key objectives of the SIG’s review of the assessment report to include the conclusions of the assessment and on the content of the report and to ensure that the assessment is consistent with the agreed methodology and the other assessments already performed. </p>\r\n</li>\r\n<li> Approval by the Basel Committee\r\n<p>Specializ may even be used by the Basel Committee, which approves the assessments by consensus.</p>\r\n</li>\r\n<li> Publication and communication of the assessments\r\n<p>The consensus levels on the assessment programme from Specializ may be reported to appropriate stakeholders.</p>\r\n</li>\r\n</ul>\r\n<br/>\r\n<br/>',1,'2012-05-07 15:52:24','2012-05-21 11:52:17',4),(6,'Phase 4: Follow-up','<p>The Committee continues to monitor whether its members are updating their domestic regulations or introducing new regulations that could impact the assessments already performed. Specializ may be used within the member organizations to assess the ongoing whether substantial regulatory developments or changes could have a material impact on existing assessments.</p>\r\n<p>While the main objective of the assessment process is to ensure a full and consistent implementation of Basel III across countries, the process is also expected to usefully inform the Committee about implementation challenges or difficulties that countries may have faced or are facing when adopting Basel III. The process is also expected to contribute to identify potential gaps or interpretative issues within the Basel III framework. These elements, in combination with the outcome of its quantitative monitoring of Basel III impact, will be taken into account by the Basel Committee when determining its policy agenda and might result in issuing additional guidance or updating the rules if needed.</p>\r\n<br/>\r\n<br/>',1,'2012-05-07 15:55:24','2012-05-21 11:50:24',5);
/*!40000 ALTER TABLE `library_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120424205354'),('20120424230705'),('20120426200846'),('20120503151651'),('20120503151652'),('20120503155002'),('20120503160413'),('20120503162711'),('20120503201638'),('20120503210507'),('20120506194608'),('20120507160531'),('20120507191547'),('20120507191720');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solution_topics`
--

DROP TABLE IF EXISTS `solution_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solution_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `solution_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution_topics`
--

LOCK TABLES `solution_topics` WRITE;
/*!40000 ALTER TABLE `solution_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `solution_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solutions`
--

DROP TABLE IF EXISTS `solutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `pnetz_solution` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solutions`
--

LOCK TABLES `solutions` WRITE;
/*!40000 ALTER TABLE `solutions` DISABLE KEYS */;
INSERT INTO `solutions` VALUES (1,'Audit','<h4>Audit Assessments</h4>\r\n<p>Auditors live and breath efficiency and effectiveness. We offer a solution that dramatically increases both. We help increase efficiency by allowing firms to develop accurate assessments that guarantee stakeholder buy-in and eliminate the possibility of rework later on.</p>\r\n\r\n<p>Often assessments are used to design and test the efficiency of controls. This process is typically manual and conducted via interviews or workshops, however, sometimes it is assisted via software solutions but these solutions often sample respondents achieving on a partial perspective on reality. Specializ can elicit information from any number of respondents quickly and efficiently. Specializ can also guarantee consensus on the outcomes of assessments. The purpose of assessments is to measure the values for topics of interest. Specializ allows participants to first define what it is they need to measure, gain consensus on it, while simultaneously achieving agreement on the measurements themselves.</p>\r\n\r\n<h4>Comprehensive Assessment</h4>\r\n<p>Specializ incorporates both the qualitative and quantitative aspects of assessments. The qualitative component groups participants hierarchically and generates lists of elements separate by and agreed upon by each group respectively. The qualitative component creates the information prior to the quantitative component which may be used to classify and rate this information. Specializ utilizes both components to portray a complete assessment of the information in question.</p>\r\n\r\n<h4>Corroboration of Evidence</h4>\r\n<p>Audit evidence is often corroborated by management and often this information is collected from a single employee. Specializ can be utilized to automatically corroborate evidence from large groups of stakeholders at any given interval throughout the year. This lessens the burden for auditors manage interviews and strengthens the quality of evidence as results are validated and agreed upon by multiple sources.</p>\r\n<br/>\r\n<br/>','Our solution','2012-05-03 17:07:21','2012-05-22 13:02:54'),(2,'Risk Management','Specializ assists organizations in bettering their risk management processes by lowering the cost of risk management activities and better managing risk across operations. For example, Specializ has the ability to completely transform risk management activities in the following ways:\r\n\r\n<h4>Risk Identification</h4>\r\n<p>Specializ replaces traditional workshop and interview facilities with a process that derives significantly better results in considerably less time. Specializ eliminates many of the problems associated with risk management by eliminating the sampling restriction to the number of stakeholders involved in the risk management process. Typically, collecting risk data is limited by constraints such as the number of employees that may be interviewed and the time it takes to collate and synthesize such information. Specializ removes these obstacles by removing the costs associated with collecting and agreeing upon risk across organizations. With Specializ it is as easy to involve 10,000 stakeholders in the risk management process as it is 10 stakeholders. The ability to easy involve all stakeholder produces much more accurate risk information. Specializ takes the risk management process one step further to in that it allows organizations to create logical groupings of risk areas and users to ensure that only those employees with expertise in a risk area have the ability to determine its current state.</p>\r\n\r\n<h4>Risk Assessment</h4>\r\n<p>Specializ completely changes the risk assessment process to allow for greater accuracy in defining and maintaining risk. This is accomplished by combining top-down and bottom-up risk management approaches. This allows for identification and assessment at the strategic, operational and tactical levels of the organization. This approach greatly improves the accuracy of risk information while simultaneously achieving consensus and sign off from all interested stakeholders.</p>\r\n\r\n<h4>Risk Analysis</h4>\r\n<p>As described above, Specializ allows employees to participate in risk assessment for those areas in which they have expertise but it also allows these employees to iteratively determine risk attributes, such as impact and likelihood. Specializ can identify any number of risk attributes and dynamically assign different scoring scales for each attribute. For example, that means that you could create a risk attribute like impact that is measured in dollars. Another attribute, priority for example, could be measured on a High\\Medium\\Low rating.</p>\r\n\r\n<h4>Risk Evaluation</h4>\r\n<p>Specializ not only identifies risk and guarantees consensus on those risks but also has the ability to generate data on risk across the organization. This data may be used to develop KRIs or for data analytic purposes. Since Specializ has the ability to poll populations of employees easily and efficiently, organizations will experience unprecedented accuracy of risk. Additionally, Specializ can be set to automatically monitor, review and update risk organization wide at any interval making the management of risk simpler and more cost effective.</p>\r\n\r\n<h4>Risk Treatment</h4>\r\n<p>Specializ can gain consensus on mitigation strategies risks across organizations. This, combine with the fact that risks had been previously identified and agreed upon by all interested stakeholders, gives organizations the ability to better match spending on mitigation strategies to actual risk.</p>\r\n\r\n<h4>Control</h4>\r\n<p>Specializ allows for the hierarchical grouping of topics so that information can be expanded upon any number of times needed. An example of this is control, after an organization uses Specializ to identify risks across, it can then takes the risks derived in each area and have employees define the controls required to mitigate risks to acceptable levels. This guarantees that controls are relevant and, once again, only those employees with expertise in the in a specific area have the ability to participate in define controls for that area.</p>\r\n','Our solution','2012-05-03 17:07:21','2012-05-27 08:44:50'),(3,'Compliance','Simplifying Compliance\r\nSpecializ can simplify compliance processes by ensuring that obligations are met and adhere to standards and/or guidelines. This process cold begin by utilizing Specializ to generate risks per area of interest and allowing participants to generate and gain consensus on the controls required to mitigate risks to acceptable levels. Specializ has many pre-built libraries to accelerate organizations\' compliance standards and regulation but the solution also allows libraries to be easily uploaded to assess any topic of interest.\r\n\r\nDesigning Controls\r\nSpecializ allows organizations to move to a control self assessment approach (CSA) to gain significantly more information and accuracy regarding control infrastructures and do so with considerable fewer resources. This process will ensure that individuals are only able to evaluate those controls in which they have process level expertise; this will better match the control requirements to actual risks in which they are designed to mitigate.\r\n\r\nTesting the Efficiency of Controls\r\nSpecializ can be used to quickly and efficiently test the efficiency of controls by validating whether changes are needed or could improve their ability to meet their obligations. By making the process simple and quick, organizations can now easily integrate efficiency assessments into their normal compliance cycles. Since Specializ, can push assessments to 1,000 individuals as easily as 10 individuals it is possible to achieve rich data regarding controls that has been validated and agreed upon by all appropriate stakeholders.\r\n\r\nTesting Control Effectiveness\r\nSpecializ can help organizations test the effectiveness of controls by assessing their effectiveness and attaining consensus on their effectiveness by the appropriate stakeholders. Effectiveness can be assessed by validating agreement on binary results of effectiveness, such as yes/no, or by validating responses are above a specific threshold.','Our solution','2012-05-03 17:07:21','2012-05-26 07:06:50'),(4,'Software Development','<h4>Software Requirements</h4>\r\n<p>Specializ accelerates requirements gathering and validation. As requirements change throughout the life of a project, Specializ allows requirements to be elicited automatically as specific and ad-hoc intervals to ensure software requirements meet business needs. Specializ allows organizations to collect requirements based on any design. Specializ allows organizations can define any number of logical groups and hierarchically nest those groups to elicit requirements per group division. For example, this would allow organizations to collect requirements per geography, per functional group and/or per job role.</p>\r\n\r\n<h4>Ensuring Project Success</h4>\r\n<p>Specializ elicits software requirements individually from participants but add in the ability to allow each participant to view and respond to the requirements of all other participants. The solution iteratively elicits requirements until all participants have agreed on the requirements to a specified level of agreement, such as 85%. The Specializ process of deriving software requirements ensures that project requirements have been agreed upon prior to project initiation. This creation and validation of requirements by stakeholders ensures stakeholder buy-in and guarantees makes the transition from requirements definition to build a much simpler proposition.</p>\r\n\r\n<h4>Eliminating Project Surprises</h4>\r\n<p>Specializ makes is fast and efficient to to assess the requirements, maturity or any aspect of a project. Once the requirements have been validated by the appropriate stakeholders via Specializ, the solution may also be used to assess the project health and adherence to requirements. This provides a fast and effective to monitor the status of the project by eliciting this information from key stakeholders and guaranteeing their consensus to it. Using Specializ in this capacity helps identify probelms sooner before they become larger problems requiring significant rework.</p>\r\n\r\n','Our solution','2012-05-03 17:07:21','2012-05-26 05:28:22'),(11,'Workshop Automation','<p>Specializ is designed to eliminate many of the shortcomings in terms of workshops and provide a platform to quickly and efficiently produces significantly more accurate results than workshop and interview information collection mechanisms.\r\n\r\n<h4>Inefficiency of Workshops</h4>\r\nWorkshops are a common vehicle used to identify and collect enterprise information. When used to collect enterprise data, workshops suffer from a number of problems including:\r\n<p>\r\n<ul>\r\n<li>Considerable stakeholder time and commitment required</li>\r\n<li>Lengthy scheduling and planning process; does not allow agile adaptation to pressing organizational requirements</li>\r\n<li>High costs associated with Travel, Facilitation, Analysis and Reporting</li>\r\n<li>Failure to collect information accurate enough to support decision-making or to justify the cost of data collection</li>\r\n<li>There is an inherent “expiration date” of the collected information, requiring duplication in effort and expenditure to assure ongoing accuracy and relevance</li>\r\n</ul>\r\n<p>We have found that, on average, Specializ allows organizations to collect more accurate data with stakeholder buy-in more than 44 times faster than standard workshop approaches. For example, Specializ can significantly reduce the time and money associated with difficult areas to collect and synthesize information, such as ERP requirements definition, where often the line item contingencies are often multiples of 100%.</p>\r\n\r\n</p>\r\n<h4>Streamlining Information Elicitation</h4>\r\n<p>Workshops are time consuming activities that are typically conducted to allow stakeholders feed from each other’s ideas and gain some level of consensus. Common problems associated with workshops are that often involve only small samples of the underlying interested stakeholders. Specializ offers a much better solution to eliciting and validating information on any topic of interest. It utilizes populations of participants and is able to generate information, such as business requirements, from any number of hierarchical logical groupings which allow participants to feed off of each other’s information and feedback and validate consensus on that information at the group level.</p>\r\n<h4>Increasing Information Accuracy</h4>\r\n<p>Specializ allows participants to generate information individually and anonymously but also respond to the information presented by others within their group. Our research has shown that our method provides significantly greater richness and accuracy of data than any other method. This is due to the fact that our method combines data from large quantities of individuals with group dynamics methodology that guarantees consensus of information.</p>\r\n<br/>\r\n<br/>','Our solution','2012-05-03 17:07:21','2012-05-27 02:03:56'),(13,'Process Improvement','<p>Specializ has built in libraries to assessment the current state of core process across organizations. Specializ also has the ability to generate the core information needed for value stream mapping.</p>\r\n\r\n<h4>Enabling Process Improvement Efficiently</h4>\r\n<p>Specializ may be used to identify the current state of process to include specifying process steps, cycle times and other attributes of the BPMN 2.0 modeling standard. One of the most difficult and expensive endeavors is to elicit the steps in a process when building current state maps. Another difficult is assuring that the steps within processes are accurate as often these steps different dramatically depending on whom you ask. Specializ ensures that consensus is reached prior to considering any process complete.</p>\r\n\r\n<h4>Lean and Six Sigma Prioritization</h4>\r\n<p>Specializ can used to identify the areas that offer the greatest cost savings and/or profit generation. This process allows prioritizes process improvement acitivies in terms of their organizational impact.</p>\r\n\r\n<h4>Defining Performance Metrics and Data Collection</h4>\r\n<p>Specializ can be used to define key performance indicators (KPIs) </p>','Our solution','2012-05-03 17:07:21','2012-05-27 11:22:43'),(14,'Product Design and Development','Coming soon.','Our solution','2012-05-03 17:07:21','2012-05-08 19:32:16'),(15,'Stakeholder Management','<p>Specializ allows organizations to enable stakeholder management processes with fewer resources to achieve highly accurate and actionable results. For example, Specializ can be used to assess for project assurance and risk management to ensure that objectives meet expectations and gain consensus on such matters. If projects do not meet consensus, Specializ allows organizations to easily and quickly assess where problems lie, gain consensus on that information as well as the next steps required to remediate such issues.</p>\r\n\r\n<h4>Iterative Information</h4>\r\n<p>Organizations benefit from Specializ\'s ability to iterative generate information and ideas from any nested grouping of participants to ensure that information is generated at the appropriate level within the appropriate divisions. Specializ uses an iterative process to ensure that all opinions are incorporated at the individual level and then shared to all others to participants the ability to respond to each other\'s ideas.</p>\r\n<br/>\r\n','Our solution','2012-05-03 17:07:21','2012-05-29 11:52:58');
/*!40000 ALTER TABLE `solutions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-07 17:32:57
