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
-- Table structure for table `log_error`
--

DROP TABLE IF EXISTS `log_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_error` (
  `log_error_id` varchar(100) NOT NULL,
  `msg_error` varchar(5000) DEFAULT NULL,
  `aplicacao` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `metodo` varchar(100) DEFAULT NULL,
  `escola_id` int(11) DEFAULT NULL,
  `responsavel_id` int(11) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_insert_server` datetime DEFAULT NULL,
  `enviado_server` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`log_error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_error`
--

LOCK TABLES `log_error` WRITE;
/*!40000 ALTER TABLE `log_error` DISABLE KEYS */;
INSERT INTO `log_error` VALUES ('05006380-BB79-4679-8B44-FA17C50471FE','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:05:56','2016-03-13 12:42:06','S'),('0699E93D-C9E7-E511-9BD6-91CBC80B2F52','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','SalvarAgenda',1,NULL,16,'2016-03-11 17:38:41','2016-03-11 18:05:01','S'),('089F7A56-B0D1-4B3A-B21C-220559C4F99A','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 12:04:19','2016-03-13 12:42:06','S'),('0A63FB07-72A1-45FF-9DC6-B832E24951CB','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 15:05:10',NULL,'S'),('0B61CA17-560D-4E9D-9FDD-9299D6635DCF','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 16:05:20','2016-03-11 16:05:28','S'),('100050BE-E7E9-E511-93A3-9BBD45DA2183','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','GetAlunos',1,NULL,16,'2016-03-14 10:22:04','2016-03-14 10:23:00','S'),('14994869-81E7-E511-8933-6DA8C1869E49','Erro ao salvar agenda\r[FireDAC][Phys][MySQL] MySQL server has gone away','Agenda Bee','untDmEscola','TDmEscola','SalvarAgenda',1,NULL,16,'2016-03-11 09:04:30','2016-03-11 09:05:03','S'),('14F3F28A-0D2F-4C75-8342-4F114810BE96','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:05:53','2016-03-13 12:42:06','S'),('2087C7BE-E7E9-E511-93A3-9BBD45DA2183','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','GetTurmas',1,NULL,16,'2016-03-14 10:22:05','2016-03-14 10:23:00','S'),('2107C592-8D0B-49CF-B5F1-E40F341A93E9','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 16:00:03','2016-03-11 16:01:46','S'),('21404B32-F95A-4BF2-B3EE-D4DCFF5A3AB5','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:39:42','2016-03-13 12:42:06','S'),('222FFC3B-8DF5-4263-AD33-287FE1F2F010','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 16:02:20','2016-03-11 16:05:28','S'),('2F699B18-E4C9-41BE-B94B-EDCE1133F2AD','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:06:39','2016-03-13 12:42:06','S'),('3A3D349E-D0E9-E511-841D-F795266FF71E','HTTP/1.1 403 Session has expired','Agenda Bee','untDm','TDm','SalvarLogError',1,NULL,16,'2016-03-14 07:36:32','2016-03-14 07:43:41','S'),('48244246-C13B-4165-85ED-5E8E494B8BDB','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:40:14','2016-03-13 12:42:06','S'),('4C69839D-D0E9-E511-841D-F795266FF71E','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','SalvarAgenda',1,NULL,16,'2016-03-14 07:36:30','2016-03-14 07:43:41','S'),('4E8B8570-79A4-4D6C-B5CC-8AFAB5B10E0F','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:25:14','2016-03-13 12:42:06','S'),('560073F3-D0E9-E511-899E-ABF557F2F6E1','java.net.ConnectException: failed to connect to /54.200.116.223 (port 8080): connect failed: ETIMEDOUT (Connection timed out)','Agenda Bee','untDmEscola','TDmEscola','SalvarAgenda',1,NULL,16,'2016-03-14 07:38:55','2016-03-14 07:43:41','S'),('5AABFDA6-94F9-42A1-9B9A-40873D0F3906','[FireDAC][Phys][SQLite] ERROR: near \"select\": syntax error','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-10 17:06:14','2016-03-10 17:28:44','S'),('5C098C2E-A2DA-416A-8814-9A45CFE8B4D8','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:09:14','2016-03-13 12:42:06','S'),('5CED5CA4-2C12-41E1-B06E-7B273F1F0401','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:41:02','2016-03-13 12:42:06','S'),('5F65663C-8CA2-4160-AEFE-05FC75C09DEB','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:06:35','2016-03-13 12:42:06','S'),('6ADEAD50-B4E5-472E-8E57-9B6DD2E1E428','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:06:31','2016-03-13 12:42:06','S'),('6C2A25F0-EBE9-E511-94F4-0B0CEFCF0EAF','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','GetTurmas',1,NULL,16,'2016-03-14 10:52:06','2016-03-14 10:56:32','S'),('714DF292-6E54-46E0-8E14-AE3D7691EB6A','[FireDAC][Phys][MySQL] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'select\r\n  at.*\r\nfrom agenda ag\r\ninner join agenda_turma at on (ag.agenda_id = at\' at line 12','AgendaServer.exe','untSmEscola','TSmEscola','GetAgenda',1,NULL,16,'2016-03-10 15:48:02','2016-03-10 15:48:02','S'),('74C512FF-F6E9-E511-9E92-595B084E4B2B','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','GetAlunos',1,NULL,16,'2016-03-14 12:11:15','2016-03-14 12:12:14','S'),('7D8D3F85-E229-405F-9A06-F83FB024A456','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 16:01:41','2016-03-11 16:01:46','S'),('85E7B496-5773-4628-96EE-58DF868B085B','[FireDAC][Phys][MySQL] MySQL server has gone away','AgendaServer.exe','untSmEscola','TSmEscola','SalvarAgenda',1,NULL,16,'2016-03-11 09:04:56','2016-03-11 09:04:57','S'),('90F67076-16E2-47A7-8F48-F1FA047F2BB2','Execution of request terminated with unknown error','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-10 15:47:54','2016-03-10 15:49:40','S'),('96CFF300-F7E9-E511-9E92-595B084E4B2B','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','GetTurmas',1,NULL,16,'2016-03-14 12:11:18','2016-03-14 12:12:14','S'),('98E023D7-4819-4CB4-89DF-E940696B64E8','Erro ao salvar agenda\r[FireDAC][Phys][MySQL] MySQL server has gone away','Agenda Bee','untDmEscola','TDmEscola','SalvarAgenda',1,NULL,16,'2016-03-13 20:06:23','2016-03-13 20:06:27','S'),('9AD6DEBF-E7E9-E511-93A3-9BBD45DA2183','HTTP/1.1 403 Session has expired','Agenda Bee','untDm','TDm','SalvarLogError',1,NULL,16,'2016-03-14 10:22:07','2016-03-14 10:23:00','S'),('9DC98A2F-0CAB-476F-B09A-335523427229','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:42:15','2016-03-13 12:42:06','S'),('9F29FF3F-62CA-4B89-B912-385681E53404','Execution of request terminated with unknown error','Agenda Bee','untDmEscola','TDmEscola','GetTurmas',1,NULL,16,'2016-03-13 09:05:35','2016-03-13 12:42:06','S'),('A4003C24-2711-4E82-BD4D-49AFA4A24141','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-10 17:55:49',NULL,'S'),('A5FC566F-D145-4CEE-9305-CABD71B401B7','Execution of request terminated with unknown error','Agenda Bee','untDmEscola','TDmEscola','GetAlunos',1,NULL,16,'2016-03-13 09:05:32','2016-03-13 12:42:06','S'),('A7EBACE1-1F90-41EA-B052-53EBF0436118','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 12:04:48','2016-03-13 12:42:06','S'),('AA1EE022-291A-4130-AEE7-611E452EA4E3','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:23:52','2016-03-13 12:42:06','S'),('B2F9A93E-C9E7-E511-9BD6-91CBC80B2F52','HTTP/1.1 403 Session has expired','Agenda Bee','untDM','TDM','SalvarLogError',1,NULL,16,'2016-03-11 17:38:43','2016-03-11 18:05:02','S'),('B6AEC5EF-EBE9-E511-94F4-0B0CEFCF0EAF','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','GetAlunos',1,NULL,16,'2016-03-14 10:52:05','2016-03-14 10:56:32','S'),('BCDF2EAB-CFDD-4E4B-9A59-6159BB4AAB16','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 09:39:49','2016-03-13 12:42:06','S'),('BD732D37-5404-4F77-9E63-46FB5EE8826A','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-10 17:04:15','2016-03-10 17:28:44','S'),('C41A2F0B-C2E7-E511-A726-D5493EF686E7','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 16:47:10','2016-03-11 16:58:26','S'),('C66F51BF-E7E9-E511-93A3-9BBD45DA2183','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-14 10:22:06','2016-03-14 10:23:00','S'),('C6B8986D-BAE7-E511-A58D-8980AB1B9CE7','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 15:52:39','2016-03-11 16:33:10','S'),('C9122B40-8F19-470D-8358-684FDAD52CFC','Execution of request terminated with unknown error','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-13 12:01:24','2016-03-13 12:42:06','S'),('CAD0AA6D-3266-42B9-8E4F-3B7FE54A6E2A','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 16:02:10','2016-03-11 16:05:28','S'),('D4B241A8-B555-45EC-9B61-36627087035D','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 15:58:33','2016-03-11 16:01:46','S'),('DCE9762E-37E9-E511-AA70-77158A05D9F4','HTTP/1.1 500 Internal Server Error','Agenda Bee','untDmEscola','TDmEscola','GetAlunos',1,NULL,16,'2016-03-13 13:18:11','2016-03-13 13:23:10','S'),('DED886F0-EBE9-E511-94F4-0B0CEFCF0EAF','HTTP/1.1 403 Session has expired','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-14 10:52:06','2016-03-14 10:56:32','S'),('E1E15291-367C-4C57-AFD8-8E68DD55DB6A','[FireDAC][Phys][MySQL] MySQL server has gone away','AgendaServer.exe','untSmEscola','TSmEscola','SalvarAgenda',1,NULL,16,'2016-03-13 20:06:23','2016-03-13 20:06:23','S'),('E50046C5-545E-496D-9450-850EC3C7C276','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 16:05:43','2016-03-11 16:16:32','S'),('E61CEE4B-ECE9-E511-A4A9-5BAA9E2C77C6','java.net.ConnectException: failed to connect to /54.200.116.223 (port 8080): connect failed: ETIMEDOUT (Connection timed out)','Agenda Bee','untDm','TDm','SalvarLogError',1,NULL,16,'2016-03-14 10:54:40','2016-03-14 10:56:33','S'),('EE4C4B01-C2E7-E511-A726-D5493EF686E7','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_turma.agenda_id, agenda_turma.turma_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 16:46:53','2016-03-11 16:58:26','S'),('F13FC7E7-2598-402B-A7F7-FBB2DF9A63C2','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-10 17:05:39','2016-03-10 17:28:44','S'),('FA35954D-78AE-4A47-95D1-41F52F571F85','[FireDAC][Phys][SQLite] ERROR: UNIQUE constraint failed: agenda_aluno.agenda_id, agenda_aluno.aluno_id','Agenda Bee','untDmEscola','TDmEscola','GetAgenda',1,NULL,16,'2016-03-11 15:58:27','2016-03-11 16:01:46','S'),('FEA61AF1-EBE9-E511-94F4-0B0CEFCF0EAF','HTTP/1.1 403 Session has expired','Agenda Bee','untDm','TDm','SalvarLogError',1,NULL,16,'2016-03-14 10:52:07','2016-03-14 10:56:33','S');
/*!40000 ALTER TABLE `log_error` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-14 12:39:56
