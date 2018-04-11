CREATE DATABASE  IF NOT EXISTS `datalineageinmaliciousenvironments` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `datalineageinmaliciousenvironments`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: datalineageinmaliciousenvironments
-- ------------------------------------------------------
-- Server version	5.0.17-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `attacker`
--

DROP TABLE IF EXISTS `attacker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attacker` (
  `id` text,
  `attacker` text,
  `title` text,
  `name` text,
  `cont` text,
  `mac` text,
  `dt` text,
  `type` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attacker`
--

LOCK TABLES `attacker` WRITE;
/*!40000 ALTER TABLE `attacker` DISABLE KEYS */;
INSERT INTO `attacker` VALUES ('5','Test','T3M=','QW5kcm9pZA==','QW5kcm9pZCBpcyBhIG1vYmlsZSBvcGVyYXRpbmcgc3lzdGVtIChPUykgY3VycmVudGx5IGRldmVsb3BlZCBieSBHb29nbGUsIGJhc2VkIG9uIHRoZSBMaW51eCBrZXJuZWwgYW5kIGRlc2lnbmVkIHByaW1hcmlseSBmb3IgdG91Y2hzY3JlZW4gbW9iaWxlIGRldmljZXMgc3VjaCBhcyANClRoaXMgaXMgbm90IGdvb2QgZG9jdW1lbnRzDQpzbWFydHBob25lcyBhbmQgdGFibGV0cy4gQW5kcm9pZCdzIHVzZXIgaW50ZXJmYWNlIGlzIG1haW5seSBiYXNlZCBvbiBkaXJlY3QgbWFuaXB1bGF0aW9uLCB1c2luZyB0b3VjaCBnZXN0dXJlcyB0aGF0IGxvb3NlbHkgY29ycmVzcG9uZCB0byByZWFsLXdvcmxkIGFjdGlvbnMsIHN1Y2ggYXMgc3dpcGluZywgdGFwcGluZyBhbmQgcGluY2hpbmcsIHRvIG1hbmlwdWxhdGUgb24tc2NyZWVuIG9iamVjdHMsIGFsb25nIHdpdGggYSB2aXJ0dWFsIGtleWJvYXJkIGZvciB0ZXh0IGlucHV0LiBJbiBhZGRpdGlvbiB0byB0b3VjaHNjcmVlbiBkZXZpY2VzLCBHb29nbGUgaGFzIGZ1cnRoZXIgZGV2ZWxvcGVkIEFuZHJvaWQgVFYgZm9yIHRlbGV2aXNpb25zLCBBbmRyb2lkIEF1dG8gZm9yIGNhcnMsIGFuZCBBbmRyb2lkIFdlYXIgZm9yIHdyaXN0IHdhdGNoZXMsIGVhY2ggd2l0aCBhIHNwZWNpYWxpemVkIHVzZXIgaW50ZXJmYWNlLiBWYXJpYW50cyBvZiBBbmRyb2lkIGFyZSBhbHNvIHVzZWQgb24gbm90ZWJvb2tzLCBnYW1lIGNvbnNvbGVzLCBkaWdpdGFsIGNhbWVyYXMsIGFuZCBvdGhlciBlbGVjdHJvbmljcy4gQXMgb2YgMjAxNSwgQW5kcm9pZCBoYXMgdGhlIGxhcmdlc3QgaW5zdGFsbGVkIGJhc2Ugb2YgYWxsIG9wZXJhdGluZyBzeXN0ZW1z','-67f43fad92514f02ce2ab5d985ccbb34d5458c8e','03/12/2015   13:14:11','Malicious Data Attack'),('8','Test2','Q2xvdWQ=','Q2xvdWQgQ29tcHV0aW5n','Q2xvdWQgY29tcHV0aW5nLCBhbHNvIGtub3duIGFzIG9uLWRlbWFuZCBjb21wdXRpbmcsIGlzIGEga2luZCBvZiBJbnRlcm5ldC1iYXNlZCBjb21wdXRpbmcsIHdoZXJlIHNoYXJlZCByZXNvdXJjZXMsZGF0YSBhbmQgaW5mb3JtYXRpb24gYXJlIHByb3ZpZGVkIHRvIGNvbXB1dGVycyBhbmQgb3RoZXIgZGV2aWNlcyBvbi1kZW1hbmQuIA0KDQpUaGlzIGlzIG5vdCBnb29kIGRvY3VtZW50cyANCg0KSXQgaXMgYSBtb2RlbCBmb3IgZW5hYmxpbmcgdWJpcXVpdG91cywgb24tZGVtYW5kIGFjY2VzcyB0byBhIHNoYXJlZCBwb29sIG9mIGNvbmZpZ3VyYWJsZSBjb21wdXRpbmcgcmVzb3VyY2VzLkNsb3VkIGNvbXB1dGluZyBhbmQgc3RvcmFnZSBzb2x1dGlvbnMgcHJvdmlkZSB1c2VycyBhbmQgZW50ZXJwcmlzZXMgd2l0aCB2YXJpb3VzIGNhcGFiaWxpdGllcyB0byBzdG9yZSBhbmQgcHJvY2VzcyB0aGVpciBkYXRhIGluIHRoaXJkLXBhcnR5IGRhdGEgY2VudGVycy5JdCByZWxpZXMgb24gc2hhcmluZyBvZiByZXNvdXJjZXMgdG8gYWNoaWV2ZSBjb2hlcmVuY2UgYW5kIGVjb25vbWllcyBvZiBzY2FsZSwgc2ltaWxhciB0byBhIHV0aWxpdHkgKGxpa2UgdGhlIGVsZWN0cmljaXR5IGdyaWQpIG92ZXIgYSBuZXR3b3JrLkF0IHRoZSBmb3VuZGF0aW9uIG9mIGNsb3VkIGNvbXB1dGluZyBpcyB0aGUgYnJvYWRlciBjb25jZXB0IG9mIGNvbnZlcmdlZCBpbmZyYXN0cnVjdHVyZSBhbmQgc2hhcmVkIHNlcnZpY2VzLg==','-6b162951b8476a1abbe687a02ee935dbdc633384','03/12/2015   13:23:34','Malicious Data Attack'),('6','Hacker','RGF0YQ==','QmlnZGF0YQ==','QmlnIGRhdGEgaXMgYSBicm9hZCB0ZXJtIGZvciBkYXRhIHNldHMgc28gbGFyZ2Ugb3IgY29tcGxleCB0aGF0IHRyYWRpdGlvbmFsIGRhdGEgcHJvY2Vzc2luZyBhcHBsaWNhdGlvbnMgYXJlIGluYWRlcXVhdGUuIENoYWxsZW5nZXMgaW5jbHVkZSBhbmFseXNpcywgY2FwdHVyZSwgZGF0YSBjdXJhdGlvbiwgc2VhcmNoLCBzaGFyaW5nLCBzdG9yYWdlLCB0cmFuc2ZlciwgdmlzdWFsaXphdGlvbiwgYW5kIGluZm9ybWF0aW9uIHByaXZhY3kuDQpUaGlzIGlzIG5vdCBnb29kIGRvY3VtZW50cw==','-fed3b83c7bdc3ce4b5b98cbb5170b59601bc6b7','03/12/2015   13:26:23','Malicious Data Attack');
/*!40000 ALTER TABLE `attacker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditor`
--

DROP TABLE IF EXISTS `auditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditor` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditor`
--

LOCK TABLES `auditor` WRITE;
/*!40000 ALTER TABLE `auditor` DISABLE KEYS */;
INSERT INTO `auditor` VALUES ('auditor','auditor');
/*!40000 ALTER TABLE `auditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) default NULL,
  `consumer` text,
  `title` text,
  `name` text,
  `comment` text,
  `dt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (7,'Rajesh','TWluaW5n','RGF0YU1pbmluZw==','It is very helpful ','03/12/2015   13:12:31'),(8,'tmksmanju','Q2xvdWQ=','Q2xvdWQgQ29tcHV0aW5n','It is very useful','03/12/2015   13:29:37');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `address` text,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `pincode` varchar(45) default NULL,
  `status` varchar(45) default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
INSERT INTO `consumer` VALUES (5,'Rajesh','Rajesh','Rajesh.123@gmail.com','9535866270','34343/123,Vijaya Nagar,Bangalore-40','05/06/1987','MALE','560021','Authorized','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	!!\"!  (  %!2\"%*+./.483,7(-.+\n\n\n\r,$$,8,,4444,,,,4-+,,,,,,,,,,,,4,,,,,/,,44,,4-,444,,/,ÿÀ\0\0\0Å\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0B\0\0\0!\01AQa\"q#2‘BR¡3br±Á$‚ÑáðC’²4S¢%sÂÒÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0(\0\0\0\0\0\0\0\0\0ðQa!1A¡±áqÁÑñ‘2ÿÚ\0\0\0?\0ûŽ&<ÄÀâcÌLî<\'ëåB… \0F 	ÉØÎ_\\TH€Ö³†”ç†“*¿¥·ú½Ç\\qW^Ò’aèHV•(	<¢w“ükXƒ…ª}°ÚÐá49 j‰²yUù1¿<#Sï:ÈE3bžœX©JË“úBuq¾:YDKü¡•žÓS6öÅ¬!	îv“üÄö‹à‡3K©R£u€Wk€FÖÿ\0Ú‹‹s€2ŠT¥%4©B­òIóGòõï„P 8ËO“û¤¬éªÓ×ˆÅEqO@ÕÑgtÏ:¯	N­Z|Á*^”ˆÞ5iI X;Æ}Út´\n–è@&ˆî©õDv6Âš:‡PÚÃˆj‘<¤/Í<qo\\*¥ö•	„²Êª›©JQ·®Ÿì0E[¯_ëà\r—íu2QÓRTGåYO$«@Ø\\½N;kÚ&¥Õd”^W\0‹|£TÝ7Þ9ÀîWæN~î™¦‡fñé¶;Õš„ìÂó_úF\"-r›þ\0æ3ªu)´ò>@²´•zÊ¼ßçÅ¯æ-¤<Ku1øãYëòB­þHÂÊàëÍÕRÜ2Ð­‡TÀ™íl*¥iz”ik‚\0°C¤þ ‹}\'×Z½Àò‹Úª5”¾´a¬Ÿ01cªB¶7Þ\rÎ=XØCª\nqÄ‹¨!RS½Ó,ØÅ­Î:§HJjé[qæu£?[	?¦\nÊ<¦ä¤ßBTé‰?™$HŽÓ„\\RopZßµ4²ÙSëA‹ˆ\rÀ\ZØÊ@;ÄA`ŒÑ¤¡n6¥¼€d„E3Øù ôØ\r c%æ¯´ŠÚT>ÙqoCé‰ìëš‰]©ŽZÍÇÕ6>“…<¤Þøi—fÍ¼™L‰HP‚¡Õ=GqÔuÁøÆ;›šriÝyˆUâ8 íc‹rœÞ©·M3íëWý7$Â‡s-ÛüËršìLr“ ŽÇµ±î2q1æ&\0˜˜˜˜bb`oÍ$øbf_ªŒ@ô\Z­×aQ\"P ’ nÞçÓ¾ØOM\\Ë¨p\n…¥P·\n’$ô˜ÒòÁÇyåï¶ˆBH#“Dþñ¿7ÑFëTú)Z@\\ˆÔ¡oâQˆŸåŸ®:Y‚}Fï!NnË$%O-ZR™E<ï¨F£ÇÍi#“„Ž$<Àv¥å7N•@BH•˜ÚÀ\'è/=ñ£Ë‘á¬‰K®(JÎ©¿)¼É$v™·55ž\ZA}S³ähÒ\"Ómøòƒ¸ß|TWn*N¾·<¡Ït¦	°&¦.`	¸åV’9ŒfÚÌR„©º»˜SäJì¿Ñ7°Û9iN:^®V†? Â•ÐiéÜŸö±€ý[%2ŠJi‚¥(‚GÐ\\öÛ¾*+Š\0\ZJZpµ.²¥UÁ>j*Ö,7ÃÆÒŸuIe*¦J•e’î£Þ[¾žŸ‡¦ÐÕŠwTÆ^Â\\P_qG°\0Lòp.càkJªêüg…ÔÒ5)°‚?ç\"á~¼[t…jæ.©ÈóiR´ñ·áûwï€)òŠw\nÃA\\ÏÐFêì›ôÁ¾Ïæm­kðrãáeù©6ëŠê=¨ð”¯-Ð‘±ØðL\r½1”µUÂoøÖQ^×‡áÕ©ËùP¯ÿ\0˜‹ÿ\0%±ÅNh\\M}\ZŒüÊl*ÛÜMÀ=SkZó‹)“GTG‚ò˜uFV|Ãí&ß\\4yœÅ¤	lÕ#€­Ï¯cöå\Zë^Q—Tµà PTw(mÕ˜3“Äž&ûÇ8õ0²âkØ[+›¸V&n9\0öµ­ŽG€ùÒûbñó(‘ê“c¡‰Æ/.ÔÓ ¡ðšÊU|«OÔ‰Q8EÆ¯pt õ(mh|US•:ŠŠ‘mòª×ëôœ\nîSIQ55—SæR5F“¹‘ºGY°\ZåyYAMMµ4 JØR»;qšÊQPTë	µ@ÈIQ_Ì\"Aô‘±ìqI½ð\rfLÖé§«*f¡\"Ê\0¢9éÞÑ>VÚY§(uõ,%Qâjº.\"LHï6ŽØÍ×„T¯ÝªK/åtóEˆ´Æÿ\0~*ö{5©¢pÒÕ\0g÷KQ:Ob 	c<Roà>Š…æÛõïkc¬R©L$h\"÷ºOØŽ,mÞmv9ª˜˜˜˜€˜˜˜˜µ¾ ’|ÊØÎ;àU-½.ê€Î­[_åa,&ÿ\0[à¥•jŸÄI¿hY·|(ÏZ}Ä)#BÉÔd¤u1åž€ÌÀéfïµ{]O¦¢¤4ÉsJFä\0\0É\"&H·œ­fÄæM9­¤<¿YoëLl“àŽØ]@êÐÝ0¦GïÛYÀ7SŽ³:×ªµSÒ%Pµ…\0îc~ÀS\"¸§§ˆ¢ÌZCÞ\rVâÿ\0”L&×Q´“üý-Å5JjšJ[õO\ní° mÏ’6é#ò¶ÚÍ%\"B K¯Iß úó=¯2\n¨«ZRZa	UA´…N€yRˆß°ï¾*+ŠzyiY§u.×:^ªWÊÞá±#oª±c´¼‚ãî)TàÊZl¨©Ã¬gø|½\0ÄðB²íB’óäJeD™àÅÿ\0<@ÄV>ß¼UÕûªJ¼©Q;pBSúZzà‹‡¾PUšÓxëÒ¥û£ià‚¥* \\åï}ïßÐ×\0€Š½nAýòÂ‰\'­¯í,<SDÇ¼/ÿ\0uÍJ*\'øcÊúÏntYufú5½VŠ96l z&0EšëÂðh\ZÌ”£©Ä2²›Ê¤m±vØÎýñå=={jx©i¨øfB’î“´é1¤¬›ïâ¼ÑŠ0T*ªË©JvH^±µõ%E\'›@ã¥óÏ¯,)(MS¨L…hp”ž\n¼ð¡½€O¯\\¢¤qÊ|\0ŠìáÄéMnZRÞÁm…>÷ûâºzdµåÕêL]l¹ª~€\\ÿ\0—²\n—B)s&^êŸIQ#õÂÜá—UûB… +gÙÁî”‘?q‹žµèñ \Z7T\\B\ZÌÚ+IýÝCd‘~¤}7Ä£aÊ$¬Ò»ït ÂÛëGqLì‚B¦’¡·ÙWÍLáó°T· œ]F¦Ý¨wÜÖijPOÂ2Bù;Å¦w¶ÂFº×£Ä\r^J_-?CPPðOî‰²âä¶£Žè^f°xÖÅKJÔDªÆnAÜ$›ï\0	|%¢šÇ‚‡øjô\\‹Q±c=-ý°Oí•UNøð+Û>E‰Q·¤ýp‹^à{R©pSÖ6âv°¨ÏIçfnS$\nZ§•#„™Isºx=\"û`j5»V=Ú±¿\ræÄ¥Þ§ˆàÏü™µY¥XüjR‡Óvœ¼+Ó¡\"Üß®\".Á©§¨ëe‡ZÔ¤•‘eA´ñ#¨ëé†Ô¥0t¨‘\'}ÇQ{ý2>Ë{D´¹î•P•¤Bmª6íqý9›l)Ô¢<à	6\"l{Hƒ\\_s–bbbc\0˜á×A$ÀóïÛã—T@:DžÇëÀÿ\0—ÅL@:Ö‚¦É*’%)óª‡ÿ\0ÖÇ¾2ùÃâ¡kaµ,5?Ù\'¶”ŸÒÉëEKN)!2‘#Î«ýtŽ\'©6ïŒNe˜:ãÞåF™I¹$ÿ\0húœtEq«Ü…ï¬:¤ÑÒ¥IBQgPJd\\-<y»Ç8.´ZrŽ‘e	OïŸ“Öàû@úaåaT\n:u#^Ÿˆ«Ïs}Ié„U4Ž°‘GJ­gâ¸$Àþ%hí‚-u¯GˆÉêP§E5 ZF“.Éµ®¢6íæúDœJÜé¶Bih\nZ•ñ’¢w‚.zùckZqh¢ÔÚ©²ò7‡ß?¨¾¸&«u*÷J¥K\nøµ`S¹ŸLT´ãÀÎjX£ZIJª+”›nB$nFÃë¦2/eáÏñ9¥B’’e(¹Zýå<Eº[š¬Ñh%ª4!êe9óäô{œ$kÙ•\nŒÉä8ê•ûµ(Àéh•_(ïŠ–¡õáõ\0ymCÕ\ZÆWKîéï¯Q$ØÓslK–ÒÒ|\\Áç*\\€Þ•“=`ù¾¦5L\n·Vt„RÒ B•ß¢FUæÌ\rL%ºŠ”þV”áôbÿ\0ÅúÔ!~¼\0tûRÈ3M•¸¥+Ë%¸‘n`ÎØçß–T¨É„-$,è¹°[y¶pü”0Í3Qå.‚õ“ Ç‚ƒ8\'R«éÒ;OLD´“Ê¾€¢§Ü[(qü±Ú}&BŽ˜=Š^JÕ—Õ$y©ŸÏ ;“µ±cg(:^iŠ–‰¹Ü‘Ú0ìŽ†­Õ,/Üªò¤dßÔG¦jº×§}AF^ÃN<RË”u?ôÝHT(ñ«Uþø*¡ñ\\ˆS5)>J”jÒ£Á¶ÓÚÒ3‹+óêÊ¶šö[ªblòA\'Övœ^ªÜ—i–šº\'nZ$•\"xÞÑëôÂ5Ö¯pwONjÀKÄ\"µ±,<“gZH±žøêÖ!i©\nfµ•]ÀQíÚ|ßYÛ\rV‡\ZJ(Ö[}‰V…(ê\n–Né›l:öÇ‰yuÌ†ÝøìÉ@¸ÔFÆývý{bEÆ¯pQçjZ•E]-¼‘¥L;Üõ8¾©·f’´)!GÃ|ñ~»Ç= ôŒzÍbs i+ô±Tƒå\\iTˆ\'yélvó)¨ãRš–ÇÀtÛX‚{[×`uC—Š´øRš†’BV?‘\ncÿ\0ØõÆ‹.`\"™(SÊV•F½ˆP\\G W–ü[lfòä<¥\nW\rÔ2<®\rÔ\'¡ÜöŽfÛ‡<3)I\\ß¢Ó7#¡)àÚm1|T\\;\0ÌLLLr)1UI\ZL¨¤EÔG×â‰_˜ÀþÏêO}ì,&Ø¶qlò­Ið[e*Ö±	dDo)½=cÚê†hÂ©éÉ]Cªø‹È\'xP¸ƒhNÓ×\ZŸh³ES3¯ÊU1º¸	kÞäÄEæFO+¦4m9]T5Ô8~\Z=vÿ\0\\tu©4”H¤)%uŽ	\0Ï–y#`\01\'ûá~z<&UOLT§žWÆX*$u‚Ÿ4O–ÝÆó‚ÝÍ½Ñ±Rø;£åäþT¤p9\'éy(ª[)IÐ\rmU‚\"{ý/héßZëPÕ @nŠ’Tä|w0€w˜:Aƒ¼Hœ©¸÷<¼)-ÏÇ¨HV¢v±eÚÑÛgh]9iÔãÂ^poè>ø³-mÆ(hÔ•:L¼èŸ.Ò&oO¦µ×€vµ·F£KB•9T¡*qW	ê`yB»÷=ð3t´m/Ä©uÚº¢d7*2c¦å=8kFÌ*VÚÍ\0AGÅxþæO¿8IETi€jˆ&ªµÃñ‚B}	Þ6þØÕ›X_¯¨=^”¸·ó7 ##Tia6“iÑÈó\\,gÚ€ú’Ö]–!mÌëq°oÊŒóÜ™Æc6 i§Êó\n“Tùÿ\0¢ÜØÿ\0¦#°Æ‹-w7©ižºzbHÒ‘¤”÷$ÉõÂÍ´Lõ_s¦èŸyI­¬‡\0•`-\"ä¯Ó>æD¦Š<GRøÆ©W`Nø#*Èê[¨%¼µ†ÍåÇ¯W¥ÅÏ\\çµL­~.R×…Â¼9‹nH0¯ÓKUÜÔdkp6îU\\µ„F„(éìbàâ:âç³zzÃá=D¥?@…¥CuÏ®æA…ùrijJ*2÷SIZ•y™T„«´ƒ\\ªEED©I£ÌSd˜ 9Ôï~«­zåÓ9OáxEUÔ—ÔÚ¤©¾©>½ÈÆ8k+J¥üÕ\0“ñ©‰? àÁMäZø1Ëë›Å§)n®%Öò¸:Žâì„-ç‹ôà1XÑø´÷cÓý0ýWZôxÝ`5jðë\ZL­%p.’y\'{ï¡Ç8ŒÆ›Åe^\r[Ôà¼¤›k>ks\'ûIX²˜Ð‚—tÔ47 o8Ïf™›‹	ÌèHJÇïÛOMäÐúb\"Þ—ëW¸ûY”#1‚Òô×²Ÿ:@QõØýpR¨ÓYAr¦êé‰¹ù’fýôóÛ‹@Å4Åo6ÞmJÿ\0Y‘\'½§ôÂŸiëSÍæ„“ñ’€âGX±žAã+…òÎ e‘Ô.¨k^¦ó\nPw·ˆn_÷Æë&Ìš~›XR€¸›¶½[vHWY\0[åÂLß,bº™IK…üÛ[¼‰A×û*¤,8ë@%Ù‡ZØXÜÇ\n)úOlpíä\Z¼LLLr)0¢:•¼)sÿ\0Å$^Û[’oªpvqPX:LÙ)˜·Rw¿lnÊƒ5Y@}.Ô†YÛVÙ?‰@lß¦(JªuU**÷vÿ\0´¨‡0>Q›y§gáÊ—š£AøI‚òÇ1Ç××¾òžZi©ÂmªÀ&ÐO$ïúwÆ¢ãRiºŠŸ~q$2Ò!¦ÈÛH#Q6öç©_P­u+S¯+K(¼X‹íå· ¾4n¦® S¡_\nœjsH²ÈØ\0;ãÕf •(ûžZv#äNÚÒÿ\0§|#]j\0jYu2u\'ÎNÍ‚/µ‹znqÏ»4Ój¤¥Ö\\Y—^H$÷ ‹›Û¥º`wk\r#©a;\\÷Ì½ôêØt\0÷¶9«yÚð,+USÞg]á	;ßîxÁº·P(ÌP|RQyHÿ\0PNà|×˜-¿¦y†VÀg-Ô–µC¯€©W^äo½­;_ëñÖ()Ê.ûÄF¥˜“ùGëŽÓLýB=Ù…¡ªuÝêI&Om§ Û\Z³jºðú†Tå)Š\ncVýÂßX1Þ?Ûæ9}A	]cˆjœ\r¥ù¡jû_ÍÔa^Qœ»ãû¦NÚÈ#[êD“ÕD“¼m¾49•S\r­)	]eH\'RÂ\0ôóH¯®	o.í÷GÚßp¨XRs7T y÷¶ËÛ®KŽªŽ¹šI…%z>(éæT›[ÍÐçL­CZòd!7*2™ÿ\0ld™ÌòGVBÙz•[%h¸Aõ‹õ¾3fÒÂæþÀfÏê	o1¥4®ÝÔ6 O|tÎd…j¦Ì›$À-Õ c…-õÅÏåU	eNÒÕ#1§üM+p=œEš‘E©\r¥tŠ4S.4zÞäé‹ú®«>ù¹iq	b¥Å…4µ€Žºtóc×Ð–ÞÖ±¬ƒªÖ}’˜11{^{à¬¹¶iiR—ªÔTÈ»Jà¼Zø_•1¢ ÑÔÁu\0®ãÏ O=1cžµ{ƒ¬ß6Zs\n	\n	)©`Þ@SÕQ@O\\&Ë´xÆ­¤Bò¼7‘?);˜ÜFàãMAFYwßRÜ«Ã«díñGLyžŠze»J4ëGˆÑ(WÛMÄñ½öÅ³kõ«ÜÒÒše¿HÊ¼2¤S¨ù‚Ò¨*‹XŽ—Î2^Æ|«Ä%tJWåX;ý\rç¶ ª.S¸~=’yRGö)ŸHæm¯¤£¢Ka £Mb¤$ü–TýSnÇ®mB³ëGÜäY\0Cå¥©E°5Ó( ‘ßI6ŸÌcœ1Ê©é§ž@Z¥ÄÏÈ °uFÐy¸øqÞCVË£Óï´Û™ID Á´ùJÒ÷¼$-^U¤|ª\Z¾nÊ)¼^ö“¾\".³êë’‚åÖ¦Õ¤\\5	Tƒ0gþîø˜)eÀ£¤$¦‰‚\räìdc×\ZKj‰Êy@_€)vêe,nNÚREÌm“Í8)ÝR˜ \'ñx€8¹Üýò\0Íó/wiÇ¤Èù÷‰´’wéhêO;7)º)[nš*UC½®V’€FÓÀ&7ÀYHËh”Órª‡O™C’lcñXù~ñqfžÌ2´×T¸!Á2Eôð\0âÛ¾dÔ%çÌ*T˜I>\\„ÄùIŽ‚Ó<ãqq¨:§ªN[HØ>zÇF ŸÈUÉ¼sŠèœ4t®½R¥.® Â\'sÄ\'<Ód´3ÿ\0´*ˆðÛÊ¢o¦ÀØ&¯UeKùF€Í=› ì-Éæ-&Ò7Â/»úX¥9~—\\6bø„$	ðçžÝ>Ž-¯PBLµÕUŒòn`ï}<p t¾*ÊëÞÌÁèÖï’™¢n€æÛž‚Å¶Y–>Õ\'„V\rmJ‰ZËi;ß{ë‚+îþ6HÊÞV_LGÇ¨=¾`°»Æ*ö™¦Ö×º0•·FÇÎ°™\\•u=5Eþ˜¶º¡~ Ë2õêQ»ï\rÉäHØ\rÿ\0åíÍòëhËèKm\'Ä¨pm<ÉÜ‘ß“À°Yµ_ª·0\'ö1B­Å6ÂM=):ÜüKìLó(Æ™Ìéo¶¦2ÊA¥6)\'©›S|e2l¹O:\n÷l¶˜î«x„rEµoéƒksJÌÁÀÆ^Kt¢ëu	\rŽä‘°è	\'©8¨¸$e?öuÖV—+ë=åÀuâ.{øŠ_@N	]jaÔærfä-’™ž È¿yŒVÿ\0±9S\nŠªÅ­Ý0¤•§{_åÕ>§œŸf2„¨£ö« o º O@Së8‰CÝ@!Ìý“r„·˜e)æ&JFépÂ¿2Lµ™°Ÿ„³¢­6ˆ‚¨ØÎ;“«+kÞ(V*)—w¸)ä‹úÃ…Y&J’òÝ¥_‹MP4­ËJW%;@8~«ªÍ¯ 8½MNòXytU>f	¸I^â}cê(§¥÷’ý%@(¨¦Q[*êLlž²\0ÚæüœSåÊ«aÜ±Õ™jSSxé‹MˆŽ,IàaÂòÓ[N*|D·]G ‘bB\n¾¶¤s‚.ê÷yýZÀm^\Z”áB›© ¦ÃPëºLã“e.:*Û+*E2u´£ÁÕÿ\0§{cIŸfÊK´Ùƒ.(´ê‚*Mµ\räaÆa•%k©iµ!\"±#\nE† e)$~[O\\,®Ë:­ö;1qüÑ\"¬ÊÛ-¨Å|l=É@iúJ¤¬ø…4¨º|ñ#°ÜÇ	_aÊÊ4¸\09zŽ´‹(é6=H\"yào&4ˆÎÞ©§£ÌP’Û…/Þ’`OÓõÁ--Ý³êU•Jr©šºsû´èy6ºf÷N÷üÂ9‡\\¶´ªeå›¡ZíØ+ËÀ[l\nÝ*«PHO»Õ¢I›^>ŠôÅÆ³QN\\¥Y”¥aM¬ü¥²­§®»ýñpíä\ZZ!Õ©*ÒŸ00•@µìdÿ\0›¹âj%:J`X˜ƒy6qlLX¸‚?§Z$«ÇA´¨ñm§{˜Üà*æØ(qN¦P“©J3r7ŽLmoAƒÞ™O˜%3~§hmsõé¼Œ7¶®TT¼(™10W%7‚Næwéhr‹s˜Ëj•™Ôü¥4­Y(HäþÝokN;­¨Ecë¤B)›2âÓº”@ÿ\0Ä¦-]ZX\reôFUoÁîgkïlsUžŠZj­Z?™FF­µ¹é6I±}ßÐQíKMÔºÆ\\ÒT\0m;7nxž$®Wšu<ÞZÈ>êÌ©õ§u(u<ßËþØ&²¥ÚJ&€RE]Hù¾e*v¿:nzEÅNZªv[ËÒ©ª«V§”ÐâwÛ\rfþmNh—ë\rJRSKF˜m<”t’®˜”Ù“­Ñ½PòI©«YK “$Ì~^/b-¶¯Ëéß¨j… SIN5¸à6R¢LžlÝúaÉ÷wPkÖR\Z¦\Z\ZòÄDLm;“;[WÝýße(^ÒPP\r}IÜÜ¡\nëÜ‘ÇNØ™Åˆ\r2”TW®¥ÎJwÜ§óFÃ¶euT)ìÑ&àxm¨«¯O*ol.öv«ÞU+*$¸uÕTLm¼øGõû`Šïn`|æXŠÇÊt–è)„)|*ýdð‘×œ1u«h5—6\Z§lÀV„?˜IMï½ï€37TýJ()”„Q4N(Ü¹RŒÉ¿¼ëÚ—êMZ\nZLÊ’uŽT*Ì’N÷ÅEÁ#¿€9Ìrl¥Šñ5K#ÌµkIÔ«Z«ïÓ\n³LŸ$®¨Xj¡hqIòB†•+ˆ“cëð{–S§ÄÌëu»0´6­KI8kCìVBù(eåèÖ’W#­ÀýN2ˆ«„ªüHe9sÙJÿ\0Ê¯á\n\rµnbE¬v=0“Ú<¨Ñ-Ô\nX¦qPâÀpcƒqŒkh}–ªyf’¤xim\'Á¨A©2,o=>÷ÎeÙƒ¹SîPÕ$ª•âR—H\n\0™\Z¢ó}Æ,V8ï7ôÛgËNRç4€èX‡ˆ½Äú‰ÆŽµÔ6âs\ZZŸ#èé1çzBˆŒfòÊ…åõªËjÀ]GËi\0(JH·ÜaÎmB[¤©ÊÃ¡E)ñ¸’ny´bÙ\\/ÖªîêÛ->õN^„…‚ë\nüÄÁÆãdè¨9R ª:‰^¯˜$\\‘ÍíÒØËdÕjM;UD¿Læ•¾’Gè/upû™ƒ¬k†«š–Ì›òõúâY\\;gU{íustuŒU²€¦kS´Ûõ¯Sâ¼™ÖÛ¬ª¡}¢X¨V¦Ór=šGKc=“d/*Ž²ÙRéU­	&ö2\n{3è#œh3ÉOåŒf-\'ã°­$òªâä@õÂÊ­Ý¼½¢§K^-”<È	\n°2·Óß…ÝX—¶LÚT•Y@yJ‚ý~P®–­žçÄVÒf4ÿ\0#Á!à\"Ókóx?lo©hÞK…Ï*BÈ0vù¸;]9ÄEÃ·—°bbbc‘JZ<¥J¼tHäž&,9¹‹N2~Ög%TÔÈQyÓæP™è{ÆÃ¤XXcYRUhP¿â?„_‚~»c^ê¨ƒŽ)AÊÚƒHü\0Øwë±Ñ0s!M#ˆiÖ©\ZD»¦jü€=öž\'˜´µ¿RàšF$!;ëW\'©›\'¤[l›)l¶Õ*\n¨ªó8à‰:»ô‹Û{¦¥£+mr„\ro¨?¯S<ôÅ‹¾oè	ÉªüU/2¨lØÊÉHæy$Û®çŒ\'¨ÌTÕ:ªh\nª¥Ð3!sÇlGl0§¨n¶µ)JâŽŒZâ ¡ØŸ¦Ì+µ;˜U\ršføûs÷´öÅGŒßÐsí:´SeÈ?â^òÇBf>¼õÐcœåP¶²ÆÒÃ:€ºÔ>c}½Unv¾9Nz¦\ZMRüÕµ2I	6ô´n{&×“MHX¾¨|B\"P’6\'‹uêNñ›ú†gJåmj(¨„0Ï•7”À>uŸS÷Ðbüæ‘1îtVÑÿ\0¨xÛYæz\"xÃÿ\0\0Ð2Š*r“ZúA^‚&\ZºFÑÜá&q—’ãyjW\0|ZÇGÜ¤ž‰y8YË´Û˜æŠa4LRR.]¬ -Ò\"R×à‘°à_ŒJª?u\rÐÑ6•¾²<WJF©?,d\0<×¸\0aM]S,­ÌÁ2 Ü1FÙÔjŽÛá£ª†‰uz«*ÈC„›´rmp¢ß¨ÂÎ]§WwDô,åtnû¨auÕFu+L§^ñ&ÜÜßf9nZJ=ÕßyP(”¥\\\rBÀÏÛj2ååèbšj­ª\0,À>\Zj3¸Tz|iÌ¥-ÐP„-a\n/Ô¬ˆkób$o¬ã+~“nàg}¦£¨i¤¼óo0šcäPZJR/Pw;\'\\uGVsœ¹ô85-Ã€þx>ºRŽƒóhji<6ó0Š†Q\Z\ZmsècïßŒûÇ ÍvJ¡ä1(H\"	ìx8Ú,ZÍý¯÷\\­%%54aRw$ ˆ›‰?å8SQ›kn—4Re@–Ÿ¼L	µÇY{ï|ió\'W–ç	P\0ÒVˆ1«õ?®ªÉ¼:·²ÕîuFYXÙ˜{+Êyúáepö³W¬Ášc.muï4“©ª¦”¤®DÀŽe¹b¿gS¿\'Ä¡wâ¾€d÷ïo¦ö[$4ËÖ+PG•ˆþ/”œk²ì½,ÖWÒûÊJªÂ–€H (ªHÛq øÁ0NÓš½ÎiV¦³z:ÆÏÀ¬@BºmÎå•\rc´žì¡NáÖæó¿šÜa~S‘®¦„Ó:°‡i”@µÁR¡Ø@ña3Ú\\ÉI¡b±O‚ç˜ó­:O}ÆQpí:½NNß‰W[Bò`‰dÏá™·\rûIÎ59\r)j‘¦Ý\nQJã™9cÖ½­[ó˜5T™‚\\øA\08Ž@_Êc¡:…ÿ\0/®5¨Q-¤ø©2¡´):¬:IM­ÎÝ0L»N¯`‰‰‰ŽE(z5£ÊT«Áá\"ÒIÚx™<IÊ¬½”8õUH”¤\0ÍúÀ7<„Hù@\'Höéói·*<	é½…Í¸™ÍçÔn)×ÞHe‘¨#¿‰¿;ïéŽ‰‡Ù\\ûe•\Z%ÊÊ¤lÚLGÚÛIÂšÚsEJ´—*êÖRO*“xè›^Æöˆ$¬¢·Z•™T,†Ñ(a5­Ú÷ÛúÅtu>eVà¸a£øAÚÇ˜¸ûãHñ›úõÔÂŸÂËÙ‚ûžj…ƒòÊAàuëU×Óºµ<ìŠJo*Þ«˜êJ·=0e-3Tí¹_Záñ¶Üùˆ;_¸Âœ³-Vc5)ôL•1À«¹›ž–Á2æoèû><w•šV5¡´	h&ÖH.dl=O³Jñ^Ì«ødËI7*$ùMÿ\0©õ8ó,¯Vjðn<:O”jÒ6\'“\0œ\rA™?˜V-%^4•Z\0JvúÀ´Ï\'¶ñ›ú«JhÞ{1||w’}ÝÌ1ÅÏa°¹‰\0ªC~íB”:…\ZÌÅr&ê$4ÜI¼_ƒ¾Æ®¥šê·+êE †ÐMàg¶:ög1]jªs7„\nyØBA	äLÜÎ	êmÜj²¶=ëÂJJ›ËÚ±;)õÁŽæcì;cÚ,Äø+qn*¡ôŸá>Yü©Ÿ5ø¿l1ö/0ÕP¤¯N„>úÄµŸ–ÿ\0Â?¯¦3™ÓÎ\nzÊµ½­Ï	¢™ýØ¹Ž‚-…œ»NjÚ­/´~ìÍFcPn:²†T8Â@þ¦8w_U˜û½=!B’írŠ·™HZ¢\'ª¿¥ùÂ¼ù¢ ¡\'Rh< yQRG Œxõ~\\šå¬©ÊJö†ì~Éã1¹zN ×å§Ÿ¨ÉßJ¡XQ7L±úŸ·¦.¤ÊFYUF­i[*>iº‚co ‹`i\ZKy¥xZP—[Lªn¨Ü}ˆÁy¦bå>d´êíT’<OÊvôòªzZÝñ,åÌßÐ/Ë3&ó´!	ÕQJ•é\'‚˜	žÊLÿ\0Û‹é”*ò¿¦’­I\"\'î:t<á?³ùòìì¶UÏêJ•ó¤¦cèOê0ÃÙ¶ÑK˜UÐƒ¡·’CK&RLÄo4 ‹7¾-œ¹š¶ ¾©iÌ©)kÈÒí<¸¥à#ÊOÈ¿ûAJ…=Kš¥0…‡1e+æ¢ö8Ø0¤ÕVåO¤øD/M¢vƒ>“ú}JöcMM^VêƒjmJCj\'ø´¤_4&ïág.Óš½€ò·3M>j<E©­(PÛW7Úð1—öb¡tÕ5YcÈ+mÂKa]Õ¸ëù­Ó²FQWJºG©ê!å&R wsåÚÑíjE+ì¸<Zu€³ *€“Ô‰	îpL»N¯`9ÿ\0éÝCŽ¨ë•0 ,PLÁëx#ëãf€Ò@h¬y/å:÷þP¯5­Û*êÏ¼SU6¤–Ö€—“iDèQæ$(wÓmŒê(þAçÞ9tú˜‰#s{mŒÆ	ü^À»ÊR÷Ì˜L›ß„‹MúíŸIÆsÚJ%TK>\Z’Æ­n/•Æé\0õÚM£¢@\'CP¡©\0¯H&ÉågÖÉëi´ufÊó¬€¥G•¤nfð›’oyÚ:ÙÁ9›úC)˜)%KIE(ƒÄˆ\\“ÛŽ1k êÌlŠvÿ\0ôìr£Â£¿í‡™­-3)gÅ\\²€<&A»ª‹rOé{á}2¢õUsÁ¶Óò7)> DiÕMÄÚ1`ï›úó2ê5ùˆ)§BI‹_J@ÜÞ8_]Zölà¦§oÁ¥lì\0\0ª6ðÝï7y\0¯Â¤LéWPæ÷QÎÂqF|ï“öv^¥\\¼éP¬@#“‚#¾oÅàõœÇÅÓ–å­Ê48ø<n£1´ýàa®vÁi¦òêV\'ÆWÄTÁ‹J•ùy7àM°©/&„\"‚…J]SŸ¼ZE‚Žçi$\0L	“x‰[œŠUDÃ…ê·IñÜ6T 3qúnpDÃ™¿\0³1ËY¬XË)N–šHñVêNòyƒúú{Rûk@Ë(ÒCmÝÅ“óFúºI¹„L\\2l½9SA	W‹Xø³`ßQäÈ:É½ Jú6i)ÍX]eYø«ü‰W~\0õÁ2í6î?igC4T€U\'ÌêHùA}D^?-øÆ?Ú–ESu2!šIÔM¤’\n”må›žlg{cM–1LÍBëËÉ÷fðØJF•w\"Hú«\'´äÕUŠ#Å¨x\0få:®\'ôúag.Óš»»f\reDÊóÒ$ª„ô>HLuÂOþ³ãeY•º5‘½„Q‡ôŽ3›åŠPº©BV£°à[ŒFZËs×ÐTRŠ„¨k\r•GÔâ¢ÜœÍ_ 3-ÊÍnNÛ7uúb½&n’{¨Lî\0æ×RQË-];ÒŠÆQJwT$Ï¨?L	íõYVbÛi]^¥‘`¢¯˜s¶ãûOHi*›Ð¸VË–x$ÉD‹Æü™‚-é‰g.fþ€ºÆÕ™Ð4šqª¦šAQ±\nL[üÂo<wÅ®Õ²óZã#ÞéÎ—@çdª}RÌª¥Ìhà´´’ú#RDIƒÐŸ\\.÷sGR·™QUi>!-(Ìð\rïcé…œ¹›ú	šæ-­ÚLå ­¥à82õý0_´/S…±š!Z[+-8‘²Ð£r{”Á§|•åf‡0]3…>áV’PË&6›ƒ;_žl@ynPŠuTåuN\0ÍAQ§Y?*õ®ræjùœí¡C\\Þ`Âu1R\0t€$I>¶?CÓ?–j\\oI÷zéÂLÄ§Ôy†(ö9Ô=”U…!*JGçLùTG‚gˆÑåœÑ­ä­ö ¶²:®Ì˜AõÄL»N¯lÁw°´®³®– j-†³yA;~‰?~˜ÔÑü¿.‹ªSßQ“Ü&yœ’Öaj:W¦ox:”…zÀÚ.mÈ<ú÷…ucÔy‰¶ØÊÿ\0Ÿç—°/ÄÄÄÆ\nTá:“	yQ1ßROM­¾Ø[˜æa°¤á’Û`‰Q™ÔFÀM÷\'ëlP¤êD¬¤“dƒóMÌokDÍ°‹=¨e€óáEO| È:IÙ\"ÚA~`‰Üc¢%ßfA22ÁH}ò±^3ÄN’~S¸JFê3n8a…<…Uf		n~é2	þ¼ÏlAGàTU(»Té–*<ìT\ríúa®eXÚi”õsKIŸ\r•p‘67äH\'ŒkóMæ\0sŸ«>”ÒÐ \rn\Z€àXHŸMð.Q¶•{–ZÁX\'ÌñTú*bó¸Ç¬Í–†Š¼\ZmÂotŽLÝ[nm\'æÙÓt¨4Yj‰Y?ñ;òÏôÁ,Óy¿\0cPÓYwÀgâVÔ5Ì”“;\rã¹¯\0Òå²)Vë¡Ö8¡á¤Dl¨ê\rí;87\"Ê\Z R]uj~½Äù*’$r\rù¹WõÇJ¦iuÕ¯x“JT“ùSh¶Ò6õÁ¥6îyU:¨ÛUmR5Õ¼-¨ò~D$uëÐafe–¸†‚–ØU}YÒ‘ÿ\0´ßaø}¾\ZÑ¼âk³R™NÁ7HáZw\'‰<‘ÌcÒ“V%zªò56JÐÃÒÒxº¤à‰‡i·p3µÙA~©œ­±þ™!O¸ê>c^1O´Î9YDß†ÒZa‰m„\Z“1\'ë$žç:f›—©Û©¤§UCœ\'ó\rÀ°Õa„µ™+Õªj€šF|$—Oâ\ZFÝ4ïêqlÝé6ûZkk*Z¬§XšªGJšTA	@ˆùLDÎúw›7¡(Îh\\I	n±ç*PH¾Óˆ= a^s]SJ¦354ètü:„èPJ€æOÅðÉü™º•Ç,|!Ý¶¤ò	6O˜ý­Œ¢*&ÍýÏ×)iý—™\"T!ÃÇ—Ëõ8A•¡ìŽ¡æjAzéÓ&Ç¡§Œj“™³š2ªW•àÕ„é\n$\0µFé<ÜM¯cœ%¢ZVÊ²ŒÍj€Kn*á1µÍÿ\0Û¶-òÞoè¦ÌMéé^XøøNpB#¶äcÜÃ5÷%û—„§ijðÖîAý/Ó¥ð¯Ùê?vpey‚ƒ”®	esä:® ›oÇ¡2Ò‚¥„)Ü¢¡kIDø+t‹¤‘Æó´vÃ4æoèPQ%:rÚƒâ+J—Nê·òñc¿Û¸Â¼÷*r®‘hZ¿Q¨©0x\0€®ú…±ë¯¸—Ú¤¨Xm¤šgãÊç@Oæ‘ö\'ÔUžÔÔ†S\\‚´Ô°²š†Äü³\'¹H2DÀÒ@ÛË™¿ 	uo×4Õs	(ª¥”º:é‰oq\'éÜcgûU·)\rc\r%kDêHäj•qÍën¸\\ÂE@ÌYx]n^j7”PHž’\'q†™M5;l¸í3©4Ï(©Kt™ÿ\0Ä*A-cÉÁ2í9«jYMj_\r¼”yVÜ¥|‰>dž›$÷ƒ´	.Œy~MU)u=õTó8¢†ÐR–ˆJB lDüÃÐ›Çæøpv0«t\nLLLL`0BœÐ¥¥ðÒT$ŸÌNÉ½í&;˜áv¶ô¯ã«q©z…¯òƒ\ZGåòù®9ƒŽ–/Ñ•H}\n-¶º¿s!$ð‘rîLXó¶3ÏeA¢ªœÅhuÁû¶5\r qnðzÜÛVæÉj[ä	*$¿™Sæ?æ1m¦p¥ôÊUMmYuÒvEïÐZ;Z\"ÛÆÒÍ4Vî”5UÕÅm¥¤ÒSé×¦ü8-ªf‰%š<z‚ \rÂ´ÿ\02€²d§ûÅVhæ”¸ªjd	“©B÷1æØn£\\XsL²‘•³Lû…fêq¹R•×Ì søl|Í%’ûy£¤Ó¿­Hñ«NÀü¦ ÂG$‘ÚdÂŠŒ¯Ý’+3ã¿«á²•ùEøBAo¾Ë³ê@÷f–Ê¢Ž’a0eVL’z¬‘;_šJjFÔûŽ½Rüi•˜Ù2,™üIäDî0K4Ñ[¸fÓ˜W·åJ~ÉºFžUÔ’#¡›ÅNaP\Zp©ºT¬Ãmš Ü“}­	…ÅÙ5.½R —WvÛP%,¢,HˆÕ›¾fµ+yï”¸½6]bŠÌ.·	í‚Y¦‹íäÊ©¨Ðû©KJ{Ì·‰uSÄG•3mÉ3ÆÊ}›ËÕIðÜqÎ—u,i#mÌ?|\\œš†-Å¥ê·Ó%d…£ÍÏ’ÓÖqíÍ:Qá¦‰òÑI;HïÏéŒªGÐ´åE+ZyºÊ{˜óÉæ`pL ÷4?Rªœª¥´8”ƒ$ÔD}Aça¶‹Ú,¦™\nZðá’Ü.´zÎ¤È2Š·‹´ÏºÓ€j)F zÂm$öLœ_Íù^¯\0ZûUëE;ˆð+Ñ‘)¸¼¤Ç˜MÈ1m „Œõ/)ÚlÉ)f¥³¥š‚\"ûy·ç¾4ïå‹QiMU$­>T¸PJ½¡×hVfYã+ñZÌ¨]²‚V°¤ó\nO\"‡SJõí¥@=w²õµ´~®6µ¶ ¦žJï×¬l—£Þ[÷JÄ†ëšËª0¥EÁ\n‰ìwúí)ý•d­§²ºÅ Þ¢¢“Ð+òö{ÆÇælµP­’Åjd´°UÕ&\'Iämks‡æš,ÀVQš*%s\0<Ñ!§Šz)ý;[x6«Ú7(‘ÈJ”·4!hXãWK[äºÝ†+Óá8€nê³ßÄ?ó×¦-eA(qœÅaÔImÍ\'È8›Jzƒ´vÄüÓy€lÂ™T‡‚õçÎƒæðÊ·)è4™^P†q¶Úò©DødÈP=\'ªx<ÛäyI§uCÇS¯Ì„(ì;p~G¦\"5ŸøS}õ6©ðoæ‘Ã‚dÛd%IJP4åÚÝ`ü}0N&&9ª”˜˜˜˜€˜[°£¡3>DêßºŒ[Ð·3\0œû)BTâÆ¢5(ªûÀHé?(\0ÞÞc8Ýˆ`_> Khi	)•ºnJº%?Üœg¨=’ð”åMAK¯L£ZŒ¤Ûô\0Ç|=q )$)Kr†Ù€¥\rú‰_#¬áN_”ã=VóŽ‚DÙi8Ž Æÿ\04Ó—‘s6êkÔ¤DøŠI2¸Þêp+E¦È  CŠ&\n éù–œ<ì‘ÇZµž‡T‘GNâŠ|£PR[H½àù‰¾,U;ª¼SL~ éZ•™^b8éhÅD¦œ‚·2Ú—YõP‘*	T”Åå\\ˆãš*µ0Ÿ\n™€ó»•J´•”ÊÌÞ\0@ƒI*Ë(œZüîÕ8/æ×Û~QÓ\0fÂ¹Æ’\n¦cT(êZ–m*ó”Åº[šrÙ–\\§ÛÕ¥¤¢á˜\'¡_Ÿ4öÅy†b¦Öj„O•–›ZÁ¶Ä¤ ›óaÛœTÅ%#.¡êÇÖ˜+!JLGSäKàÚš”¶ÚPŒ¹Âe \'eFñ=qQ0‚iÈ+¤ö¡KZÐÅ2”`’Þ™<ÊµÖÚqÝ.}TRá÷-)lžÆaC˜\0o¾{4Ì :Ý\n¢`ÉQ1è8¾¯ªÍC‹)§jb$$¡i¿§ôÆ\ZIÿ\0A[ÞÛ%(d.“Ìµ>À›Öø•êÊõKš\ZRÿ\0v<7A<ª\n\0ôÓë†Ÿ´K\r­Ì¹JZU!)àõ‚$cÃ^Ëê_—9´-E°Ør~˜Ô¢Mìû”-Ñæ**¿˜Âo1?C3Ôbê¿m«©\\q”©ðÒ:ƒÒÓüHÀù¿³¹cå¿\rOÓ’|¡-®z™_SVÈe·X)v±°­iUû\0¯*¿Ë}§Œ á^¯\0	ì#ï\'1§>\Z—g+P\0›yd\0böÓyv^Ýf†ÃŽÓ%ôyT’B“=D?˜éh9|ë9Ê_(¤q/0Q\ZU\n\'ø‰¹úãH”éhIª1¡ÍP­à§ûw¶¦•êð54ÌæTm6­HH.ƒÁ!CŽ?¶	¤qTM\"–¡AÝGKN(Pá+€tž&ûÍöÂÚ\Z¶«YiœÁ\naÿ\0À’µ‚E Ê·?Í®²TÒÔÂÒ§)¹p•êAÌ6¤ÚÒ/8¦•ê™K5(ui^ƒND·è?—¸ï†T­(jÔI•¼ˆâ:z` ô¼Î“©\nA……5¹\"§~»Ç82“O›IWÍp©±íªàÖéŒª\\1111‚“\0LpñTy\0*èL¸â`€]VúÛ(:Bµ@V”’I¾×„§c$žD^BÊä©’§ê_Dl†ÌèOÓu«è0ùt©+\"T¤˜Ü&t…\\Q0H˜Â5å4Ên6ë¯Æ—	&xÎSÅí±ÖÌç$ÑT8àB’\"IRH*ßdÏ”L“kwÀn³Ä!He@þ2U\0tŽ}-Ó¾<¨/AeŸ	@B|I)B@ t¥Q\"Â`ÆØ‹%Pm~$¢<‰e\0?Nß\\X#Dö³:\'e·X§f%ÅáSÖf#·ë…•ÑJ]*5DªÅM(?Ëâoª{G8nîJÚBŠJSb¤‚¬6Ú0™¬²³Ä,–iCT\0e:& [¬Zcw  öž¹×ÃTÔˆC)}I˜´}pÎ“öªÐ²µ2Ú„§DÞäÿ\0\\Ó5êÖï†Ú<©!¤…›Zódñ¾ÎuÂXÊüSbûCqÜ‹˜ŒH.Gš¸H]Cmì¤¢Êÿ\0å8lÍZAÿ\0‚Ú›’=N«í×Uäô%°Úž|™ùyõï‚i‘–y‘­fÅ%GñmiÜúi]È\rY†£©êr‰CdÈâ\0X¹Å9«ÙšU¡…¦w ˆü×úFKT(m\r€¤€| Å‰ææ0ì7Bê4ÖT˜\0¥>{XNêé|Ew$Àv{_™6”xTÌºöT×RûE˜•èU™Lƒ¥P“ßÍæ¿Nk$®m–´¸—J¥)[`„_Ây¶~®©¢h’ï‰gÊ<Ö·ó\r÷ëˆðI½°|ÿ\06Ëžu´V6†ÖAÖ¥$ˆˆÙb?TÞx‹²¢ÉU¥¥eµ\r!„¯T	!@ðD›ýGÓ= o.¬u,T²å:Ñd¯F‘$HŠª½œqšuŒ¥Å)3çm^`®é?!ïÚxÂêðŸi\n*]M-BKKP³©I· ¥Î/#IÄ]ÖK–¼Ë\nÜKÀY\nP7OE_¥¤zÇQ–×©Xw1m^\"F°•ËŸ0˜’ÊDÜ6¤CJñTJmw-i0LÎ¤\r¯ó7ï„+Õàò¬¸0”¡´€Ù$¨j\'I7ò˜¸›E¿¶\rkUõiÞÄNÝÁØýNÊòÔ¶”ÂœVå:Ô©ƒøH71üWv¾ã\n¨Rbbbc ˜˜˜˜bcÜLæ4Å:ŠQù”5}\"E¾¸/X6ãõÎ9¥¿\r¶Àº–ƒ$óhb®´ËÁ§PWù¼3í¯~ó‹—F‚°áBu‹é\Z€½¦$Ÿ¹Ç\råèJT–Ò\nßÃ?[\rûã§êî‚LÇÙµ–Ô\Z}IuJJ$ý\0›b§}©!¸¬RtüÂ\rþ³Ž±ÔÍ\'ÊÓŽ	\0¢\'¬*ÛUå\r8ä©•…iòÎ­]¶Œ[¡rèžÞ@[S–WSáÔJNê\"Ã¶[÷œ¯}Cn7”Þcyž¼F>ÉÓéI÷g¡*³Zš¾b5i=7žÑ†ÊÊÑâá9:cÄÄF™}®\"ØÒ¥tOo /¨§¨	+,²§Aùƒf<F¹±æp-~´!j]\"\n\"t¡ó3{öj¬­¿\r#Ý—¤ÝC=>b	Ó}¤Åã/HqÅxK*Rná\rb–çUö…\0-é‚¥vöòd$>Ë>-6æ@ð¸|þS’}13<š•ÇÓâ\r`|0Dæ|×ôÃ¦hÐîä\0¹	ÒÏÃ?žÆ_,œ\\ºVÊœ&˜EÕ¥¿‰m·“ky b*Wiõ}\0ƒ2È%(J+nLÉ?7`5[õÃ¦(ÞDƒQ §R.$ù®>Ø®§(eÏª–è>P4ÖÏ–q^m‘³P§Pä©	.oi\n¿O<o‰\ní>¯ 9-8àZ*ƒ^Æ­?8;G›Ê~ø£-ö\\0•¥‡Š	2“¼„LöÁô™cM¡”&šB>]Aµ´É*›ÿ\0íéŽFFÂqÂÁB‰òÃà?æ\0ßûO«è\ZUO‹áº†ÔÆ2ãæ>“oH8ö‚¦Çt…´¥ ’„¤”Ž„Mÿ\0å°Ý¦´€0-s?©¹ÂÅ{6Ç¼\n’ê1…RcãÜLdbcÜLæ&=ÄÀÿÙ'),(6,'tmksmanju','tmksmanju','tmksmanju14@gmail.com','9535866270','34343/343,Vijaya Nagar,Bangalore-40','05/06/1986','MALE','560040','Authorized','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\"\"!# )\"\" %!  !2#%)+0..!385,7*..+\n\n\n+++++++++++++++++++++++++++++++++++++++++++++++++++ÿÀ\0\0»\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0?\0\0\0!1\"AQ#2aqB$3R‘¡±Cb4SrÁÑáñ%5tÒðÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0?\0î:4hÐ\Z4hÐ\Z4hÐ\Z4hÐ\Z4“ê]üâÆ1²2	$q…	\"¼“~Ûï­\';ë©g+Ùœi~d1u}ñ™[»òÂë¯KÈÊDÕ@òY€ç»ÖQÌ¬>(ÝëšîPg4J%ØÚ`‡¾S\"‡µ…!%¸“Ú$€t³uÊÅfI2v½Æ7OÓG§–,^½¥-õí 4€\nÀø×8ÃÝf2Îp³ã›ŒDÅ‰‘Ó†./\\¬]×kñZÆ/©&YRL½¿.,„nãQ:“îr¥¸ÕþÌÀÎƒ¥hÒÝ£}ƒ\'—£%²,¤e4\r`tAñ¦ZF\ZF\ZF\ZF\ZF\ZF\ZF\ZZþ îC”iþ)jO¨¹ôô(‚´	ñ÷\ZÚ7¸Ô¸–dTãú§ïä÷t|\0ß³àré°paÈwƒjŸ2A%ó³ ,¬Š*–ò>ßt>ã’C.ý”Ó8(Ÿ–Ò×åÁè\nÿ\0æoRn;nN4¥2¾¡D£*l”3M(n¼\Zÿ\0¶®6Qf.\\=¶	=±¦/ÃáTÕöý=þÚO‹³™%TÃÍË’#ÅÙ¹:1>q&»$mqÆ‚Ž~Åt+õŠ¯N\\5x^ÃŠº?,}ôë\rò ›ŠïøïíDäHÁlWDÕŽ¨òì÷×g²`,“$-°P¤ó’F(ò	|Ó¶4*û÷|V­H³dHZ_§Ô““2//Ž-`\0tcø7 ·õFÒ¹I#É‡i\n–øÒ„•Èú=ßl]]wæÖÕ‰™`âË7²>+‰š€Ø÷êãß`žˆI7¼\\0 Ëµåc5-ŽÀL„„oÒ:‘FítöÌ]µÝŸsÈŠkF2]ˆÝk€I=Š$‹¾´\rfú·æ7vÅËæH¤ŽØU«/}{o—@7Düîûˆ·d¬È€ üå¤†æÅ‰\'ÇD(ùøÒ7wˆáÔ‡uÊÈQÄó<JŠ\0ôG»à)þM,]Ïoaò`›oË£Ì? …XÅ]Hö’½…wûè:ö*Ú³YÂð$ôLŽâõ|“ÈW_þZè\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r\Z4h\r)ú•dhcB<æ$©hòu5ú‡ÅŸŠÓmsªr1æÈ’7™ó$QkR\0ÿ\0W³È†üPaíêÈ#ÆÜð*c&åŸ@´’Aª(PÝ@~žÎœoæCfgE·GÄN­ aß¦>â…ôMß€—¼ÅŽ[ãlø¢ŠGP€@ `¸#Èè÷¥[AÈÛvÇÎ6IÍÍ œü†@ÀXº%zóÖ·Ó»|¹abdeä#rüFS•K`=ÊCtoˆìÆšn1f,hÒn»z¯ºd‰îöÇ³BÇ_qÝju™®UÜsP·Daâ=1VÔ	‘ðkJpb…ÃG‰±»	x¹9cŒ5úùPZ¾#ïãAÕ¿â#MøÞT­/qƒØþƒéÑ\'¿Ó_j,I¢cêãïù\n±±2¸›«˜[nÜmxî^¤w…F@KP7a(+¾<~ú…¤Ý˜±	µÎ¾mKŠñÆì‘÷:\rkÜJÈî»æÈæ¹M\Zãv«|”ô>÷ÝxÓû#7‚‰¶ì}Æ\"êÜà Qú¨–6<\nÕ½×oËu`ûVß’$ HV^$ñèÊ/ t=Æµ­f,xÄ!w-ª¤29ˆ9Œ5\098äH\0Øë£m‹ºà&Ar3¶©HTQ\'!kbÐÚßŽ¼×zwºÇ\nsÑÝñ‘Ie)”0£íâ?Àô>{Õ¬L¼‰x&.~ãV2$Á·ûhÆ*¯«+×ï­\\4.¦<Í£&iý#\"sàÎ?ÚM©SÝtdŠÐ:Û~¡ütKƒnËGäøóÇÙÆ•MZ“Ù#âú\ZÛþžÎÉ“šåcˆ^2\0epÉ\']²Pü@kŸ”ÍEVÜ¢ƒrÂ„ú‰“úÉD{Š­X\0Ù\0\0Ù:Úöÿ\0¨=fWÃ–9¡+Í¡ ¬ªÁK¯³{X}Û£^+X¿ûëÝ£F£F£F£FY2F!K:U«oØY¿Ü®_•.LQdƒfÃÖcàÓØý>ÕBëÂhùñ­÷êÌ•Lg-”¸€ŠõH]ñþªñæ¾Ç\\Ï!d‘1ñ1%Î-¿¸-¢W‚	¤ÕŠï°iè+ãmñÊË&Ý&lô9fg±XÝÄ·>CçÍÞŸÏ„ùe\"ÈÝ$,@E„£€6A¶\nB¨\rå‡ôß‘¥XY24íN[n9EZ±1hc/†âí@||üyó¬·F+Í7Hàz	¶`-ÊíçÞÉFÏ}]ŠÐ3ÄÍ[–Ù8Ûó³²z^*J¿®ÍŽ¼šîõ[üUy0ÊÜò2]¤Gƒ*¨Z¥%ƒvlŽ]~ööLL‰P@p0áÁUö	Úëª– û‚~N—âî/Ëÿ\0ÜÔW¸Á…ŠqRžHý¾4fA‹+	[sÈ*ÙÀ¾Ç ï«$ŠìQûSLlXýWÿ\0ÌOÊâBŽ\\û\0är«ïÈñ§Ðgº“‘‘Ÿ‘ML™0ÄÃ~’+ÝV@³üUë\\›zÞéõ!ùä=`/Ü8\0>\0£ç«ñðG¹íð§¢Ø;–S©`WÔ\0.*’1S×ûéª{Nè™°¾ ã¸³Öï­¸µv{P+ÇßNÿ\0Æ²ä–&ÃÝðeGãùS\"£^üVH¾=·xnÙÉ÷\r§#äøµ#¨\'¯kQé|Ño¯\Zó0ädžYö¸dâ€E>œd”;vS¸Uò6~ã°N¯‡8ó.,ˆbœKcæ€ÞÒ§Ø%«²]MY>Ð\0ALÐb?Œ7š|ŽKÇ4=†Çºúâ>\0ø¡«ùâXcdÜ=>b,3\0+´$\0Jýè±ë°Á2q°²L¬lŒÎZÏŒà[!l/MÈ­êîµw}ÄžiÍ\neb\0\Z	°Ø¦ZŸ¾A\\vz°¿qðUÅ½Gm>Cí¹\nåÌˆ.Ž\0®\nîHjí	>zÕ}ÓtPñÃ\ZlE[ôs6ùY ÷{‹µÕ×•7fÅh:ŽàŒÆLe@^$¿€§÷ãÕêþ´Ï¤·,ßXÇ‘$9Xïf˜¼Ye\0¦¨ãÉ:Üô\Z4\Z4\Z4\Zƒ:p‘»•g\n¤ñEäÍCÂ’| çÿ\0YçcË“Â¸î9h–¤÷\n{¨ÇÚ\rÙ#öó¤¹Ùîym4æøíxC®úâì†È\0Ùä@sóc{ÌÎâÍ<‘mr‚BÇÅ²$À\0~–#àQ®õGk&88rããù³ÎÉ™+Ù%ä$È‰äž\n|Š¡ ØŒ±Â\"ÄF8%×’ãâÇêÌ/»••X/f¼÷Ý7ÚM°1,6Ø0r³æäÍÈvÃ£ÉÐ=€¾(Uðr$>ŸáâbPAŠxÂ¾{šw<ž¾ Y>Gz£‘ô±ò$iæ^E0¶ßÐ|HExñd­Ô†*ø‘dÄådîënb‹‘‰HëŠ¢û\0 	$|éžÈùÊA‡oÅÁ…”³´ÍmÈÕƒÄ†øùãøÖFhqÁŒâìÑŸhæ¨ò5xÒþà[kù9A¤ã¸î¬¼Hë1$r_Òƒý¤€ø=è\ZO•2³>NÍžR’?%žÇÏ@þz©úüUq÷-˜X·¸ø’ß49U\"ôÉ6~1\nÛ¶¼RE•ÈâÇöªù¬›ìþÝáø|†YÒÙ[7Ú·g±\\Ð¡×ÉÐ@˜ÙÕWeÍ\0hã[Ç’lÕ·ÉÒåðR	[3lï“63Œœg¯™lÑ¿°5âŽ·Cƒ,L}<&æµ\'OÒþŽÇ\"jô‰6FVMÇm)lxJ%ˆŠï \\Q¿<h5üŒìFZUhl–ÿ\0ÚùÙ¿©fK+v	RêþtÖ|©™Œ!Þ0Ô3cÒåDzê“¾@+Gäñù—~šRÇiÊÄËCÛbÊ‚\0\nb´›5ú‡Ïñ¥3fb~/M²î ]¸Q½xoè`o³Cþtñ2=|WôkuÁPMÿ\0µÅÕ°²&ªèôhõ¨¾ŸÅÇÄr±¦ÎÅÅ¥\"‰á[½ê¥™*ûäTÙÕùÑ&+™ÇmÜdÃpÇÁ8é}dV?“Fµ–õ+$‘I‘?à3Š‚¹°øy%¨~g¶ ,°¡ÑìVƒbúm’.y¦8¥Xz›afG¶ðð‚}ýò°\rwg[ÖÓ¸G<K,MÉÁ ƒ×A\0‚>A×xd@³O4{v[‘Ã?†ÄÊÈ<WË\n5¶º~Ë¸ÊI?-?ˆ‹¸äkªàžˆø«Ð=Ñ£F€Ñ£F€Ñ£F€Òýíæ‰_«ioŠ÷9Ïg‹û0Ö‰õÎñ	”c¬gäUþå/‘Îc\\jú§°:4<è4ì,¨Ÿ-Ÿ\nÜ³ûó²=°DE÷©WÏ·â¨C•ù|_ÔÝóÅ]aÃw×ÀeG\"?ÎœeG“(Q+H´lM¸*AQešW°=­MÆš‰¯¾©‰´‘M”#Â…	|}¶2\"\"7Ÿ¦29\"Õ{?µè¤µ$pÉ+K2)1íûhôá@	¯UÁ¾=ÅEü\\9í„=<™q6èß¸ ÄC$Íâìñ£Ý‹	ýô—ä…YãÚ°ý,H@9s‹ë—&ð~{6l›†Ð…Kƒ\0QÆiÇ«’Iý]»P ›ï—gAF0äE€£±Ë+rò ,º©äÃÇþ’h}º0·àÌêsróVBx®?ˆyÍVÅƒ@–ûv<ê®;C96^í*ÝMLP€¯QŽÂ\ZŸ7rÈ²²îxØ\0¼l(„®·t¶lßÇJ.¼\r\r¿éÀIdØ#ôï—’­ûÓ¯p|i®Å‘†ÆÙð¡j›J\Z«¾©l…÷ý´¸Í‰-ƒ¼eZø±•WºôÈ«Ðù6Ž¯»8[Jã²å¨U(e~¤68›ž«Å)°/¯A7ÔÛj	xšY#PÔÆ‘W‘4Ì8†Ri¾ÿ\0aüj¯ãKGqçfí®¤Ì@È¡	[,â½Ö<·öÓ=¦qƒpÆÜ±¹%·ê•W€ \0¸¿žå×‘ªy³žŽí@p/>%›øö«‚O‹úþt	²È.ny‘‘qçm”îÀ<üy\Z—*y!xàxw|U[8Ù Ç•\Z‘Ð¶×ŽTMžµk\'(xK‘¶dâÊ[‰—mb…žEbn‡‘Ø\'¿:‚<‘ÌDy—ÇüÆ33\"Z!YãëRö(õÐøÐeôä±1ðœPLÛ^ržJjÏ¢Ì·Ë³÷ï«Ô[;Œãà«4j\\dí9¤	(û®EüŠG`ùÔ†,SBÒä»eÃãøÈP.v#/ôÌl ßÁ#Ïw`ßq …·	ý\\kv†Ä±š°$Qg‚¶MßžÀ^úzÖ9âÛBÏÿ\0_kË%dŒø`…¼|žÁ×zcôôÇ`›kóÆÈÀ.(\'Üñò!ŠÙäA\rí®çâ~#€Üa–‡áwŒrOò«\'\Z\0ÑHíZÉtÒÿ\0šÇr/šžÌmÂ<‘Ñâýq÷uhÂ¼ÑØuUk¯u_o2úkëÿ\0W¦I_=U÷âµc@hÑ£@hÑ£A‹µ~Âúÿ\0AÞ¹—×9üÌ£ÛÙ\0oÅe“Ùz(ž×ÏûˆºsiDN`Óq<’þ9Ý\Zå[†<í#Iˆ!ÈÏ27Xq˜P)kˆ±Ð$y6N‚]â–ñ²\\Ã	\0C¶ašK\0ñ™dùºâ<’N“CŽÇ%ald—.\r·¡¬l@kó\'8ûüö+<ú•öûŽ9›ÎJß/÷A=Û€t>AÕedôäeyqvÆcëç9ÿ\03žß;¸±î€ª¿Üh64I–YcÊÎn²7}b?Th<Ò\0=£î	ûjÖÕæÒbòÜ3@Ù™zž%­*½½€D}øén	°Ñ¦`mqž1cPYs	\0(z²7ÕA\'âÅÉîeT8âQ\r…†6á‡ŽËåg‘ê>@yêô_*,“\"þ&\\ÖŠ:–(ØCú½öà\0kÁRííßzEP2ñæ%n£Ú¢ÒÔ™h¹ëÉÕ¸â9³<£q @ÃÃ^¼Ç`<€SªØÿ\0mzwVÄ-øLßéíÛjQØËî¿6AQæ¯Î‚/¨óòÔ\"ågŒø‚°Asä¸^ˆ.\0¦6;/J`8íã|Í$’Hî ÷}Ë@ßšï­lî90Æ­(ÄÚ -íSÎÿ\0Àr=úz¢7ŸÊ&Þ³CÁ¦¤}×Ø¾+Å“ —lÜRExÔî˜¢Ò‰yI\ZeO`òä«þGˆ2.3¶îP@fN½œX5öoÀ|~ôàÜ$@¾Žé	ä«ÃrÅ,µ€àÚûýõG;\"HãoM…gí/l”*æŽì\0šøÐMôñeij–W‰·%øÊ½Q0½ôE| ùèj»ÄÙÒÅ$ÙD¡f¢-ÃÃ£ÐiwÑ»¦OzÇvÏÇÜ›Çá÷\\_dŠH z«Ùä\rò¨üYÔã.B¬¹®g—‡/@¹‹*ð˜*ŸÍõr»âGÍ“ ŸiÊ.ÀúâäëtE¡(SÈÃ–¿\rÑÕÏŸ0gÈV›Ð#ÊUc•µ=˜ç’e‚ÿ\0Ü…±ÐkðáhÌr¼êÜãÇsBñQb<çˆH?¾£ÈÈY’#²\"Ã1ÇæáÊ\rl’{âzPÇïäo§2¸\"Ç‚¦x&Û2€4¦‹~Ù@~&ÁoÈ»ÔnJ`“ðñ¾ã´—üÜIüF!&í+¾|H4*ºì˜å™–W3ÂéÁËäÇúØ’Ÿ9P‘ú¢r90<ýûµù±äF^Dƒ>Nñ7€ù£á&Uö†k¢jÁ¯ÚÃª}ñ6\"˜2Ÿ*n6‚è({€	 ßêìxøÖÇ­ÿ\0wÈÞià›aîTxÔRÊBE ÑóßýÎ·Ý£F£F¬Ù?YÌ³ª·D’ßþTdÁœõí³Wü\"]¢9bŠ<¨J”^Qm8òpä8¼Ý‹7ú‰<Gîu±}c»È%ôàHSÒ^Rfdéãrñ@þ©\n÷]tVüëžãËäñÏ\"b;‘6Y?æ·£îXî‡¶¿ï o¾\0±Å>tŠÐ#ÅÛpØÚEþ‡#§¢\0¯ÇÍ·ž~¼O‘ËÜšŽ>mpâ^÷ýüL*ú…ê‹,±¢,8&ë +1‹\\M·¨ÿ\0Ò’í{î«Qm*°@L3þE°ÊÏQþc2[¿C‰äAñÈ]÷]ÙÐa„å)‘[wÝÕºT5‹ŠEtM°o¿¸eÞ~K¹\\lö\\ì÷6¸XìR€!¹LÃáJƒoü\0nôƒ\';(Lqñå\\—œ±Gú1#`KI‘\'–ñðkæµojXc&$UÇÛäBÅHfÌÏ\0I£É#rh‰ð?V‚ü¹YJÌ‘dÇq¢¬²ÆÁ0ñTþ¥ˆåš…‹ý7ñ©v¼ø¢Ål¸àðËÛeL¼òrº ²Ýñ¶ñ`ßd¤»ŽI™«+Ôx—ÔƒnG	<`w&St9ö“ý»:õ!2dDÙ-~å%ILN.$tw\0Ð^ùx7Å~Mèa<‘#<&4,Cþ;t~R;Rìuà>zó«.dœ{3·<Ë·Ä…\"ŒWÀ,¢ÁëÁo¿Î’M·4ÌÒrLÌ¤?™›”xáDRÆ‚–B/ÉX&þ5^èr#^y;ŽãV0a0Áv@Â‚Vú±g£àu Ùc2r#ñ;¼,¤12À&@ =±°#ä×Žük_E)å‚0çÌCï³âM!_×hznGª6;ÕLœßÃBÈ`Ýp#oÓ2LeHÿ\0Oê[è\nª\Zÿ\0¢ÙsºI7až(E¹ÁþªíYÀ÷^‰V£Ñí8]Í‘‡ŠP”¼Ýªu<®äŠ×ºêÀûx\Z›ñ˜M‰ŽÐK$8cdæaÎ}Æ)>ð¸7ò*þ(ŠË‰”ùH²Èçz˜YWI—\nžE\ZºbUWtMýÌ[VF3FÓ¬Â#Ü1OŒiX¨ŽXú°	<ÿ\0è(3}ÆÆDS!OG¼Ühú107øìCñD†\"¼ðulÅäqë+Â­œŠ=™K™x‘Eqnþú—\Zr³ Þ´E±ñòäN\'š\Z¹*GZ\nÇ¿pùGù1¼`s3GÈÿ\0ìsŸõ1d±F;ãc¢GZ±r%ˆIUäâNÛ\'é<Iûï+Má‡ñ«ObÀÎør£%Oâq&ƒO$`÷éØäþz¡¥qÃÌÑ²mÏ +Ï<	ÇBXþ}6&ÿ\0~UßZž|ã2ÂåNã,\\€)¸c5†ï“P¿=û¾A:»6L0dcGœÍ<eïnÏi•¶]H$ƒðÖ^+]o\\;cÊÇ¼¨—jvÿ\09ƒ\"ò—¼#ž©ºìvGc®Ñ¶È­f7õ âö1]5Žù± ³£F£F1ÿ\0Ä,¿õ[q¡·ƒÂEÿ\0S*AØbËîU¿\0ÿ\0«ìu\\¬¼˜f‚i FÜfžß„Ùˆž9°ÿ\0wŠ¿Ä‘Tâ.6hžoó»„¬oÅâDp‹ ì/Ünš¶ûkC\'\ZDà‰7|„å™™CÓÂ„r¡¥¨qø&ÇkcAáÇ_NlXg<õ7Œÿ\0’@³g«îÅ/ÞÈ+¤Í–scÇèüª\n‚ù™M~ˆé¼ù=ÕŸ#ç+E³c¹à–}]Âoƒã°H?°uý7ó1ræ5\n7LÔ^|³oÇèp_³óàu×d<q±ÄåÑefF’3òû¦™»¬x[ûûe¶n2«¼ÐT¹3ß™hãbIÊÿ\0F<KíAtI´¾Xãy\'&eÿ\0Š¢šh×4Ai‡Œ<ž] û‰¾€¥3ŽHø³ “-EÜ¶=8Á 	%¥¨Ùt²Çé£C²¤‡’£ÎÜdCþ¤ÆÏU=€jî¾×&7®&noé‡Ý\'-ú‰¦&éMÐ5Ø\0|\n\n7°®ü^\Z´`ž)j‡0‘×\' öGü^ÌÈLc0 M‰ƒï‘‰ë+9ë¶ÿ\0pFþŸŽ=Ýè	\'çÁ²á,€áí‘’±A‘ê€?Q^ø°³]×ô×Þ7ÉŠÇ&~äUT¿,<2×áYCûò\'Š×ÉÔŽDÉ6Dž¡A‘ºN€î½<Xü\0ÆÈò<Ÿ5BŸ(áb\Z³Æ˜Ðwéc+ŸQKQ&IX($~àñ Zs°Ä­$Ø2Ÿr,„Ê²vYRGa¹X êúÅ,Y(ÙPÀËÜí\\“×®ˆ)­yìQÕ½ÂéL-6Ýø”So$ê°M?Dq 0!G\"qo\0ÙÖ;²ÁÅ%48¹kî…—Ü«L+‹€ÉÏ»êÀ#°µŸÃ!‹f•°¸æa¸¹@Ü}X£6A\0Q±Ó\0 Î‰`y¹ð—2«2qýx™^7% s@‹¯o©þ˜ËháÛÞtQéåÍ·ÉÝž2¨ö‘Øé¯®Ç_¾ŒL\0Æi/G\"m³)º £Ù‹£Õ/+ñðÆ‚x±U£š<ÉBªÆ1r\\›R\r6Wv	ÄžÎ°ÍãÂA”K%.6ç\"ÑÖ„«×`Ž6GŸß^ÃXcžè´›VS©$uÿ\0³ÈTß`Ñà|ë9§’gÇÀ|xFCí3¾9á64ÑWZuù}ÐWËY{ålìX„yQ“ÈgbBT±ï`\07çÁò+PBP,QË“!À—ÝŸ~ü7[ü§>T|°:WefÛÜ:ãE\'¸“&×‘%ò^?êáÌz¡vØ Šò5dÁK0‰ŽÛ<¦,ìGìI¼z \0@Øaÿ\0Ãä\0çáòW3°¸ûºšŽpÇÜ¬£\nÍ…v*ÏØ€Ghúz.8ñþO Häa°}2Ý²Š$U“Ðëø×òy¦,§ñ‘Ã¬{?Ÿe2qÜþ™T0\rûn»?Ñ’ÆØPfyâ+í’CnEšÜ¿¤ÿ\0\ZZ4hÐ\Z4hÐrª#ôsxÃñÎX<fjáŠŠ\rqðöŸÜ“Ù=€PcbAÆLik>ížäÔ”hÄ¬Eöl\nùï¾ïaÿ\0Ä9Ur?€œ7æS‘2´Šë‘oŽ‡t|rù#Zì’ãÈN$T»>Dÿ\0™”xKòÅž…ÿ\0®‚Ûe4¹ùž’»=¦Ó„(Aÿ\0Ÿ\'T ëö`t«44jØxò$ÉÉfeƒïÍŽßåÄ	äÍCÏßL Yœ±zÆÌÈBó1n#	(Öÿ\0K8\0\0üšÕh#<RIÇiÔ”Œ5~O\'•Ï›2öX÷ÝXñ ±<b£ž\0’íÐ½ÿ\0,W.bE°Ü’k÷º¿OÃ“!ÆºO•2>á1w\\/pãý¨Hn=v~(jÊH³¦6*‘dšˆ1÷Gƒ¹®»3#]“`\0~ÁfW«ÎHGÜ¥`(ñô°ñ­œ°!xW‚‚Ó:A³óIØ5ÉfÜ&ýOÔ¢<øÔ¿†8ÒÃÆ®p1ŸpÉ³þ¤î¾\rôBû{þ||¬ä«$kéãâÉ¸¼FÈg~¢\rÿ\0À\n1*Çz“>k+™÷‘ˆ™Szù¾¤E×ô–à´+¡ÞƒÍªÏŽ2€s4m¹åš³(PÆ>:xŽ½úñZXÔ<ëYC|þ]òY$>œdØ±Å*—à‘öÕ¦Û}1J…q°§!tAâ Øò?Hkã÷Ó¤ÅS¬|?7?e\0JýËð\0ûûIíüè5s³~\"@r9LÑacæôL!ºæ×Ù·¡äÐ©ò·\"CŽ\ZtÌIã+:4“!ß¥5YJ$•€kS¶DglˆšLÅ\\<Ê_Ì†XIàþ.Á4?“äšÕï¦¦ÊŒ¡ƒvÅÈ‹ƒ è²F(…oÌ^G‰«¶‚¶jrƒ-x|PœC,V¿ö’~I®ºÓ_¨ãÿ\0]A,¥.–-x±®¨‚«çÈù½ñ¬\"zœãÀŽ\\Ì¹h”|‰SÛÆÇ`$qÿ\0¾—ìÊík)%¥ØK–äÁÉWöò\'í×gãù6ï¡d}Á£pøqnq©Nãxˆø®ù\0AûYºù–Y\ZPòÄ9¡MÏq\0ˆº\0¾Ã\0	ß/ï«;På>ß\"¡`»;³£‘@÷àò}&‡4Ã‡ƒ\'¦æ}º4™ˆ6äd•+ö\0\ry‰‰Ã!\nÊq¦Xóñš&á,xNÃ®¸7”ìÒÿ\0qbKÈÉ™yfc(‘Fn3\0¦QñÈ/ºütG­I—ˆ1D‘ð2Ç\'«\Zÿ\0ï0òìJ¾{+~OƒgPÍÑÊ!«7sÃoŒ¼Cméé¸‹¡ò9\"ôgÅ†á„ÎÉƒ/æíû‡–Ç÷è¹¥|Ø±ÿ\0zêÿ\0A¬ÉŠ‘ä¢,ë|ÌexËfÄ«Æ‡»Éè½q¬-é!ÅæqÒ}›.[š+%±¤è2Š6\0 2šìPèžûgÑØ1Ã‹\ZA)—\Z®$Äö€,æ´4hÑ 4hÑ Ò¾¦sêœlR?•Ô²×úÛ\ZðxÒ¨±loãZDïŽŒ‘cÆÍ·áÌ‚ã®Y¹wTXš!+‘ëÇíC[×Öx³J	‡ù/‘ïÉÈ®•Š‘ûÆ\0û+xó­CpÄ0¶ˆU1 ,‡q”‚#~s§ÈÝƒbÅøè#3\"6@•ùGzÛŒôÈ”w\"·Ê¯CÈTÚU˜#><Ž\')Ò]ÊPÑÊ¬X«]“EE~ß#BdFÈ2µíÖ¸ŠGyy5Ó‘ýD½·ÿ\0æÖ0³âÆDŽNdHs2C/‘9	‚ƒqù\'ùÐó˜W35JD=A·a|ˆâVã#ßÀ>îû-æõ_êH›qDNqbcGƒg e æþ[õ·öÔYûzÄR)@&,¼<V\rß‘$ó1³^çbì<÷«[¨Q…¼¤–ÒÃ¹,®ê—URñÈ~Ú[†\0îèªâíi\n¨¯pôÕ¹»¢<ý¿¶–ï¸¥àÜ€`Êøxy(Áz!T+YÔO/þÕ­—xÍ¼Å ôÚ=ÇÆŒäúd›â\Z¼Š\n\rêÒO§™\\³%Êd~\\Ev6¡UšH¯à’®Oìï@§çn¸¾£!‹?màÄúsÀfÀânÿ\0ïZ«¸dqÛñr´ût†„ånŸM‰ì•R¿#àý¯H¶/[#oˆDxçírI\"sª1Šæ£ç£]WÅucLåÝ¡ÿ\0Åc€M‹œ¦,¸®Ý×ÝŸ@`kÇ/\0ý×ðé0¬§<z’@äzY1ïô…‘º¯ýÆµ©¾F:F\\é T.=,ì,‰Ì•ãÏ²ÕçÍWñZa$`B`Ê²6Ç-.V8äa0yƒÑ’I7×› ßnüDj%]ÑóqY™!c,ò!`B³šµ+ûõñ]Öƒ_Å—aó÷P£òâ£‡€eŸŽKÎþ8Ä\Zc›žž¦`s›¦T…Š9É`8ƒ×#^+íz©õÿ\0Šðdny®4â,FZ\01JÍd†êÉò+^ãGé$[nÛ1s“&W\nì nÄ:7@~(h.îÉ¦ä±¡hð¶ÔÂµ¿ÖÌKUùâhŸàýô¿oÛÐ¾\009;+¡@Ÿt€ýÿ\0UŸøÔ+\Z0NM”e$ÏÊ@HzAøa¹$=é„›ärîÙÙ^mør@hÚ³ +Õ{­”ßí «ôÞäò†M(´ØYXÅ\\×¨\"f(¤ýÈ¥ùû÷¥xP	`Ç‡¬.}²BÔUÁS6+Ñ+V.¬‘ðÚµôÃJ¸{*FçÖ|é5#Ä@Ô—Üzë³óÞ³ƒl&y°ab Ê‘òöù¸•á2²)è>Â¿°|„=çáÄ\ZXÈ]Ën …cd_$&ÍwÄ÷]k¶}7©™K¬rÓz2‚ªdïúz\nûŸ\\om˜de$àŒmç@²+že2yÓ#\n»4½Ž×ô¤?–Îð2$kÈU6”-¾ï®ÿ\0úhhÑ£@hÑ£@‹êŒFž6‡Ôlxè3Î\nø¾Òù²jls‡?GÇT»9%¥ˆ7,ŽAU¡î,ÂÍ)?É#]ë(côL’Å.B\"·ä\'jäŽ¹/“ãˆø®¾G<—8ä\r›éÅ8âíXä3ò£(faòA¿>l(þ8e#n.žžÕ·\ZÅÅ\nG©\"\0C®L/ÍU}î,Ü~XŠ¯#6dù˜Ófß|äúqäq[‰ºÿ\0¦™ýAèÑfnH\"Š3xûl,ÈÜý­ ð{¦ñv@5à¤È“ÛÏ/ÔÄržYƒ:°0¼t1ù1\0€\ZÜ_\Z>«†WMÒd¢ØûšÉ(òLh¼Rºø»>>~Ýì?’›„¢es‡½Âµ\'Ž/ÄŽüyë÷aæµ®ŠI­žðŸ^%npƒí–9ž3ÚÀ WgLT8gü‹¹—9IqÑˆ_¾{&«½è¶S‹6‰y8SpÆŸècl¯ê<UŠõã\"’	2q£ÝpØ¦åŠ+%QnÂ«…”‡Y}7GâµswÃÈÈÈH2 Þa âdö©“\ZŽ­¬ŽdÙ<N³ÛóÎD™Ç»ÇíÉÁ&@V!\nÞOEGÈþä=›Òåþ9‚þ«)_Æ£rUV*¼øÒûÝ0¦¢oàc1\\dxQ®NÕ˜ê\'Á#¸]…Š=ð öC°<q\"œ/ø‰³ÃÇ#fá|[4ròµ«›+ä­žx±²q›oÈö!\n8ž5ú½ß°I6<h2ÇÅ|E…°ó1æÛr¹~FW/LU@`¬·ú½ŽïS¦bÅã$8ùøÌVý}¾_ÄFëâ&û»ìuª‘ÏyR@¨»fC)õqgñ2ßÍR_c~˜b™[žÛ\'iþ[”ØÔhƒ‚;øâ“ó £—õ9Š»ôÑ7ëàÑâ|[qïûõûDÉ“ Y7ÝÚ@Ã„ÆcªÈÍíÙåö«¹J¡XïŽœr07wÆRXô{ïç½<›v’QÆ7Ü²{µü6(ÅU Ëîvè°?#¯t÷=Ÿp–#á6ÌcR<B_Í\0d$¡í@6A t<\r!ƒl\\›Ûö®GCË7p”êqk¥\'  øQÛßVÆàÛâL3Fi½llKËÌ™M\Z’Z\";>GŽÿ\0âþá¦©[FFÇÚ1Ø´²ü\'ªÀß.^óç°OÆ‚§âU³Úhy<xqœL >£¹áÀ9 ’YÇí¨\'ÛŽ66..^f>ÃOÆÙ~£±gãéÁ,ðþ¡×ÏÃË}™9E‘!ÃŒ%G…€¹7F¹¸±ßÀ¿ûG´Ä°È«É0œ©\"X¿œÀY·r¬½¼¨x¾ÀÐl»&[ÇÏ\"s;ÂNH›£‡$ âEaÇy+_@ëªaDÊY¹‘óÄ/_ºkFú.>*VQ!,_>ny×…Œu¯‚IØ×@Ð\Z4hÐ\Z4hÐSÝ¢fŒ…”Ä~YW‘¯ÜŽºÖ±Óf#„\"@Æ\\‰ù<Äø°_þlõÐë[“~ÚçŸPlKÌóbdeÉéZP°¿&RJ{¼(ø5ÐaZ¹I6<66^3Î™r²Ø4ªÍEBÿ\0DkWDƒçJæ‡z1¹3áî8ï¨ñZ· GjTkÃ\nõæñôÎRSeÛ¥…acË¢\ròµ¯\0~ú×2aÚ†–<ý³!Oãlˆät>à\0*ºÐ\\Ú7ÏÒ¸•*¦9¶¼Ç$8ÿ\0d,ëÝöš#þš÷jd0ÄŒfa»–Ÿn’„øÄØ-èÐ? >Iäí¹2 |˜s„žK™„Gâc¯ˆ\0šŒ\r}ükØ “-=HrÝ(z±—Î†¬Bÿ\07®ìžÈ:\n’L)IYò¶Æ`qòÓÝ>Â°=­x\"À t{\01ÞæI[s¥DœžX»¬¡Õo©@\"šüý‰ÿ\0˜6Ü‰CÉŒ#ƒr\nR|IÔÆ™ŠoÜ¡È»R{=ƒòrÚÓ„yÁ\n½ù;VJJ@÷¾1»¡ðjè=hÍµFò¢fÀgsç^(\",äµë‘j>|÷­+ßvâÙ)rc.à­É\'qÆÔ#ÆOßµƒ«OKq:àŸÅâñm¯(Ó§.î&jäûW÷$j¿ÑÛš ã‡4\\ýûny\0OþTŒ\rÃ«È½GœB­:æ8Œ|æ2c7ÿ\0ÇÉ®KÐ°Õ×ƒâ}®8Œ˜™‹ª>Dþœ±D3bë lz­¹fœòíþ©f8™ñ™1œ‘G„•í[ýþÝQÖÓ³þ\"l¤—mŸzqã°Ê/‘Vò›µ$ù=ä…aø´—Ó?âá{T<qf®*\'¯‚uÄ›Œž¬”…Ó‰|¬ØáŒ|ÑÈ(xšÖ[vÊ¡d•ö%JùJÞ¡6\ZÇ%SWý_¾²ôKEµàBä_+*;èŠ ‘Ø¿Ž×@—ñ}xe\"08Û<EÞÅX“!¿sÛ\n½7Ù>’Ë÷z1®×\Z–Gq>Tª~y’BtkÍƒ¶ªïUÌX#îøXƒ—èÃŒÎä‚H €4¢,d“¤Û÷ËÔêfHñ£y÷(€ºíCÆ¦.Ì°‡‡ñJ‘±k‡oüì¹ÅöÒÉEÅØº\0c,?‚¶A´ÀzRPOŸ7Ü/¹«—UæI6<ø¼S#7j€_O1Õseåç²ÝÑÖM&$s;áäc2ßºeI2s‘vK\nK øR?¾ƒnú?dˆ?®#Êg¯lÙ®KÂÏ&ÓàUu¸é?ÓÐÒ³‘=·ÎCÛÏôß°øÓ£F£F¥yÈ[šúnËû8\rX£ñç¯þºi¨²b¥X¬#ï\Z3›ô†H9ánÑ)Ñ¸—=ó\0;>M‘÷Òèw¹\Z-ÎØÙ«ðû„tï}P.\0aUò>|kuú£&i…•\Z’ÀY•Ò>ì¨n2q¾Ö¹W‹Ö¡—·eer5·îñ×f0±N¿<Ee®ëÉï±ñ X§¤õñ÷\r¶Y|I… B~WäŽ6Õ×xÛh•¹Ê¹BÉìËÁöN—ñ*,>Î/Ïg±¯ Éü#…ŠL­µÈâ`ÍC64„ß}{T÷gÿ\0¦½›gFD˜¯\Z±?æv‰‹…e5îŒØ\0›ª+^4£Œ7ãoj½Ã¸ ùãÈ€Á~Ä›ýªµäøÐz‘Á‘#Z”æn0\\%Œ©w^Wã÷Ñ$Ç-–ÿ\0\r¹\"Ò{¯8]õÛD?ÕuàjHóF9Œ©!,¥F6ïŽ]xQ(÷ñâôålÙy*Aô78¢ÿ\0G\'\ZDL¤¢?úˆ{\Zþ(Þ®¼²ÈdNXùC\\°îXþ”«õ1o—w¾¢ÏÙŠi¶‹FQrísÈh“ãŠ×Ÿ=}Çf´ÛjÜ•2¤Ä‹33EWã|\"hÝ\0-ÈN\0S_ÆƒHäŒpÂU¢#ÑŸpâÑëÚVÇhùøÕÅÙ™±=ðœw‹%¹Iø<€©hAV&…_|@$__\'K6AšãŽ.Å3¦FF%È¾ÛÓã`•¾wçí§Sá¼Œ\"\\-dˆÚáCº`ª•\nnÿ\0:8¿K<FÉ™éƒ\\Np¾™yG»\0ÿ\0szš¦9<[\ZD“”$EAM¨³bÇÛí«[†Ì”Œpq˜ ´Û‹ò\rÈû‹ì\0*¶Êƒ¥˜|Ê‹\ZíEºô¡ÈÌ£ÑÜ0Qß’Ô<h¥|n&GÙöÞ^JQ`Ø=Ž¾oIó³ÖnmøÝÛpÚ«‹C €Ýªñ\"ïºñòOzÙ Æ”»F4›Ù~=GHÔ+Õ€\ZõDçÈèNFé“9¢d«Ž¬|pˆ·æ>î”è*?Ó9ÁƒdÆZ\0zÙ™·ëäT·›=õú¯ÈÖ×¶´dn0+šü¼4ATj…òc}x»øÖ&6ß%ŸrÝˆ@‘ú‚6 ž])ýÏ?7ã]Kém½bV,4ÅGJH/ßgÇò{-~zÐ?E¡òe£F€Ñ£F€Ñ£F€Ôs #µå^?àþßßRkÆ[èèzr˜TDÂU ’q~4:A6:¿7ZÐ7Í†g!òv¨§çNùúr R’šïÍ#]7#o™\\Æ¬éÚŸŸçç¯¾ýIµ@Ñ—)‘bL{æ„Ž6\0øh>kAÉ÷åŽ+ø¼ìh¤B{„>¬b˜Ø{˜ì0R(þ®ˆâ„#8Š!8™eÚó?RÐ¦[ïö¡~+]Y­~6I£\'ŽáˆZ È¸žÃªêû=‹ïI²öÔÌÅŽsÙÂ^¿9‰¤Œuí¢qþÓ}ƒÖ{ÀÌfåÅ›ƒ\0©œŸ†ÉëÀY“®w×žþÃL¢Ý„Ëž^$RP)¸Dr±I=|…’H7öÒˆžP³G8õ ‚Pµ¸B\\F\r‹õ£7v?ŠÔÛ\\y)Ê<)$f;)“\'A>)ºkç@÷2J1Ò˜¦d&M²S22ƒdFÌWç¾$tÝµÝ«rh³cÇ;¹åphrñ½ì¦­L×ÙñÄØ¿ßZþh2Óä#Oº$}­½@KÌV:\"Ú#ÉÓCõfdrÇên¸jeË.3¡ˆyˆ¿Óî#É?\Z9ØÙKøE³1Ep ”#°=°óØ ýÏwñ¤[ÒË<dÚ°e›“¦i,¼û<¸’IÐøê«O?ñÐ)•8Á‘edORXœ^NT†»å|orÒÌ=ºØM‹µBÀðb]ØZêÇ÷ôLeƒÑd‡fÁXÁHÚYýGNFÙÐüÑï÷Ô¯’IµÞ&b›~ªÔ›U`{d‘×íÔ„*Á\"mµ$®3Å…&C(ÚE¨ãØÍkbÙ šx¢ÊÎà¢£QX¢À’xî»`èáà¢Iê,ÎB­=äMé)`Aý.Rÿ\0¿žè¬$|fÈæñíÉ0˜ùmã‘\0•Tk¢\0Ÿß#¨2’FUÍ;t~Š¸_ÄNùR©qaŠ€›þžüõTaô¦BJa–IãvË	qÒ?i\'›²Ý1ðW±cùÐm{LRGê,Ùxáy~\\xè# ¯’Ä–óUÝÿ\0\ZØ°àâ?S5ŽËÿ\0=øÿ\0ñ¥ŸOìÉŽ\"‚8€ïõ’I6Ç²lžÉ=“§zF\ZF\ZF\ZF\ZdjÑ4<?ÛT‰,ÁGª¢¿WUûƒvo÷ÕýSÌÀW»çÝX2Ž¼ŽCf˜Èi38¡b8É×Á4><G›Ztø¬¹Š}¬ˆýœŒ%I\'Í°6\r\"úþuÒœŽ„œ;èßŸŽüüG‘4eŠ@„\Z%T5V+à×ZmõÚ†EÉÁ…gÆÈ eiÚUíß€´o&Á[±ûê8>™ÝfÇ—që™„*¬ëÃ¦¤¢Ñ®€#ï­ðæ:Ï\Z6DTU8{œ‘ì#Ýíù\'ÍëYú¯iäLLÛˆ…áöþI/ŠðUU-}]×‚tnèØ°ÅžÓg¿¦i£r‰$¡ÛÚÿ\0Jr>ß“ÿ\0:A&.D™ƒ”ó’uPù+ò\'Ú‘È…š#È:s»íGut\'nÉŒF*žAÇ‰Ì H¤5ŽF¿ã[wÓÿ\0Mˆ¾¢ã’ò—B‘WW²I$P\Zø—¹¢ƒÙ¥»&HQ\n<©Ö‰ºð¢ÞsH…%\\£ùQªNñ´S×à\"%Ù»+Ï³îcŸ\"wyÝD/(LUVPˆšòK_DøÒ9wC‘j»¼‰|]½2O´1¤ûÚý†‚æ“LQFFàÂ¸<‹\0›¾Ld@|6ƒ®þN•K²	†\\L™[™•70W$©\\µÞ×wä§O3,ñ¼$s&Fk“ ¾ÊkQûP»#Wq¾š!½¸Øq…cb¦GT?¬w÷?¿Þîô\n³vÕŒ/ƒ	%P°ÌÎ å ÷LGBº±§;$ÌÌßŒ““rH}8€(\0…Ø­ò³öÓ\r¢TC™V0}‹B «_¤vß=Ø­3‡Vèv|’IºþtE[ ›5ò~ú“F£F£F£F£F£F\\í¾)€¢¸,jX1Õ(¯úÝt,ù?ßRèÐUÇëóJ9ªéh=“çí©Û•õU^ãí¬ôh5Ü¼léˆ•aEæTÔå¦Ø²ëÈ ›ÕìM¯ÑRcg’N\n¿#JüüÑ>IM4h1£÷þÚõ–õî!@Wéñ}þÚÈ\r{£@hÑ£@hÑ£@hÑ£@hÑ£AÿÙ');
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matadata`
--

DROP TABLE IF EXISTS `matadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matadata` (
  `id` int(11) NOT NULL auto_increment,
  `owner` varchar(45) default NULL,
  `title` varchar(45) default NULL,
  `name` varchar(45) default NULL,
  `digitalsign` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matadata`
--

LOCK TABLES `matadata` WRITE;
/*!40000 ALTER TABLE `matadata` DISABLE KEYS */;
INSERT INTO `matadata` VALUES (5,'Harish','T3M=','QW5kcm9pZA==','613a40dd006c8dca05ee49bdda5ea7b1c65a89f3'),(6,'Harish','RGF0YQ==','QmlnZGF0YQ==','431e83cec42cd9734efb0320725f6fbce8769e89'),(7,'Harish','TWluaW5n','RGF0YU1pbmluZw==','-6ff6f5bb00f79515c8cd9de62913901de21d14b5'),(8,'Manjunath','Q2xvdWQ=','Q2xvdWQgQ29tcHV0aW5n','1b63e73f4bc6b20c4d4205b7553da8796f434714');
/*!40000 ALTER TABLE `matadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `pincode` varchar(45) default NULL,
  `status` varchar(45) default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (4,'Harish','Harish','Harish.123@gmail.com','9535866270','4343/12,Rajaji Nagar,Bangalore-21','05/06/1987','MALE','560021','Authorized','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z\Z( \Z%!1!%)+...383,7(-.,\n\n\n+++++++++++++++++++++++++++++++++++++++++++++++++++ÿÀ\0\0Ì\0Ì\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0;\0\n\0\0\0\0\0\0!1\"AQ2aq#B‘¡±ÁÑáð3Rb’ñCr‚¢ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0?\0ýyÎ=O½i ‰ßt7.O\"—’bäž­ÄäHÅN©¯Ã£œO‰X­œ—`n¨qRñ?2ƒFi_í8ŠjË@âqó*l•ŽyÂÁ•ù&a£¶o(	%SÉÉÎ÷•âÞìÿ\0¨ýÐª*m“EÊêGær@À¬Ãí¸ÿ\0Ø¬>­î9Öñ)q®^’£ÙŒdÆ½öí»ûÝsÒœ=§qKBÇjr]1€nJº±Öí;ûŠ«Ý—™B|ÌCŽ¡·@Üurrs¿¸¢zSÿ\0™ßÜRb¬j_To¢÷ÏæIó+¥ü‰e+\ri<–e©v,†HŽ±ø³\'Þén¾¤\"M¡cÄÔJ)ƒ‰->!¸ªº“æS‘Ép¾y•-}Ã²T¶eÅîn9 ®\n,Oätê€Å« ,Í±Ëæµ²Ôû×™ µŽ‹‘å—z*Ý—4]©mßš^¥öðÖ’îi\0]) äÞ¨æ)=ËJ\\,Í{xÈ›Â3JÉ#³È\'\"FåJ§I“E‡TvÇR§\ZÇÈì-	ÆSµ‚ï7(SNã”m·z§µ¹¹Ùês^ß†öÒòP=Ù¸¢¾2,1Üƒ ÈüÉ°]}\\‡$B×/\\øÆN(:úFjË-Œ®‡.ÎÝñCôhÚn\\äwµÑ];<¼R‘˜®jâˆÛ4Á3MÀ tJM¢ä 2–75Âþ+/¢žƒXåöš‘Y¥ªÀëá±YÅ;rë­«_A@÷¥Æñc‘º£N\0Ânx«\"y³›dðˆÛÕ;ÉÓÆì‚+R5î-âÔ\'šh”F!9m…Óˆå|Ð*¥\r)I=å-RÐuä‚aÒ’NMZŠ¤£5™&sÜ2hÔ¢Ë+bfâ€/¤\0âù,º¨»†0¼ÚbóŽCaÈ,\ZÝ[ó@GS\0¡Ë[•£\\©‡o#­lÒÚ@\"mûÐow+µ6\\’ƒ´ìÐÏÌº×ø#šxØ8Î\"€bv\0CEÐFôäÑ„/¡Ê&y”FÇ;³$4 ›:MKÙ³í?â½=®Ë\ZTl2oÆ=èýžÎN2làtx÷¬É°\\D\'ì\'Ž}è	Éu‰k³¿%¸i§ÉSc¥š0lJnkÊÓ˜½‡ï43L\nvŽ½ã¶Û‚Ùd¼/	Ð£ÓE ½ˆp\Z dÉò<%1mŒoSŸ3ëHÒÓõLŠgá:è-ìú×`póVÚWÊÓmÓi[æ¾žŽPà7å¸ôX%n-	íµÇz›Wqµøyª/:ßªƒ=a’MÛoa©A©jGb0³vÄ1?7/HöÅÂÜÜ³»hã”çÑ®d“›»…‹—žGq)É$t¹7…½RRN!wTª§\râ™÷îAŽ©Ïá¶JÌ†ñÎnz,\n§¿(›„u@GÑ‘Ú“Ç5ÖÖÆÌƒKúŸß$6Ñ°g#Á<óYus“p9ÛšI´%öábJiäÍÏ·šÕì·ð^nÌ¨jB!]I‚÷—?µ\r+.fÍV—`Ä;r¶ÿ\0òIÓìHI6•žôfÌÊí˜5ÓE;G—ó[nÂˆä%mÿ\0äºÝ„öžúAèßTÞ„x.³kœqwd€ù*bwkÓªë6«Á8â¸ðA©êéÞNiðN7eð‡C&g½\'OYLâ1·	LzX¡“ít.†vÜuQµÎÅìz·¦J,&n6õ²oÑ¢‘·‰Ø3µìöÔÁ3n:ýU­’Ö‹àuÚy(4õ2Âfân—²¥²àn<QºÀêÔBJÝ>ˆLÐ7/4”^ê,Ìl\"à]ÅVª˜4t\ndvw¼®€Ä\Z’v¹_’Zž#)/~LÏ&g@Km\Z°=XÈs²Ý&ða&ó!\'%C#»#Ÿ×UØÜ,Á…½PêfdY0byæ‚}T`s»=C~ˆ\"®Y,Ø›…½l¸ú{»æÃ[)vƒßÁ\0³tËTmñdÔ‹¢;jFÞÙˆuïA£Øãµ3ûÍÊ+vŒMá˜»ûÐpÏPîËp¨vl¯íÊG¹eïž]=[V%ÙÖíMŸŠ?õ¸µ’`<JXìº6ŸãàV ¥§ÿ\0r{ùþPªjh›ÄãûÞ€¦žŒ“†OŠô”1ðN/Ë‰Žh-œNÍHi£‹ùA:]›(>üõC¤¨‡¸Çxû&äÙÏÀôÍž:†ØŽ {Ï¬fôÜTsož@ É´#~RÇ„õ°ìÆxŸŸK ÜSKÃ+q3­“,¥ŽSxÎtI¨KÄ´ð2QxÝ…ÚÙõ’GÃ(ÄÝ²¥MN×$NÏ›P©$\re¦ 3D§¢øãuA|„XNGÅ-)¸4@¥\\a×¾Š5tnsƒ[ÙæªV¿;eOžQKow\n×O»­Ô®Á\ZÜRj…\r/û’ûÐZ;³`@wT¹ü1‹wp]Äþ^+Uµâ1‚!ww$ã§k}dÆç¡@DN˜ïÂÑ×§èAA­»amÎ—[¬‘óð´aŒ%oƒ‚!wi‹[\ZÜgyd×Q‚$uXrŠ;Ž§ª›86Ï•ùênW[S# m™¥íÏª\\ÙžF7†7¦ˆÏÙÐeo›¿)IvaÈË-¼M‘Ù(Î¿†T\rCADÜÝ >ò…´ö-3¸ ‘—¶…ËÔ®¥¦¼ùºÐôBH!ìïÏî€06¦6Ø4=£Lú,ÍZ2An¤&ã‚=b©·ô¸ó]ª–qÚceo\"Ô œiéÞŸ‡¸›}V™G+3‰ø‡@n—ª|2X˜Îú|Q}H€|/Åáš\r6¯;M‘…#$ uÒùû”±¶Ö°ù#ºx¯v;ºøê¤37ÒöNEF×ñBì.®’†¶@=cq7¨ù¦$ˆ>cÌ²¬öfoý‘F(¸˜nÂ•Š¹®“.™c-‡‡’´2Ý¢ÆáQ€åæ£l¦´„äyw«úy Ÿ´Ÿk’¢ÑDKŒUö”xžMo	hì„V“)6jEuš#^ewiÉ£#]‚6ÂÌNÌòAè©ÛK›ŠžiÝ)/y³G.à˜‚7JKÞlÞ‰jÊÂã»nMÒè½/&8òhÈŸš\reS nfóÏ¢#ZC‹•ò%OÚá‡ùœ€lòû>We{›ô]—h»\nqÃ¦.§š›M;žë<:&j&sG©P9þœÑÅ3É=XÆ·ÕÅ‹¼ä Ð´›ÞþþJÄT“žÓðì0\'ê[ïü&=2LÃ©Ø|?Â_Ð£µÝPoâ~Šuk,Äù 3ß-–3	ê¹W°4˜ˆ´Õ°><3ÜºÃŠß5h°Ä1E%Útú ${M’ÙÙcnÐZu;¢³¡}Áä»³åío™¨Ô\rÝ³\Zs‰ùôü —µ\'ÞaÄ0¸sS%c¯ww/ #”Íÿ\0²ñáÓ‰¨³\'sZ\rñ7BJrËãc°žaB¹âŒøµU¢`vz<gdg‰²ÙÍ¶!¯zí;]¯¨æ‘]‰™8rê©Dñ&c\'Bh…ß‰ºB»žjþ\\Ì+ô§.™ “µÁsð‹þÝN›‚Ífdª»JK^Úè…·~º„dm`»»E+¤$»A¢ä±½ïÄGMï‹œÜ‡4HqÈs)9âºó={B@ÎvŠHÈc.#óæƒ2ú°\ZÜÞ~èŠ1¿7GRS°ÄÍãó?^II\ZâwÓú ™s²ºtþ\05\'â¹4ä½Ü-úª4Ž”Ý·k4ü”\rCRÃq;­²Lº‚WñM&øØ$©¶‹b%Œn\'uL¾šWúÉœpgð€å”íÉ­2ÒöFŽVi¼h*¥wQµ£©N8T÷OÒ€SÕ1£ŠšÁMK£°Šnyê˜H <ræ’Ž®\'’ÙšcwP2AÙ÷êŒÓ‘ËÅfžÈìQ¸±Ý4Z=™°ã¢Z¯€ºB+k\\Î	\ZÞº)ÚæâŒåÍ¿å|ÕmLw8‚¯³æÆAÂû{Ð:Pãvp¸gdjw?ù]ó²Ó‹#Ã Ó¼}Ñ©#áwÇ>¨¤ÆÚ<|QâË…ãâ•ˆ¸»oÅ·}ÉxÒÈ*C~c\'…zžö_+O19Œž>+èödåÌ¹ÖèY¾#ÉM|{Ò:*µ$Û—4„Ó4\r×¹\0jq…¾iz™„`æäw»v\rûE/OO{Èô	¹‚6ãvdb`þ$‹›³+‹ŽMDDæWa1¿Nh6=c‹ŽLo.åÈäÞ¿<˜ÌýËÎ~òÑ³&O_ÜÐ¥f\'ˆ£ÓÚ!Ó3ìßáÛ mjÛz¸²h‘–º¦k§Áêc× HïB¬±04XíNô¢tpÆ).‡½:iç7s‹[ã:‘°³Üó\ræStî|À—;wé’\r\ržÖ\Z‹xôJËMO¯¤ù¬ÖOJÜšó×ô)~‚éIÁ\0éti£œÅ.04ü­OVÇðÔGcüÀ%¨6D`–ºÎé‹òµ=l€ÚxÁÝdŽGÅ±³›\n6ÐbÇ	Ô!NZqÓ>í:¶þñd*Ÿ¼!í<Ú&Zaq”ƒâ˜‚˜ÈIoÛ¯Ýu´@ŽFžå¸a~,C\'G_ºÇŠg[G´{íÍ;[Ác”Ó¾È…¡ÀIRÐù¢Äì@=‚ÏiÏ¿©Aæ´¿ºFül‹‹»rrê#7€HÌœ;C÷Í\0ö·ŒÉÃ´?|Ðq¶ã\'GUeÔ‚Ëœó÷ÀIë“†¡RÙÎk›{[<ýÁ6”åº’rIÇ`ÄîÒ©)Q™œüN<=¶óÚ¼ó—›ZÌæ­á¿%3jÆ{\rÐô@¦÷«³Ì„…{÷që£Šz¶Ñ0vÊû¾7\".<P#3Œ-À;Nø~Ý1›2ÎG¼J”Å¾¹ùç§šgeÒc&g‹ ðÿ\04Èc‰›Çç\' zòAd`\rüý£›[á MAC½q‘ý‘ËÁ.`53˜cl<‚©Xfq–ShÇ»À%+êß+ƒ\"ûÊ«µäÆñ]–üJbJQx[mãµ=;‚4ÓÇ	!ìÄÿ\0‚}•Õ3eoô‹|Qé6\\q7y-ÜuÒe™Á¬àg ßª\r;eJ8ŒÜ\\Æ/ÊR©Õ»Èúë—Š®ÿ\0üyØmŒ_[ß4•P¨€YÜléª˜ÁÛ§vz–·DvÕoZpðÊ\rÈëû’I¬8áàxÕ¿k#ÂÍá¸á•¹žÿ\0ÜiÎ!Ã#yiØæ27xÑg³´«#Æ1g·_º<³D‘çüíú ØšäIº9¿4ëgÒ4drp@€D±Œˆâ:®ÇÄÍŽåÑÀáXó´9.¶èµŽ£÷Åb˜AÍŽýú£NNÆyxÿ\0”,·¬‹1Ì+[=ìsn:©qÇ„cfm:…JŽ™¸nÓ`MÐªíIÖê}kœì£·Š«0Õ,·r\0S7Ã©@¬“vÓÌ”mæ’íJ\0»‰á¸i°zÙtý²Ô|ìG&·O%šÉŒïÀ2h[œá´,ÔÚþÐ4øÄ®\r–æ|j\\dx‰™4j·Q8‰Œ<Gê¹«oYóäƒ•7F2¹ù¥«§1Ó;GSâŒ]èñ’ãÆoaòY¢‰¬fúLÞìÅõî@EÑâ\'Á)²¢.&YNC?ÂÐs¥”©?5Gl¶6÷_÷É¨“+à¿.åÚŠ¬.1E•².Ówð{Nü$öcZÖ™Žg—y(9O²%~¯ÂN—9•¨*&…Û·q‡;¤±Êé„Ž¸²NíîáÚŒßÉ\06\\7Ðð¸ÇE§»}{r•š÷Û#GXÓ,n.rG¸©$hmî6Éá¨Äíg7\'Ž«˜ÄìLÎ7ÇDäåÜDr:3›¢ÂãïþÛò÷¦¡s0ÏÙß5È ¸|\'Q›|— Øc\'šy £QsÝÆFö+TóÜbp\"h•ƒ.6}?Âís±_Ún¿T\r2ð¸˜UJf	+ýDâÖ€î&ž}\Z:2Âr&ÿ\0\0‚¤­êyÜŸkñŒCÀø‚¨eòÄ{!)´«e´ÅðTŸxmHNÀâ^{-ù QäDÀ\Z8õXÜ˜d&ï ØtºcgSÜºgùÆ·Œ®Éåà\ZH‹}t¾Cäœ£f7ŸÙ/ð€éôcOÁ14¡î³M\n2Q!öGÑ/+Ì’ßØŒ†iÚ‚\"a‰¹¸ëæ‚Ø01±ûN7\'Ç’lqŽGÊë-6\rô¸¯ü£mn£ÂÝmš&Êáˆ¸ä‚NÞïLv¤;¸ã`çb~j…\r!|Žq:lƒ\'­œƒÙ8#8#<š.JÉÒ¼‘Ân¹Yy$ÀÞÈ6ê”Î³7L\03( :%MÀ*Žß\"í\'\\¾I­•A…¥î×;x¤dõŽ ŒÉÉ•5Ôí\'V U:ðFþcðšÚÁ­…¬ö’õQá§`µÉÏäƒ›Fsh¤\ZØ_Ýš%LZFœÎd|WXÌTÃ,ÚBãŸŠ F¬·¹ôâ7_h~ù£Jð×ƒì»T”-\rÂáÙpÏÇôª­¦ÆÒßwÐ \\	Í§Dí,oh f/—¸)ìa7ÚòT¨ªœÖ–¸\\ƒôî¤\'F;^ãÕrhÀìûÕ*ºf¸R”´âÄ\\W·Ù‰ƒ»#Ì¥ç‡-Jµ5(¹Ìü>Ë‘Q¶ÚŸß$eauš2hÕ#[y¹4j¾‚ªŒa6$x[ì–¦ÙÍ\r$\\ß<¾È!É ŒnÙ©ÈŸãXØY}\\y÷§é6<eØŽ\"o|Èû,É³šéEË­}2·ÉËÙ½vn7·ÑgÄç“3ÎŸEôGgµÖ›w[ì…>Îh.\0ø}%í–ö÷ôBÚ2m\Z*{;e±$b¿—Ù-šÌW»¯â>È#¹û˜¿©ßT=Epç;+óUjö[üË½ãì˜ž…¡­h.Ëì‚D;<4Ýoªf=–#ÏÕ\\¥£ho?ŠÊPá™?¾H>Z²\'HrÓ¹-(l\"×»ùw/¦¨¢he#ÝöScØÌ$\\¸ù²	Q¾[9Ç œ¦h{¿¥‚ÊÅE\04åöCvÎkYf—ë§Ù­r7ü%v{K^ö“¯þU£²#.×[²Óö[.Ãw_ÄgðA.•·Œê4NSÊ^Ë4ö§Ý³›½îøtðZfÍke¸.ÏQqo’	ò¿ã+”¼9êN~àÌ`sŽz÷}•˜ AÿÙ'),(5,'Manjunath','Manjunath','tmksmanju14@gmail.com','9535866270','4343/12,Rajaji Nagar,bangalore-21','05/06/1987','MALE','560021','Authorized','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0¿\0o\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýˆ¢Š\0ÍfLBƒó\Z]†œ£‚„V$Ñ $qDCÌaŽxÍGy<¶±,±¢¼JàJK\0p}ÎqÇ|ÒlObDŽy4ìb¼óÆÿ\0\'°ñí£ßh£IEkv62Í>§ç8ÂGj…w»’N\n/ËÏ9xzêÞ1µCø›ñ{N½ñ‚{[]Â†æÐD²f@Å|¦v@Ë·ËŒí ‘]´pnjæ2Ÿ)ö{ð´Ìb¾wøƒûL^|\nñm–—¯øÓHóo$hPjš|ö),¹`r\0ÊÄž	SÆGë¿¾1è^2Ðì¦\Zï‡¦¼ºQ˜ìï–XòzbrÇè9¬ç‡pv.œÓGWI´\Z{|ÜŒŠnxÏ@kµ±¡©÷…9úRZØ}¨UÁ§R¨É Q\0¹Ùœ[ÂdvU>ñ\'FqšKËë}*ßÍºš+hK2Ë UR~¿ä×›|]ø¡iáÉ«x—OðÎšAç\\¬VÑÌW8>eÑ\0¨OpqÅ\\)ÊOD’G[yñ\ZÝuÓ­õ,ëLâHm^_5ÊŸ»÷yÇW	ñOâ´´IWÅ~!ø}à½BüHïq©_´±2\";E¿\n¹##`g9¯Šüsû]ÙøŸâ/…õÄ*Õ- ½Këi,_VÕí/â©€–ÎÑwv&ISýž9ÀÑ>=ßþÒ:ßˆæ?þ)éþ1’õ­Ï‡´\nhºËFT¨-~k[ˆÆåÍÌÙ9 {ú1Á¨¥)*ìo|lø«ã_‹xgÅŸõ«	%6öÚ×„´í*ÓHÔÁ,xçpUÈP˜ŽHÎ\rxm×ì¥ñ^ñXÕ?±ÿ\0j«éâžËÅú5ÈR§/:Ä±€Ù8wc=«ÔuoØûâ\'¼imo\"°Oô[?xL¸Ðù/´¥¥¤ñÉo€Ï’¥²X8Çi°ˆ>M4÷ÿ\0~ÞÙéÑ†H´oø~VŠBÅ÷‹o> Çq·N˜®˜ÔKH˜IK©ÓüŸâ·‚¾Ê5¿þÐpXG,‚OøJ~E«6vï†R\n”r7ªòp~èÚ{ŸÚ“ö—øEñ³ÅzDSk~\nÖõÈ_LÒõèµMT†duŽH\0äŽC!‘žO†É¥Cð;B[}?LÑ<aSög³ø­â=!¡VM£k±òØôÇðçŒŠ}¯í7â\r;ÃvÚ„?~8iÖâèý¾þ8,~$øzX•šÖVµ¼8\0¶dÃ&â­’æÖBækD~ƒþÉ¿µ„?®`Òm<7áë-.Õ!¹±ñe¶¨Wf\nüª§p9äqß_BÉ¹ã%™K/\\ü¹üëò{à§íEgâˆ‚{o~Ì>\'TËæóK»ðÎ«2¨rYO–È¬w\"B2OÆ~ÿ\0ý›¾3Câ>¦Êw)®¬õtÖlVR_z,Êw(†PEpb°ö¼¢©UhõõB\r+ŠZ+Ë:É@ÜqëNÚcFÈ7Ï#Þš«¸â°>)x°ø/ÁsjªòªZåØ¤±Ä„m?,ŽäSë}*£\'e¹7J-³øóñFËÃÂ(.,¯ç¹¶—Ì‚ÒÂÅ¯µ)ÆT4‘…ü‘Î0’>e×åímûBêþ0ñ1Ð|<W j¶Z„W×qË¯Í¯j‘\\I(`neB¶¶K…»šäÆsÉÍïÛöÙÔüWñcÀþŸÄs/†<E­Ge¬‰¼ë&í7\'œÖ¶Öä]]@ŠµÌÒÆ	z/	áßi2øÖ(4m:\rCÃú¬’ßéºm§‡þÒºŒºf–ûT¨mªoïÏ”pHF¿†¡$ÙÃ99;™º>¹eâíVËZñ©\Zæ•a¨¬:¿ˆ5I®¼I\r«™J3Ës$ÖztnƒŸ&;•ÚqÏÕàVð×†4í;L°øœþó¥û%«jšOÂý.U$«9¶EŽåãÃïÜÄ°òÇf¯ð•÷ˆõmkD×t»§Ò/ïo^ÖÓÄË¢ÃâUR\0Döú@™K]Í’ Éi\rµ¤\\Ò`V§Œ|5á¯\r|C¸:ÿ\0€\r¯ˆµ›Ï¶ÙßüK¼qãÝi£ùm4xYRp2­.#–)ƒŠ‰7)èŠ‹åÐô¯‡ß´Äø—ªx£á‡.¬;y­´ˆ5ïˆÚ­ÌdCo4p«„¤ïÏ%Jäôz¿ÆŸˆ·×[Ù\\Yj¨‚’GqáøBâ)G\0ÆÂKÈÀÎÐ8é^uñOâÇÓÃ±ÚÝé>:Ð\"¶M‘§‰þ(i¾ŠnH$ÚX§˜¹#!3€`×žÂÏ?kšÊoë\ZëÄÓ]ÚØ~Ñ\Z•”ÐÀê¸7J#vPAêHÚ:bnšg£k?~#ØøÆ[$Ô|Qi©Km	#øç\rƒó7ú6£`§\'@k‡½ñ×Æ-SNÕ>ÅûD¥ÊÝ®bð¯Ä/ëw9g\\[«d`9ÎßA]nƒñƒÅ—Ì‚×öƒµÓlRF·™u\r;â„åÕH—l²(ÁÛlŽsœâ¼Ã^ý o¾1jú¤jñøi’i¢]‹)VhãÚ¨4A~aL—ŠÒxÝ¶¬\nÖ(ÊæwƒkvO\ZO§_Üx/Åž$†áao|gð\rž‰®\\£«E—Ê’R7(fXÁÀ9\"¾¼ø\0ž\Z“Å‡HÖ—Ã^ñB^=Î“£=ð–±¦ÁáaxÛ]F÷	0ò6ñ_|Bý¢îßIƒAø“¢Ïáë[–1hšgŒô;Ù|/­Å»ix®§óN›våÂ»¨Á$àŒûìëã3àÝËÁ^“TƒO¿¯¬<;¯Åm¯ï\ZmË`^Ù>WÌ‚7Y×g9SNšpmwsõ¿ÂÝE Â·2Ïs(ûÒM´8<pO¸ëZŽ\0ä?±¯ÅH¾\'|2I­,ZÆÒ×æ;†–ÝœpêªáfˆîÉòåPÊ1É¯]‘ÇóuaË7Ô‹ºL•c€b@$?…|Oÿ\0 ý¨?áñ7…´[=zÇÃ·:Ž°š]»ê?n¦‘\\!™6Ä2«½–2IrÃìÝoX:“qwäÍp`BÂ(c2I)ìª£©=+ó/öÀ{|dðåÍúéö÷÷\\›mÄ>Rü×™R2ö‘ìŒÜLùäò`L)c]Ùl=þcŸì¬|ãñÂZgŠ<¨j³(Ô54GÔ/5JMð£YÖd˜,OÌÐiÑ’gÜ7¼§²ñyŸH+w#øµ\"ÔæÓüAq-½î¿§ÂŠ?µ¼A:…xtåÆ`°„¦ÿ\05sÔÏ‹\"Óo._XÖbÕu(5ˆuæðšÌmæ×&¸”.\rê>uÕìñ¬ÅX…†UFX¶7ˆ¼Ewá9†Ÿ{-‡‰õOY•e3Ëå·Ä]z-www19\Z&žÆL)7Û€§^´’o˜æÂŽ»[Õôo\réwwZ•À³½²Yµ=nm9­Dº\'ý:ê%bm´ÒÃm¦ŸhØ¥œ©5CÂ^;\\½ÄÇ\Zö¬y-²IŒ|acæˆãÔumJ`±i:fìl…@ùG€j¿À_j¿ —\\‘´»åÕà›]¶YøÇRÜ|‹Û˜·&-~C«aU\"–Vxvi×ú|~×ÒãQ°ñD-¬Á¨]êWž›_ñ?Œu9VQ³Ù!ƒ‚!Y–O-e)ûÀhåCæ\'ð-Ï…t+­WKðW¬t½>BRïÃþ:àa»:ö³4vm1þ/)<ñµñ²Óãƒu‹)t‹ž;Už8Rm_áÍ‡‹ôt\0³ý•ô´$å™w8/€ÁàS,µ[øÓT¾¼Òì<Câ}\n©¹ÿ\0„»RÐg\'x}:Ç£ià8\0+­´Šä~>|UÕü/jšíõ®{¤]Â—-¨®¥¬j–:|,ÜÇý¥kv‘d/Þ@ü«Ç)@/vy—Ä]#ÁFu±»ð¿Âug”Ëo`÷ZÏ€nàt*SÙ…H=ò{Y>$ð¥æ¯ÝKª\\Å¤¦¬ÒY|H†-sOÔ¤(\"ÙüÁHU\0¿–Ê0YŽ3]‰šÇöðÎ‘¤>»¯eË{¶I¢øþX]OªU†›ªyW.ës† à!àSThŸµJâ×Åþð$2^ÚÙk²%œú]ú+2öíéYn!*ÛœÀë¼u¤‡¶†®©yuð×Â–úž¿â_…ºv¸ÆXÅÝÙñ_ÃíyK\rª\ZU”Dä©ÁI%ÚNÓœzOÀØø?Æ‘kš™¥[ø‚BŸØÆø]ø?Ä­…ß6—}	\'MÔv•!¶‚#áo	h+­¥‚|Fø?àÍ3Ä{&‚X>Ñ{à+³	\"xgŒ%ÜXˆ•À8!\"à·¼|-ø;ð»à–¥¦Š_d“Åv·O¨xRëÂ²kö–·ö‘~ëìo!V&)4q•i^0ÄHÃZZXÉî}¡ðö Ðü+ñkOøo¥xoS½Ô/mb¾×oÌÁoìo%;;«Y	À#ÄÛœmãvõa*‚;ò>•ùùð÷Â>Ñ.</ñV/‹:EæàëH/b“QÐ_ìvö¼,c9:d$žeÈ÷·†¼Y§x×G·Ôt»ËmFÒå‰s‡V\rÈŽøÁÇ½x˜êQ‹æGe\ZÙ3\'ãg‰áð—§¸»i£´¸¸†Þg¶‰ä’žEFm¨l\0á˜\' ×æL>¹ñ×î5ßéÄÛø‘åÓîmZ?1e°Ón.ïo¬6®m4ø6™²~kïÏÛÆQøG´Õ\0ÕOöeµÜ×VúrþúêÕ£	0‰†œˆ|Å“åœWÄÿ\0Qø»¤xƒToEpu¦ñ=’Áol«WM¥ÛQ–£¸D7h‚ã$s[à• ™‡y;ÏáÍwâçÆÛYày£ñE¾“gâ©59Aû<!ñ‹¼„°ÿ\0Wma0E‡P+„Xj> ×nn¼:¶~s\r…¤íKyoáØê	aná{;I¥¹r7¹¾Lœp~àÕþèÿ\0,¯dðO‹ü9ªê-™{7ì3\\ù~ºKMÅ”4,ŽF@$­|ÕñÛöyÖ¾\ZkÖ^Ô´MCOi´ëûO,ÂÈ/<ë½FÞ¥²6U[çµz\nÒ|½ŒQa¾,[kz[i]É.ˆöÆãÄ\Zœ€ÛÜ€¢(H\\,úƒµ·MœUÌŒG\râ¯xƒP™¤ñ&¡¯â(WLÑotMðiö~[ùž\r?ÃÖÓÍ²¹ŒµÜˆÅÂFå;Ú»_Š>/ñ—#ëš$o}â­\\êž´7X‚mRïS}+LX\02[ZÚ»¢œa„‡øMyŽ»%¥³fX_%Ý„z…Î‡¤Ëjµ\rY­ü¸¯f´+»}åíäÍœŒPÃœH\Z8ébiÜ­©xÿ\0ûêm\nX|-â;F›ì—Ú–£©/áÿ\0‡ç‘	KkK8ˆ“R¸Ç-4…Ù†?vÃïâOñá›Î·:ïÂ+ÍBÊ=Û|5ðÉõ9m¦\n˜xÕ ‰8lŸ˜±ã¥EÃý/_Íâ+[¿Å&Àg·½ðÿ\0€m”†Â¦Æ7RM†ÜT¨ó˜3%¿ƒÞÑí|‹à+_ÚgÅ¶™VK­+Tÿ\0„oM»ž`gÊÃ3XÛlœäuÀ…M¢ÜÓ.øêOê¾¹Õl¬>\'x†4€]FÞ\"ðÆ•o¥Î²0ÞÒX3=Ý¬Dr%Ë.1ŠÀÑ>xCRÓ«g‡àðÍÍÅµ®«sló]è‹0\ZOô­\Zí6;–€£îŽx_üHñï‹þ\'êžñ«4m£Ë$¯/>Ï}§1ŒQEÔO²ÛŠDªìB€N+¸Ó~j|^¹ÕMÖ·v5-.øÁmsp‰u}um‰¢ÞÄÊîÑˆÜ²üÏò2‘¿ä´&ÝË~ñ<~Z\\$ºžŒ–×S‚ûKŽñ®-â\'}Ô¶Í¾1c$¢Y\nmY!¹.»wn>Çð·HµžúÇÃZŽšú•¤óB¶öÖ—m\'‘	UšÁí¦Â»ÛÉ/6’àIm4¾Sùˆv×ÍÞð…ŸÃÿ\0Â]§êz–¿áRÒ<Smi<²\\}£GÔ#[ûYvç1`¶3äž˜5èÿ\0ôMnëÃöú¢ÅCá4ñÃ¨DOûýJ{Bº¦‹\Zß4ŒÁÒ>I\'`‘›V±úÂþ)ðÆ‹¥\\E«_6™¨ZêÖÞ ŠÔIœwï%²êë\0Xçœy¶ßud]ëÔŠý8ýŽüKc¯ü\Z‚mkÃZåÞu>6‡hÖvÉs•‘L,Å‘¸íéÅ~FükƒHÖ¾üJCiyÝ¶—ñM[,kÙ ¶Ô’9cÃe¸šVR\n`ç ¿¤ðJ}*ßþ•®§ró¯‰î´M5ÔxD^}Á±ŽE¸#;‹¼O%†wøžÆ)Óº:0û›¿ðQ‰5«ý£Ã°«kÍÅ¦Ïöè­\"ów‚¬d”ˆÖD9e@u„€s_žzf›¢þÉš%½ÚÙ7‚,5/XXøš{Ÿ>úÓÁ$°º,ò&ýë¦êw%Q€‘ÇPqú3ÿ\0Ó%?¼Cq\'„î¼UáÛ=!¿á\"Óã’(ÞîÀï2I9Ú\'Ü\0w‘œWÁ¾=øuâí2ÇÆšŽ³áwø…¥ÛøjÎßÄ×\Z{#‰ž‘e[]]Bçn«dRO”¹XW>øI8·-6ø k>&ñWŠ¼%®Ùé«©h³êÿ\0\r ´”ð\\IÅæ‰pƒ\n¯-å¼l{9<WgâÏÚFî÷Ã£S×oüK­øOÏmnâÁäò–Œºf«¹wÆäû¥Æx{´4¿ž.Õ|S­è\Z–£q4öúN•¤¨.·hg’_kbDRZhnÙælS¹³ž<3ãçÃÏk^(ŽþÍµï/TÓ›BžÅÄ\'],.îô›ˆËdAsžK`0q.ÕfÉ¯EF-\\ÊÖgÑúæ«à‹]+P°ñ„žÖôkßªëP5ÔrÏ¤®¥Á4Qá›Ì¿iBíUÜœšñDÐ<\'û>ü-Õ.ü1âÝoÄº„>ih—VšJ–óV½ä°3LŽd1´ªpÙ¼jiúŽ‹ªê§ÅúN•¥Ë¡ÚßAâÿ\0i–·¢+«ëFÜÙj&7\rºæÞH¶€3<Ç#Œ7“|aÖõ?„ºÆ›.…oo¯i÷Ñ5¹n,çŠHïí4Y ÛÜwË,¹™ÃäSPiÞäß[øWðãáÏÂßþ4¹tø‰âIq&‘áF½Ô­´ômJÚ\0oïny¨‘ÛFÊ˜¤ ¶Þ]Fpþ5Ã¤ê>!žMOàLšÜ¿aþØ“XÖ|{r—÷6»›À²ÅŠvÄí(Wä!W£x‡ÂvÞð\Z|BÔíôx5nt;]Fõ†ÍS¸Õ<Ë{£6Ó,pÜ,¤ÉDŠÀc‘å\Z×ÇèµdÔtXñ¯owz|A©\rnÍl#EtxKyäÛ¶6¶”ß\ZžNú²V¬‚?øcRmKÅvK«k:QG¢x…o—ÄÜ8ï£x•Rh!•—çÚ²U•r­^Í¤_ÝëßæÓžÛU±¿Ð|wá)õyäµ[˜_Y3½¬òÂ]‚•¸ƒÊ”ÉÎyÀ5â–?¼7â-Bm:ÚÓSð§†¼Qàmô&öÐO9‘nZh ŽT6u]’Ê\0Âº‘•Ü}²ËÄrxgÇºö³=Ì—ø«G¼”A9†7M3H’à¡ˆTGðÀf~˜¦•ÄôÜùëTø…uáÏ\ZŽ‰­Ï®™\'cµÓŒ6èæÚ_Ë,(XG1±\\íÚ©ÇßÅzÇÅÆøCñ\'Nñ?‰56¶´¿ø×§wq²IædÓ´è$¸(‘°lKæ¬l0A]¹Ú1Ÿ3ý¦>ÛG ØÍoa¥^k\Z<vö‰æák\r–‹b·Z¨t;\ZyãA†Ë Rq[àÖ‘qñ/á.‘\ZiÊú¦“§Ï¤XÀtÙbõ}nêQp|Ç+Ÿ\ZNp1È\0-ô)%kŸl|/ðæ‹ã_ÙªGñ~›âHt[m;Qñ^©\r“ì¹ÔõµÙT,\\¸šåb³E¡Än½Cgï/ø%ÏÛôÄÚF¯¥y~!V‡Tñärù±Á{q¸®Ÿ»œ=¼eÏÆ8Æ>7ø{xšEýþ«â=Iå·ÔôèØ›q3¶,¼?hÜ€ŠžL·Œ„°+cœ×ØðLxôÝGÃÒ5¶©öèôq5½­Éºw—Ä²_¶j’\0ÈÓæ4# ŒŽÜrãU©Jæ”¥ï#Ò?l{›½I[«Mb=aAö]P€ñé““ò‹Tƒk&ß˜°Âí$às_G¯…zF£6šÚçÃ.×QW»·†3s\'ÂmX‚>ÓrfÐoÆ7uU)×®>ïý¸ô}Gþ®ô¿ìÛ˜`šîµÞiÓ†#ýí:e8Ù×#¨øBËŸØ7ØcÕ4‹=Ý£ŽÊX?´µŸ‡±8h²¼³v«áù¾R®™ò€,Ü6áƒkÙ\"êÝKCÅ¶Íg`×óÚØxgVÐå–=JÒÒïn™£ÜÝ0`²þ$š˜Ee“•†SW“^wásÄ“]jÚ_‹´ïøC^¸µ‡XÓŽ¨ÂïRÕt»yCZjb4\'Ï¼ÒåðKMjÄäà×â\rN½Ó,Æ•{\'‡£ðô§K§¬G¦éÏþ±-×‘ªøz\\åÐ6Ô`\\f¿áY`Ölt­F¹š›û^ßÂZ‚‰|ÖýáÕ<%ª¿Ë èZ×vJåJq‘Ü­c\"9,¼N.\'šËFÓ¦Ô.e#LŠâ8íF¡t[›+{‚BˆïQ-¯,d?*Ì®™lµxÏÇ_€*ÒõâV“¯Ob|Æ·Ö :KÛÛéZ´ÇË‘o­e¢‚æ5/(£v2lV ƒôŽ$4«‹”½Ðµé-í¿²uûOL©}b’¼Éˆ4U?h³ž7’R·°.Á¼“´\0O#àŸˆPj^!šÊÇTÓ¼Eson¶ÑéòxÆÒÃÄðÙõ[{{ç-k«Ú\nªLŠW)nk™\nÇ-7Ã-[Vð¬Þ\Z‹á×‰õ»{Ë(Z°kÄM.[(Kk»=UTÃ1‚\"Ñƒ\"—7BIÇÈ¿´ÄËýÄÖž·Ó,¼#¥è¶“¦’±ß´–ÚMåæì“\\HŒ×Ëäl.¤týñà&¬x–\r_ÄÚvƒ¦ø~ç¹M/SÕ´o	¬’à…w¸µ¼1Ðdæ(w€aI5çzO„üñâGF‡À/³ðJDéZ,2[xoE…¹Õ¯îÈk¦ó;UÛÌ*@À8¦˜ã¡Â^x/ûáÅÕŽ›«Íªëzv›.Ÿ¦ê_¼mA´vgónL_j•‚ª§%]°6•¯Vðî›&—£ÚG~\"¾–Æýïµ+;t ]êSZÍun­ýÀ ²²	Ù®8®£ÀºT·VëÞê—Qj“¦ª·¶%.uv\0Fš‹FÈÆ$“|VVæ=ÓLT…~ÖÕM¯†Þk{MJãFžLO{ ú\\)æFÒãšTv¹}ÊçÌ¾™w˜3ZD‰{Û™^ øq ëÚæ§qªêÖCÂÖ¯¬a‘%…½ïÚ5‹…;\\´·WÅlãn7nZ«â-gZÕü_g§d–öðjöúd–Z,LÒ>±©À²^Álƒ0iÑCh	ÈŒÊY8¯>ø£Å²i¾Ñl®´/Kj5‹«¦a¥ÁsLöÖsÉ+lû=Œnnn²B¼¬À\'‰<MiáÉl4]&]VëífÂò[YˆÕîW+¿„ÔµYä‘W#1Z,dçV@¶=Ëá¿&ñ‡ˆ5[+m:Mqõ;Sº†ßDÜ\'½[{vŽòxd_º¡ØZ¾Ls89Î~Õÿ\0‚NøVûLðv­®Ámý»wº<6S,ÖAi0²ðÆ\nÎÝKÈsÒ¾+øZÚ€~øÃZ×RmO:dv\Z´º6¡¶9`‰Ò(|?¥!É‘K2Ç5Âü­+±\'ƒ_¢_ðN˜µ{/‚­«¦èÞC$sYxjÈ —ÃÖïhá¸ÛÁ™”†\'©kƒïIšÑ¼™ì|-ÿ\0	/ƒÈˆ9U•@n!un& ¼dužã¿9|}ðÞïÃ:Ó•Ø5¸7O¡ZÍªÃm©iÏï$Ðu93\rå¶NO¸ìÊ^§ôÏÅ–Wþ¿‚ÏjÜÉ ]øùrê¬Tg…lz•ñ—ÆTûA³“GÕ5;[Û–ŽòÂmµ(œd…–óJ–EóA\'\"kgG89çàª;r5¢·>a¿ðqÆ2Ù­´úÍ½Ôw—šnž“X\r6BH7­¦®.´¹‹~Ófg¶}¤²Î3¯¼-ªëMgƒ¯.…ååÆ‘%Ç…µTbÞl—7Vö¶W\nÛ\n^Úù\'æc$\\f»-CJðÇÆ­KW³Ò.|mçx\"ìCªiúN‘s­A¥¼ˆÄ:Ø^µ;B\r¬¤eØªöW\Z…ï¬5^øóS#È¶½Ó|e¨x#X¼šÁ3[ê)$rÜmÝ½Øîo˜¦½»£™GDrÞ*ðŒƒÂÖž)Ômu­6Ââ‡TÕôé<IöUfÂ‹h¹¡|Ns·¨$RiwV<’ÛJƒÇÓÆ×Šwè÷·^Öå»š/!x¯í­nC¨™¥PqÏZìmþx†çUk­?HÕ.î.HºKÿ\0øFì®n]¶¦Y¯´]FÑeèÒ ÜAçšÅñ§Œµ/iÓC›1˜Ã*ë2[º›	ÿ\0/ÚÜÊÉœ€­\0s‘Ç6™\'âK\rÛØÝøšÛNµºó´6ám%ïär%„WGæ\'5,Nà=9è>ÁáÝOOÓ,üm£º»jwvÚÄ^uâ }ßi\Zk1HNÔl^j’Ÿ9…¯_ð®µq¥Å­jòÜÛD–RZÃ{j,ŸO™$Vi„“E\r•¼;T.ÓÔ™ÉÊ¶+Ÿº½}oB‹LÒ ƒIµñ«…äš?& êCHm,^Òú@1¶AlÈ§iûAûÕ¥Àäïíd¿¼K­[Yµ‚ÛT‰5d¾Pvkˆ£RX®]|ÉW\r±¯JªFÊµŒ;\\æ¡m.™ã-kQºK\rNµ‚k¹nf´X®êŒ™Sæ;8ÂùVk³¼	!’Wt^îçÄÒÿ\0jÜÃ©^ßiÑé79a†w»¹šER!†[ÈÑ¼Ë³Àcc|¸\"/ºEÂñkÅãi­måó-¡’ñ,¬m­–3q¸9‰YÖ;„C&ØÉd³Iîå Œ˜Y¨ø-~\Zx.ö6‹P´±µ‰ãµ´‘üÕ´·ŽMä´IÄ“›©<Ù³òËr°Û§åxO…\rtÿ\0ß\\k\Z‡Šõ/jz¬Ð9þÐ7ÚŒ¸û>ÍÂ\r÷B°\\]–	šû¦ïV.â	´¶xô‹h-\"™îôÛ}Í§Ûª¼pêŒqBË…®D’I!ùu5Ì\'‡ µÔE¼·VÕ¼)ki¦Ý«^ƒ.Ð4[	FCÝÜ™ïo\nÂ%e^T\nwW±>G²üžöN’ÓKÒõ=AÓì^Š<Í.æúÑù¤–*š6š%ÜíóæÞÅ˜·ËúCÿ\0îðŸ‚¾#ñ­ã\rOR¿–mSÄÑ†±q…Ý4\0\0<‚Û‚uàuÁ¯ÎxwU°Ò.Vy|-­Ú[XZØkbÂáàÐt_)‰M*êõˆ_±Úg&ÚòÏ)bîb¿La½FïXýŸôû«™/ïVIœÃ¨]A©!DÐÆ¿êàÎU®Ôç“çfýÑµ\rÏmöH§pL§¥|íûcøZF{Û4¼‚|Ô}OEmVÒ&=\0{sö‹pN>q§ž™¯¢Q¶°5ä¿µ™mgb÷áíl.¦¶hÅÒê§KºLx¸`ÑvèãèkËÂIû[•º|7{µâ­5BÔ5½F=7|qhö\ZÅ‡Œ´ß06Ü¦’ÛS‹*Jàž•uûEj—þ\'’ËÅ\Z“h\Z¨‰ìí!ÔµY¬Þdä–×òÚ\\ÆÄàO2œàU¾7x:ÿ\0ÄQ>¯«èÞ\'×4ý>@Lúïƒ­¼W \0BÁ¨irGuùÉÏ$Üdb¨ø3ã|\Z£øn?èZGCÛé0x³©òmóOÖ<‹”$pDWX$gƒ^ëÑèyéŒÑZÓÄòÜ<:®o§Ÿ\'†ì5—rê©å­ßö¶2Á]•÷žFO\"´ÏÃ­Káf³f§ÃÖ^·¸$º„¶v\ZB[\rß|-¬~g.]ù„\"ðr›ãê¾>ð²^]ÙÕˆ#$ö¿4=F@;í’÷Q¸ù±·;Nß”ä\rr¿µø:ÆÞâké¼;ªÁ2µ¶¡âMOEÒ­ï¢Ú2‘Yiwó¹Qó´‡’ž(óßP-xº[«ËÄþ\'×-ô[d‘¦†÷W6zÈˆX$‘Ï©\\^_*³rL†Æj„þ&‚óJƒÄ0›[	õ«söMN{;­;Gºò*æåÛUÕÎå,±@#‰ú œàü$±ºÓ£½ÖõH_D¸2y·š–•áÛM\nˆÜ“:¶¹$—pî† 3¤Õ/üGÁs¯O®iºª[µ´þ Óµy®.¦kb)õËÈÃ¶ýËû»³ÁÅkÊä^9Ö.oä»ÐôøµkÅ@!»³’ê;-FÆÝT³ÉwqþÓB·Íƒs o™†@¬‰$µ±Òt¶‹T¶×?²ì–zµ–‰,:MÌj|Æ†Â¹L©\"4%”Ku3 Ù^qañ#FÐ™ôÏj\Zlš7Ú\rô6ºK›6}¡í$”‰‹Œý³S‘#\\ñâ»M;]“ãRZ]j²Åsq¬£y¥·{–¿„¿(‘c7Æ5.K\"A§@±Òå°ìIÄ†ñï…´?ì=ïD×u=bw³Ó\"Ô Ÿ]ÖÌckø‚fØ°’P2C4˜·ƒk¼{¶lŸ	ÛÃ §öÀÖ.4­>;…Ð\"Ôü4ßo–åw0]ÃJàf$©žø˜‚@:ž%·¸Ö®Ç†|/áÍ+ÄRëë\rôðÝ]‡¼ñ\rš¯É>£{òI”ŒæHÂ$Ÿ„‰yé¾Gˆ|_‹`¿+i·ž4±Ó˜^jD*Ò<)k¸˜àPÄ<áß.Y@4Ïeøi xWâŸÆ¿‡ŸõIâ\rsÃG~ž±¹-¢x>Ûr°ºÖ¥ˆysjGËÎÖû¼`\0@¯Ô+hìlã‚ ¡#P½\0íoJøwöJø¨ÿ\0\'Õ|5w¢èv¦Y|áèŸVÕ4”•À\Z½êî\"áÃ[øq€M}Ó#+FÐ»‚ã¦IàJò1ÍÝ\\îÃ­5,y€uÏ<WšþÔ—‚ÃÁ‘¤—†Ù\\¸y%°vd$yãª§Ü=kÒ+7ÆZ#ø—Ã³Ú¥ÝÝ“¸MlG˜0:`‚{w®<<”j&Íj|\'åŸŒìü=¬ø«Q[{ƒ²ÜmÏwáˆ·\nÕI9PòE#l;Îzdu®3Rñ®­;Þ[Gâ-^ycœ¤ðjü!âhã\\\09¿€°N0¯Ž™ÇZú3ãÅýÇ„<hï{®xe¹Ü’ÇâÜ[Þ  ãÉº·LÆãÜC`g äW‚üAK_Gma¡kßÍÔñì¿á\Z»¿Õ.\'r[,mâÓN÷=ÕŠ“·“Í}+Zs#ÏÛCŸ×ôTŽÙ®®N…dÓÊï\0ñ—à9lÉ\0™âšÉ\0gätëT¾\r]]<z4ÖzåïˆÈ{3gàë¯xGÃ×rERÊ±ß©–[”‰$_2H[\nXŒ‘]7†?g˜ü5lšÇ‰|K7‡/,•`ûv§àÏ	xBYr¼´?mJç=j•àã5‰©ÙøCÆRXÛÞê^ñ­‘•Åÿ\0¼e}âÃÀ+Ÿ6TÓ­âÓaã\'cËÏÓ<ú·tÝñ—ƒô}ÆÐÇ¨j¾ÕüQ©ÿ\0Ñ<+~|O{ù°²\\\'Úo¥x·8gSiX€Ã$×~Ñº³â¿ê\ZÆ§eâéü_}e=³µö ­q¤Ú:²ù©aj4øä$÷hß*³1Åz.…ã”½ÑZ=2ÏYÔ|+ònuaeÃ?Ù¬lIç(·w‘ÊÛP†8ÆNì‡ÜøB/ˆÞMKQ´±½Ñ,]²5Ì^ð>ŸÕÕ­ÒóÏ¸Ô&“z:Æ[\nmc¸ê¦Ð™ógÀ¿ÙKñ~‹¢é–ww–ÚL–³%¶«¨Ú¾·>¥vYYÒÂÖÛI!Èf•žáS4ª@ìš¾ia+ÙÛCcu$%lîï^þÏP»Æ\nß¼\'v£tˆ¹].Ó1Eòo 1Íïé·¿âM7Uñ2Üj~ A%¶¶á/µ¹$Â”²>§x\nýÃ<ÐCÀÌx®[[sE¼²×µÛ¿húË}KdÀÏbí¸¥­õÍ¸Ùn]±·KÓWÏq‘$Š~ps\\qLÉøÕãí3EñLžµÓ­<qã­]žûTÑou¤‰•çÔ¼Ks*ÇQÿ\0ªÓÒDŽ ‹¿“ƒé¿³Ähõµ·Öõ}FêF‡Å×:P°:å»¶áK< ’%¸<®å$Ž•â¾øSào…ºDÓü%·—oq¬ßønþñ,o59xtÕüQtO—§XGÕ,Ë‰6òÄ–}…ûi\Z,šm÷Å-WÅÉâ›fÜx–+¢[Ä…“Nðí¢ŒHY†Õï€Fr(RWL÷ïÙnÃU×þ+jñ›M3RÐîQãÐì•ãÒôDtí,£òôù…\\çjž?‚¾ÅYL¨2qŒü½ú““ù×…~Î6Z¦µãÕnž÷@Ñ¾Ì[KðäïŸccu{/$NÆBUX•ˆ\nv“^è\'šñ1•[ºTYf•sƒß€Í%*6ÖÍq3v®\0ý¨þ\rj—zXŸBñÄM,¡{—m)á¼bÝYV9Á\n}8a_(üCðwŠž=gÄ?µò|ß°kþ-’´FÝÚÃF¶i[¾zó×µ~‰øÿ\0ÀºgÄ-ÚjVP_ªe¢I˜…\r‚;~ñÿ\0íû4ß\'Ið¦›e.6ÚÜø‡Y“¸–o.ÚEì~5ì`ëóÆ×Õ5i´Ï‘þ$ü!ð÷ÀýF=oÅ~ð-ÊFª’èÚ>‹ëÆ¡¶Fú‚^ê/Á>Xsè\rM¬|H¶ñ/ƒíuÕƒV¼Òmï¾Þ—·öWai°.ÆzÜö–#•)jê;\nÄ]6‚þ>Ót9–j^ †e†çÀ_g¹ÕoØþ¦{Ë‰§@Ü/™å÷ï^u\'ÁY4¿i×:ßƒ¯,<IzHŸÇ‘·>!êÌØ!ítx]-íQH|êUsÏ¿{O¡š±Iø’¾3ñzëðI¦kÚ…¼’ªÚ¿ŠZôE°É1ªé6LA8R\n¦+¡ñtž)ðtÑ˜|]áO\ZjñÁöÏÈž&ø…5¦íþV›¥[§Ù´è÷.®0¼ŒüµÀxÓÁ2j~,Òü/â‹oêº»3¼>¿ÔˆüM¨Wß•d!Ó´Ð	\\=Ò¾Ì´­5me\'Öt\rA©]Ø”’}gMðŸˆb’BpeñŠ$	! ¶*Ì)]½ÁŽð9¿±ø“®hZf‹©iþ/ÖT¶­§ÙëÉ©ø×Q·+óK¯k¥¾m¥£B	\0â¹[âV<+½£øŸAÐ|9àkö²‹Ä–6‚çAðÜ»·}‡Ã–ìêz¬—}ä¹ÉÊ˜[ñ‡\"Ó>Ã©ëð‰Oàã\'ÚNðüSé^¹˜ƒåÀdRoüAvO!#“aÇÞ\nxñ¿ükÔ¼}áy|Gð·@Öõóá«u±ºñf³áètÝ\'ÂNHUÓ´M4½lŒ1g•ŽÒ\0?=\"Ó]kýœü§øÆúëÃ~±¾—Q™5ÛÝ\n÷Vc \\0Õüg}¿ç—«Ça@	%”gqû¯Lñ‹L|}i¨i—zUÕýµµµõÝÚ\rûFSÌ‹DÓJªG—\0Ü0b¡X‘¦¾/ý“ôû¯úÎ“àÍSÂš½ö»®^Ç}eàÉH±Dãwöï‹.APò¦¬\r\"*ªôS–oÒOÙÒÿ\0Qøñ,êš6™e©ivG×Š.#ŠK&ËBözLHÀÇ` ÈÅ·2’w€µœê(«²¢œ™ôO†ü1k¢Ë{kc¨k,ú‹ÅG¸(Ef\'’v\"ÀV¥)R)+çÛosµ$•‹R¨É§lôedx·ÂIâ½9­ÞâîÜ}àmæ0–8Æ	â¶¶zc(ˆÊÏš\"qOsäŸ‹¿²ÅÎ‡qt–6ú¾žÚ­¹{öð«<ZŽ¢ü©.£1-rrã½|¥ñà¾µ¡Dt-?O×t+iî—\ZømpÒë\ZèÁMW^›#\n>`\\WëÌ+~’G8¤ãdˆÃ*ãû¤tÅ`x›á6…âëU‚òÌ=’¨F³W)m š1€G±¯RŽcÒhåtÖ\'ä‡ðçMÔ¼=«Zéí¡é~³Rot¿\rê2Ë ´ŒXcY×ðeÔ&f^ÖÔÄízÖ>x³ÇZnŸeá½\"-oTŽnl´OhÛ´ËXáŽ˜“G“§…ÞuÛ¼îŠýk›ökðÃý˜Fû??aÙ±N÷…ìFÿ\0h\rßígšÉö9ðíËf,Í<öå£[÷eÃ¦Ýºã?ôÐ‘íŠÝãbB£.§çïÂØsVø£¥C«êÚÞ£â†\r÷‹4´H¢‘X9m3ÃvèvÐîÝ— `0	®ÂßöB×´»ýHð,\Z&âÙÈštRÛý«@ø_s5ÃFFoµW æY®6ðû·á·À­\'Àž\"½×džãS×¯ K&šC²+KT,ÉoC	jXã<òk±¶Ñ-l±äÀˆC$usÏ$õ=Mr¼Á_D\\p÷ZŸ\0Áÿ\0´¾ý¡uûH5¯ëÚ7Ãÿ\0jñ\"[²jïK)yo_–[S´\n€0X“ó\0¿|xcÂÖ	Ñì´Í*ÖÞËM°‰ †Ú\Z\"€\0ôÇZ»\"c$	}ÑÅ*¨UF+š¶\"U7ØèŒU„-»ŠB»iÁ\04Ý\\È§±ÿÙ');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownerimages`
--

DROP TABLE IF EXISTS `ownerimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ownerimages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(45) default NULL,
  `name` varchar(45) default NULL,
  `owner` varchar(45) default NULL,
  `description` text,
  `digitalsign` text,
  `sk` varchar(45) default NULL,
  `dt` varchar(45) default NULL,
  `image` longblob,
  `rank` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownerimages`
--

LOCK TABLES `ownerimages` WRITE;
/*!40000 ALTER TABLE `ownerimages` DISABLE KEYS */;
INSERT INTO `ownerimages` VALUES (5,'T3M=','QW5kcm9pZA==','Harish','QW5kcm9pZCBpcyBhIG1vYmlsZSBvcGVyYXRpbmcgc3lzdGVtIChPUykgY3VycmVudGx5IGRldmVsb3BlZCBieSBHb29nbGUsIGJhc2VkIG9uIHRoZSBMaW51eCBrZXJuZWwgYW5kIGRlc2lnbmVkIHByaW1hcmlseSBmb3IgdG91Y2hzY3JlZW4gbW9iaWxlIGRldmljZXMgc3VjaCBhcyBzbWFydHBob25lcyBhbmQgdGFibGV0cy4gQW5kcm9pZCdzIHVzZXIgaW50ZXJmYWNlIGlzIG1haW5seSBiYXNlZCBvbiBkaXJlY3QgbWFuaXB1bGF0aW9uLCB1c2luZyB0b3VjaCBnZXN0dXJlcyB0aGF0IGxvb3NlbHkgY29ycmVzcG9uZCB0byByZWFsLXdvcmxkIGFjdGlvbnMsIHN1Y2ggYXMgc3dpcGluZywgdGFwcGluZyBhbmQgcGluY2hpbmcsIHRvIG1hbmlwdWxhdGUgb24tc2NyZWVuIG9iamVjdHMsIGFsb25nIHdpdGggYSB2aXJ0dWFsIGtleWJvYXJkIGZvciB0ZXh0IGlucHV0LiBJbiBhZGRpdGlvbiB0byB0b3VjaHNjcmVlbiBkZXZpY2VzLCBHb29nbGUgaGFzIGZ1cnRoZXIgZGV2ZWxvcGVkIEFuZHJvaWQgVFYgZm9yIHRlbGV2aXNpb25zLCBBbmRyb2lkIEF1dG8gZm9yIGNhcnMsIGFuZCBBbmRyb2lkIFdlYXIgZm9yIHdyaXN0IHdhdGNoZXMsIGVhY2ggd2l0aCBhIHNwZWNpYWxpemVkIHVzZXIgaW50ZXJmYWNlLiBWYXJpYW50cyBvZiBBbmRyb2lkIGFyZSBhbHNvIHVzZWQgb24gbm90ZWJvb2tzLCBnYW1lIGNvbnNvbGVzLCBkaWdpdGFsIGNhbWVyYXMsIGFuZCBvdGhlciBlbGVjdHJvbmljcy4gQXMgb2YgMjAxNSwgQW5kcm9pZCBoYXMgdGhlIGxhcmdlc3QgaW5zdGFsbGVkIGJhc2Ugb2YgYWxsIG9wZXJhdGluZyBzeXN0ZW1z ','613a40dd006c8dca05ee49bdda5ea7b1c65a89f3','[B@16602cb','03/12/2015   13:02:53','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0{\0\0\0{\0\0\0cM\0\0\0ÌPLTEÿÿÿ3µå$²ä1®ÛçäâÀå÷1·ékrt9žÄlÆêþûùŒŒ°©¥¦Ûñõõõ×ïù……†UŒ£ÏÌÊ7°ž˜–ïïï}ÎñÂÁÁS…š9—ºy¹Ô-™À»¹¹j ·IHGÜÜÜâòú9~˜HQSod^£¡ OdmV½å>†¡³àô¸±®ˆÎìZ[\\/Àô|wt±ÕäÀÕÞ`¬ÌœºÈLY_SzŒ^mthfdt™ªBZe¨¬®VOKa†—¤³£«>q…Ûäè•ÆÜo…Ž­¿Ç‘‡ÄÌÐÅ…‰þ\0\0öIDAThí›m{š0†I)¢@çK;´8-ÖÖvkW×víìÿÿO#\"HTˆzÂµ~ÈóëÜž—“ä¨iJÅr\r™ÕÂ·–¸–àîÕTˆg]q-“EK:»…ðÐ#Ñ×#­½aRÕ	ig®ËGk-‚ÛÇ}„†ƒÐš6Æè¼¸F…6¦e¸Íú0m¯ú‘ãvxÆÚc?ùÀ.FÃ«RÐšvƒñCØ„9¡ËÞt4•ßÉcY<ûcm(*	]“{ÁGèFÛÜ5þúµ„±½’–ŽEÍ›²Ð6*FGpúeýŠˆ¼lyTÂZâ\nNè¶ìµÄÞ“Ìà¢Ùï@…û£#x s59ÀëØsyCmœ¢)-@®_ÊkvmÝôH>ÝóÖž¿I‚©Û½ù¢JrÈä¾¿x_Ão¥ Ó~FÍy]³nv{Ú[t5ë-}ÈXKÝõÇ6›ìy·ÛtÄ–‘u§¤m	=3‘-w¸Q“TA¦äŒ6²(b¸án·#xàº•ì3| ñK×Ž¥;÷%®å~H,úüâM¦lqH]¬@ÌÈ×h‚4y¤GPo3Žoò¨Ñ=P£>7òö^qR.›€öG ®†p2Ê`lôbÞ!ýã¤êl\'Ú`†¶?X:L±;S‹E2V[Ì0~‚i‡Å¥\ZÖ^Ò¹•µ(3óØrýo„¢1–±(9Ö_(›T­-‹¹âb1z©ÃÙ[s5Î¢Xf›seó5kpö†Å‚“ ÒÙ5ÅVlÅVlÅVlÅVlÅVlÅVlÅþlì±t¶±7›ß©®dïýGEÙÜ9âPÂÞŸ³H†EË™Ë/Ú˜¶Àl‡³Xœ‰á´“+GÚ™\\ÀÏzœ-‹Ò/1eºn|€Ï¸›³(8ÚÕ_½N§÷½Á*J`Ç½Äb¡œz­Zm^ÄYh2Ø‰Åý.H\'ù…RØK‹‡_Éb£ÿÉ†ÝÁØÄmÚhB.{ºÓr2ös»Ë;hµqQZIÚL¡béÏ„®´a»¸õæðdQ}ð{Ô`òxH#—tBÍeÙèu2=—‘Y¤_\rš‘^84yh®4ËzN{Óeá .3ƒA9[Z6ÁÑ/ÀËþÝÚdïœó[±[±[±?)›Ë\'ËÄ¿\\M”ÂæŒâß¤˜Ï¦<Ùã?GˆƒÓLH\'s´@G§2\"¥mYí…Fë˜è¥Û{sRÖ-º³8*‚Ð‡Ã¹‹¤)5ï›å¸Íà&¦”x¿úœ{­\'«foÞ,í?QÈZ;ý9œôÊ©WO&“‡…”°8_-½ÛÝáœëå’•”ŽÖ?Þiø%›G\0\0\0\0IEND®B`‚',0),(6,'RGF0YQ==','QmlnZGF0YQ==','Harish','QmlnIGRhdGEgaXMgYSBicm9hZCB0ZXJtIGZvciBkYXRhIHNldHMgc28gbGFyZ2Ugb3IgY29tcGxleCB0aGF0IHRyYWRpdGlvbmFsIGRhdGEgcHJvY2Vzc2luZyBhcHBsaWNhdGlvbnMgYXJlIGluYWRlcXVhdGUuIENoYWxsZW5nZXMgaW5jbHVkZSBhbmFseXNpcywgY2FwdHVyZSwgZGF0YSBjdXJhdGlvbiwgc2VhcmNoLCBzaGFyaW5nLCBzdG9yYWdlLCB0cmFuc2ZlciwgdmlzdWFsaXphdGlvbiwgYW5kIGluZm9ybWF0aW9uIHByaXZhY3ku ','431e83cec42cd9734efb0320725f6fbce8769e89','[B@211b37','03/12/2015   13:04:49','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0w\0\0\0w\0\0\0ç/¸\0\0\0ŠPLTEÿÿÿÿf\0ÿ^\0ÿa\0ÿ[\0ÿ÷ïÿú÷ÿW\0ÿªŽÿv3ÿ™nÿlÿ·ÿþüÿ÷ôÿ¶šÿªˆÿQ\0ÿ¡zÿÒÁÿÎºÿÙÊÿÞÕÿ¥†ÿr/ÿáÕÿïçÿ•lÿj!ÿx:ÿÝÐÿÄ¬ÿ‚LÿbÿçÝÿ‰Uÿ¾¨ÿ°‘ÿyAÿeÿk*ÿ~<ÿv(ÿ›uÿ‘]ÿDs/¥¤\0\0ÐIDAThÕ›k›¢<†¡­2â	ÞA@“ŒëúÿÿÞËq¤%¡ zyí³_v†Û¶!IÓ¨(ÿˆÖÑ!ø\nï‹¥JóËÓYOËy/Ó9WB(¥j¥üùÏ™w^Y³·0çÇí9c¤á‰¢ŒüÄIôjj”^Ã˜¶zN^8ås3fRhÖ¨ë¯_BÝ¬lm´AŸÍéäù6Ÿ½‘¢ÚÂœˆ\rÔÑÔRÚÉš@õmí)j9æøY›ëOS+òê)¬å‘)Ø\\ì>~Èkcà›Ó;d\ZŒÄ:ñsö$Š}ÏÇ`}oú`kðó2Q7<^Äì´“Iv,ŠÒã0ìv\'\'Ùí»A>Çæ¡–ív;myŽCwÿ]hï†ñy©å¿ÍC$ú†€Wà$S¢iËx¿5°™8Gs»UMƒ-C\0,Ñh˜yY;¦R\rð7Db\\‡ÎkKØiom¤È‡6ÖþÄD4õzÁ‘HeÙm´Aß2a\0ôÜó˜Í…_J¿Ÿ\r*Î·`fì†ßìòÓÃâ)yZ$¸Z††§„¿‘è¨…táyˆÿpøÑÒûD¬¢Ü¹©¦6üFœø!þd®/¬Ûºi%Zàôü&8\r˜é™è0°å¡£ð\ZS»{.:8\ZNæ†â3µNþqìúG–NÄ¦@Î\"¦V|:}¼«zh¥£lËßäƒQˆxÉ³äM§£” 4ÜrÈ^úŒÏŠRÉYøGÐ]ª1k÷‘è(½×¡ððT¯=à0\\Ï¨Í‚’uHB:÷—îšØÏ˜Á–I;Ð,Óùâ±Be¾¦ÁÞdYA\Z.¹|ƒ,æÀséùá-·P’Ngë˜Ÿþ<½\"„fËE|Û§_«B_éþ/–!D¬AhñZôWÕïýïúŽ7YâŸ¨¬¥°B\\…{º—týd)òë¥Ewöà*›í	J—$\"ÚiU˜ÈUíÆ²œ››ÊA·;éRòÅ°õCe„0—jî¼üˆG3ß8yÅŒJ‘„xÃü!øÍDw’9‘[š¼•ÜŠšë.h¹Ü¹Uy×[ÂÏ`®ZÇÿ\0ÞrBñ×ñÍäË\r¯KÊ´JŒ.¯¡û•˜>\"ÜzÃô¹*‹ûëµ,“G¸,)¯NeW.l¼‹‹b.ïãª^qÑD^’7ria[„K¦T¾*Y}ÆBïËóç·0,sÄVÞ\\»˜›#ßùeÜ±Ë¤ýÑ-EÑ8÷ü=…*ªÝžÞÞzŠÇt‘¬ÞÑâgJºf,‰byÄ¸Ùµó.4ÇŒÚ1Ã]=Ök†\r\'·uŒëm›l#ž>ä°Æ±Ý{äÚq…*›†6koœó“ýÜäàGŽ˜SoœÈ?$Æý\'ãb%1¿¡²™bâ\\ÅÒÛ|àŒdž}¹ÞãØ-Ç÷ëÅö²â‚¸ùsQ¥2§—«6\\\r––ë(³ÜOJ¹Êfu\"e²F ÙrJðüªâö¬o¹xëƒž‰)õ’C-CüóÂnVåéúÖµçG<Z[Û;å°eY­l¥X~zßZ¿îçÎñ÷—ƒëcð«»òÍ$\\¢¸7ßMìvjœGÎ¥£\\Òã¯ÀøëDyø\"_í_-óÇp½åª=þ‰û{Òåjÿ·âq?÷Ïh<z\'7Ghü}#·Œ¿h¾ûã1\\p«Öù–_18\0Žáb>©Ì¯°|’¯<ÃÝ`á¨œJ,V©\rÍôp®óƒ=¹ÌŸ±ýBá€ã=•¼¡Ü/`û£Bš]‘çÁªVrüýþ½Ü$ÝAÏÑq½?Böƒõ=Ô8*©V*~Rä–;ßJZ–“}£÷p¾Þ\"ûßFù^šðWã¸*áƒ1ÑÀÐùPSÿ†÷ûÛvõ‡\\nÙõ¶Â²{Fò°&¬Àõ–h<¸LyÄRÈ‡~ëp=§¥Ýˆ}C*­ÁüÖsàúUKÚˆ’);ÄmEo°^÷.î£^‡úïwpÛõI°û&.wÄ\0ÖŸßÃå£\r„_Îàó…7p…ó…þ¿Ž+ž§@çG-îˆ£Â}¿‰vN:çemÙÎ¼-nøÜ•9š½TèôÎù`[”,Zò¸Éºr—z=t>Ø9ÅÅøø;¼§ÌKÄó_\\Ý¸?ðó‚ç¿ây÷Ë¹Øy·x¾ÿj.~ Œö^ÁÅû:ý¯äöõoÈR¼	ÜÞ~¨?ç5\\IÜô®¬	ë¿šÈÒø%osÍÚèö$wVÞOH¹†!é©áÐ~Byÿ$m\r@¶ÙÑ?9 _T7jÅì¨~Qy,mmK{±ãúc?Ö¬|ªÿYùX¿·ò©þöBŸéçW>öýåSß×(ô™ï§”úÈ÷qJ}æûG•>ñ}«FŸø~Ùõ?ÞZy_yšrU\0\0\0\0IEND®B`‚',0),(7,'TWluaW5n','RGF0YU1pbmluZw==','Harish','RGF0YSBtaW5pbmcgaXMgYW4gaW50ZXJkaXNjaXBsaW5hcnkgc3ViZmllbGQgb2YgY29tcHV0ZXIgc2NpZW5jZS5bMV1bMl1bM10gSXQgaXMgdGhlIGNvbXB1dGF0aW9uYWwgcHJvY2VzcyBvZiBkaXNjb3ZlcmluZyBwYXR0ZXJucyBpbiBsYXJnZSBkYXRhIHNldHMgKCJiaWcgZGF0YSIpIGludm9sdmluZyBtZXRob2RzIGF0IHRoZSBpbnRlcnNlY3Rpb24gb2YgYXJ0aWZpY2lhbCBpbnRlbGxpZ2VuY2UsIG1hY2hpbmUgbGVhcm5pbmcsIHN0YXRpc3RpY3MsIGFuZCBkYXRhYmFzZSBzeXN0ZW1zLlsxXSBUaGUgb3ZlcmFsbCBnb2FsIG9mIHRoZSBkYXRhIG1pbmluZyBwcm9jZXNzIGlzIHRvIGV4dHJhY3QgaW5mb3JtYXRpb24gZnJvbSBhIGRhdGEgc2V0IGFuZCB0cmFuc2Zvcm0gaXQgaW50byBhbiB1bmRlcnN0YW5kYWJsZSBzdHJ1Y3R1cmUgZm9yIGZ1cnRoZXIgdXNlLlsxXSBBc2lkZSBmcm9tIHRoZSByYXcgYW5hbHlzaXMgc3RlcCwgaXQgaW52b2x2ZXMgZGF0YWJhc2UgYW5kIGRhdGEgbWFuYWdlbWVudCBhc3BlY3RzLCBkYXRhIHByZS1wcm9jZXNzaW5nLCBtb2RlbCBhbmQgaW5mZXJlbmNlIGNvbnNpZGVyYXRpb25zLCBpbnRlcmVzdGluZ25lc3MgbWV0cmljcywgY29tcGxleGl0eSBjb25zaWRlcmF0aW9ucywgcG9zdC1wcm9jZXNzaW5nIG9mIGRpc2NvdmVyZWQgc3RydWN0dXJlcywgdmlzdWFsaXphdGlvbiwgYW5kIG9ubGluZSB1cGRhdGluZy5bMV0gRGF0YSBtaW5pbmcgaXMgdGhlIGFuYWx5c2lzIHN0ZXAgb2YgdGhlICJrbm93bGVkZ2UgZGlzY292ZXJ5IGluIGRhdGFiYXNlcyIgcHJvY2Vzcywgb3IgS0RE ','-6ff6f5bb00f79515c8cd9de62913901de21d14b5','[B@1767553','03/12/2015   13:05:22','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0a\0d\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýü¢Š(\0¢Š(\0¢ƒÓ¦j®^?»“ŽÌ>¹íRæ“°QUSR’X›[;»Ì`ÓWXœ\rÑbø9<‚=xïM°z+–Ëm<à\\ÕK½[ìûÂDÒ²F_hûÇÐ\02y9çÚ©jšäQÛ³Èc#2ñ(ÆÐpÌ;àqÉ\0sÖ¿1<-ÿ\0Öÿ\0j_Ú\'ÀÔü;†üñ7VÕ¬ü/u§ë‚ëPÕcÓo.aYo`!µ†am$K>erÂPËË‹ÅBŽ’vgv.¯ˆR•%uõKó?Maø…¤_k÷\Zd:ž›6£i™5œwqµÌ KÇœ¨sZ–—â{0+„Îe#>àqøsôæ¾DøÍûü<µøo¨.¨t«’ É:ÚÌUÌr‡â‘ä^1 e“ À`:ÿ\0‚NþÞúïŽ>;x»à/‹ï\\½ðnŒšþ…®ùï$Ú¦œnE¬‘Î¯¹¼Ød11‘¤rëp €SsxyoÑÅâþ©MÝþ„<4”š?BPËœ“š)¶ê^ Ç\0·8ô¢¾—w9ZÔ–Š­>¡öq–A³®ðr£ëÇãÇ½yOÅOÛÓá\'Ák·µñŽü7g~ƒ?cŽõ\'¹<‘þ­	n Ž«jt¥7h+²[=~ŠùZÿ\0‚Ò|$°¸h¬­üY«ÈWìºDÁ_èÎª?ZÊø-…å“|:ñû\'c\"ÚÆO¸iâ»VSŒjê›’>ÐçpôªZ“bxÁB©Ç!¿>Õònÿ\0ƒðÅûqàÚÄN‚;y±ÿ\0IÀW_áÏø)×Â?j	¡®j^y*wOšÂ)NAùdu	‘õ¬*`q0~ôM3òËÅ_µ/ÄßÁJio‡¾4ñ¯ˆõ­Â(DÓ$˜¬6–R4)1,N‹“éßÂ;_„,×ÿ\0ü&‡ ^îÛ_²¸™4ë\'hÓí‘†`ã?.ÒIcÆJûÃöþOü2ý¾.|WÓ¼#à¿kÖ~½ÕF ÚtFúHí¶Ãæ8Y¾@ 0þéî@>{ÿ\0Fø¡&›û YxCWÓ´­KðMéÑô{¸˜,:²ÃÊr•ŽdóðFöÜ¨Œ\r®\"jPŠJÍ 	É¾§ºþÝºf‹mðŠ÷XÖ4øõkø#þÉ³Ó¤•BkMpUZÔ¸Ñ[åf1íuXÙ†vàþÃ	i±WÆ«Š^ÕµÝ\núÖPÒx_Äö³<ºXm¦Ak¨\"”™	Qä@í7uûUÿ\0Ò®bðµø¡[7Ã.³¾ÔT1)ÚÜÙ‰—¶K˜J‘•]ÌNqÆŽoàøRÙîí4Û¸Þ(d…dp»F\0Ý½Î9àçŒàa_†©bð2®“szhM}JRP‹²üÏÏÚ‹þ\ny¡x÷à–ŽšvŸªÇ©M\ZÅ{8•o¿yß	çS‚9(;WMÿ\0×h–¾+|qø¥35Åõ°ð]ŒrÂVkXwIwtä¶	³Úp@+önû†=‹ö»ø_ðŠïÂen|%áÛ‰b›+¾Þ2ËÈœíw…ÆrU¸KWyÿ\0?øK‚?fë6š_öF›ã?Ýjzu¿”#CqÁl$©>d€AÚB‚2fù¿…a–â][ZKKµóV\n	h}¯g –Ýc3ÁÈ¢–Þ3\ZX±$œž´WÓ48ü¥ÿ\0‚¢~Öž2ñÇü=‡V¾Ð|7áÝ–fËNº0MªËåÃ+»²€ÊŸér ÝŸŸjü»àÝCÒÕ£[YK?Í Ü<íÇ¯/¸žIÍ{¯üÀŸð„þÛ·:ÄI ÅÓµ”¥nQ®lßœ*c_­|±£L^é`›Ë¸@xf\\1zæ¾¯^£(¥¦ë›\"[ží é6í´dðÊÅAú…!I÷#==w~Ñ-£BXÛó|  ý1ùšñßx;H¾(%²ÌÝVit¯gø{ðGÃz­ìIs§<ÊÇœÜÊcwõ®Õ‹¤•ù§÷¢\Z;mRÐ´«tiïlísóžè)üîzzW]áïéì®4}ÃW¾;»ºýÜ¶Ém‹$LsæI€Tr9ôé_K~Ï²OÂØ|¦êV^ÐEÙ\\³ÍÃùrkÙ¤ðö¥i­m\r¼Ëˆ@‚%ˆ)o”ch¯6®uÉÆ*þ£…ÝÛ>Xý–¿fè|+áx¼â[[;íÄÚ&§ý±£œO§ÜÆ.,ÕaÃÒ¦ï½ÎsÂè	?cí7ö{ð;h>Ö/ZßÌ3Ge¨ªÝÚÚ©åùM…UÙ\Z®àr1ÀÆ\0¥àÏéþý ¢±Ô/líWÃÞ¾ûKÏ0…Q%¸ÓÙ]™° }á’FJ^<öÊÿ\0‚ÆXéÑ\'…þi’üKñ¡p-dÔôè$¸ÒlC.àædB© \rÇ“^cPN¼•“=¼(Åæ…€Áhæõm¤´ßW¡ÂÁdÿ\0kï~Ç\náÔ<; Eæ¡¾ë{“¨éš‰FI¡\ndXÁ1¦J¢ƒ)Á\'%|àwÆŸ‹^ø)6­©i’Þ]X¼¶óÛÙ0%fŠ´<dn@ † \0 W#ðïÁ?¼_ñ/ÆzŒn5ý?Çú–™}§ê§^ÿ\0EŽ/,ÜZË\ZÀ˜.Å²ì)KíÙ0ßV~ËÑéÿ\0²„¾ø#Äšgˆ|a\'·´×u¶…%Ó´»˜´ÑÌ]>êˆ6 d$ò>o­áë…Œ—°º’rMÛ¡ÑÄFYBƒ¥‡Ä{JÑvvOç­¬t?°¯ìÅiûuxËÇ_îîåÓíõ;Ë/øEÕÊ’$2	Y#Øû6‚2 67nýðg‡í<1á»=>Â­´û(c‚ÖÔ\"E\"ª(QÀ\0cÛ·Aâÿ\0³gƒô|søŸ¥øl¢h¶cL†ê8˜ÅûE$²°ÇsÛ’;ŽÕïP\r±ã@$ìé_/™cêbëÊµE«g¨¤ú(÷¢¸F~pÿ\0Á{ü3iiÃ¯\\ÜZZC)ºÑÝæmŠYš)P–è1±À©sÈÇ?œÚ^ ÖI\"B\0\nä:ŒŒœgƒÐŠýiÿ\0‚â|(´ø£ûL·Ö±ÞYØëVBxœq²w6€úŒ=Äg#=øü2ºøã¯‡šƒøþHtÈˆ4Íj{|“µNAÛÓ¯½Èð´ëà;Í;µfâõ>ÇøjÛž1¶N[ƒ·!†#«è¯†È€dWiàô×ç/üyûHøy`ð‚uòrÜ%ûÀÆÝœtÎ9ë^·àÏ_µœøM;à×Rpp¯>«#ï÷:W¸øJS“jJßâ_ædëXýŒý™¼j4½+)„\08f$ÇŒ~5ÝüQøïá_„^»ñ‹uÍ\'Ãš-¢ù·zÒC{>b»˜òÀ`árNGùYðÛáŸí×ñ–Ú+{Ï|-øC§]Ÿû>ÊMFéAÇÎ¤ºa±Æ1ÆÜ÷¯oøWÿ\0@ðF³âk_|pø‰ãß¾\"°d{$ñ%é].Â@Kf+TÄdgyùÃÄ‘Œ|Ög‘a¨UR©Röèµüv7…G(“ü·øwÿ\0uÔ¼g¹á«ýCá§ˆc¶Z„qc\'‰\"±¾´}ÒmD¨§½ó®q_oü5øáŸ‚þ²Ð¼/ é>Òl•…²E\ZF2Œ‡ ääû×–þÍÖöÿ\0ð³¬àÓ ‚ÒÂßÃCÈ·…vÅh“MnáG\0\0O@Êxä×ÐÑ[Àœ€@ã¯lWÏç*›ÄòÆ6Žö7Œë*R§	ék§ÙõGÃÿ\0ðT©#øyñàÖ¿v þÈÕ¥Ô<5q½N<×Š+˜ƒ“œ©KIG=Î{WGðnæÿ\0V°ñW€¼G&…e­À«©éF²ÙJIùœFÿ\0pîxëœÕÏø)Ç† ø…}á/ÞH‘ÛK¥kwÐo\0ÿ\0¥G¬q²žÌ#žp?ß>•â°\'Åßü2ŸK¾ÔÙ5oNÚuø\'V\"¨’ô`Éøç“_}–á–\'$£V2´ äŸø^Þ§åÉ;NþÅ–Ÿð…ø›âF‡yt.uk]|As9Pånb(dÀíæÂàÃhíšú&ÅNð‚5ñ÷ì·â)­ÿ\0m\rZß˜/¼!,û˜äoy\0#ß‹£Ïl{ñö²bTRH9Ïù–%J5\Zžçtˆ’Š(¬Š<Kþ\nàVñÇìsñ\"Å\0k¡Myo‘ÀšÔ¨ÉôýäHsí_‡“Ém~ñK,ñÈFÙ#“)…KF2Àšýæý <um¥ø\"þÒqE¨A-£Äã+0teÁöÆkùÛñGÂÝ{M¾ŸWð_ˆb²’ô•»Òµ>›rÑü§h4m¹H8$p+ôþÁJxZœúk¡ÅŠjèú7á{¨‘wqÛ‡N9¯¢¾_ý–XÙX	ìÎHp8ý+óçÁ¿>-xÂ5ƒ÷\Zú±ÞÓxwU‚TnÜE!ØÈç9Ú|ûwx¾Ñìß³×Å©nçc@Š„ã¦Xÿ\0Ç«ëiduêË–\n-õ»0•dº¥_õsbÑJ\rÞôùZH°0=I<b½#Åôÿ\0|?Õõ]kUÒ´KKGž[ûÛ¥†ÚÙve–FùUIäžK¨\0šüõøsñÛö¥ø±ÏüðW€-˜&¥ãaf–#\nâ`û†sò± öÅzO„?à\Z‡Ä»;Zý¡þ$jß®ô©ÖúÇöw…¬çC¹m&á†ìæRS„ùR[ÀÏ2HÓ©Õ’R‹Ù;þZ}ìºuto¹ì¿ðMOŽ¶ß<gâbÑ.C¹¶··ÐîîÄu+4•\\¢‘¹Ÿ¼±«q»ì«ïÛéñyÒ8•|àHÀÉã¿á_žö_í¼7ûoE¢èÑC\r¥¯‡a\rJ8Éºp@àÀ\0\0â¾Î·ÒÏÄŸ§–$¸¶û<¢6ØÀí\0œò9\0qÆ{×ÍqNMËˆ§ŠŸ»¥#j´å>`ÿ\0‚~Ó>ñv¿ðÒéu]OOñ$t°ÆÒ\"iÒi—Þd¥À*PÊ¶Ç‚yL{×Îß³ó/„~xûã~ˆbWÒüXözÕ™•›HKHƒÌ©Œ*y<Öã%PúWuñþ	añ»Ã?ãð7„>4\\¯ƒ,™ÒÆ;Ý\ZÚçT±¶iýž;½ „\0àeIÉcßà_ÿ\0fïþÃ^%‹áÜþ-žöûâ\\wÂ]wÄ¡#°že·Øm0/Ÿ*»úýÇÈn1ïåRÃ¬5,5)«F\\ÏÍv2qm·#ë_Øÿ\0âå–»ûbxzáÝCø‡Â÷úEªà²¶»<wÝ´ÇØ >ÃïûF&#»nA=@¿LWàïÁßXþÆ_µ/Ã]\nËÅ«ã¯hw©og§9ŸìÛâxg’w‚ŽIzòK“€0+÷áß‹Ä:³\"¾Ù9qµ×ØŽz}zb¾#ˆ°0£©\Z.ñOGø”¯È®t æŠDî=\róæ‡Ì¿¶%•å÷…¦[f.ñ#ºðxlášü;ñ~£yðcãF¯ jq´Nú„×RHÊ‘ÉŒ_ËËp%¾¹¯èâW€Ä–ÂâXÈã¶kàOÛ_þ	“¤üw°¿[»Uw˜»€ó#aÑÑ€ÊŸzýg…óŠ+	õy;3†¼Û>$ø]ãm9õ8È–ecó`B3ü…}ðçÅ–pÜÇ xbTmß*‚XàrNÑ_-øÇþ	ñ‡áÙ“Ã\ZÜ—–±\"¿€MÎHÆTŒÆ}j†Ÿð§öÐ6Ão£xl;Œ«m2®zs—ëÇÒ¾‚¦._ÌåŒzHýðßÆ›-,Ï3Nˆ¯… ±ñÜŒ‡?E?‡¯ûGÿ\0ÁF|=ð—Ã‚¯£½Õns•…©733\r±ä±–*G§¯Ì>ý?ho‹Ž#Õ<Gm¡[·ÊãH·*Ì¾„ÈXƒÏUÁéÍ}Aû\'ÁtßkëšŒWz¦±.à÷×¯¾eÜ€Oðç\'×æ<×-lV	T««FªŒ¿ø\'OÁo|AñÔž;ñE´ðê> ‘®^ÎmcØQ\"ÝßçÈ’F8Í~§|:ÐßEÑaÌ%UÚOPÜuÿ\0>•Ê|\'ø%aà].{hDQD¡#Uåb\0¶r^Ÿeb–Öêˆrb¾Š3åŽ’„tHé£JÎìO±	‚’X098$gò®KâŸÀo|_Ó¤²×ôË=ZÆT ÁsÈAžw¨$)Îöàæ»dMƒÍ›û+ããRPw‹gD ›<Á_ðOo†_\r&Wðÿ\0ƒô}.@‚]ÙÀã8P\0 W¯økÂéá´Ž8•R8Ô*¨ƒÍmÇÎäÒ•²kZ˜š“^ðÒÎ	=Í´Vfuïü|÷©®/Ä¿r_©¢Šö2ßˆÊ®ÇüDûçýßêk„Oõƒýê(¯µ†Èä;ÿ\0ÈN?úä?™¯cÑÿ\0ãÚßýÏëEäf}\rá±Öè¿ñèßïä*ì]ÖŠ+ãªülÞ;¢Š+2‚Š( Š( ÿÙ',1),(8,'Q2xvdWQ=','Q2xvdWQgQ29tcHV0aW5n','Manjunath','Q2xvdWQgY29tcHV0aW5nLCBhbHNvIGtub3duIGFzIG9uLWRlbWFuZCBjb21wdXRpbmcsIGlzIGEga2luZCBvZiBJbnRlcm5ldC1iYXNlZCBjb21wdXRpbmcsIHdoZXJlIHNoYXJlZCByZXNvdXJjZXMsZGF0YSBhbmQgaW5mb3JtYXRpb24gYXJlIHByb3ZpZGVkIHRvIGNvbXB1dGVycyBhbmQgb3RoZXIgZGV2aWNlcyBvbi1kZW1hbmQuIEl0IGlzIGEgbW9kZWwgZm9yIGVuYWJsaW5nIHViaXF1aXRvdXMsIG9uLWRlbWFuZCBhY2Nlc3MgdG8gYSBzaGFyZWQgcG9vbCBvZiBjb25maWd1cmFibGUgY29tcHV0aW5nIHJlc291cmNlcy5DbG91ZCBjb21wdXRpbmcgYW5kIHN0b3JhZ2Ugc29sdXRpb25zIHByb3ZpZGUgdXNlcnMgYW5kIGVudGVycHJpc2VzIHdpdGggdmFyaW91cyBjYXBhYmlsaXRpZXMgdG8gc3RvcmUgYW5kIHByb2Nlc3MgdGhlaXIgZGF0YSBpbiB0aGlyZC1wYXJ0eSBkYXRhIGNlbnRlcnMuSXQgcmVsaWVzIG9uIHNoYXJpbmcgb2YgcmVzb3VyY2VzIHRvIGFjaGlldmUgY29oZXJlbmNlIGFuZCBlY29ub21pZXMgb2Ygc2NhbGUsIHNpbWlsYXIgdG8gYSB1dGlsaXR5IChsaWtlIHRoZSBlbGVjdHJpY2l0eSBncmlkKSBvdmVyIGEgbmV0d29yay5BdCB0aGUgZm91bmRhdGlvbiBvZiBjbG91ZCBjb21wdXRpbmcgaXMgdGhlIGJyb2FkZXIgY29uY2VwdCBvZiBjb252ZXJnZWQgaW5mcmFzdHJ1Y3R1cmUgYW5kIHNoYXJlZCBzZXJ2aWNlcy4= ','1b63e73f4bc6b20c4d4205b7553da8796f434714','[B@24de67','03/12/2015   13:21:54','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0j\0|\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0÷ú(¢€\n(¢€\n(¢€\n(¢€\n­{v––æFŽpª;šÇÕu)Zá …Ê\":“Þ²ËÔ“ø×M<;vr8jã[ŒQnMVòFÈ” ôP\0nÇXJ±ÜÊN7ã}kg1Á$Š…Ê©!GVÀè*¦»·24^Y\r€3F#óÇàkiFù-©ÅEHÊ÷;ðsEqÑÜÍïŽFSõàþÓØ]‹»Q&\0`pÀz×5J.\nç¥G\Z®Ö³-QE‰ÒQYÚ†­“ˆÂ$ÆHÎ\0Z¨ÅÉÙ9Æ\nòe©îà· K\"©=ëùW5¬øœX4ÍåB_bar\\ò{ûùVuýýì—²<vžll¡•üÐ0r~R>˜ÁŸ-Ô÷„›IxdŽI“$äõ8À$çÛë²^ç/µu$¯n_)$ÿ\0¡Öé:òÜE“JPI¸ÆAü+râwDáÇLŽÕç‹yr¨V9Z$&0U\0,8ÇL€8÷ÁÆ+cE¹¾‰¼ùtéb  %·dôëüªjÑ[¡B¬âìõ^©¿ÃüŽ¦êqolò•,GEI<ù×/s«H$ÿ\0H¾1¶ÕÃ’G·~æŸ¯ëry)kx×t¹ežÙëôÅrõ®\rxóHàÇcí>J}\r‘yk4ŒZæErrL±`ÿ\0ºZ’â9G”V@ªNíË†W<g§\\~UV¬®Å»åÉ·sóÎ?Úãõé]£¦‡1<ÎÓÐ–YžÝ#inæuN\"êOlI²Hª«s~	+ëÏ^?*¸ö7JÅ~Ï#m=UÛ\"«±!ˆl†Q\\êÞOŸù2[’Gæ«’ò†ð(©X‚:`Õ]ô»¹Á8>õª‚ZmN‹~÷*ÐÊÛCw\"¶+ÃöRÂæU(\\mUn=kv¼êÜ¼ï”öðÎ^ÉsîÍëz}Ã]˜biUÀÈA’ã§ùï]%©§7tUZJ¬yYÀÌ²ÀÊ&£b2\Z©s§Á|†yàgU!† uÈ\Zïoî¬-¡ÍóD°œzÿ\0…gÿ\0ÂA¢H¿g2(ŽÝ­Ûü«²5§%uœÊguW•úÙœ¶\"Ò!û=¢m•¾g$–òò\0Ï|ÏnsTšG.ìY‰Éf9$ÒKsçJò±ù‹©¦y«ë^„)ò¯3Â¯ZUfÛcè«°[Û9ngi7K/•\Z¡Ç\'?Z³j.ï–w˜Cm*Ä6€X–béíéRêÅ8yÊÞðÿ\0‘“El·I#2ÅpÄ‚Lnv÷¨µm>ÞÊ3%¼’“˜IƒÈ\0ä`9¢5¡&’êT°µ#\'ÐË­Kä’D‹Q-$<(“?<qìsíY~júÑæ¯­\\ ¤¬Ì©Õ•7xõ¿‡l¢HL’ã$#µ„j?„gé\\uŸ‹þÍkk¿Ë@…Ä˜Î8éŠèt½nÏT`r%˜Ûïëî+Ç­J´užÇÓa±8iû´Þ½*(¢¹ÎÐª÷·Iee=Ô¹òá¤luÀ«™â(%¹ðî¡*ZVö¨êÇÇãÒª)9$È¨Ú‹ksË¯u©u+·¹š@ÌýxQØj¯ö“×úÖ-Ð–Êá ˜mbÜ¡¿¨¨…Ñ×Ò¨$­‘—3“rÜßûIõ¥ûIõ¬zÞ¢¬YÞ@×‘¢V\rÙr¼ñÿ\0ë©Ÿ¹+^Ý·ù!Í%®uvWÓÇ§˜SE#nÛ°6ÖÈ\\/ûXçè=ò-Í®ÜÀÞq{]ò£3í‰pì°$\0I`sŒØçšä&žÉæÇt\0Èc“ÀöÎzúw¦†¶àøv°Ë‡\0ç§NkŠôåi4õþëÿ\0#±{H.X½¿½ÿ\0ëaÕîÚg4¬ÈÊìcÀf‡#¿R3PëZ…ìë\\¸uùX”Pªô“´ò{zgžXK9ûd\\1†ïß§n´Ñ4ý©rT¤G+D¡sí¯ü‰nr/þÜ¿ÌÕûIõ£í\'Ö±ók²†ÆGza½cüX®µ“”ÝûIõIo«IeuÄRbHØ2ó×ÛéÛñ®pÝÔçñ«vö·w\"ÐÃ?Ú¤1E÷˜cõ¯¥*ÞðEJ÷Žç½ÚÌ·6±NŸvT¿B3RÔP[(-ÔäE\ZÆ¨\0\nž¾eÚúb¯mB²5KýŽ-#l;.ç?Ý_ñ?ÈjÒ¸ž;[y\'™ÂE\Z—w=@É?•p·¦ú{;ù\"‘`¿x’QæeY“ê…AZRŽòjö&ZµÚæ\'Š|/w®j¢}9âóÚ.\"væmë´ôÎàöÏ¥s±xÅ’Ë³û,ÇêÏ<xø÷?†k·³[×ÓãÎ¥™ÒP8Þ\0Ž!Hr}k¸Óµu&×P)ñ, ?AÁô#½w¼eZpVZyîŽ	`(Ô¨îõòÙž_?Âë‹kKG“SŒÎÒbáHP~CŽHÁê0sÛðúÕ¼–\ZÅÜ-Ã\ZÌþX#»Ž1øW³Ï©‡’òVÂØ·œaÄŸè;T–3ÛMq&“}Kkx	D•w)qË.¨‡ÑiUXFóÔÎx\Z2v†‡‚yÇÖ®YÞO3˜íãž5\nòy‹¹UAÚ2>¬+ÓµOƒºmÌžf›¨ÜYd’Q×ÎP=H?™5[Hð¶ágÔ »Ô¡»†á.Ò§’¼Yycž:œúŽÆ¶xº5¡müŽu9]éærÞÐn<c«…+äÙB¸žX†1×\0g?1ý~†ˆü=©øfñ¢½¼’ØŽåAòä¹ì}?Î½ÏÃÉeo¦Giem²@v˜£\\úûç®}sÎjæ©ume¦Ü\\\\¨h•pS\0ï\'€£<Iñ®EŽœ*rÆ:mc©åÔåNíëÜð{MkïÍªB™o3¸ûñí#èsÿ\0Uß\nxRñyóy–v8Ó™m õý+¾¶’ÚÖ8­[ìÐ<ä•…v¢–<«è?•tZ-ñ¸G·”æXOûÊz¨èÞµ­‹©¾_øbià)9.oøsÍ§øS¨Û³»jöbÚ0Y¥e`BŽûy­tÚ¨Ñô›HcùÞdEÁÜsœòvä:œg©­O\\Ésu‘?4Msq‚>êýÅ=þfýŽõÏÚ6¡7‰£Ü¤zYå‹mòv¦;çŠËÛT©Nõ56†•)þíYý¥Ìwv©<G(ã?CÜ}AÈ©ë™ðõË¥Ñ·l…œ<Še ÍY8ÿ\0dú×M^}HrI£ºæW(kvòÞhwöÐ\0fšÚHãðY”ŸÄ×€êV¢x4Ùe‚qæ’.Jï8ì2\09àädŽÙ¯H®GQÑé®´}LXÉ3ïžÞk:»c‚¤÷ óéžjé¨ÍrKOëÑƒ“†¨Ä{O³-Ý„ñA/,¦ç+_›sò2=;V®˜&¶øqb“î]lÜ­BÍ.JóÈÂ9…2/ÏªLƒÄ\ZÂÝÚ«ûµ±Š#§™Ô¸ïƒÅtZí”ÚŽ5½¾ÕŸå’\"Ý7£P}‰P±5³ä…¡{ê›éú\"s÷¼¿®¬â5©ìf·{[™Ê4W¦pèÌ¬¬PŒqìùÏÖ£žæ;O^Fc-Œ)5¿\'å1å”’qvàú­hÛ^E©3Æš‘²¹O–{9ö‰!?BF;üÃƒ{U-Nsª¬¾±¼Žúîì”–Kp\nÚÀF±Œ€:ä¥kJ-U¼£êü¾ÿ\0øs“•Þçm¬êß`ÐZò\r,Ý[¡w!W>ÀO°5Ãêv–Lëct.$hýê«Ûó»$Ýúuê9­Ÿ¼‘éV30Ûmk{ÊGEC”ÉöÁü*•Õ›‹³:‰ÞƒÅ˜ª#è:ñÏÆ*¿qâ%Í¡¥e{¾ª.-ÙþÌÍ\'zí,ízî)× \'Ö¦ñÙ>!Ò,œ7’©-Ûí<î]ˆŸQûÆ?P+*ã|60CÌò\\ÏQ¬«†a»¢«?à}ª¨®¬u±o,Éf²EsC,a}¤°ä©E?LÐ ½¤[óü´üKS÷,s7riPkÑÜ^Í\"Ïjð¡xpŽ²¦Ò@ÉäƒÏ9\nì,ä{}^ÒvÀk‹—etÎ?ï¥OÊ²¬ÄW:Rµ¿‰íç„F¸”ìp9-“œžN#>Õ>€Ójš•´±ÜËkvkÝVydUP8!U‰$q¸ï‡%¤›VÐé¨ÓŒR•íýv_›âe43¨òõ\r:5„ù›K4/!uç¤ªxíŸJ¨–rU:eÐEþ&ºƒôc“×ôÅuzæ—m¬ØˆoZHŠ8’¡%^\'O­`\r?Ä+˜¿á$³xÿ\0ç»é¿½èÒ}ê!%8­l×¯è™”•Ë:zy¾\"°…ÐÀ²]È	,Fá°>¤³ë±½+°¬I´Òíäòe–ây›|÷3¼­Œð0\0àÀ¯\\µ¤¥-6F°QŠ(¬‹\nB8â–Š\0ÇÔ4+mUƒ_éúuÑQ…iáÜÀzsŠŸOÓSNÉµµ²¶€œ”·‹`\'×´h«u$ãËÐžU{Ü[Ãqk,3Ä’E\"teÜHÁw®:-óL&\r/_1Ù#¶½²óÌCÑ_*qè~µÛÔUS«(h¿OÖá(¦sºŠ–÷m{y}.£~T¨™âòÒ5\'ˆ8\\àdä“Ž½«~D}ŸºØý¡Oî)jg77v\n)+üþÓ®nMÄú6$Ä–gkPKÜñÉúÖÍ´MB2±*¨V5ÀP;TôQ*’’³¶Rb–Š‚ƒQE\0ÿÙ',1);
/*!40000 ALTER TABLE `ownerimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search` (
  `id` int(11) NOT NULL auto_increment,
  `consumer` text,
  `keyword` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES (13,'Rajesh','Data','03/12/2015   13:12:04'),(14,'tmksmanju','Cloud','03/12/2015   13:29:17'),(15,'tmksmanju','Cloud','03/12/2015   13:29:45'),(16,'tmksmanju','data','03/12/2015   13:30:12');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES ('server','server');
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverimages`
--

DROP TABLE IF EXISTS `serverimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverimages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(45) default NULL,
  `name` varchar(45) default NULL,
  `owner` varchar(45) default NULL,
  `description` text,
  `digitalsign` text,
  `sk` varchar(45) default NULL,
  `dt` varchar(45) default NULL,
  `rank` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverimages`
--

LOCK TABLES `serverimages` WRITE;
/*!40000 ALTER TABLE `serverimages` DISABLE KEYS */;
INSERT INTO `serverimages` VALUES (5,'T3M=','QW5kcm9pZA==','Harish','QW5kcm9pZCBpcyBhIG1vYmlsZSBvcGVyYXRpbmcgc3lzdGVtIChPUykgY3VycmVudGx5IGRldmVsb3BlZCBieSBHb29nbGUsIGJhc2VkIG9uIHRoZSBMaW51eCBrZXJuZWwgYW5kIGRlc2lnbmVkIHByaW1hcmlseSBmb3IgdG91Y2hzY3JlZW4gbW9iaWxlIGRldmljZXMgc3VjaCBhcyANClRoaXMgaXMgbm90IGdvb2QgZG9jdW1lbnRzDQpzbWFydHBob25lcyBhbmQgdGFibGV0cy4gQW5kcm9pZCdzIHVzZXIgaW50ZXJmYWNlIGlzIG1haW5seSBiYXNlZCBvbiBkaXJlY3QgbWFuaXB1bGF0aW9uLCB1c2luZyB0b3VjaCBnZXN0dXJlcyB0aGF0IGxvb3NlbHkgY29ycmVzcG9uZCB0byByZWFsLXdvcmxkIGFjdGlvbnMsIHN1Y2ggYXMgc3dpcGluZywgdGFwcGluZyBhbmQgcGluY2hpbmcsIHRvIG1hbmlwdWxhdGUgb24tc2NyZWVuIG9iamVjdHMsIGFsb25nIHdpdGggYSB2aXJ0dWFsIGtleWJvYXJkIGZvciB0ZXh0IGlucHV0LiBJbiBhZGRpdGlvbiB0byB0b3VjaHNjcmVlbiBkZXZpY2VzLCBHb29nbGUgaGFzIGZ1cnRoZXIgZGV2ZWxvcGVkIEFuZHJvaWQgVFYgZm9yIHRlbGV2aXNpb25zLCBBbmRyb2lkIEF1dG8gZm9yIGNhcnMsIGFuZCBBbmRyb2lkIFdlYXIgZm9yIHdyaXN0IHdhdGNoZXMsIGVhY2ggd2l0aCBhIHNwZWNpYWxpemVkIHVzZXIgaW50ZXJmYWNlLiBWYXJpYW50cyBvZiBBbmRyb2lkIGFyZSBhbHNvIHVzZWQgb24gbm90ZWJvb2tzLCBnYW1lIGNvbnNvbGVzLCBkaWdpdGFsIGNhbWVyYXMsIGFuZCBvdGhlciBlbGVjdHJvbmljcy4gQXMgb2YgMjAxNSwgQW5kcm9pZCBoYXMgdGhlIGxhcmdlc3QgaW5zdGFsbGVkIGJhc2Ugb2YgYWxsIG9wZXJhdGluZyBzeXN0ZW1z','-67f43fad92514f02ce2ab5d985ccbb34d5458c8e','[B@16602cb','03/12/2015   13:02:53',0),(6,'RGF0YQ==','QmlnZGF0YQ==','Harish','QmlnIGRhdGEgaXMgYSBicm9hZCB0ZXJtIGZvciBkYXRhIHNldHMgc28gbGFyZ2Ugb3IgY29tcGxleCB0aGF0IHRyYWRpdGlvbmFsIGRhdGEgcHJvY2Vzc2luZyBhcHBsaWNhdGlvbnMgYXJlIGluYWRlcXVhdGUuIENoYWxsZW5nZXMgaW5jbHVkZSBhbmFseXNpcywgY2FwdHVyZSwgZGF0YSBjdXJhdGlvbiwgc2VhcmNoLCBzaGFyaW5nLCBzdG9yYWdlLCB0cmFuc2ZlciwgdmlzdWFsaXphdGlvbiwgYW5kIGluZm9ybWF0aW9uIHByaXZhY3kuDQpUaGlzIGlzIG5vdCBnb29kIGRvY3VtZW50cw==','-fed3b83c7bdc3ce4b5b98cbb5170b59601bc6b7','[B@211b37','03/12/2015   13:04:49',0),(7,'TWluaW5n','RGF0YU1pbmluZw==','Harish','RGF0YSBtaW5pbmcgaXMgYW4gaW50ZXJkaXNjaXBsaW5hcnkgc3ViZmllbGQgb2YgY29tcHV0ZXIgc2NpZW5jZS5bMV1bMl1bM10gSXQgaXMgdGhlIGNvbXB1dGF0aW9uYWwgcHJvY2VzcyBvZiBkaXNjb3ZlcmluZyBwYXR0ZXJucyBpbiBsYXJnZSBkYXRhIHNldHMgKCJiaWcgZGF0YSIpIGludm9sdmluZyBtZXRob2RzIGF0IHRoZSBpbnRlcnNlY3Rpb24gb2YgYXJ0aWZpY2lhbCBpbnRlbGxpZ2VuY2UsIG1hY2hpbmUgbGVhcm5pbmcsIHN0YXRpc3RpY3MsIGFuZCBkYXRhYmFzZSBzeXN0ZW1zLlsxXSBUaGUgb3ZlcmFsbCBnb2FsIG9mIHRoZSBkYXRhIG1pbmluZyBwcm9jZXNzIGlzIHRvIGV4dHJhY3QgaW5mb3JtYXRpb24gZnJvbSBhIGRhdGEgc2V0IGFuZCB0cmFuc2Zvcm0gaXQgaW50byBhbiB1bmRlcnN0YW5kYWJsZSBzdHJ1Y3R1cmUgZm9yIGZ1cnRoZXIgdXNlLlsxXSBBc2lkZSBmcm9tIHRoZSByYXcgYW5hbHlzaXMgc3RlcCwgaXQgaW52b2x2ZXMgZGF0YWJhc2UgYW5kIGRhdGEgbWFuYWdlbWVudCBhc3BlY3RzLCBkYXRhIHByZS1wcm9jZXNzaW5nLCBtb2RlbCBhbmQgaW5mZXJlbmNlIGNvbnNpZGVyYXRpb25zLCBpbnRlcmVzdGluZ25lc3MgbWV0cmljcywgY29tcGxleGl0eSBjb25zaWRlcmF0aW9ucywgcG9zdC1wcm9jZXNzaW5nIG9mIGRpc2NvdmVyZWQgc3RydWN0dXJlcywgdmlzdWFsaXphdGlvbiwgYW5kIG9ubGluZSB1cGRhdGluZy5bMV0gRGF0YSBtaW5pbmcgaXMgdGhlIGFuYWx5c2lzIHN0ZXAgb2YgdGhlICJrbm93bGVkZ2UgZGlzY292ZXJ5IGluIGRhdGFiYXNlcyIgcHJvY2Vzcywgb3IgS0RE ','-6ff6f5bb00f79515c8cd9de62913901de21d14b5','[B@1767553','03/12/2015   13:05:22',1),(8,'Q2xvdWQ=','Q2xvdWQgQ29tcHV0aW5n','Manjunath','Q2xvdWQgY29tcHV0aW5nLCBhbHNvIGtub3duIGFzIG9uLWRlbWFuZCBjb21wdXRpbmcsIGlzIGEga2luZCBvZiBJbnRlcm5ldC1iYXNlZCBjb21wdXRpbmcsIHdoZXJlIHNoYXJlZCByZXNvdXJjZXMsZGF0YSBhbmQgaW5mb3JtYXRpb24gYXJlIHByb3ZpZGVkIHRvIGNvbXB1dGVycyBhbmQgb3RoZXIgZGV2aWNlcyBvbi1kZW1hbmQuIA0KDQpUaGlzIGlzIG5vdCBnb29kIGRvY3VtZW50cyANCg0KSXQgaXMgYSBtb2RlbCBmb3IgZW5hYmxpbmcgdWJpcXVpdG91cywgb24tZGVtYW5kIGFjY2VzcyB0byBhIHNoYXJlZCBwb29sIG9mIGNvbmZpZ3VyYWJsZSBjb21wdXRpbmcgcmVzb3VyY2VzLkNsb3VkIGNvbXB1dGluZyBhbmQgc3RvcmFnZSBzb2x1dGlvbnMgcHJvdmlkZSB1c2VycyBhbmQgZW50ZXJwcmlzZXMgd2l0aCB2YXJpb3VzIGNhcGFiaWxpdGllcyB0byBzdG9yZSBhbmQgcHJvY2VzcyB0aGVpciBkYXRhIGluIHRoaXJkLXBhcnR5IGRhdGEgY2VudGVycy5JdCByZWxpZXMgb24gc2hhcmluZyBvZiByZXNvdXJjZXMgdG8gYWNoaWV2ZSBjb2hlcmVuY2UgYW5kIGVjb25vbWllcyBvZiBzY2FsZSwgc2ltaWxhciB0byBhIHV0aWxpdHkgKGxpa2UgdGhlIGVsZWN0cmljaXR5IGdyaWQpIG92ZXIgYSBuZXR3b3JrLkF0IHRoZSBmb3VuZGF0aW9uIG9mIGNsb3VkIGNvbXB1dGluZyBpcyB0aGUgYnJvYWRlciBjb25jZXB0IG9mIGNvbnZlcmdlZCBpbmZyYXN0cnVjdHVyZSBhbmQgc2hhcmVkIHNlcnZpY2VzLg==','-6b162951b8476a1abbe687a02ee935dbdc633384','[B@24de67','03/12/2015   13:21:54',1);
/*!40000 ALTER TABLE `serverimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `name` text,
  `sk` text,
  `task` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (23,'Harish','QW5kcm9pZA==','[B@16602cb','Upload','03/12/2015   13:02:53'),(24,'Harish','QmlnZGF0YQ==','[B@211b37','Upload','03/12/2015   13:04:49'),(25,'Harish','RGF0YU1pbmluZw==','[B@1767553','Upload','03/12/2015   13:05:22'),(26,'Rajesh','RGF0YU1pbmluZw==','[B@1767553','Download','03/12/2015   13:12:13'),(27,'Manjunath','Q2xvdWQgQ29tcHV0aW5n','[B@24de67','Upload','03/12/2015   13:21:54'),(28,'tmksmanju','Q2xvdWQgQ29tcHV0aW5n','[B@24de67','Download','03/12/2015   13:29:27'),(29,'tmksmanju','Q2xvdWQgQ29tcHV0aW5n','[B@24de67','Download','03/12/2015   13:29:49'),(30,'tmksmanju','QmlnZGF0YQ==','[B@211b37','Download','03/12/2015   13:30:17'),(31,'tmksmanju','QmlnZGF0YQ==','[B@211b37','Download','03/12/2015   13:31:12');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-03 13:42:23
