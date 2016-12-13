-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 02:05 AM
-- Server version: 5.6.31
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ware`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `id` int(11) unsigned NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `key`, `all_access`, `controller`, `date_created`, `date_modified`) VALUES
(1, '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', 0, '/api_server', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `KODE_BARANG` varchar(5) NOT NULL,
  `NAMA_BARANG` varchar(55) NOT NULL,
  `KODE_UNIT` varchar(3) DEFAULT NULL,
  `HARGA_JUAL` int(11) NOT NULL,
  `KODE_KURS` varchar(3) DEFAULT NULL,
  `KODE_DEPT` varchar(12) DEFAULT NULL,
  `KODE_KLASIFIKASI` varchar(60) DEFAULT NULL,
  `KODE_GUDANG` varchar(12) DEFAULT NULL,
  `METODE` varchar(7) DEFAULT NULL,
  `DISIMPAN` varchar(1) DEFAULT NULL,
  `DIBELI` varchar(1) DEFAULT NULL,
  `DIJUAL` varchar(1) DEFAULT NULL,
  `KODE_GROUP1` varchar(21) NOT NULL,
  `KODE_GROUP2` varchar(8) DEFAULT NULL,
  `KODE_GROUP3` varchar(8) DEFAULT NULL,
  `KODE_GROUP4` varchar(8) DEFAULT NULL,
  `QTY` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `ISSERIAL` varchar(30) DEFAULT NULL,
  `NOMORSERIAL` varchar(30) DEFAULT NULL,
  `ISLOT` varchar(30) DEFAULT NULL,
  `QTYLOT` varchar(30) DEFAULT NULL,
  `NOMORLOT` varchar(30) DEFAULT NULL,
  `NOTE1` varchar(30) DEFAULT NULL,
  `NOTE2` varchar(30) DEFAULT NULL,
  `NOTE3` varchar(30) DEFAULT NULL,
  `NOTE4` varchar(30) DEFAULT NULL,
  `TGLPRODUKSI` varchar(30) DEFAULT NULL,
  `TGLKADALUARSA` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`KODE_BARANG`, `NAMA_BARANG`, `KODE_UNIT`, `HARGA_JUAL`, `KODE_KURS`, `KODE_DEPT`, `KODE_KLASIFIKASI`, `KODE_GUDANG`, `METODE`, `DISIMPAN`, `DIBELI`, `DIJUAL`, `KODE_GROUP1`, `KODE_GROUP2`, `KODE_GROUP3`, `KODE_GROUP4`, `QTY`, `PRICE`, `ISSERIAL`, `NOMORSERIAL`, `ISLOT`, `QTYLOT`, `NOMORLOT`, `NOTE1`, `NOTE2`, `NOTE3`, `NOTE4`, `TGLPRODUKSI`, `TGLKADALUARSA`) VALUES
('HJ1', 'JADIED PROPOLIS', 'PCS', 30000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 104, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HJ2', 'JADIED LAMBUNG', 'PCS', 25000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 197, 12500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HJ3', 'JADIED KIDS', 'PCS', 25000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 171, 12500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HJ4', 'JADIED STAMINA', 'PCS', 45000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 22500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM1', 'MADU BOTOL RANDU', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM10', 'MADU BOTOL MULTIFLORA', 'PCS', 0, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 9, 50000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM11', 'MADU BOTOL KECIL RANDU', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 10, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM12', 'MADU BOTOL KECIL RAMBUTAN', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 11, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM13', 'MADU BOTOL KECIL KALIMANTAN', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 12, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM14', 'MADU BOTOL KECIL KARET', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 13, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM15', 'MADU BOTOL KECIL SONO', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 14, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM16', 'MADU BOTOL KECIL MANGGA', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 15, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM17', 'MADU BOTOL KECIL SUMBAWA', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 16, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM18', 'MADU BOTOL KECIL KALIANDRA', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 17, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM19', 'MADU BOTOL KECIL  KELENGKENG', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 18, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM2', 'MADU BOTOL RAMBUTAN', 'PCS', 80000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM20', 'MADU BOTOL KECIL MULTIFLORA', 'PCS', 20000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 19, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM21', 'MADU YAMAN 2 (1KG)', 'PCS', 600000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 12, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM22', 'MADU YAMAN 1 (? KG)', 'PCS', 1000000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM23', 'MADU KHASMIR 2KG', 'PCS', 240000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 8, 170000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM24', 'MADU KHASMIR 1 ? KG', 'PCS', 225000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 3, 140000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM25', 'MADU KHASMIR 1KG', 'PCS', 150000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 140, 100000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM26', 'MADU KHASMIR (1) 1KG', 'PCS', 175000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM27', 'MADU AUSTRALIA 1KG', 'PCS', 175000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM28', 'MADU KHASMIR MUMTAZ ? KG', 'PCS', 160000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM29', 'MADU KHASMIR (ACASIA HONEY) ?', 'PCS', 75000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM3', 'MADU BOTOL KALIMANTAN', 'PCS', 70000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM30', 'MADU KHASMIR HERBAL HONEY ? KG', 'PCS', 75000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 24, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM31', 'MADU ASYFA ? KG', 'PCS', 75000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 27, 60000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM32', 'MADU KHASMIRI 400 GR', 'PCS', 70000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 45000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM33', 'MADU KHASMIRI 250 GR', 'PCS', 45000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 17, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM34', 'MADU PAHIT', 'PCS', 50000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 4, 27500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM35', 'MADU DIABET', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 20, 35000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM36', 'MADU KEJANTANAN', 'PCS', 90000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 3, 70000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM4', 'MADU BOTOL KARET', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 3, 30000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM5', 'MADU BOTOL SONO', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 4, 35000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM6', 'MADU BOTOL MANGGA', 'PCS', 80000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 5, 53000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM7', 'MADU BOTOL SUMBAWA', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 6, 40000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM8', 'MADU BOTOL KALIANDRA', 'PCS', 60000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HM9', 'MADU BOTOL KELENGKENG', 'PCS', 80000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 8, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ1', 'ZAITUN BORGES 500 ML', 'PCS', 85000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 40, 65000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ2', 'ZAITUN BORGES 250 ML', 'PCS', 45000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 49, 33000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ3', 'ZAITUN FIRDAUS 250 ML', 'PCS', 40000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 156, 27500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ4', 'ZAITUN BURCINO 250 ML', 'PCS', 40000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 51, 21000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('HZ5', 'ZAITUN LE RICHE 300ML', 'PCS', 35000, 'IDR', 'Head Quarter', 'HERBAL', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 91, 21500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ1', 'AL-WAFU WAL IBTIDA 1', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ10', 'AL-WAFU WAL IBTIDA 9', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ11', 'AL-WAFU WAL IBTIDA 10', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ12', 'AL-WAFU WAL IBTIDA 11', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ13', 'AL-WAFU WAL IBTIDA 12', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ14', 'AL-WAFU WAL IBTIDA 13', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ15', 'AL-WAFU WAL IBTIDA 14', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ16', 'AL-WAFU WAL IBTIDA 15', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ17', 'AL-WAFU WAL IBTIDA 16', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ18', 'AL-WAFU WAL IBTIDA 17', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ19', 'AL-WAFU WAL IBTIDA 18', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ2', 'AL-WAFU WAL IBTIDA 2', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ20', 'AL-WAFU WAL IBTIDA  19', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ21', 'AL-WAFU WAL IBTIDA 20', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ22', 'AL-WAFU WAL IBTIDA 21', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ23', 'AL-WAFU WAL IBTIDA 22', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ24', 'AL-WAFU WAL IBTIDA 23', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ25', 'AL-WAFU WAL IBTIDA 24', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ26', 'AL-WAFU WAL IBTIDA 25', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ27', 'BUKU FASIH 1', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ28', 'BUKU FASIH 2', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ29', 'BUKU FASIH 3', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ3', 'AL-WAFU WAL IBTIDA 3', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ30', 'BUKU FASIH 4', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ31', 'BUKU FASIH 5', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ32', 'BUKU FASIH 6', 'PCS', 1500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ33', 'KHOT PRAKTIS 1 KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ34', 'KHOT PRAKTIS 2 KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ35', 'KHOT PRAKTIS 3   KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ36', 'KHOT PRAKTIS 1 BESAR', 'PCS', 2600, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ37', 'KHOT PRAKTIS 2  BESAR', 'PCS', 2600, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ38', 'KHOT PRAKTIS 3  BESAR', 'PCS', 2600, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ39', 'IQRO 1  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ4', 'AL-WAFU WAL IBTIDA 3', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ40', 'IQRO 2  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ41', 'IQRO 3  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ42', 'IQRO 4  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ43', 'IQRO 5  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ44', 'IQRO 6  KECIL', 'PCS', 1250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ45', 'IQRO 1  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ46', 'IQRO 2  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ47', 'IQRO 3  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ48', 'IQRO 4  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ49', 'IQRO 5  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ5', 'AL-WAFU WAL IBTIDA 4', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ50', 'IQRO 6  BESAR', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ51', 'IQRO BENDEL KECIL', 'PCS', 6250, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 2820, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ6', 'AL-WAFU WAL IBTIDA 5', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ7', 'AL-WAFU WAL IBTIDA 6', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ8', 'AL-WAFU WAL IBTIDA 7', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('IQ9', 'AL-WAFU WAL IBTIDA 8', 'PCS', 2500, 'IDR', 'Head Quarter', 'IQRO DIBA', 'Head Quarter', 'Average', 'T', 'T', 'T', 'No Group', 'No Group', 'No Group', 'No Group', 0, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB1', 'QURAN BESAR CD GARIS AIN SYAM', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AIN SYAM', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB10', 'QURAN BESAR HVS  GARIS MADKURSURABAYA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'MADKUR', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB11', 'QURAN BESAR HVS POLOS NURCAHAYA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'NUR CAHAYA', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB12', 'QURAN BESAR  HVS POLOS DUTA ILMUAL-BARI', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB13', 'QURAN BESAR HVS POLOS DUTA ILMUAR-RAHMAN', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB14', 'QURAN BESAR HVS GARIS RAJAPUBLISHING', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'RADJA PUBLISHING', 'No Group', 'No Group', 'No Group', 0, 19000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB15', 'QURAN BESAR HVS GARIS(RAHMAN)RAJA PUBLISHING', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'RADJA PUBLISHING', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB16', 'QURAN  BESAR HVS  GARIS HIKMAHPRESS', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'HIKMAH PRESS', 'No Group', 'No Group', 'No Group', 0, 19500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB17', 'QURAN BESAR HVS POLOS MAHALHIDAYAH', 'PCS', 40000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 22500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB18', 'QURAN BESAR HVS GARIS MAHALHIDAYAH', 'PCS', 40000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 22000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB19', 'QURAN BESAR HVS POLOS AL-MAJIDTOHA PUTRA', 'PCS', 56000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'TOHA PUTRA', 'No Group', 'No Group', 'No Group', 0, 36400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB2', 'QURAN BESAR CD GARIS MADKURSURABAYA', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'MADKUR', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB20', 'QURAN  BESAR HVS POLOS AL-MUAKHIRTOHA PUTRA', 'PCS', 57500, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'TOHA PUTRA', 'No Group', 'No Group', 'No Group', 0, 37400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB21', 'QURAN BESARHVS  GARIS AR-RASYIDTOHA PUTRA', 'PCS', 62500, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'TOHA PUTRA', 'No Group', 'No Group', 'No Group', 0, 40650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB22', 'QURAN BESAR HVS EMAS KALAM ALI', 'PCS', 45000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 24700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB23', 'QURAN BESAR HVS EMAS  GARIS ISTANAKARYA MULIA', 'PCS', 45000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB24', 'QURAN BESAR HVS GARIS PERAK KALAMALI', 'PCS', 40000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB25', 'QURAN BESAR HVS  BATIK KALAM ALI', 'PCS', 45000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 24700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB26', 'QURAN BESAR HIKMAH LUX TAJWID', 'PCS', 95000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'HIKMAH PRESS', 'No Group', 'No Group', 'No Group', 0, 66700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB27', 'QURAN BESAR FOKUS MEDIA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'FOKUS MEDIA', 'No Group', 'No Group', 'No Group', 0, 19000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB28', 'QURAN BESAR MAGFIROH TAJWID', 'PCS', 155000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'MAGHFIROH', 'No Group', 'No Group', 'No Group', 0, 100750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB29', 'QURAN BESAR HVS GARIS BINA ILMU', 'PCS', 45000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BINA ILMU', 'No Group', 'No Group', 'No Group', 0, 21500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB3', 'QURAN  BESAR CD GARIS ASSSALAM', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AS-SALAM', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB30', 'QURAN BESAR REST KALAM ALI', 'PCS', 62000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BINA ILMU', 'No Group', 'No Group', 'No Group', 1, 40300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB31', 'QURAN BESAR VELCRO KALAM ALI', 'PCS', 62000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BINA ILMU', 'No Group', 'No Group', 'No Group', 2, 40300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB4', 'QURAN BESAR CD POLOS  KARYA PUTRAUTAMA', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'KARYA PUTRA UTAMA', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB5', 'QURAN BESAR CD POLOS MENARAKUDUS', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'MENARA KUDUS', 'No Group', 'No Group', 'No Group', 0, 12750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB6', 'QURAN BESAR HVS GARIS QOMARI', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'QOMARI', 'No Group', 'No Group', 'No Group', 0, 19500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB7', 'QURAN BESAR HVS GARIS KALAM ALIBATIK', 'PCS', 40000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 21800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB8', 'QURAN BESAR HVS  KARYA PUTRAUTAMA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'KARYA PUTRA UTAMA', 'No Group', 'No Group', 'No Group', 0, 19500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QB9', 'QURAN BESAR  HVS  GARIS AIN SYAMS', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AIN SYAM', 'No Group', 'No Group', 'No Group', 0, 18500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT1', 'QURAN TANGGUNG CD POLOS PUSTAKAAS', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'PUSTAKA AS', 'No Group', 'No Group', 'No Group', 0, 8500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT10', 'QURAN TANGGUNG HVS POLOS ISTANA KARYA MULIA', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'ISTANA KARYA MULIA', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT11', 'QURAN TANGGUNG HVS POLOS AL-HIDAYAH', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT12', 'QURAN TANGGUNG HVS POLOS DUTAILMU', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 16000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT13', 'QURAN TANGGUNG HVS GARIS  AINSYAMS', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AIN SYAM', 'No Group', 'No Group', 'No Group', 0, 12700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT14', 'QURAN TANGGUNG HVS GARIS KALAMALI  BATIK', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT15', 'QURAN TANGGUNG HVS AWWAL TOHAPUTRA', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'TOHA PUTRA', 'No Group', 'No Group', 'No Group', 0, 22750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT16', 'QURAN TANGGUNG HVS  KALAM ALI KAIN', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 15600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT17', 'QURAN TANGGUNG HVS KALAM ALI VELCROWWARNA', 'PCS', 36000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 23400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT18', 'QURAN TANGGUNG KALM ALI  RESTWARNA', 'PCS', 36000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 23400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT19', 'QURAN TANGGUNG MAP CD POLOSAL-HIDAYAH', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 14000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT2', 'QURAN TANGGUNG CD POLOS DUTAILMU', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 9500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT20', 'QURAN TANGGUNG MAP HVS AL-HIDAYAH', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 17000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT21', 'QURAN TANGGUNG MAP HVS GARISKARINDO', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'KARINDO', 'No Group', 'No Group', 'No Group', 0, 17500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT22', 'QURAN TANGGUNG MAP HVS GARISDUTA ILMU', 'PCS', 35000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 18000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT23', 'QURAN TANGGUNG HVS EMAS GARIS BINSYUAIB', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BIN SYUAIB', 'No Group', 'No Group', 'No Group', 0, 16500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT24', 'QURAN TANGGUNG HVS EMAS  GARISKALAM ALI', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'J-ART', 'No Group', 'No Group', 'No Group', 0, 16500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT25', 'QURAN TANGGUNG HVS EMAS GARIS DUTA ILMU', 'PCS', 30000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 18000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT3', 'QURAN TANGGUNG CD POLOS AL-FATAHDUTA ILMU', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'DUTA ILMU', 'No Group', 'No Group', 'No Group', 0, 9500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT4', 'QURAN TANGGUNG CD POLOSAL-HIDAYAH', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AL-HIDAYAH', 'No Group', 'No Group', 'No Group', 0, 9500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT5', 'QURAN TANGGUNG CD POLOS AISYAH', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'AISYAH', 'No Group', 'No Group', 'No Group', 0, 9000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT6', 'QURAN TANGGUNG CD POLOS BINTANGTERANG', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'BINTANG TERANG', 'No Group', 'No Group', 'No Group', 0, 8500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT7', 'QURAN TANGGUNG CD POLOS ISTANAKARYA MULIA', 'PCS', 20000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'ISTANA KARYA MULIA', 'No Group', 'No Group', 'No Group', 0, 8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT8', 'QURAN TANGGUNG HVS POLOS KARYAPUTRA UTAMA SEMARANG', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'KARYA PUTRA UTAMA', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('QT9', 'QURAN TANGGUNG HVS GARIS QOMARI', 'PCS', 25000, 'IDR', 'Head Quarter', 'AL-QUR''AN', 'Head Quarter', 'Average', 'T', 'T', 'T', 'QOMARI', 'No Group', 'No Group', 'No Group', 0, 13000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(11) NOT NULL DEFAULT '0',
  `date_created` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `date_created`) VALUES
(1, '40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc', 1, 0, '0000-00-00 00:00:00'),
(2, '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', 1, 0, '0000-00-00 00:00:00'),
(3, '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', 1, 0, '0000-00-00 00:00:00'),
(4, 'ssss4gg04oo84gkwskg4k0o8sgoc4sssgocs0kg8', 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Log`
--

CREATE TABLE IF NOT EXISTS `Log` (
  `ID_Log` int(10) NOT NULL,
  `ID_User` varchar(20) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Aktifitas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api_server', 'get', 'a:9:{s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"4b533334-abc8-7093-8fa4-6f47a0a2b1e6";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1480389952, 0.00774193, '0', 403),
(2, 'api_server', 'get', 'a:10:{s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"c7d8e98c-4f24-961f-1201-111c95274223";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=m3skhm62c9oog0t7q7020sr712cfjjh9";}', '', '::1', 1480390454, NULL, '1', 0),
(3, 'api_server', 'get', 'a:10:{s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"ecd9710e-0d4c-ff98-50b0-89c4de50ae15";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=idetcffu5dgjga2ee6v9cfdmnhn58rn1";}', '', '::1', 1480390493, 0.00771117, '1', 0),
(4, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"e383f844-d0fb-082f-10b7-cff53b55278d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=idetcffu5dgjga2ee6v9cfdmnhn58rn1";}', '', '::1', 1480390649, 0.00850892, '1', 200),
(5, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc";s:13:"Postman-Token";s:36:"8b63c2e7-71fe-becf-57c5-cb1537110283";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc', '::1', 1480435684, 0.0100489, '0', 401),
(6, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc";s:13:"Postman-Token";s:36:"b1da5c54-01c1-80aa-2958-780539a49428";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc', '::1', 1480435707, 0.013911, '1', 200),
(7, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"6021b55e-7db0-e64e-d464-e5358143b52a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435711, 0.00509405, '0', 403),
(8, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"37f4599c-2533-41f5-6d0a-f773b1841cef";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435726, 0.00542593, '0', 403),
(9, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"29e823ac-663e-5a66-3536-32d11f20792d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435727, 0.00329399, '0', 403),
(10, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"cf9a9307-bf9d-7a5f-5667-afe7bec75033";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435727, 0.00636101, '0', 403),
(11, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"4640e2b3-64bc-d05f-fec0-5f78da3b3a79";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '', '::1', 1480435728, 0.00330114, '0', 403),
(12, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc";s:13:"Postman-Token";s:36:"636c2b1a-197a-fa5a-9f69-824e4ead671d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=uph98q09qvscra2ls0jg29f0ta8alttj";}', '40s0w4s884w0wo8go004k8ogwos8gcsgo40c04kc', '::1', 1480435738, 0.00966382, '1', 200),
(13, 'api_server', 'get', 'a:10:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"25d2cc07-feca-2703-dd7d-cc195eb29de0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1480469032, 0.0065341, '0', 403),
(14, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"2cd299bd-5f49-e038-dfe2-654020ef0592";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=p6aliueb17iiq0q6e4trcu1m3oaku5rf";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480469044, 0.014061, '1', 200),
(15, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"9acd6f80-cb69-eb9d-c12e-7c652c5c9205";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=p6aliueb17iiq0q6e4trcu1m3oaku5rf";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480469074, 0.00882101, '1', 200),
(16, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"c509e815-d257-caaa-7c01-8a9ce5e22f05";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=p6aliueb17iiq0q6e4trcu1m3oaku5rf";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480469092, 0.0141461, '1', 200),
(17, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"06f747bc-eed7-798f-efb8-e28eda4bb6d3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=p6aliueb17iiq0q6e4trcu1m3oaku5rf";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480470341, 0.00952101, '1', 200),
(18, 'api_server', 'get', 'a:11:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:13:"Postman-Token";s:36:"f0767f3d-bc26-4615-6ed7-5af3c36f1749";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=99i4rq51tgqqb5nptsgqvqce26nijngb";}', '', '::1', 1480470427, 0.00734901, '0', 403),
(19, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:16:"KODE_KLASIFIKASI";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"b0c1fbe7-f599-505d-fbf9-59818745c170";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=99i4rq51tgqqb5nptsgqvqce26nijngb";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480470438, 0.0116591, '1', 200),
(20, 'api_server', 'get', 'a:12:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"4f12b66f-545e-d3cc-5a2d-223149101207";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=99i4rq51tgqqb5nptsgqvqce26nijngb";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480470454, 0.0134141, '1', 200),
(21, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"efd16b97-5519-9dbf-3c21-f691c3e6d1eb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=99i4rq51tgqqb5nptsgqvqce26nijngb";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471930, 0.0128469, '1', 0),
(22, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"7b4704c4-edce-db98-5036-508e1c246704";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471948, NULL, '1', 0),
(23, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"eeaa185c-e0d7-db7a-c87b-32deeb40fc0e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471966, 0.00844312, '1', 200),
(24, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"bf5dcc88-ab10-353b-6316-e1ddb9e98ef4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471971, 0.00772214, '1', 200),
(25, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:""BAJU ";s:3:"GA"";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"faf982c8-e6bc-b1f6-f1fa-ed610ce94228";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480471981, 0.0059011, '1', 200),
(26, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:5:"BAJU ";s:2:"GA";s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"ef20438f-af55-f197-e7f1-d1c2406657e7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472015, 0.0170732, '1', 200),
(27, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"dc6332d1-ddb9-9844-1ab7-b99432b018ae";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472111, 0.00689387, '1', 200),
(28, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"d85474c4-6fc9-d84f-85de-844f41622604";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472128, 0.00903702, '1', 200),
(29, 'api_server', 'get', 'a:17:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:6:"''BAJU ";s:3:"GA''";s:0:"";i:0;s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"40c4108c-b047-ac90-1bc0-d565dd8b317d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";i:1;s:0:"";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472221, 0.00946116, '1', 0),
(30, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:9:"''BAJU_GA''";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"ed2edc76-140e-739e-d756-6c583c04843a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=3osjq4a62r7ocomuhfih0bc5sfnkjqeo";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472268, 0.007828, '1', 0),
(31, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:9:"''BAJU_GA''";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"2ebbde78-8841-ea06-16d9-7902d93bdbed";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472283, 0.00887895, '1', 200),
(32, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:9:"''BAJU_GA''";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"11b4ee67-cba4-2b86-c5ea-a446d1375a53";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472314, 0.010772, '1', 0),
(33, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:18:"''KODE_KLASIFIKASI''";s:5:"cond2";s:9:"''BAJU_GA''";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"bd02f5a1-36bd-4cc6-c418-f67436214db4";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472450, 0.00883007, '1', 0),
(34, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:7:"BAJU_GA";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"de98b17d-ffd7-6279-0129-2f00177f2e9c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472510, 0.00784397, '1', 0),
(35, 'api_server', 'get', 'a:15:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:5:"BAJU ";s:2:"GA";s:0:"";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"9b385981-4460-c53e-f94e-ef856e13ece1";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472525, 0.00493908, '1', 0),
(36, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:7:"BAJU GA";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"eb4ba05f-3640-0ae9-0457-31e447836d13";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480472553, 0.00431418, '1', 0),
(37, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:7:"BAJU GA";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"6d20c1eb-ec5e-edbf-30d2-ef1de9b53da3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=t432qqklhe93g2ean0bbbd1jn64skbrl";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476148, 0.00513387, '1', 0),
(38, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:10:"BAJU GAMIS";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"bb2099fe-c2c7-2319-20a0-a46fb62d59f2";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sengk3sql8h2ql923rdj4dthqls098sg";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476160, 0.00455213, '1', 0),
(39, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"de6c9d59-6bba-a924-46fd-69d6481bc2d8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sengk3sql8h2ql923rdj4dthqls098sg";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476181, 0.00444388, '1', 0),
(40, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:6:"HERBAL";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"a72f501c-f642-cfcc-15c0-931ae35c17a5";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sengk3sql8h2ql923rdj4dthqls098sg";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476359, 0.00804281, '1', 200),
(41, 'api_server', 'get', 'a:14:{s:3:"tab";s:6:"barang";s:3:"col";s:11:"NAMA_BARANG";s:5:"cond1";s:16:"KODE_KLASIFIKASI";s:5:"cond2";s:9:"AL-QUR''AN";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:10:"User-Agent";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36";s:9:"X-API-KEY";s:40:"400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4";s:13:"Postman-Token";s:36:"f622ba80-eb69-c3a6-8a24-cbfa740f4b68";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:23:"gzip, deflate, sdch, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:43:"ci_session=sengk3sql8h2ql923rdj4dthqls098sg";}', '400osw0w8gg4808w4ws8ggokco48sg08k48g8sg4', '::1', 1480476441, 0.00915599, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_User` int(11) NOT NULL,
  `Nama_User` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Tokenize` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID_User`, `Nama_User`, `Email`, `Password`, `Status`, `Tokenize`, `created_at`, `updated_at`) VALUES
(1, 'lukman', 'lukman@gmail.com', '$2y$10$2VQqn7LvzowB5', 'Member', '0osk4sk0cg0so8ksgock4cgsgk0gkwo0o8oss80k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'novandha', 'novan@gmail.com', '$2y$10$83ogp3Pj4z0JF', 'Member', 'ssss4gg04oo84gkwskg4k0o8sgoc4sssgocs0kg8', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KODE_BARANG`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Log`
--
ALTER TABLE `Log`
  ADD PRIMARY KEY (`ID_Log`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Log`
--
ALTER TABLE `Log`
  MODIFY `ID_Log` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID_User` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;