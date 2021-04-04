/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.1.21-MariaDB : Database - jayeng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `bus` */

DROP TABLE IF EXISTS `bus`;

CREATE TABLE `bus` (
  `id_bus` int(20) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `id_berangkat` int(20) NOT NULL,
  PRIMARY KEY (`id_bus`,`id_berangkat`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `bus` */

insert  into `bus`(`id_bus`,`kelas`,`harga`,`id_berangkat`) values (1,'Ekonomi','65000',1),(2,'Patas Non AC','100000',2),(3,'Ekonomi AC','85000',0),(4,'AC Non Toilet','100000',0),(5,'AC Toilet','120000',0),(6,'Ekonomi','85000',0),(7,'Patas Non AC','125000',0),(8,'Ekonomi AC','100000',0),(9,'AC Non Toilet','135000',0),(10,'AC Toilet','160000',0);

/*Table structure for table `keberangkatan` */

DROP TABLE IF EXISTS `keberangkatan`;

CREATE TABLE `keberangkatan` (
  `id_berangkat` int(20) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(40) NOT NULL,
  `jadwal` varchar(10) NOT NULL,
  `rute` varchar(100) NOT NULL,
  PRIMARY KEY (`id_berangkat`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `keberangkatan` */

insert  into `keberangkatan`(`id_berangkat`,`tujuan`,`jadwal`,`rute`) values (1,'Purwokerto','16:00 WIB','Bekasi - Purwokerto'),(2,'Purwokerto','17:00 WIB','Bekasi - Purwokerto'),(8,'Purwokerto','18:30 WIB','Bekasi - Purwokerto'),(9,'Purwokerto','19:00 WIB','Bekasi - Purwokerto'),(10,'Purwokerto','19:30 WIB','Bekasi - Purwokerto'),(11,'Yogyakarta','20:00 WIB','Bekasi - Gombong - Kebumen - Kutoarjo - Purworejo - Yogyakarta');

/*Table structure for table `kursi_pesanan` */

DROP TABLE IF EXISTS `kursi_pesanan`;

CREATE TABLE `kursi_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pesan` int(11) NOT NULL,
  `kode_kursi` varchar(20) NOT NULL,
  `id_bus` int(11) NOT NULL,
  `tgl_berangkat` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `kursi_pesanan` */

insert  into `kursi_pesanan`(`id`,`id_pesan`,`kode_kursi`,`id_bus`,`tgl_berangkat`) values (42,67,'2A',1,'2018-06-26'),(43,67,'2B',1,'2018-06-26'),(44,68,'1A',1,'2018-06-26'),(45,68,'1B',1,'2018-06-26');

/*Table structure for table `pembayaran` */

DROP TABLE IF EXISTS `pembayaran`;

CREATE TABLE `pembayaran` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bank` varchar(10) NOT NULL,
  `nmr_rekening` varchar(30) NOT NULL,
  `atas_nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembayaran` */

/*Table structure for table `pesanan` */

DROP TABLE IF EXISTS `pesanan`;

CREATE TABLE `pesanan` (
  `id_pesan` int(20) NOT NULL AUTO_INCREMENT,
  `id_bus` int(20) NOT NULL,
  `id_berangkat` int(20) NOT NULL,
  `nik` int(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_berangkat` date NOT NULL,
  `qty` int(20) NOT NULL,
  `total` varchar(30) NOT NULL,
  `fixed` int(2) NOT NULL,
  `invoice` int(20) NOT NULL,
  `konfirm` int(11) NOT NULL,
  `respons` varchar(50) NOT NULL,
  `pembayaran` int(2) NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

/*Data for the table `pesanan` */

insert  into `pesanan`(`id_pesan`,`id_bus`,`id_berangkat`,`nik`,`nama`,`alamat`,`tgl_pesan`,`tgl_berangkat`,`qty`,`total`,`fixed`,`invoice`,`konfirm`,`respons`,`pembayaran`) values (57,0,0,0,'','','0000-00-00','0000-00-00',0,'',0,0,0,'',0),(58,0,1,1234567890,'Adminl','kjkjh','2018-06-25','2018-06-26',2,'130000',0,730,0,'',0),(59,1,1,1234567890,'Adminl','jhkjhkj','2018-06-25','2018-06-26',2,'130000',0,789,0,'',0),(60,1,1,1234567890,'Adminl','jhkjhkj','2018-06-25','2018-06-26',2,'130000',0,608,0,'',0),(61,1,1,1234567890,'Admin2','asdadasdassa','2018-06-25','2018-06-26',2,'130000',0,667,0,'',0),(62,1,1,1234567890,'Admin','asdadasdasd','2018-06-25','2018-06-26',2,'130000',0,771,0,'',0),(63,1,1,1234567890,'Admin','asd','2018-06-25','2018-06-26',2,'130000',0,868,0,'',0),(64,1,1,1234567890,'Admin','jkhkjdhas','2018-06-25','2018-06-26',2,'130000',0,871,0,'',0),(65,1,1,1234567890,'asdasdasad','adsadadsad','2018-06-25','2018-06-26',2,'130000',0,184,0,'',0),(66,1,1,1234567890,'Admin','gfhgf','2018-06-25','2018-06-26',2,'130000',0,772,0,'',0),(67,1,1,1234567890,'Admin','kjhkjh','2018-06-25','2018-06-26',2,'130000',0,335,0,'',0),(68,1,1,1234567890,'asljdalkds','asdsad','2018-06-25','2018-06-26',2,'130000',0,677,0,'',0),(69,1,1,1234567890,'asdasdasaddddd','asdadasd','2018-06-25','2018-06-26',2,'130000',0,407,0,'',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`username`,`password`,`level`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
