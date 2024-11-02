/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaoshitangdingcanxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaoshitangdingcanxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaoshitangdingcanxitong`;

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '菜品名称  Search111 ',
  `caipin_types` int(11) DEFAULT NULL COMMENT '菜品类型 Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '菜品缩略图',
  `caipin_new_money` int(11) DEFAULT NULL COMMENT '菜品单价',
  `caipin_content` text COMMENT '菜品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='菜品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`caipin_name`,`caipin_types`,`caipin_photo`,`caipin_new_money`,`caipin_content`,`create_time`) values (1,'炒鸡蛋',1,'http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618487165227.jpg',10,'炒鸡蛋非常的好吃\r\n','2021-04-15 19:46:35'),(2,'干锅花菜',1,'http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618487201798.jpg',11,'干锅花菜非常的好吃\r\n<img src=\"http://localhost:8080/gaoxiaoshitangdingcanxitong/upload/1618487241298.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gaoxiaoshitangdingcanxitong/upload/1618487241298.jpg\">\r\n','2021-04-15 19:47:24'),(3,'酱爆鸡丁',2,'http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618487253285.jpg',12,'酱爆鸡丁的详情\r\n','2021-04-15 19:47:50'),(4,'麻辣鸡丝',4,'http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618487276621.jpg',14,'麻辣鸡丝的详情\r\n','2021-04-15 19:48:11'),(5,'小炒牛肉',3,'http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618490354424.jpg',15,'小炒牛肉  贼好吃\r\n撒萨达as\r\n是\r\n','2021-04-15 20:39:34');

/*Table structure for table `caipin_collection` */

DROP TABLE IF EXISTS `caipin_collection`;

CREATE TABLE `caipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='菜品收藏';

/*Data for the table `caipin_collection` */

insert  into `caipin_collection`(`id`,`caipin_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,5,1,'2021-04-15 20:40:49','2021-04-15 20:40:49');

/*Table structure for table `caipin_liuyan` */

DROP TABLE IF EXISTS `caipin_liuyan`;

CREATE TABLE `caipin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='菜品评价';

/*Data for the table `caipin_liuyan` */

insert  into `caipin_liuyan`(`id`,`caipin_id`,`yonghu_id`,`caipin_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (2,5,1,'‍好吃啊\r\n','不错\r\n','2021-04-15 20:43:23','2021-04-15 20:43:23');

/*Table structure for table `caipin_order` */

DROP TABLE IF EXISTS `caipin_order`;

CREATE TABLE `caipin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_qucan_time` timestamp NULL DEFAULT NULL COMMENT '预估取餐时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜品订单';

/*Data for the table `caipin_order` */

insert  into `caipin_order`(`id`,`caipin_id`,`yonghu_id`,`caipin_qucan_time`,`create_time`) values (1,5,1,'2021-04-15 09:02:02','2021-04-15 20:40:17');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'饭店轮播图1','http://localhost:8080/gaoxiaoshitangdingcanxitong/upload/1618486357636.jpg'),(2,'饭店轮播图2','http://localhost:8080/gaoxiaoshitangdingcanxitong/upload/1618486370940.webp'),(3,'饭店轮播图3','http://localhost:8080/gaoxiaoshitangdingcanxitong/upload/1618490318805.webp');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-15 19:25:53'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-15 19:25:53'),(3,'banji_types','班级类型名称',1,'班级1',NULL,'2021-04-15 19:25:53'),(4,'banji_types','班级类型名称',2,'班级2',NULL,'2021-04-15 19:25:53'),(5,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-04-15 19:25:53'),(6,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-04-15 19:25:53'),(7,'gonggao_types','公告类型名称',3,'停业公告',NULL,'2021-04-15 19:25:53'),(8,'single_seach_types','单页数据类型',1,'本店介绍',NULL,'2021-04-15 19:25:53'),(9,'caipin_types','菜品类型名称',1,'川菜',NULL,'2021-04-15 19:25:53'),(10,'caipin_types','菜品类型名称',2,'湘菜',NULL,'2021-04-15 19:25:53'),(11,'caipin_types','菜品类型名称',3,'徽菜',NULL,'2021-04-15 19:25:53'),(12,'caipin_types','菜品类型名称',4,'苏帮菜',NULL,'2021-04-15 19:25:53');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`gonggao_photo`,`insert_time`,`gonggao_content`,`create_time`) values (3,'2021年3月20日停业',3,'http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618487326793.jpg','2021-04-15 19:49:01','2021年3月20日要停业,家里有事  抱歉\r\n','2021-04-15 19:49:01'),(4,'西红柿鸡蛋暂停',2,'http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618487380873.jpg','2021-04-15 19:49:55','鸡蛋没买到  ,所以今天没有了 不好意思\r\n','2021-04-15 19:49:55'),(5,'公告3',1,'http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618490681735.jpg','2021-04-15 20:44:43','公告内容3\r\n','2021-04-15 20:44:43');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (1,'嘉苑饭店本店介绍',1,'嘉苑饭店是坐落于北京中关村高科技园区的一所三星级涉外酒店，隶属于中国铁道科学研究院下属。饭店自2000年12月开业至今，地理位置优越，交通便利，定能成为您商务会议的最佳选择。\r\n饭店设施齐全，集客房、餐饮、会议、娱乐为一体，拥有各类的房型百余间、大型宴会厅，餐饮包厢及多功能厅，大小会议室多个。为满足宾客的多层次需求，还设有茶室、商务中心、歌厅、工艺品店、棋牌室等服务和娱乐设施，配套项目齐全。 饭店本着“嘉苑饭店、宾客家园”的宗旨，以“团结、勤奋、智慧”的企业精神，为来自国内外各界朋友积极提供了优质的接待和服务。无论商务、宴会、休闲、娱乐，这里都是您的理想之选。\r\n地理位置\r\n饭店位于海淀中关村高科技园区大柳树路6号。北依中关村南路，东与中央财经大学、北京交通大学相邻，西至白颐路,向南直达北京展览馆，东靠西直门交通枢纽。附近标志性建筑有西直门凯德购物中心、北京海洋馆、北京图书馆，首都体育馆，富海国际港等。与中央财经大学、北京交通大学相邻。乘坐公交运通103路、16路、26路、319路均可到达。\r\n服务设施\r\n饭店拥有建筑面积13700多平方米，集客房、餐饮、会议、娱乐为一体。拥有各类的房型百余间、大小会议室7个；餐厅可供150~300人同时用餐； 为满足宾客的多重需求，还设有卡拉OK歌舞厅、茶室、棋牌室、工艺品店、商务中心等娱乐设施和服务，配套项目齐全。\r\n服务管理\r\n饭店于2004年通过了《质量管理体系》和《环境管理体系》认证工作，有一整套内部管理机制和完善的工作流程，从而有效地保证了饭店服务质量水准和环保节能工作的稳步提高。2011年在市旅游局复核中一次性通过星级复核标准。饭店现在也是《绿色旅游饭店》，以更高的服务标准满足各界人士的需求 。\r\n1111111\r\n','2021-04-15 19:50:28');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','8o2qec5qr5d1tnudhfexrg5w7wd5pizu','2021-04-15 19:29:37','2021-04-15 22:23:12'),(2,1,'a1','yonghu','用户','dfmczr81wv3csf5frk9tmqo6jgngjh2r','2021-04-15 19:58:32','2021-04-15 22:23:01'),(3,3,'a5','yonghu','用户','exi7lhw3ng803w6boocg33wem1r21y7d','2021-04-15 21:12:01','2021-04-15 22:12:01');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`banji_types`,`create_time`) values (1,'a1','123456','11111','张1','17703786901','410224199610232001','http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618487514738.jpg',1,1,'2021-04-15 19:51:57'),(2,'a2','123456','222','张2','17703786902','410224199610232002','http://localhost:8080/gaoxiaoshitangdingcanxitong/file/download?fileName=1618490281793.jpg',2,1,'2021-04-15 20:38:14');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
