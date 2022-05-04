-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.40-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ci3-jwt
CREATE DATABASE IF NOT EXISTS `ci3-jwt` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ci3-jwt`;

-- Dumping structure for table ci3-jwt.mahasiswa
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id_mhs` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(20) DEFAULT NULL,
  `nama_mhs` varchar(100) DEFAULT NULL,
  `id_prodi` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_mhs`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table ci3-jwt.mahasiswa: ~4 rows (approximately)
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` (`id_mhs`, `nim`, `nama_mhs`, `id_prodi`) VALUES
	(6, '171234567', 'nama kalian', '1'),
	(8, '1711234569', 'nama teman2 kalian', '2'),
	(9, '1711234567', 'Nama teman 2', '1'),
	(10, '17112345678', 'Nama teman 3', '1');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;

-- Dumping structure for table ci3-jwt.m_user
CREATE TABLE IF NOT EXISTS `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ci3-jwt.m_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;
INSERT INTO `m_user` (`id`, `username`, `password`, `level`) VALUES
	(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
	(2, 'dodi', 'ca26331c6bfbf9487a7cde0f1f95644449e83baa', 2);
/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;

-- Dumping structure for table ci3-jwt.prodi
CREATE TABLE IF NOT EXISTS `prodi` (
  `id_prodi` int(2) DEFAULT NULL,
  `nama_prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ci3-jwt.prodi: ~2 rows (approximately)
/*!40000 ALTER TABLE `prodi` DISABLE KEYS */;
INSERT INTO `prodi` (`id_prodi`, `nama_prodi`) VALUES
	(1, 'Teknik Informatika'),
	(2, 'Sistem Informasi Kota Cerdas');
/*!40000 ALTER TABLE `prodi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
