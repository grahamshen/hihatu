-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: ry
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auser`
--

DROP TABLE IF EXISTS `auser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auser` (
  `hid` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `person` varchar(20) NOT NULL COMMENT '员工',
  `hdate` date NOT NULL COMMENT '日期',
  `status` varchar(10) NOT NULL DEFAULT '0' COMMENT '类别',
  `fix` int NOT NULL DEFAULT '0' COMMENT '已审批',
  `hours` decimal(10,2) DEFAULT NULL COMMENT '工作时长',
  `stime` time DEFAULT NULL COMMENT '开始时间',
  `etime` time DEFAULT NULL COMMENT '结束时间',
  `extra` varchar(45) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通勤表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auser`
--

LOCK TABLES `auser` WRITE;
/*!40000 ALTER TABLE `auser` DISABLE KEYS */;
/*!40000 ALTER TABLE `auser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (2,'hihatu_worktbl','通勤表','',NULL,'HihatuWorktbl','crud','com.ruoyi.system','system','worktbl','通勤','ruoyi','0','/','{\"parentMenuId\":\"1\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统管理\",\"treeCode\":\"\"}','admin','2022-07-31 09:57:35','','2022-08-13 14:34:43',''),(3,'person_month_view','VIEW',NULL,NULL,'PersonMonthView','crud','com.ruoyi.system','system','view','VIEW','ruoyi','0','/',NULL,'admin','2022-07-31 17:30:01','',NULL,NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (10,'2','hid','ID','int','Long','hid','1','1',NULL,NULL,NULL,NULL,NULL,'EQ','input','',1,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(11,'2','person','员工','varchar(20)','String','person','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(12,'2','hdate','日期','date','Date','hdate','0','0','1','1','1','1','1','EQ','datetime','',3,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(13,'2','status','类别','varchar(10)','String','status','0','0','1','1','1','1','1','EQ','radio','work_status',4,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(14,'2','fix','已审批','int','Long','fix','0','0',NULL,NULL,NULL,NULL,NULL,'EQ','radio','',5,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(15,'2','hours','工作时长','decimal(10,2)','BigDecimal','hours','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(16,'2','stime','开始时间','time','String','stime','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(17,'2','etime','结束时间','time','String','etime','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(18,'2','extra','备注','varchar(45)','String','extra','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2022-07-31 09:57:35',NULL,'2022-08-13 14:34:43'),(19,'3','person','员工','varchar(20)','String','person','0','0','1','1','1','1','1','EQ','input','',1,'admin','2022-07-31 17:30:01','',NULL),(20,'3','yearmonth',NULL,'varchar(8)','String','yearmonth','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2022-07-31 17:30:01','',NULL),(21,'3','hours',NULL,'decimal(32,2)','BigDecimal','hours','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2022-07-31 17:30:01','',NULL),(22,'3','normaldays',NULL,'decimal(23,0)','Long','normaldays','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2022-07-31 17:30:01','',NULL);
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (991);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hihatu_worktbl`
--

DROP TABLE IF EXISTS `hihatu_worktbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hihatu_worktbl` (
  `hid` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `person` varchar(20) NOT NULL COMMENT '员工',
  `hdate` date NOT NULL COMMENT '日期',
  `status` varchar(10) NOT NULL DEFAULT '0' COMMENT '类别',
  `fix` int NOT NULL DEFAULT '0' COMMENT '已审批',
  `stime` time DEFAULT NULL COMMENT '开始时间',
  `etime` time DEFAULT NULL COMMENT '结束时间',
  `relax` time DEFAULT NULL,
  `loc` varchar(45) DEFAULT NULL,
  `extra` varchar(45) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通勤表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hihatu_worktbl`
--

LOCK TABLES `hihatu_worktbl` WRITE;
/*!40000 ALTER TABLE `hihatu_worktbl` DISABLE KEYS */;
INSERT INTO `hihatu_worktbl` VALUES (910,'员工一','2022-04-01','normal',0,'10:15:00','19:15:00','01:00:00','横浜',NULL),(911,'员工一','2022-04-04','normal',0,'09:30:00','19:00:00','01:00:00','横浜',NULL),(912,'员工一','2022-04-05','normal',0,'09:40:00','18:40:00','01:00:00','横浜',NULL),(913,'员工一','2022-04-06','normal',0,'09:50:00','19:00:00','01:00:00','横浜',NULL),(914,'员工一','2022-04-07','normal',0,'09:40:00','18:50:00','01:00:00','横浜',NULL),(915,'员工一','2022-04-08','normal',0,'09:40:00','18:40:00','01:00:00','横浜',NULL),(916,'员工一','2022-04-11','normal',0,'09:50:00','19:00:00','01:00:00','横浜',NULL),(917,'员工一','2022-04-12','normal',0,'09:50:00','19:00:00','01:00:00','横浜',NULL),(918,'员工一','2022-04-13','normal',0,'09:40:00','18:40:00','01:00:00','横浜',NULL),(919,'员工一','2022-04-14','normal',0,'09:50:00','19:00:00','01:00:00','横浜',NULL),(920,'员工一','2022-04-15','normal',0,'09:50:00','19:00:00','01:00:00','横浜',NULL),(921,'员工一','2022-04-18','normal',0,'09:30:00','18:40:00','01:00:00','横浜',NULL),(922,'员工一','2022-04-19','normal',0,'09:50:00','19:00:00','01:00:00','横浜',NULL),(923,'员工一','2022-04-20','normal',0,'09:45:00','18:45:00','01:00:00','横浜',NULL),(924,'员工一','2022-04-21','normal',0,'09:40:00','19:00:00','01:00:00','横浜',NULL),(925,'员工一','2022-04-22','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(926,'员工一','2022-04-25','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(927,'员工一','2022-04-26','normal',0,'09:50:00','19:00:00','01:00:00','横浜',NULL),(928,'员工一','2022-04-27','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(929,'员工一','2022-04-28','normal',0,'09:50:00','19:00:00','01:00:00','横浜',NULL),(930,'员工一','2022-05-02','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(931,'员工一','2022-05-06','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(932,'员工一','2022-05-09','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(933,'员工一','2022-05-10','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(934,'员工一','2022-05-11','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(935,'员工一','2022-05-12','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(936,'员工一','2022-05-13','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(937,'员工一','2022-05-16','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(938,'员工一','2022-05-17','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(939,'员工一','2022-05-18','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(940,'员工一','2022-05-19','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(941,'员工一','2022-05-20','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(942,'员工一','2022-05-23','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(943,'员工一','2022-05-24','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(944,'员工一','2022-05-25','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(945,'员工一','2022-05-26','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(946,'员工一','2022-05-27','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(947,'员工一','2022-05-30','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(948,'员工一','2022-05-31','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(949,'员工一','2022-06-01','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(950,'员工一','2022-06-02','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(951,'员工一','2022-06-03','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(952,'员工一','2022-06-06','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(953,'员工一','2022-06-07','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(954,'员工一','2022-06-08','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(955,'员工一','2022-06-09','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(956,'员工一','2022-06-10','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(957,'员工一','2022-06-13','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(958,'员工一','2022-06-14','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(959,'员工一','2022-06-15','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(960,'员工一','2022-06-16','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(961,'员工一','2022-06-17','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(962,'员工一','2022-06-20','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(963,'员工一','2022-06-21','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(964,'员工一','2022-06-22','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(965,'员工一','2022-06-23','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(966,'员工一','2022-06-24','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(967,'员工一','2022-06-27','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(968,'员工一','2022-06-28','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(969,'员工一','2022-06-29','normal',0,'09:00:00','18:00:00','01:00:00','横浜',NULL),(970,'员工一','2022-06-30','normal',0,'10:00:00','19:00:00','01:00:00','横浜',NULL),(971,'员工一','2022-07-01','normal',0,'09:00:00','17:41:00','01:30:00','国領',NULL),(972,'员工一','2022-07-04','normal',0,'08:52:00','18:02:00','01:30:00','国領',NULL),(973,'员工一','2022-07-05','normal',0,'08:41:00','17:52:00','01:30:00','国領',NULL),(974,'员工一','2022-07-06','normal',0,'08:44:00','18:01:00','01:30:00','国領',NULL),(975,'员工一','2022-07-07','normal',0,'08:44:00','18:32:00','01:30:00','国領',NULL),(976,'员工一','2022-07-08','normal',0,'08:45:00','17:34:00','01:30:00','国領',NULL),(977,'员工一','2022-07-11','normal',0,'08:42:00','18:00:00','01:30:00','国領',NULL),(978,'员工一','2022-07-12','normal',0,'08:39:00','17:32:00','01:30:00','国領',NULL),(979,'员工一','2022-07-13','normal',0,'08:42:00','20:03:00','01:30:00','国領',NULL),(980,'员工一','2022-07-14','normal',0,'08:43:00','19:01:00','01:30:00','国領',NULL),(981,'员工一','2022-07-15','normal',0,'08:52:00','19:52:00','01:30:00','国領',NULL),(982,'员工一','2022-07-18','normal',0,'08:47:00','18:00:00','01:30:00','国領',NULL),(983,'员工一','2022-07-19','normal',0,'08:46:00','19:04:00','01:30:00','国領',NULL),(984,'员工一','2022-07-20','normal',0,'08:52:00','18:50:00','01:30:00','国領',NULL),(985,'员工一','2022-07-21','normal',0,'08:50:00','18:42:00','01:30:00','国領',NULL),(986,'员工一','2022-07-25','normal',0,'08:50:00','18:37:00','01:30:00','国領',NULL),(987,'员工一','2022-07-26','normal',0,'08:55:00','19:46:00','01:30:00','国領',NULL),(988,'员工一','2022-07-27','normal',0,'08:55:00','19:27:00','01:30:00','国領',NULL),(989,'员工一','2022-07-28','normal',0,'08:54:00','19:03:00','01:30:00','国領',NULL),(990,'员工一','2022-07-29','normal',0,'08:51:00','17:35:00','01:30:00','国領',NULL),(998,'若依','2022-09-01','latearr',0,'09:02:00','18:00:00','01:00:00','東京都',''),(999,'若依','2022-09-02','normal',0,'09:05:00','18:00:00','01:00:00','東京都','');
/*!40000 ALTER TABLE `hihatu_worktbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `person_month_view`
--

DROP TABLE IF EXISTS `person_month_view`;
/*!50001 DROP VIEW IF EXISTS `person_month_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_month_view` AS SELECT 
 1 AS `person`,
 1 AS `yearmonth`,
 1 AS `hours`,
 1 AS `normaldays`,
 1 AS `vacationdays`,
 1 AS `extradays`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2022-07-30 14:33:13','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2022-07-30 14:33:13','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2022-07-30 14:33:13','',NULL,'深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2022-07-30 14:33:13','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(5,'用户管理-密码字符范围','sys.account.chrtype','0','Y','admin','2022-07-30 14:33:13','',NULL,'默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),(6,'用户管理-初始密码修改策略','sys.account.initPasswordModify','0','Y','admin','2022-07-30 14:33:14','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(7,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2022-07-30 14:33:14','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),(8,'主框架页-菜单导航显示风格','sys.index.menuStyle','default','Y','admin','2022-07-30 14:33:14','',NULL,'菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),(9,'主框架页-是否开启页脚','sys.index.footer','true','Y','admin','2022-07-30 14:33:14','',NULL,'是否开启底部页脚显示（true显示，false隐藏）'),(10,'主框架页-是否开启页签','sys.index.tagsView','true','Y','admin','2022-07-30 14:33:14','',NULL,'是否开启菜单多页签显示（true显示，false隐藏）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:27','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:27','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:28','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:28','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:28','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:28','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:28','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:28','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:29','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-07-30 14:32:29','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2022-07-30 14:33:08','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2022-07-30 14:33:08','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2022-07-30 14:33:08','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2022-07-30 14:33:09','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2022-07-30 14:33:09','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2022-07-30 14:33:09','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2022-07-30 14:33:09','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2022-07-30 14:33:09','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2022-07-30 14:33:09','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2022-07-30 14:33:09','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2022-07-30 14:33:10','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2022-07-30 14:33:10','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2022-07-30 14:33:10','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2022-07-30 14:33:10','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2022-07-30 14:33:10','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2022-07-30 14:33:10','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2022-07-30 14:33:10','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2022-07-30 14:33:11','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2022-07-30 14:33:11','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2022-07-30 14:33:11','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2022-07-30 14:33:11','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2022-07-30 14:33:11','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2022-07-30 14:33:11','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2022-07-30 14:33:11','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2022-07-30 14:33:11','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2022-07-30 14:33:12','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2022-07-30 14:33:12','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2022-07-30 14:33:12','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2022-07-30 14:33:12','',NULL,'停用状态'),(100,0,'正常','normal','work_status','','default','Y','0','admin','2022-07-31 09:31:19','admin','2022-09-04 12:20:32',''),(101,1,'休假','vacation','work_status','','success','Y','0','admin','2022-07-31 09:32:07','admin','2022-07-31 09:34:00',''),(103,4,'请假','absent','work_status','','primary','Y','0','admin','2022-07-31 09:34:42','admin','2022-09-04 12:22:33',''),(104,5,'其他','extra','work_status','','danger','Y','0','admin','2022-07-31 09:36:22','admin','2022-09-04 12:22:41',''),(105,2,'迟到','latearr','work_status','','warning','Y','0','admin','2022-09-04 12:18:04','admin','2022-09-04 12:18:36',''),(106,3,'早退','leave_early','work_status','','info','Y','0','admin','2022-09-04 12:20:05','admin','2022-09-04 12:22:02','');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2022-07-30 14:33:06','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2022-07-30 14:33:06','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2022-07-30 14:33:06','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2022-07-30 14:33:07','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2022-07-30 14:33:07','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2022-07-30 14:33:07','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2022-07-30 14:33:07','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2022-07-30 14:33:07','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2022-07-30 14:33:07','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2022-07-30 14:33:07','',NULL,'登录状态列表'),(100,'勤务状态','work_status','0','admin','2022-07-31 09:29:41','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2022-07-30 14:33:17','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2022-07-30 14:33:17','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2022-07-30 14:33:17','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 15:18:47'),(101,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 18:13:46'),(102,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 21:18:00'),(103,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 21:54:49'),(104,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 21:59:10'),(105,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 22:09:41'),(106,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 22:20:57'),(107,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 22:24:43'),(108,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 22:53:17'),(109,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 22:56:45'),(110,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 22:58:13'),(111,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 23:00:24'),(112,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 23:02:57'),(113,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 23:05:29'),(114,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 23:08:10'),(115,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 23:17:02'),(116,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 23:17:50'),(117,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-30 23:23:40'),(118,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:15:51'),(119,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:27:28'),(120,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:30:10'),(121,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:34:55'),(122,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:39:06'),(123,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:43:57'),(124,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:47:25'),(125,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:54:40'),(126,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:56:49'),(127,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 07:59:22'),(128,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:02:08'),(129,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:04:25'),(130,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:07:31'),(131,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:09:07'),(132,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:10:32'),(133,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:12:35'),(134,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:21:26'),(135,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:23:12'),(136,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:29:15'),(137,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:33:40'),(138,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 08:36:43'),(139,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 09:26:42'),(140,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 09:40:43'),(141,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 09:44:08'),(142,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 09:50:44'),(143,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 09:59:53'),(144,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 10:03:23'),(145,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 10:05:09'),(146,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 10:08:27'),(147,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 10:20:56'),(148,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 10:46:03'),(149,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 10:51:24'),(150,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 11:18:59'),(151,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 11:20:26'),(152,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 11:43:57'),(153,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 12:53:36'),(154,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-07-31 17:25:05'),(155,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-01 22:33:16'),(156,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 09:09:45'),(157,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 09:22:47'),(158,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 10:01:38'),(159,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 10:05:41'),(160,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 10:53:04'),(161,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 10:57:12'),(162,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 11:04:01'),(163,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:13:22'),(164,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:19:15'),(165,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:25:56'),(166,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:32:22'),(167,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:35:41'),(168,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:41:29'),(169,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:52:19'),(170,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:57:27'),(171,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 12:59:15'),(172,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 13:11:01'),(173,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 13:31:44'),(174,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 13:45:20'),(175,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 13:47:46'),(176,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 13:48:46'),(177,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 13:50:38'),(178,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 13:52:28'),(179,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 14:09:56'),(180,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 14:16:17'),(181,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 14:16:55'),(182,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','退出成功','2022-08-13 14:30:17'),(183,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 14:30:20'),(184,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 14:33:10'),(185,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 14:42:44'),(186,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 16:38:30'),(187,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 16:41:52'),(188,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 16:54:34'),(189,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 19:30:34'),(190,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 19:58:23'),(191,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 21:50:02'),(192,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 21:55:18'),(193,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 21:56:09'),(194,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 21:57:00'),(195,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 22:02:28'),(196,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 22:11:08'),(197,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 22:12:45'),(198,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-13 22:16:09'),(199,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-14 07:46:35'),(200,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-14 12:48:15'),(201,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-21 08:57:11'),(202,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 09:12:32'),(203,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 12:03:36'),(204,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 12:09:16'),(205,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 12:21:43'),(206,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 12:24:50'),(207,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 12:27:16'),(208,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 12:49:40'),(209,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 12:51:00'),(210,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 12:52:08'),(211,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 13:00:03'),(212,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 13:05:34'),(213,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 13:09:05'),(214,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 13:12:23'),(215,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 13:17:01'),(216,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 13:49:13'),(217,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 13:50:32'),(218,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 13:52:21'),(219,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 14:02:39'),(220,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 14:06:19'),(221,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 14:08:17'),(222,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 14:11:59'),(223,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 14:22:15'),(224,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 22:37:48'),(225,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 22:45:12'),(226,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 22:47:22'),(227,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 23:24:09'),(228,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 23:29:37'),(229,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 23:38:26'),(230,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-27 23:40:53'),(231,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 00:38:10'),(232,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 00:45:39'),(233,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 00:47:33'),(234,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 00:50:23'),(235,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 00:51:21'),(236,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 00:56:37'),(237,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 00:58:02'),(238,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 01:01:52'),(239,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 01:07:34'),(240,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 01:09:02'),(241,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 01:10:41'),(242,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 09:06:06'),(243,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 10:12:10'),(244,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 10:15:43'),(245,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 10:40:41'),(246,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 10:44:56'),(247,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 10:46:47'),(248,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:03:20'),(249,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:05:33'),(250,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:08:29'),(251,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:14:53'),(252,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:16:12'),(253,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:24:31'),(254,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:28:33'),(255,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:33:08'),(256,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:35:33'),(257,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:40:52'),(258,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:42:35'),(259,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 11:55:15'),(260,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:00:02'),(261,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:01:02'),(262,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:03:20'),(263,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:06:29'),(264,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:08:37'),(265,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:09:39'),(266,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:11:36'),(267,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:13:55'),(268,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:16:40'),(269,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:22:26'),(270,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:29:53'),(271,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:30:55'),(272,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:32:57'),(273,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:35:16'),(274,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:36:23'),(275,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:37:14'),(276,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-08-28 12:39:25'),(277,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 09:00:33'),(278,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 09:39:21'),(279,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:21:50'),(280,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:27:58'),(281,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:29:39'),(282,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:30:40'),(283,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:35:40'),(284,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:41:19'),(285,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:45:10'),(286,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:46:26'),(287,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:50:32'),(288,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:54:41'),(289,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 10:56:59'),(290,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 11:00:24'),(291,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 12:15:57'),(292,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 12:36:26'),(293,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 12:44:19'),(294,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 12:45:49'),(295,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 12:48:31'),(296,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 12:49:15'),(297,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 12:59:07'),(298,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 13:10:03'),(299,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-04 13:14:32'),(300,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 08:35:24'),(301,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 08:40:18'),(302,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 08:41:55'),(303,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 09:04:39'),(304,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 09:09:40'),(305,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 09:28:02'),(306,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 09:37:29'),(307,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 09:41:57'),(308,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 09:49:42'),(309,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 09:51:16'),(310,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:05:02'),(311,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:07:05'),(312,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:19:39'),(313,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:22:26'),(314,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:23:47'),(315,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:26:08'),(316,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:34:24'),(317,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:48:54'),(318,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 10:54:03'),(319,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 11:02:40'),(320,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 11:08:53'),(321,'admin','127.0.0.1','内网IP','Chrome 10','Linux','0','登录成功','2022-09-19 11:10:22');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2024 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','1','','fa fa-gear','admin','2022-07-30 14:32:34','',NULL,'系统管理目录'),(2,'系统监控',0,2,'#','','M','0','1','','fa fa-video-camera','admin','2022-07-30 14:32:34','',NULL,'系统监控目录'),(3,'系统工具',0,3,'#','','M','0','1','','fa fa-bars','admin','2022-07-30 14:32:34','',NULL,'系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip','menuBlank','C','0','1','','fa fa-location-arrow','admin','2022-07-30 14:32:34','',NULL,'若依官网地址'),(100,'用户管理',1,1,'/system/user','','C','0','1','system:user:view','fa fa-user-o','admin','2022-07-30 14:32:35','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','1','system:role:view','fa fa-user-secret','admin','2022-07-30 14:32:35','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','1','system:menu:view','fa fa-th-list','admin','2022-07-30 14:32:35','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','1','system:dept:view','fa fa-outdent','admin','2022-07-30 14:32:35','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','1','system:post:view','fa fa-address-card-o','admin','2022-07-30 14:32:35','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','1','system:dict:view','fa fa-bookmark-o','admin','2022-07-30 14:32:35','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','1','system:config:view','fa fa-sun-o','admin','2022-07-30 14:32:35','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','1','system:notice:view','fa fa-bullhorn','admin','2022-07-30 14:32:36','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','1','','fa fa-pencil-square-o','admin','2022-07-30 14:32:36','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','1','monitor:online:view','fa fa-user-circle','admin','2022-07-30 14:32:36','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','1','monitor:job:view','fa fa-tasks','admin','2022-07-30 14:32:36','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','1','monitor:data:view','fa fa-bug','admin','2022-07-30 14:32:36','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'/monitor/server','','C','0','1','monitor:server:view','fa fa-server','admin','2022-07-30 14:32:36','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'/monitor/cache','','C','0','1','monitor:cache:view','fa fa-cube','admin','2022-07-30 14:32:36','',NULL,'缓存监控菜单'),(114,'表单构建',3,1,'/tool/build','','C','0','1','tool:build:view','fa fa-wpforms','admin','2022-07-30 14:32:36','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'/tool/gen','','C','0','1','tool:gen:view','fa fa-code','admin','2022-07-30 14:32:37','',NULL,'代码生成菜单'),(116,'系统接口',3,3,'/tool/swagger','','C','0','1','tool:swagger:view','fa fa-gg','admin','2022-07-30 14:32:37','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','fa fa-address-book','admin','2022-07-30 14:32:37','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','1','monitor:logininfor:view','fa fa-file-image-o','admin','2022-07-30 14:32:37','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','1','system:user:list','#','admin','2022-07-30 14:32:37','',NULL,''),(1001,'用户新增',100,2,'#','','F','0','1','system:user:add','#','admin','2022-07-30 14:32:37','',NULL,''),(1002,'用户修改',100,3,'#','','F','0','1','system:user:edit','#','admin','2022-07-30 14:32:37','',NULL,''),(1003,'用户删除',100,4,'#','','F','0','1','system:user:remove','#','admin','2022-07-30 14:32:38','',NULL,''),(1004,'用户导出',100,5,'#','','F','0','1','system:user:export','#','admin','2022-07-30 14:32:38','',NULL,''),(1005,'用户导入',100,6,'#','','F','0','1','system:user:import','#','admin','2022-07-30 14:32:38','',NULL,''),(1006,'重置密码',100,7,'#','','F','0','1','system:user:resetPwd','#','admin','2022-07-30 14:32:38','',NULL,''),(1007,'角色查询',101,1,'#','','F','0','1','system:role:list','#','admin','2022-07-30 14:32:38','',NULL,''),(1008,'角色新增',101,2,'#','','F','0','1','system:role:add','#','admin','2022-07-30 14:32:38','',NULL,''),(1009,'角色修改',101,3,'#','','F','0','1','system:role:edit','#','admin','2022-07-30 14:32:38','',NULL,''),(1010,'角色删除',101,4,'#','','F','0','1','system:role:remove','#','admin','2022-07-30 14:32:38','',NULL,''),(1011,'角色导出',101,5,'#','','F','0','1','system:role:export','#','admin','2022-07-30 14:32:39','',NULL,''),(1012,'菜单查询',102,1,'#','','F','0','1','system:menu:list','#','admin','2022-07-30 14:32:39','',NULL,''),(1013,'菜单新增',102,2,'#','','F','0','1','system:menu:add','#','admin','2022-07-30 14:32:39','',NULL,''),(1014,'菜单修改',102,3,'#','','F','0','1','system:menu:edit','#','admin','2022-07-30 14:32:39','',NULL,''),(1015,'菜单删除',102,4,'#','','F','0','1','system:menu:remove','#','admin','2022-07-30 14:32:39','',NULL,''),(1016,'部门查询',103,1,'#','','F','0','1','system:dept:list','#','admin','2022-07-30 14:32:39','',NULL,''),(1017,'部门新增',103,2,'#','','F','0','1','system:dept:add','#','admin','2022-07-30 14:32:40','',NULL,''),(1018,'部门修改',103,3,'#','','F','0','1','system:dept:edit','#','admin','2022-07-30 14:32:40','',NULL,''),(1019,'部门删除',103,4,'#','','F','0','1','system:dept:remove','#','admin','2022-07-30 14:32:40','',NULL,''),(1020,'岗位查询',104,1,'#','','F','0','1','system:post:list','#','admin','2022-07-30 14:32:40','',NULL,''),(1021,'岗位新增',104,2,'#','','F','0','1','system:post:add','#','admin','2022-07-30 14:32:40','',NULL,''),(1022,'岗位修改',104,3,'#','','F','0','1','system:post:edit','#','admin','2022-07-30 14:32:40','',NULL,''),(1023,'岗位删除',104,4,'#','','F','0','1','system:post:remove','#','admin','2022-07-30 14:32:40','',NULL,''),(1024,'岗位导出',104,5,'#','','F','0','1','system:post:export','#','admin','2022-07-30 14:32:40','',NULL,''),(1025,'字典查询',105,1,'#','','F','0','1','system:dict:list','#','admin','2022-07-30 14:32:41','',NULL,''),(1026,'字典新增',105,2,'#','','F','0','1','system:dict:add','#','admin','2022-07-30 14:32:41','',NULL,''),(1027,'字典修改',105,3,'#','','F','0','1','system:dict:edit','#','admin','2022-07-30 14:32:41','',NULL,''),(1028,'字典删除',105,4,'#','','F','0','1','system:dict:remove','#','admin','2022-07-30 14:32:41','',NULL,''),(1029,'字典导出',105,5,'#','','F','0','1','system:dict:export','#','admin','2022-07-30 14:32:41','',NULL,''),(1030,'参数查询',106,1,'#','','F','0','1','system:config:list','#','admin','2022-07-30 14:32:41','',NULL,''),(1031,'参数新增',106,2,'#','','F','0','1','system:config:add','#','admin','2022-07-30 14:32:41','',NULL,''),(1032,'参数修改',106,3,'#','','F','0','1','system:config:edit','#','admin','2022-07-30 14:32:42','',NULL,''),(1033,'参数删除',106,4,'#','','F','0','1','system:config:remove','#','admin','2022-07-30 14:32:42','',NULL,''),(1034,'参数导出',106,5,'#','','F','0','1','system:config:export','#','admin','2022-07-30 14:32:42','',NULL,''),(1035,'公告查询',107,1,'#','','F','0','1','system:notice:list','#','admin','2022-07-30 14:32:42','',NULL,''),(1036,'公告新增',107,2,'#','','F','0','1','system:notice:add','#','admin','2022-07-30 14:32:42','',NULL,''),(1037,'公告修改',107,3,'#','','F','0','1','system:notice:edit','#','admin','2022-07-30 14:32:42','',NULL,''),(1038,'公告删除',107,4,'#','','F','0','1','system:notice:remove','#','admin','2022-07-30 14:32:42','',NULL,''),(1039,'操作查询',500,1,'#','','F','0','1','monitor:operlog:list','#','admin','2022-07-30 14:32:43','',NULL,''),(1040,'操作删除',500,2,'#','','F','0','1','monitor:operlog:remove','#','admin','2022-07-30 14:32:43','',NULL,''),(1041,'详细信息',500,3,'#','','F','0','1','monitor:operlog:detail','#','admin','2022-07-30 14:32:43','',NULL,''),(1042,'日志导出',500,4,'#','','F','0','1','monitor:operlog:export','#','admin','2022-07-30 14:32:43','',NULL,''),(1043,'登录查询',501,1,'#','','F','0','1','monitor:logininfor:list','#','admin','2022-07-30 14:32:43','',NULL,''),(1044,'登录删除',501,2,'#','','F','0','1','monitor:logininfor:remove','#','admin','2022-07-30 14:32:43','',NULL,''),(1045,'日志导出',501,3,'#','','F','0','1','monitor:logininfor:export','#','admin','2022-07-30 14:32:43','',NULL,''),(1046,'账户解锁',501,4,'#','','F','0','1','monitor:logininfor:unlock','#','admin','2022-07-30 14:32:44','',NULL,''),(1047,'在线查询',109,1,'#','','F','0','1','monitor:online:list','#','admin','2022-07-30 14:32:44','',NULL,''),(1048,'批量强退',109,2,'#','','F','0','1','monitor:online:batchForceLogout','#','admin','2022-07-30 14:32:44','',NULL,''),(1049,'单条强退',109,3,'#','','F','0','1','monitor:online:forceLogout','#','admin','2022-07-30 14:32:44','',NULL,''),(1050,'任务查询',110,1,'#','','F','0','1','monitor:job:list','#','admin','2022-07-30 14:32:44','',NULL,''),(1051,'任务新增',110,2,'#','','F','0','1','monitor:job:add','#','admin','2022-07-30 14:32:44','',NULL,''),(1052,'任务修改',110,3,'#','','F','0','1','monitor:job:edit','#','admin','2022-07-30 14:32:44','',NULL,''),(1053,'任务删除',110,4,'#','','F','0','1','monitor:job:remove','#','admin','2022-07-30 14:32:44','',NULL,''),(1054,'状态修改',110,5,'#','','F','0','1','monitor:job:changeStatus','#','admin','2022-07-30 14:32:45','',NULL,''),(1055,'任务详细',110,6,'#','','F','0','1','monitor:job:detail','#','admin','2022-07-30 14:32:45','',NULL,''),(1056,'任务导出',110,7,'#','','F','0','1','monitor:job:export','#','admin','2022-07-30 14:32:45','',NULL,''),(1057,'生成查询',115,1,'#','','F','0','1','tool:gen:list','#','admin','2022-07-30 14:32:45','',NULL,''),(1058,'生成修改',115,2,'#','','F','0','1','tool:gen:edit','#','admin','2022-07-30 14:32:45','',NULL,''),(1059,'生成删除',115,3,'#','','F','0','1','tool:gen:remove','#','admin','2022-07-30 14:32:45','',NULL,''),(1060,'预览代码',115,4,'#','','F','0','1','tool:gen:preview','#','admin','2022-07-30 14:32:45','',NULL,''),(1061,'生成代码',115,5,'#','','F','0','1','tool:gen:code','#','admin','2022-07-30 14:32:45','',NULL,''),(2012,'通勤',1,1,'/system/worktbl','','C','0','1','system:worktbl:view','#','admin','2022-08-13 09:21:36','',NULL,'通勤菜单'),(2013,'通勤查询',2012,1,'#','','F','0','1','system:worktbl:list','#','admin','2022-08-13 09:21:36','',NULL,''),(2014,'通勤新增',2012,2,'#','','F','0','1','system:worktbl:add','#','admin','2022-08-13 09:21:36','',NULL,''),(2015,'通勤修改',2012,3,'#','','F','0','1','system:worktbl:edit','#','admin','2022-08-13 09:21:36','',NULL,''),(2016,'通勤删除',2012,4,'#','','F','0','1','system:worktbl:remove','#','admin','2022-08-13 09:21:36','',NULL,''),(2017,'通勤导出',2012,5,'#','','F','0','1','system:worktbl:export','#','admin','2022-08-13 09:21:36','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2022-07-30 14:33:19','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2022-07-30 14:33:19','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (148,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/hihatu_worktbl','127.0.0.1','内网IP','\"hihatu_worktbl\"',NULL,0,NULL,'2022-08-13 09:12:20'),(149,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/person_month_view','127.0.0.1','内网IP','\"person_month_view\"',NULL,0,NULL,'2022-08-13 10:54:28'),(150,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"2\"],\"tableName\":[\"hihatu_worktbl\"],\"tableComment\":[\"通勤表\"],\"className\":[\"HihatuWorktbl\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"10\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"hid\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"11\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"person\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"12\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"日期\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"hdate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"13\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"类别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"status\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"work_status\"],\"columns[4].columnId\":[\"14\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"已审批\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"fix\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"15\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"工作时长\"],\"columns[5].javaType\":[\"BigDecimal\"],\"columns[5].javaField\":[\"hours\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isLis','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-13 14:34:44'),(151,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/hihatu_worktbl','127.0.0.1','内网IP','\"hihatu_worktbl\"',NULL,0,NULL,'2022-08-13 14:36:10'),(152,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"100\"],\"dictLabel\":[\"正常\"],\"dictValue\":[\"normal\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-13 20:09:18'),(153,'通勤',1,'com.ruoyi.system.controller.HihatuWorktblController.addSave()','POST',1,'admin','研发部门','/system/worktbl/add','127.0.0.1','内网IP','{\"person\":[\"employee2\"],\"hdate\":[\"2022-08-26\"],\"status\":[\"normal\"],\"hours\":[\"\"],\"stime\":[\"\"],\"etime\":[\"\"],\"extra\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-27 12:07:08'),(154,'通勤',1,'com.ruoyi.system.controller.HihatuWorktblController.addSave()','POST',1,'admin','研发部门','/system/worktbl/add','127.0.0.1','内网IP','{\"person\":[\"abc\"],\"hdate\":[\"2022-08-22\"],\"status\":[\"normal\"],\"hours\":[\"\"],\"stime\":[\"\"],\"etime\":[\"\"],\"extra\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-27 12:13:55'),(155,'通勤',1,'com.ruoyi.system.controller.HihatuWorktblController.addSave()','POST',1,'admin','研发部门','/system/worktbl/add','127.0.0.1','内网IP','{\"person\":[\"testa\"],\"hdate\":[\"2022-09-04\"],\"status\":[\"normal\"],\"stime\":[\"09 : 00\"],\"etime\":[\"18 : 00\"],\"relax\":[\"01 : 00\"],\"loc\":[\"\"],\"extra\":[\"\"]}',NULL,1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1\n### The error may exist in file [/home/graham/hihatu/ruoyi-system/target/classes/mapper/system/HihatuWorktblMapper.xml]\n### The error may involve com.ruoyi.system.mapper.HihatuWorktblMapper.insertHihatuWorktbl-Inline\n### The error occurred while setting parameters\n### SQL: insert into hihatu_worktbl          ( person,             hdate,             status,                          stime,             etime,             relax,             loc,             extra )           values ( ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1\n; Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1','2022-09-04 09:01:11'),(156,'通勤',1,'com.ruoyi.system.controller.HihatuWorktblController.addSave()','POST',1,'admin','研发部门','/system/worktbl/add','127.0.0.1','内网IP','{\"person\":[\"testa\"],\"hdate\":[\"2022-09-04\"],\"status\":[\"normal\"],\"stime\":[\"09 : 00\"],\"etime\":[\"18 : 00\"],\"relax\":[\"01 : 00\"],\"loc\":[\"\"],\"extra\":[\"\"]}',NULL,1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1\n### The error may exist in file [/home/graham/hihatu/ruoyi-system/target/classes/mapper/system/HihatuWorktblMapper.xml]\n### The error may involve com.ruoyi.system.mapper.HihatuWorktblMapper.insertHihatuWorktbl-Inline\n### The error occurred while setting parameters\n### SQL: insert into hihatu_worktbl          ( person,             hdate,             status,                          stime,             etime,             relax,             loc,             extra )           values ( ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1\n; Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1','2022-09-04 09:01:43'),(157,'通勤',1,'com.ruoyi.system.controller.HihatuWorktblController.addSave()','POST',1,'admin','研发部门','/system/worktbl/add','127.0.0.1','内网IP','{\"person\":[\"testa\"],\"hdate\":[\"2022-09-04\"],\"status\":[\"normal\"],\"stime\":[\"09 : 00\"],\"etime\":[\"18 : 00\"],\"relax\":[\"01 : 00\"],\"loc\":[\"\"],\"extra\":[\"\"]}',NULL,1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1\n### The error may exist in file [/home/graham/hihatu/ruoyi-system/target/classes/mapper/system/HihatuWorktblMapper.xml]\n### The error may involve com.ruoyi.system.mapper.HihatuWorktblMapper.insertHihatuWorktbl-Inline\n### The error occurred while setting parameters\n### SQL: insert into hihatu_worktbl          ( person,             hdate,             status,                          stime,             etime,             relax,             loc,             extra )           values ( ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1\n; Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect time value: \'09 : 00\' for column \'stime\' at row 1','2022-09-04 09:24:39'),(158,'通勤',1,'com.ruoyi.system.controller.HihatuWorktblController.addSave()','POST',1,'admin','研发部门','/system/worktbl/add','127.0.0.1','内网IP','{\"person\":[\"test2\"],\"hdate\":[\"2022-09-04\"],\"status\":[\"normal\"],\"stime\":[\"09:00\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"\"],\"extra\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 09:39:41'),(159,'通勤',3,'com.ruoyi.system.controller.HihatuWorktblController.remove()','POST',1,'admin','研发部门','/system/worktbl/remove','127.0.0.1','内网IP','{\"ids\":[\"993,994,995\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 09:42:01'),(160,'通勤',3,'com.ruoyi.system.controller.HihatuWorktblController.remove()','POST',1,'admin','研发部门','/system/worktbl/remove','127.0.0.1','内网IP','{\"ids\":[\"992\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 09:42:35'),(161,'通勤',3,'com.ruoyi.system.controller.HihatuWorktblController.remove()','POST',1,'admin','研发部门','/system/worktbl/remove','127.0.0.1','内网IP','{\"ids\":[\"997\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 09:42:42'),(162,'通勤',1,'com.ruoyi.system.controller.HihatuWorktblController.addSave()','POST',1,'admin','研发部门','/system/worktbl/add','127.0.0.1','内网IP','{\"person\":[\"若依\"],\"hdate\":[\"2022-09-04\"],\"status\":[\"normal\"],\"stime\":[\"09:00\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 11:01:42'),(163,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()','POST',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\"dictLabel\":[\"迟到\"],\"dictValue\":[\"latearr\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"102\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:18:05'),(164,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"102\"],\"dictLabel\":[\"迟到早退\"],\"dictValue\":[\"incomplete\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"7\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:18:27'),(165,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"105\"],\"dictLabel\":[\"迟到\"],\"dictValue\":[\"latearr\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:18:37'),(166,'字典数据',3,'com.ruoyi.web.controller.system.SysDictDataController.remove()','POST',1,'admin','研发部门','/system/dict/data/remove','127.0.0.1','内网IP','{\"ids\":[\"102\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:19:02'),(167,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()','POST',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\"dictLabel\":[\"早退\"],\"dictValue\":[\"leave_early\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:20:05'),(168,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"106\"],\"dictLabel\":[\"早退\"],\"dictValue\":[\"leave_early\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:20:24'),(169,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"100\"],\"dictLabel\":[\"正常\"],\"dictValue\":[\"normal\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:20:33'),(170,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"106\"],\"dictLabel\":[\"早退\"],\"dictValue\":[\"leave_early\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:21:05'),(171,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"106\"],\"dictLabel\":[\"早退\"],\"dictValue\":[\"leave_early\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:21:27'),(172,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"106\"],\"dictLabel\":[\"早退\"],\"dictValue\":[\"leave_early\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:21:40'),(173,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"106\"],\"dictLabel\":[\"早退\"],\"dictValue\":[\"leave_early\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:22:02'),(174,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"103\"],\"dictLabel\":[\"请假\"],\"dictValue\":[\"absent\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:22:13'),(175,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"104\"],\"dictLabel\":[\"其他\"],\"dictValue\":[\"extra\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:22:20'),(176,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"103\"],\"dictLabel\":[\"请假\"],\"dictValue\":[\"absent\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:22:33'),(177,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\"dictCode\":[\"104\"],\"dictLabel\":[\"其他\"],\"dictValue\":[\"extra\"],\"dictType\":[\"work_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:22:41'),(178,'通勤',1,'com.ruoyi.system.controller.HihatuWorktblController.addSave()','POST',1,'admin','研发部门','/system/worktbl/add','127.0.0.1','内网IP','{\"person\":[\"若依\"],\"hdate\":[\"2022-09-04\"],\"status\":[\"normal\"],\"stime\":[\"09:00\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:24:07'),(179,'通勤',3,'com.ruoyi.system.controller.HihatuWorktblController.remove()','POST',1,'admin','研发部门','/system/worktbl/remove','127.0.0.1','内网IP','{\"ids\":[\"996\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-04 12:24:20'),(180,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"params\":{}}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where hid = null\' at line 3\n### The error may exist in file [/home/graham/hihatu/ruoyi-system/target/classes/mapper/system/HihatuWorktblMapper.xml]\n### The error may involve com.ruoyi.system.mapper.HihatuWorktblMapper.updateHihatuWorktbl-Inline\n### The error occurred while setting parameters\n### SQL: update hihatu_worktbl                    where hid = ?\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where hid = null\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where hid = null\' at line 3','2022-09-04 13:15:30'),(181,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"person\":[\"员工一\"],\"hdate\":[\"2022-07-29\"],\"status\":[\"normal\"],\"stime\":[\"08:51\"],\"etime\":[\"17:35\"],\"relax\":[\"01:30\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2022-09-19 10:26:19'),(182,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"person\":[\"若依\"],\"hdate\":[\"2022-09-03\"],\"status\":[\"normal\"],\"stime\":[\"09:00\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2022-09-19 10:39:29'),(183,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"person\":[\"若依\"],\"hdate\":[\"2022-09-03\"],\"status\":[\"latearr\"],\"stime\":[\"09:00\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2022-09-19 10:45:54'),(184,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"person\":[\"若依\"],\"hdate\":[\"2022-09-03\"],\"status\":[\"normal\"],\"stime\":[\"09:03\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2022-09-19 10:49:11'),(185,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"person\":[\"若依\"],\"hdate\":[\"2022-09-03\"],\"status\":[\"normal\"],\"stime\":[\"09:03\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2022-09-19 10:49:18'),(186,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"person\":[\"若依\"],\"hdate\":[\"2022-09-03\"],\"status\":[\"normal\"],\"stime\":[\"09:02\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2022-09-19 11:03:17'),(187,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"person\":[\"若依\"],\"hdate\":[\"2022-09-03\"],\"status\":[\"normal\"],\"stime\":[\"09:02\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2022-09-19 11:04:16'),(188,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"hid\":[\"998\"],\"person\":[\"若依\"],\"hdate\":[\"2022-09-03\"],\"status\":[\"normal\"],\"stime\":[\"09:02\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-19 11:09:16'),(189,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"hid\":[\"999\"],\"person\":[\"若依\"],\"hdate\":[\"2022-09-03\"],\"status\":[\"normal\"],\"stime\":[\"09:05\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-19 11:10:41'),(190,'通勤',2,'com.ruoyi.system.controller.HihatuWorktblController.editSave()','POST',1,'admin','研发部门','/system/worktbl/edit','127.0.0.1','内网IP','{\"hid\":[\"998\"],\"person\":[\"若依\"],\"hdate\":[\"2022-09-02\"],\"status\":[\"latearr\"],\"stime\":[\"09:02\"],\"etime\":[\"18:00\"],\"relax\":[\"01:00\"],\"loc\":[\"東京都\"],\"extra\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-09-19 11:11:32');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2022-07-30 14:32:31','',NULL,''),(2,'se','项目经理',2,'0','admin','2022-07-30 14:32:31','',NULL,''),(3,'hr','人力资源',3,'0','admin','2022-07-30 14:32:31','',NULL,''),(4,'user','普通员工',4,'0','admin','2022-07-30 14:32:32','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1','0','0','admin','2022-07-30 14:32:33','',NULL,'超级管理员'),(2,'普通角色','common',2,'2','0','0','admin','2022-07-30 14:32:33','',NULL,'普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060),(2,1061);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2022-09-19 10:10:23','2022-07-30 14:32:30','admin','2022-07-30 14:32:30','','2022-09-19 11:10:22','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','0','127.0.0.1','2022-07-30 14:32:30','2022-07-30 14:32:30','admin','2022-07-30 14:32:30','',NULL,'测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('9b9b037a-763c-4625-a2d1-94a2fee23215','admin','研发部门','127.0.0.1','内网IP','Chrome 10','Linux','on_line','2022-09-19 09:19:38','2022-09-19 10:11:29',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ry'
--

--
-- Final view structure for view `person_month_view`
--

/*!50001 DROP VIEW IF EXISTS `person_month_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_month_view` AS select `hihatu_worktbl`.`person` AS `person`,concat(concat(year(`hihatu_worktbl`.`hdate`),'-'),right((100 + month(`hihatu_worktbl`.`hdate`)),2)) AS `yearmonth`,(sum(((`hihatu_worktbl`.`etime` - `hihatu_worktbl`.`stime`) - `hihatu_worktbl`.`relax`)) / 10000) AS `hours`,sum(if((`hihatu_worktbl`.`status` = 'normal'),1,0)) AS `normaldays`,sum(if((`hihatu_worktbl`.`status` = 'vacation'),1,0)) AS `vacationdays`,sum(if((`hihatu_worktbl`.`status` = 'extra'),1,0)) AS `extradays` from `hihatu_worktbl` group by `hihatu_worktbl`.`person`,concat(concat(year(`hihatu_worktbl`.`hdate`),'-'),right((100 + month(`hihatu_worktbl`.`hdate`)),2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19 11:14:18
