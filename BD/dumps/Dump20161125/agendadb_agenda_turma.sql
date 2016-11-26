-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: agendadb.cfmlnopzuyrp.sa-east-1.rds.amazonaws.com    Database: agendadb
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `agenda_turma`
--

DROP TABLE IF EXISTS `agenda_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda_turma` (
  `agenda_id` varchar(100) NOT NULL,
  `turma_id` int(11) NOT NULL,
  PRIMARY KEY (`agenda_id`,`turma_id`),
  KEY `fk_agenda_turma_x_turma_idx` (`turma_id`),
  KEY `fk_agenda_turma_x_agenda_idx` (`agenda_id`),
  CONSTRAINT `fk_agenda_turma_x_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `agenda` (`agenda_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_agenda_turma_x_turma` FOREIGN KEY (`turma_id`) REFERENCES `turma` (`turma_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda_turma`
--

LOCK TABLES `agenda_turma` WRITE;
/*!40000 ALTER TABLE `agenda_turma` DISABLE KEYS */;
INSERT INTO `agenda_turma` VALUES ('02078430-1F22-E611-9084-7DA2A2124BC1',8),('0243139E-0DD9-475A-BEE2-661605E949FC',8),('047085B4-8FF8-E511-A6B1-D5F2F9F43A47',8),('061E5544-1F22-E611-9084-7DA2A2124BC1',8),('105B31A5-76F1-E511-9D2C-BFAA5ABE92A6',8),('1269B4DE-CAF8-E511-8B67-ED0C876E1A06',8),('24BA4C46-00F2-E511-A0EC-DFDD7E6CC69A',8),('2CDE042C-1F22-E611-9084-7DA2A2124BC1',8),('2E792764-8F23-E611-A0F3-B7719651D3A4',8),('30B0BB1A-68FE-E511-9F51-E3DCED4CD399',8),('3414279C-75F1-E511-9A20-83ED1096D911',8),('381113D4-C1FD-E511-993D-6F66979B405B',8),('3A5FBE8F-614C-E611-8C59-6395EE4A35BC',8),('3CB7654B-1F22-E611-9084-7DA2A2124BC1',8),('425958A4-75F1-E511-9A20-83ED1096D911',8),('4625A19F-0C4B-E611-AF40-71980CCF8EE4',8),('46DD9489-76F1-E511-9D2C-BFAA5ABE92A6',8),('56FA719C-03F2-E511-8B14-B58D92F1BF2C',8),('5CF114FF-E5F8-E511-B6B8-BB4E86202B2C',8),('5E394813-68FE-E511-9F51-E3DCED4CD399',8),('5EA9AA3D-1F22-E611-9084-7DA2A2124BC1',8),('6082257A-77F1-E511-9A48-4F933D0C0C0C',8),('648819A1-75F1-E511-9A20-83ED1096D911',8),('66567F27-1F22-E611-9084-7DA2A2124BC1',8),('688A74CF-CEF9-E511-8033-2924041FBC02',8),('6C966A45-C053-473E-92D8-2FE3CDB7F6A6',8),('6EA1854A-00F2-E511-A0EC-DFDD7E6CC69A',8),('71223782-B154-459C-9906-3C4E0E4896E5',8),('7A4E3B17-68FE-E511-9F51-E3DCED4CD399',8),('7A698253-BCF7-E511-AAE4-656DC5BB4E40',8),('7B059C29-9A24-4DE6-AB46-478BC358E6FA',8),('7EC4B8A6-75F1-E511-9A20-83ED1096D911',8),('7ED68428-68FE-E511-B29E-3B11B4DE5010',8),('802AF803-38E9-E511-9C9E-079E9E66E5FD',8),('90C9563A-C800-49AD-B05E-9F5D5A55A237',8),('9613182C-68FE-E511-B29E-3B11B4DE5010',8),('99E6C304-F4E8-4E41-9E10-39E876739AD1',8),('9C1333D6-BF2B-42E9-9FDA-01B8226E5ED4',8),('B06B5917-321D-4D47-BBEB-E664F7A33234',8),('B2B88785-77F1-E511-9A48-4F933D0C0C0C',8),('B618FF01-1C04-E611-9C3C-7B519E66CC6D',8),('C007B025-68FE-E511-B29E-3B11B4DE5010',8),('C8640AB0-1A32-4C16-9F0C-4CCFCB6BE497',8),('CAEB5F62-BCF7-E511-AAE4-656DC5BB4E40',8),('CE7BA0FA-C1FD-E511-993D-6F66979B405B',8),('D18CBA95-3733-4729-8EED-D4BE37A7622F',8),('D2A07FFB-67FE-E511-9F51-E3DCED4CD399',8),('D4D46A22-1F22-E611-9084-7DA2A2124BC1',8),('DBAB7DED-B476-4F18-AD43-BA1A3046915F',8),('DC0115B2-B7F7-E511-A916-752D12D84D64',8),('DEB87548-094B-E611-BF7B-97F679158943',8),('E08F5836-1F22-E611-9084-7DA2A2124BC1',8),('E0BD9DFD-67FE-E511-B29E-3B11B4DE5010',8),('E2CC7A24-79F1-E511-A912-2FAC4FACF13D',8),('F470305A-09F2-E511-8B14-B58D92F1BF2C',8),('F6EA7410-FCF1-E511-BE8B-F93CF97D72C4',8),('FF17DC9E-55D1-4E56-9394-C4BA78DB63B9',8),('0268438D-D72D-451E-B4DB-1E50FA62B022',9),('027C4700-0C4B-E611-AF40-71980CCF8EE4',9),('083446B1-BFF7-E511-9D08-E7CF64EF3E6C',9),('1EB82C27-4861-4B0F-BC96-78E47342C905',9),('488D22AF-5B15-E611-809D-43592D4D19D3',9),('4C8601BF-1C04-E611-BA5B-7DEE08DCF7DA',9),('82103A03-0C4B-E611-AF40-71980CCF8EE4',9),('8C549714-D4E9-E511-86AD-C7D047446A4F',9),('C2720283-76F1-E511-9D2C-BFAA5ABE92A6',9),('EB836898-A58A-4C51-9E89-8C88E6D3F2FA',9),('FC57A61A-38E9-E511-9C9E-079E9E66E5FD',9),('06DD75AD-B4A7-E611-BA2C-A78497CE73DF',18),('09BF8309-2F87-4567-AB1D-BAACB125027C',18),('1405808D-3A07-E611-959C-09177096B818',18),('1A0F8B2A-33A1-E611-97DB-FD6643EB3166',18),('1CA9DD5F-EBD3-40ED-BD45-7C544D49C014',18),('1EDE5AA5-EF9B-4E32-A513-DC49AA9DCDFE',18),('23A918EC-D862-4A12-A85B-A3DA66690664',18),('2E64DE99-69FE-E511-B29E-3B11B4DE5010',18),('2EFA817D-CF39-483D-AFBE-9F0F4FFA1E87',18),('301E83A5-FA19-E611-A846-73694B30D521',18),('30599A3E-0F51-E611-A2C1-4582ED4097D5',18),('30F6E748-ACE8-4786-9949-813C31C62025',18),('32B35FDE-7D03-E611-B7E8-C3CBDA7D8EA5',18),('348B70DE-CEF9-E511-8033-2924041FBC02',18),('39D37715-DD66-4541-99D3-F5ACA0B14C99',18),('3ADA2E22-6331-E611-AC76-1F51F7BAF8CA',18),('3C0A5C0B-7224-4AB5-94AC-5ED5C3934A9B',18),('3F04529E-B562-427A-856E-531F5DCDE324',18),('410BC085-32D8-4A53-BC79-F716BC6B929D',18),('429BEAD7-D6F1-E511-95D6-ED0C771B834D',18),('434EAB8E-79A2-468D-8ACD-891D68EB8DDF',18),('44EC2E07-79F2-E511-93E7-CD1EF0971951',18),('464E5AEA-EF67-E611-87A8-CDAC75A97450',18),('4A126BA8-8603-E611-A389-6FC309BEBE03',18),('4A3DF88F-DC03-E611-8781-433F18671722',18),('4C7FA5AE-8603-E611-A389-6FC309BEBE03',18),('4EF92F13-B671-4640-A124-09C3F388CB63',18),('502ECC61-BFFC-E511-89D7-9FE9209CD86E',18),('527A34A3-0564-E611-A54B-6D7CD5F99753',18),('54694A74-AA32-E611-8844-09A67AF7AC6F',18),('54DC5739-2A22-E611-B1A4-134E33E0417C',18),('57B78C41-C868-4DDC-AAE0-4557E7A8C5CD',18),('583898F9-044B-E611-A883-19BCDBE6B060',18),('58EDEC11-7D06-E611-A5D9-5D8554981D35',18),('58F70035-3413-E611-9820-27FA47F43715',18),('5A608CE4-8403-E611-B7E8-C3CBDA7D8EA5',18),('5ACA438E-69FE-E511-9F51-E3DCED4CD399',18),('5B30626B-C42B-4E48-A1C1-D334389505B5',18),('5C0068D6-2606-E611-9767-535964A8940F',18),('5C43AB51-8203-E611-B7E8-C3CBDA7D8EA5',18),('5C834DEE-8B75-4B0B-A9E5-F40C778EE81D',18),('62EC26A5-8603-E611-A389-6FC309BEBE03',18),('649693B2-E505-E611-B58A-CB94DA9944CA',18),('64C4B0C7-69FE-E511-9F51-E3DCED4CD399',18),('66A4E489-69FE-E511-9F51-E3DCED4CD399',18),('6AA1BFC7-7C03-E611-B7E8-C3CBDA7D8EA5',18),('6C9F09DD-6231-E611-AC76-1F51F7BAF8CA',18),('6E12FA0B-CBF8-E511-8B67-ED0C876E1A06',18),('7232A8B7-6B4D-E611-AAD7-1987BD2FDA3F',18),('72737524-3B03-E611-8E20-D7A0B26D3688',18),('72C7A29D-8603-E611-A389-6FC309BEBE03',18),('7B5CE5E7-3C3F-4507-BB7D-75A84F59F930',18),('7E02662B-7B03-E611-B7E8-C3CBDA7D8EA5',18),('7E34AF06-8403-E611-B7E8-C3CBDA7D8EA5',18),('8523C3C2-FD82-4D9F-81D6-A863008D391D',18),('8A201035-5DC4-423A-9EB1-ED47D344E1FE',18),('8A3F8F3C-640A-E611-88BB-9B4C51A5E331',18),('8C2BE199-E2E9-E511-93A3-9BBD45DA2183',18),('8D415EF7-CA6A-41DD-B202-FC41F3C54E8D',18),('8F92DCC2-AD7D-45CB-876C-B8B983740EB8',18),('92A76448-F40A-E611-8B7B-C7F104AD0D2E',18),('92A941A2-8603-E611-A389-6FC309BEBE03',18),('93FA1DA2-500E-4C13-8066-F5331990B959',18),('95DD6126-9F61-44FF-840E-D79E190A92B1',18),('961235A1-2EA1-E611-B21D-B3833AC699B6',18),('96F173D4-D1E9-E511-86AD-C7D047446A4F',18),('97CA3BDB-61BD-4CEF-802C-419EDFF065A6',18),('A2B79F8A-A926-E611-A8C3-D7C17A185C45',18),('A6A2CD01-7A03-E611-B7E8-C3CBDA7D8EA5',18),('A6CC494A-2546-E611-B616-6F4ABF56ED00',18),('A9106107-D517-417D-8F73-3ADA1DD72202',18),('B49A57B1-7B03-E611-B7E8-C3CBDA7D8EA5',18),('B4CC8AA5-B4A7-E611-BA2C-A78497CE73DF',18),('B4EA36DC-E5F8-E511-B6B8-BB4E86202B2C',18),('B6C4A257-C703-E611-9CB4-2DFE21AAB730',18),('B8628696-69FE-E511-B29E-3B11B4DE5010',18),('BAA6F2B5-C5FD-E511-993D-6F66979B405B',18),('BAD09CBC-E5F8-E511-B6B8-BB4E86202B2C',18),('C05AF8C4-08EC-48C6-9525-2840C0810BE2',18),('C2B92715-2CAB-E611-A7EA-658DD50420DD',18),('C4308103-8CFE-E511-828F-17BD0DCF5281',18),('C66A9477-9E05-E611-8F63-07BF91831A8A',18),('C81CDD7B-6B32-E611-85F3-E31BE6357317',18),('C894BD3C-8603-E611-A389-6FC309BEBE03',18),('C8967AC3-21DC-4F8A-8A9A-CE422447D2E5',18),('CA886E1C-0BBD-4523-B8FF-362E7105F2D5',18),('D0DAFDA9-6D40-4502-87F8-EA7623E41C43',18),('D2B4ACD3-9102-4805-8134-51C5DB87F0AA',18),('D4B770B8-69FE-E511-B29E-3B11B4DE5010',18),('D9FE43D7-5D64-4633-96B5-FC71A0D766FC',18),('DA25D229-BF02-E611-B386-9B9DC61E13FF',18),('DC11FCE1-A005-E611-88BD-E739B9B3E782',18),('DE5F562E-4C39-4A71-8F55-25AA310F9DEF',18),('DEB19105-8AB1-E611-A758-77E02BE4BDD0',18),('E2F64C61-7903-E611-B7E8-C3CBDA7D8EA5',18),('E3E0B696-571E-4A92-A49C-D8E5BCBE8B04',18),('E408D01B-5D0A-E611-B353-2F0FA112B04C',18),('E6B06C93-69FE-E511-B29E-3B11B4DE5010',18),('E829D1F5-F40D-E611-8A5D-97A4FCB81165',18),('E87EE1E2-17EE-E511-B239-61AEFDC2B20D',18),('E8C12F00-AFFD-E511-A6BD-356C5CF369D0',18),('EA28F390-69FE-E511-9F51-E3DCED4CD399',18),('EC24B471-3FF2-E511-8DB5-BFDA8E1A0887',18),('EE428FD4-C102-E611-B386-9B9DC61E13FF',18),('F25582B9-CCF9-E511-95ED-9B2B2E6DEA1B',18),('F2C81698-571B-49B9-B5D7-2738BA7E5062',18),('F410DD43-F775-4E3F-AB8B-D9879D947991',18),('F4A548AB-8603-E611-A389-6FC309BEBE03',18),('FE6AA33A-2573-4AA1-B586-A11AD8D72115',18),('14C80B48-59C5-49D5-B921-D7A4FBA01B30',19),('34FA7956-95E4-4B47-8311-9BB62A3A0D34',19),('52421CC9-5B15-E611-809D-43592D4D19D3',19),('52FB87B0-122C-447F-AD1F-2D92CB629F5B',19),('5CD074BC-2C67-442E-A0D5-7E1D3924CB82',19),('8487E610-6271-4CD1-8649-BF1A6C5835F2',19),('8BCC1930-05B2-4517-88BB-69E8A2D86752',19),('3A4FB350-460B-4076-8D74-37142F319DCF',22),('EA9A95B8-A169-41E9-BC9D-F953F68E40D0',22),('34288D79-0E75-4A8C-8040-3795464780CA',28),('83D8EE2B-9B11-4018-8E33-457FF701B8E7',28);
/*!40000 ALTER TABLE `agenda_turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-25 15:19:00
