-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2014 at 09:10 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vaultdb`
--
CREATE DATABASE IF NOT EXISTS `vaultdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vaultdb`;

-- --------------------------------------------------------

--
-- Table structure for table `aditional_designers`
--

CREATE TABLE IF NOT EXISTS `aditional_designers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) NOT NULL,
  `designer_name` varchar(255) NOT NULL,
  `designer_email` varchar(100) NOT NULL,
  `designer_phone` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `aditional_designers`
--

INSERT INTO `aditional_designers` (`id`, `firm_id`, `designer_name`, `designer_email`, `designer_phone`, `updated_at`, `created_at`) VALUES
(1, 8, 'Rahim Uddin', 'awalcse05@gmail.com', '123456', '2014-04-06 14:20:20', '2014-04-06 14:16:01'),
(2, 8, 'Designer 6', 'designer@email.com', '1234', '2014-08-10 14:02:55', '2014-04-07 13:10:37'),
(3, 8, 'New User', 'awalcse@gmail.com', '123123', '2014-04-13 12:30:07', '2014-04-13 12:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE IF NOT EXISTS `advertises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advertise_image` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`id`, `advertise_image`, `updated_at`, `created_at`) VALUES
(1, 'images (2).jpg', '2014-06-27 13:32:28', '2014-06-27 13:32:28'),
(2, 'images (3).jpg', '2014-06-27 13:32:36', '2014-06-27 13:32:36'),
(3, 'images (4).jpg', '2014-06-27 13:32:45', '2014-06-27 13:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `binlrts`
--

CREATE TABLE IF NOT EXISTS `binlrts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `binlrt_warehouse` int(11) NOT NULL,
  `binlrt_bin` int(11) NOT NULL,
  `binlrt_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `binlrts`
--

INSERT INTO `binlrts` (`id`, `binlrt_warehouse`, `binlrt_bin`, `binlrt_name`, `updated_at`, `created_at`) VALUES
(1, 2, 2, 'Bin Lrt 1', '2014-04-25 02:46:39', '2014-04-25 02:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `bins`
--

CREATE TABLE IF NOT EXISTS `bins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bin_name` varchar(255) NOT NULL,
  `bin_warehouse` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bins`
--

INSERT INTO `bins` (`id`, `bin_name`, `bin_warehouse`, `updated_at`, `created_at`) VALUES
(1, 'Bin1', 1, '2014-04-24 14:47:27', '2014-04-24 14:47:27'),
(2, 'Bin Dhaka 1', 2, '2014-04-25 00:56:41', '2014-04-25 00:56:41'),
(3, 'Bin Dhaka 12', 2, '2014-04-25 00:57:03', '2014-04-25 00:57:03'),
(4, 'eeeee', 2, '2014-08-09 05:35:33', '2014-08-09 05:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE IF NOT EXISTS `carriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carrier_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `carriers`
--

INSERT INTO `carriers` (`id`, `carrier_name`, `updated_at`, `created_at`) VALUES
(1, 'DHL', '2014-04-22 16:59:12', '2014-04-22 16:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_firm_id` int(11) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `customer_first_name` varchar(100) NOT NULL,
  `customer_last_name` varchar(100) NOT NULL,
  `customer_primary` varchar(255) DEFAULT NULL,
  `customer_address2` varchar(255) DEFAULT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(50) DEFAULT NULL,
  `customer_city` varchar(100) DEFAULT NULL,
  `customer_state` int(11) DEFAULT NULL,
  `customer_zip` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_firm_id`, `customer_id`, `customer_first_name`, `customer_last_name`, `customer_primary`, `customer_address2`, `customer_email`, `customer_phone`, `customer_city`, `customer_state`, `customer_zip`, `updated_at`, `created_at`) VALUES
(1, 8, '1481', 'Naden', 'Hossainss', 'Dhaka', 'Dhaka33', 'abc@asd.com', '123', 'Dhaka', 18, 12323, '2014-04-13 13:43:27', '2014-04-07 14:09:37'),
(2, 8, '1482', 'Abdul', 'Awal', 'Dhaka', 'Dhaka', 'awalcse05@gmail.com', '123456', 'Dhaka', 66, 1000, '2014-04-07 14:36:05', '2014-04-07 14:36:05'),
(3, 8, '1483', 'Aamid', 'Abdullah', NULL, NULL, '-', '2345678', NULL, NULL, NULL, '2014-06-27 22:04:23', '2014-06-13 05:13:25'),
(4, 8, '1484', 'Borhan', 'Kobir', NULL, NULL, '-', '123456', NULL, NULL, NULL, '2014-06-13 05:18:42', '2014-06-13 05:18:42'),
(5, 1, '1415', 'Abdul', '', NULL, NULL, '-', '', NULL, NULL, NULL, '2014-06-13 06:13:46', '2014-06-13 06:13:46'),
(6, 1, '1416', 'Naden', '', NULL, NULL, '-', '', NULL, NULL, NULL, '2014-06-13 06:14:50', '2014-06-13 06:14:50'),
(7, 1, '1417', 'Abdulwww', 'tomal', NULL, NULL, '-', '234234', NULL, NULL, NULL, '2014-06-13 12:23:22', '2014-06-13 06:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE IF NOT EXISTS `inventories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `inv_description` varchar(255) NOT NULL,
  `inv_pono` varchar(255) DEFAULT NULL,
  `inv_category` int(11) NOT NULL,
  `inv_received` date DEFAULT NULL,
  `inv_delivered` date DEFAULT NULL,
  `inv_quantity` float DEFAULT NULL,
  `inv_size` varchar(255) DEFAULT NULL,
  `inv_manufacture` int(11) DEFAULT NULL,
  `inv_carrier` int(11) DEFAULT NULL,
  `inv_room` int(11) DEFAULT NULL,
  `inv_storage_price` float DEFAULT NULL,
  `inv_mfg` int(11) DEFAULT NULL,
  `inv_item_status` varchar(255) NOT NULL,
  `inv_delivery_status` varchar(255) DEFAULT NULL,
  `inv_bin` int(11) DEFAULT NULL,
  `inv_binltr` int(11) DEFAULT NULL,
  `inv_warehouse` int(11) DEFAULT NULL,
  `inv_item_images` varchar(255) DEFAULT NULL,
  `inv_qrcode` varchar(255) DEFAULT NULL,
  `inv_note` varchar(255) DEFAULT NULL,
  `inv_woid` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `firm_id`, `job_id`, `inv_description`, `inv_pono`, `inv_category`, `inv_received`, `inv_delivered`, `inv_quantity`, `inv_size`, `inv_manufacture`, `inv_carrier`, `inv_room`, `inv_storage_price`, `inv_mfg`, `inv_item_status`, `inv_delivery_status`, `inv_bin`, `inv_binltr`, `inv_warehouse`, `inv_item_images`, `inv_qrcode`, `inv_note`, `inv_woid`, `updated_at`, `created_at`) VALUES
(1, 8, 8, '1', '122', 1, '2014-04-29', '2014-04-30', 11, '11', 2, 1, 1, 11, 111, '2', '3', 2, 1, 2, 'photo 374.JPG', './qrcodes/1_Last job.png', '111', 6, '2014-07-15 20:46:53', '2014-04-26 16:12:35'),
(2, 8, 11, '1', '222', 1, '2014-04-29', '2014-04-30', 22, '22', 1, 1, 1, 22, 22, '2', '1', 2, 1, 2, NULL, './qrcodes/2_Last job.png', '222', 0, '2014-08-27 14:15:18', '2014-04-26 16:38:02'),
(3, 7, 11, '1', '555', 1, '2014-04-27', '2014-04-28', 555, '55', 1, 1, 1, 555, 55, '3', '1', 2, 1, 2, 'Desert66.jpg', './qrcodes/3_Admin Add job.png', '555', 3, '2014-08-27 13:05:51', '2014-04-26 18:06:40'),
(5, 8, 8, '1', '998', 1, '2014-05-14', '2014-05-17', 1, '123', 1, 1, 1, 123, 23244, '1', '3', 2, 1, 2, NULL, './qrcodes/5_Last job.png', '', 6, '2014-07-15 20:46:52', '2014-05-03 00:25:42'),
(6, 8, 8, '1', '999', 1, '2014-05-08', '2014-05-15', 2, '11', 0, 1, 1, 123, 12321, '1', '3', 2, 1, 2, '1509206_659275620801850_1487797296_n.jpg', './qrcodes/6_Last job.png', '', 2, '2014-07-06 17:11:20', '2014-05-03 14:31:31'),
(7, 8, 8, '1', '4455', 1, '2014-05-09', '2014-05-15', 2, '5', 2, 1, 1, 222, 333, '1', '1', 2, 1, 2, '1509206_659275620801850_1487797296_n17.jpg', NULL, '', 0, '2014-05-04 22:47:14', '2014-05-04 16:47:14'),
(9, 8, 8, '1', '333', 1, '2014-06-14', '2014-06-18', 1, '123', 2, 1, 1, 123, 12312, '1', '2', 2, 1, 2, 'Lighthouse97.jpg', NULL, '', 0, '2014-06-05 15:50:36', '2014-06-05 09:50:35'),
(11, 8, 8, '1', '', 1, '2014-06-05', '2014-06-11', 1, '123', 1, 1, 1, 1231, 13123, '3', '2', 2, 1, 2, 'Koala.jpg', NULL, 'asdas asdasd', 0, '2014-06-05 16:18:38', '2014-06-05 10:18:38'),
(12, 8, 8, '1', '324', 1, '2014-06-05', '2014-06-10', 1, '234', 2, 1, 1, 4343, 0, '1', '1', 2, 1, 2, 'images (1).jpg', './qrcodes/12_Last job.png', 'adsfsdfsdf RRRR', 0, '2014-06-10 20:30:40', '2014-06-05 10:21:11'),
(13, 8, 7, '1', 'asda', 1, '2014-06-06', '2014-06-11', 1, '12312', 2, 1, 1, 21312, 12312, '1', '2', 2, 1, 2, 'images.jpg', NULL, 'sadasdasd', 3, '2014-07-21 20:39:20', '2014-06-05 18:24:11'),
(14, 8, 2, '1', '111', 1, '2014-06-10', '2014-06-19', 1, '221', 2, 1, 1, 555, 111, '2', '2', 2, 1, 2, NULL, NULL, '', 0, '2014-06-09 16:37:36', '2014-06-09 16:37:36'),
(15, 8, 2, '1', '111', 1, '2014-06-10', '2014-06-19', 1, '221', 2, 1, 1, 555, 111, '2', '2', 2, 1, 2, 'images (6)10.jpg', NULL, 'werwerwerwe', 0, '2014-06-09 16:40:48', '2014-06-09 16:38:06'),
(16, 8, 2, '1', '555', 1, '2014-06-10', '2014-06-13', 1, '11', 2, 1, 1, 4343, 12312, '1', '1', 2, 1, 2, NULL, NULL, '', 0, '2014-06-09 16:45:29', '2014-06-09 16:45:29'),
(17, 8, 1, '1', '2221', 1, '2014-06-10', '2014-06-25', 1, '11', 2, 1, 1, 123.4, 11, '2', '2', 2, 1, 2, NULL, NULL, '', 0, '2014-06-09 16:49:29', '2014-06-09 16:49:29'),
(18, 8, 1, '1', '331', 1, '2014-06-10', '2014-06-20', 1, '234', 2, 1, 1, 123, 12321, '2', '2', 2, 1, 2, NULL, NULL, 'ttttttttt', 0, '2014-06-09 17:21:58', '2014-06-09 17:21:58'),
(19, 8, 9, '1', '777', 1, '2014-06-11', '2014-06-27', 1, '7', 1, 1, 1, 15, 77, '4', '2', 2, 1, 2, 'images88.jpg', './qrcodes/19_Last job.png', '777777', 0, '2014-08-27 13:30:40', '2014-06-10 14:49:50'),
(20, 8, 9, '1', '333', 1, '2014-07-05', '2014-07-17', 1, '7', 2, 1, 1, 10, 0, '1', '2', 2, 1, 2, '10363946_683449015035925_448799261857589317_n.jpg', './qrcodes/20_Customer Jobs.png', '', 0, '2014-08-19 14:23:53', '2014-07-05 13:55:49'),
(21, 8, 9, '1', '44', 1, '2014-07-06', '2014-07-16', 1, '234', 2, 1, 1, 0, 0, '2', '2', 2, 1, 2, 'images65.jpg', NULL, '', 7, '2014-08-27 13:32:35', '2014-07-05 14:03:52'),
(22, 8, 9, '1', '44', 1, '2014-07-06', '2014-07-22', 1, '345', 2, 1, 1, 1, 234, '1', '2', 2, 1, 2, 'download (2)54.jpg', NULL, '', 7, '2014-08-12 19:21:10', '2014-07-05 14:07:31'),
(23, 8, 7, '1', '67666666', 1, '2014-07-18', '2014-07-19', 1, '33449', 2, 1, 1, 10, 0, '3', '2', 2, 1, 2, 'download (1).jpg', NULL, '', 0, '2014-07-17 23:09:55', '2014-07-17 17:09:55'),
(24, 8, 7, '1', '9000', 1, '2014-07-21', '2014-07-24', 1, '23', 2, 1, 1, 15, 23434, '1', '2', 2, 1, 2, 'images (9).jpg', NULL, '', 0, '2014-07-20 18:30:49', '2014-07-20 12:30:49'),
(25, 8, 7, '1', '9000', 1, '2014-07-21', '2014-07-24', 1, '23', 2, 1, 1, 15, 23434, '1', '2', 2, 1, 2, 'images (9).jpg', NULL, '', 0, '2014-07-20 18:31:20', '2014-07-20 12:31:20'),
(26, 8, 7, '1', '9000', 1, '2014-07-21', '2014-07-24', 1, '23', 2, 1, 1, 15, 23434, '1', '2', 2, 1, 2, '10363946_683449015035925_448799261857589317_n40.jpg', NULL, '', 0, '2014-07-20 21:05:28', '2014-07-20 12:32:20'),
(27, 8, 7, '1', '', 1, '2014-07-21', '0000-00-00', 1, '', 0, 0, 0, 0, 0, '2', '2', 0, 0, 0, 'images77.jpg', NULL, '', 0, '2014-07-20 18:53:36', '2014-07-20 12:53:36'),
(28, 8, 7, '1', '66633', 1, '2014-07-21', '2014-07-31', 1, '34', 2, 1, 1, 15, 234, '1', '2', 2, 1, 2, 'images (7)24.jpg', NULL, 'ttttssseeettt', 0, '2014-07-20 19:07:24', '2014-07-20 13:07:24'),
(29, 8, 7, '1', '66633', 1, '2014-07-21', '2014-07-31', 1, '34', 2, 1, 1, 15, 234, '1', '2', 2, 1, 2, 'images (6)88.jpg', NULL, 'ttttssseeettt', 0, '2014-07-20 19:08:21', '2014-07-20 13:08:21'),
(30, 8, 7, '1', '345345', 1, '2014-07-21', '2014-07-26', 1, '234', 1, 1, 1, 15, 234, '1', '1', 2, 1, 2, 'noImage30.jpg', NULL, '234234234', 3, '2014-07-21 20:39:20', '2014-07-20 13:15:32'),
(32, 8, 14, '1', '', 1, '2014-08-09', '2014-08-20', 1, '', 1, 0, 1, 15, 12312, '1', '2', 2, 1, 2, 'download (2)93.jpg', NULL, 'sdfsd dfsdf sdf', 0, '2014-08-09 11:48:53', '2014-08-09 05:48:52'),
(33, 8, 14, '1', '989', 1, '2014-08-09', '2014-08-19', 1, '23', 1, 1, 1, 10, 112, '1', '2', 2, 1, 2, 'images (8)12.jpg', './qrcodes/33_Hamid.png', 'Note Note', 0, '2014-08-13 10:25:12', '2014-08-09 06:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `inventoryimages`
--

CREATE TABLE IF NOT EXISTS `inventoryimages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_jobid` int(11) NOT NULL,
  `img_invid` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `inventoryimages`
--

INSERT INTO `inventoryimages` (`id`, `img_jobid`, `img_invid`, `img_name`, `updated_at`, `created_at`) VALUES
(1, 8, 5, 'Penguins.jpg', '2014-05-03 00:25:43', '2014-05-03 00:25:43'),
(2, 8, 5, 'Lighthouse.jpg', '2014-05-03 00:25:43', '2014-05-03 00:25:43'),
(3, 8, 5, 'Chrysanthemum.jpg', '2014-05-03 00:25:43', '2014-05-03 00:25:43'),
(4, 8, 5, 'Tulips.jpg', '2014-05-03 00:25:43', '2014-05-03 00:25:43'),
(5, 8, 5, '', '2014-05-03 00:25:43', '2014-05-03 00:25:43'),
(6, 8, 5, 'Desert.jpg', '2014-05-03 01:40:54', '2014-05-03 01:40:54'),
(7, 8, 4, 'photo 1.JPG', '2014-05-03 04:16:07', '2014-05-03 04:16:07'),
(8, 8, 4, 'photo 2.JPG', '2014-05-03 04:16:07', '2014-05-03 04:16:07'),
(9, 8, 4, 'photo 3.JPG', '2014-05-03 04:16:07', '2014-05-03 04:16:07'),
(10, 8, 1, 'photo 374.JPG', '2014-05-03 14:21:29', '2014-05-03 14:21:29'),
(11, 8, 6, '1509206_659275620801850_1487797296_n.jpg', '2014-05-03 14:31:31', '2014-05-03 14:31:31'),
(12, 8, 7, '1509206_659275620801850_1487797296_n17.jpg', '2014-05-04 16:47:14', '2014-05-04 16:47:14'),
(13, 8, 8, '1509206_659275620801850_1487797296_n76.jpg', '2014-05-04 18:47:49', '2014-05-04 18:47:49'),
(14, 8, 8, '1509206_659275620801850_1487797296_n2630.jpg', '2014-05-04 18:54:47', '2014-05-04 18:54:47'),
(15, 8, 9, 'Lighthouse97.jpg', '2014-06-05 09:50:35', '2014-06-05 09:50:35'),
(16, 8, 10, 'Koala.jpg', '2014-06-05 10:18:00', '2014-06-05 10:18:00'),
(17, 8, 11, 'Koala.jpg', '2014-06-05 10:18:38', '2014-06-05 10:18:38'),
(18, 8, 12, 'Hydrangeas.jpg', '2014-06-05 10:21:11', '2014-06-05 10:21:11'),
(19, 7, 3, 'Desert66.jpg', '2014-06-05 15:28:00', '2014-06-05 15:28:00'),
(20, 7, 13, 'images.jpg', '2014-06-05 18:24:12', '2014-06-05 18:24:12'),
(21, 2, 15, 'images (6)10.jpg', '2014-06-09 16:38:06', '2014-06-09 16:38:06'),
(22, 8, 12, 'images (1).jpg', '2014-06-10 14:30:40', '2014-06-10 14:30:40'),
(23, 8, 19, 'images88.jpg', '2014-06-10 14:49:50', '2014-06-10 14:49:50'),
(24, 9, 20, '10363946_683449015035925_448799261857589317_n.jpg', '2014-07-05 13:55:49', '2014-07-05 13:55:49'),
(25, 9, 21, 'images65.jpg', '2014-07-05 14:03:52', '2014-07-05 14:03:52'),
(27, 7, 23, 'download (1).jpg', '2014-07-17 17:09:55', '2014-07-17 17:09:55'),
(28, 7, 24, 'images (9).jpg', '2014-07-20 12:30:49', '2014-07-20 12:30:49'),
(29, 7, 25, 'images (9).jpg', '2014-07-20 12:31:20', '2014-07-20 12:31:20'),
(30, 7, 25, 'images (8).jpg', '2014-07-20 12:31:20', '2014-07-20 12:31:20'),
(34, 7, 27, 'images77.jpg', '2014-07-20 12:53:36', '2014-07-20 12:53:36'),
(35, 7, 28, 'images (7)24.jpg', '2014-07-20 13:07:24', '2014-07-20 13:07:24'),
(36, 7, 28, 'download (2).jpg', '2014-07-20 13:07:24', '2014-07-20 13:07:24'),
(37, 7, 29, 'images (6)88.jpg', '2014-07-20 13:08:21', '2014-07-20 13:08:21'),
(38, 7, 30, 'noImage30.jpg', '2014-07-20 13:15:32', '2014-07-20 13:15:32'),
(45, 7, 26, '10363946_683449015035925_448799261857589317_n40.jpg', '2014-07-20 15:05:28', '2014-07-20 15:05:28'),
(53, 9, 22, 'download (2)54.jpg', '2014-07-22 16:03:30', '2014-07-22 16:03:30'),
(54, 9, 22, 'images (1)95.jpg', '2014-07-22 16:03:30', '2014-07-22 16:03:30'),
(61, 9, 22, 'images (6)95.jpg', '2014-07-22 16:16:25', '2014-07-22 16:16:25'),
(62, 14, 32, 'download (2)93.jpg', '2014-08-09 05:48:53', '2014-08-09 05:48:53'),
(63, 14, 33, 'images (8)12.jpg', '2014-08-09 06:09:59', '2014-08-09 06:09:59'),
(64, 7, 31, 'Jellyfish.jpg', '2014-08-13 15:08:09', '2014-08-13 15:08:09'),
(65, 8, 34, 'Jellyfish.jpg', '2014-08-14 01:23:09', '2014-08-14 01:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_category`
--

CREATE TABLE IF NOT EXISTS `inventory_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invcat_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `inventory_category`
--

INSERT INTO `inventory_category` (`id`, `invcat_name`, `updated_at`, `created_at`) VALUES
(1, 'Inventory Category', '2014-04-25 03:34:16', '2014-04-25 03:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `itemdescriptions`
--

CREATE TABLE IF NOT EXISTS `itemdescriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itds_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `itemdescriptions`
--

INSERT INTO `itemdescriptions` (`id`, `itds_name`, `updated_at`, `created_at`) VALUES
(1, 'Item Descriptions2', '2014-04-26 12:49:54', '2014-04-26 12:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) NOT NULL,
  `job_customer_id` int(11) NOT NULL,
  `job_designer_id` int(11) NOT NULL,
  `job_install_date` date NOT NULL,
  `job_address1` varchar(255) NOT NULL,
  `job_address2` varchar(255) NOT NULL,
  `job_city` varchar(255) NOT NULL,
  `job_state_id` int(11) NOT NULL,
  `job_zip` varchar(50) NOT NULL,
  `job_development_name` varchar(255) NOT NULL,
  `job_gated` tinyint(4) NOT NULL,
  `job_alarm` tinyint(4) NOT NULL,
  `job_condo` tinyint(4) NOT NULL,
  `job_stairs` tinyint(4) NOT NULL,
  `job_elevator` tinyint(4) NOT NULL,
  `job_house_sqft` float NOT NULL,
  `job_comments` text,
  `job_status` smallint(6) NOT NULL,
  `job_client_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_name`, `job_customer_id`, `job_designer_id`, `job_install_date`, `job_address1`, `job_address2`, `job_city`, `job_state_id`, `job_zip`, `job_development_name`, `job_gated`, `job_alarm`, `job_condo`, `job_stairs`, `job_elevator`, `job_house_sqft`, `job_comments`, `job_status`, `job_client_id`, `updated_at`, `created_at`) VALUES
(1, 'Job Name Edit22', 1, 1, '2014-04-18', 'Dhaka1', 'Dhaka1ee', 'Dhaka1', 19, '10001', 'Rahim', 1, 1, 0, 0, 0, 134.89, 'NO1', 3, 8, '2014-07-05 12:48:19', '2014-04-15 14:01:55'),
(2, 'Job2', 2, 3, '2014-04-19', 'Khulna', 'Khulna', 'Samoa', 60, '1000', 'Samoa', 1, 1, 1, 0, 0, 11.87, 'NI', 1, 8, '2014-06-13 04:52:02', '2014-04-15 14:12:27'),
(7, 'Admin Add job', 7, 3, '2014-04-30', 'CHuadanga', 'CHuadanga', 'CHuadanga', 17, '1000', 'Samoa', 0, 0, 0, 1, 1, 11.87, 'CHuadangaCHuadanga', 2, 8, '2014-06-13 06:20:55', '2014-04-23 16:30:39'),
(8, 'Last job', 4, 1, '2014-04-28', 'Bhag', 'Bhag2', 'Bhagd', 60, '345', 'Aadas', 0, 0, 1, 0, 0, 23.6, '', 1, 8, '2014-06-13 06:19:41', '2014-04-23 16:51:53'),
(9, 'Customer Jobs', 3, 3, '2014-06-19', 'sdf sdfsadf', 'asdfsd f', 'sdfsdf', 15, '345', 'Ocean View Villas', 1, 1, 0, 0, 0, 23.6, 'sdfsd sdfs df', 1, 8, '2014-06-13 05:13:25', '2014-06-13 05:13:25'),
(10, 'Manage Jobs', 1, 2, '2014-08-21', 'Dhaka', 'Dhaka', 'Dhaka', 11, '112', 'Rahim', 1, 1, 1, 0, 0, 55, 'Manage Jobs', 1, 8, '2014-08-09 05:04:05', '2014-08-09 05:04:05'),
(11, 'Manage Jobs 2', 2, 3, '2014-08-13', 'Dhaka', 'Dhaka', 'Dhaka', 5, '112', 'Dev', 0, 0, 1, 1, 1, 55, 'Test ', 1, 8, '2014-08-09 05:09:25', '2014-08-09 05:09:25'),
(12, 'Hakim Job', 1, 1, '2014-08-11', 'Dhaka', 'Dhaka', 'Dhaka', 13, '114', 'Samoa', 1, 1, 1, 0, 0, 44, 'Hamkim Job', 1, 8, '2014-08-09 05:20:54', '2014-08-09 05:20:54'),
(13, 'list Job link', 3, 3, '2014-08-15', 'Dhaka', 'Dhaka', 'Dhaka', 13, '111', 'Rahim', 1, 1, 0, 1, 1, 23, 'Taasd asdasda asdasdaa', 1, 8, '2014-08-09 05:43:52', '2014-08-09 05:43:52'),
(14, 'Hamid', 3, 2, '2014-08-11', 'Dhaka', 'Dhaka', 'Dhaka', 11, '1200', 'Dev', 1, 1, 0, 0, 0, 55, 'asd asca asdas', 1, 8, '2014-08-09 05:46:26', '2014-08-09 05:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manuf_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manuf_name`, `updated_at`, `created_at`) VALUES
(1, 'test', '2014-04-21 12:20:19', '2014-04-21 12:20:19'),
(2, 'Test 222', '2014-04-21 13:15:45', '2014-04-21 13:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `updated_at`, `created_at`) VALUES
(1, 'Room 12', '2014-04-26 13:04:58', '2014-04-26 13:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `storage_prices`
--

CREATE TABLE IF NOT EXISTS `storage_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `storage_prices`
--

INSERT INTO `storage_prices` (`id`, `price`, `updated_at`, `created_at`) VALUES
(1, 10, '2014-06-26 14:51:29', '2014-06-26 14:47:40'),
(2, 12.5, '2014-06-26 14:48:13', '2014-06-26 14:48:13'),
(3, 15, '2014-06-26 14:48:21', '2014-06-26 14:48:21'),
(4, 20, '2014-06-26 14:48:27', '2014-06-26 14:48:27'),
(5, 18, '2014-06-26 14:52:34', '2014-06-26 14:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firm_name` varchar(255) NOT NULL,
  `primary_address` mediumtext,
  `primary_address_two` mediumtext,
  `city` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=inactive 1=active 3=temporary',
  `role_id` smallint(6) NOT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `firm_name`, `primary_address`, `primary_address_two`, `city`, `state`, `zip_code`, `phone`, `status`, `role_id`, `guid`, `updated_at`, `created_at`) VALUES
(1, 'System', 'Admin', 'system@admin.com', '$2y$10$WZ/VPCBhZBfv3i66nTc9bOnWtAlbw973dSW85SZ7mpgney4tImapm', '', NULL, NULL, NULL, NULL, NULL, '0', 1, 1, NULL, '2014-04-08 11:40:08', '2014-03-31 16:19:27'),
(2, 'Rahim', 'Box', 'assd@a.com', '$2y$10$aQ7w30IgzJ4mP2skkReNJu.daBJ/c/65JQZzuyIq5FcbMiEPaIlMK', 'Desing Firm', 'Baridhara Dhaka', 'Gulshan Dhaka', 'Dhaka', 15, 4444, '123456', 0, 2, NULL, '2014-09-03 11:47:59', '2014-04-02 16:13:52'),
(8, 'Tamzidn', 'Reza', 'toshaoun@gmail.com', '$2y$10$WbgtNtvnPlrIzLPpiYZ.v.T.EqWqpH8N/9gnrPRg3ke1pXF6jrjoK', 'Gravity Ctratives', 'Shaver Dhaka', 'Kazi Nozrul Evinue', 'Dhaka', 66, 1123, '4234234', 1, 2, '8KGQVLuQ', '2014-06-05 11:22:43', '2014-04-04 11:15:23'),
(9, 'qweqwe', 'qweqw', 'a2@a.com', '$2y$10$NjRMLilXu5LNbW9Cg9g8Qed83DNUPpsrYD9.i4iEs9UaMEEfUgj56', 'qeqwe', 'qweqwe', 'qwewqe', 'qweqwe', 4, 123, '11323213', 3, 2, NULL, '2014-09-03 12:06:54', '2014-04-08 14:52:43'),
(10, 'Nadin', 'awal', 'nadin@awal.com', '$2y$10$5Uv8Y7cK6eFs4VNivh8yV.TymVI7lgI.RRE/ILHhH1gqQQy3mAAI2', 'Warehouse Manager', 'Awal', 'Awal', NULL, NULL, NULL, '917 378 4595', 3, 3, NULL, '2014-06-07 09:41:01', '2014-06-07 09:39:03'),
(11, 'warehouse', 'manager', 'warehouse@manager.com', '$2y$10$Eo/BTsaFS7Jh8Y8i7tIZA.oI22h5EWR.qxGawVJDg1Co854T9pIZ6', 'Warehouse Manager', 'NYC2', 'NYC2', NULL, NULL, NULL, '12312312311', 3, 3, NULL, '2014-06-10 12:51:02', '2014-06-10 12:00:50'),
(12, 'asdasd', 'asdasd', 'nadin@awal2.com', '$2y$10$fwHIKAK5SYcn69HnCsu1Iu4UHXsT7GIvef13pxETv9Khhe.VEkn2K', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 16, 123123, '123123123123', 3, 2, NULL, '2014-09-03 12:06:28', '2014-09-03 12:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `us_states`
--

CREATE TABLE IF NOT EXISTS `us_states` (
  `state_code` varchar(2) NOT NULL,
  `state_abbrev` varchar(2) NOT NULL,
  `state_full` varchar(30) NOT NULL,
  PRIMARY KEY (`state_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_states`
--

INSERT INTO `us_states` (`state_code`, `state_abbrev`, `state_full`) VALUES
('1', 'AL', 'Alabama'),
('10', 'DE', 'Delaware'),
('11', 'DC', 'District of Columbia'),
('12', 'FL', 'Florida'),
('13', 'GA', 'Georgia'),
('15', 'HI', 'Hawaii'),
('16', 'ID', 'Idaho'),
('17', 'IL', 'Illinois'),
('18', 'IN', 'Indiana'),
('19', 'IA', 'Iowa'),
('2', 'AK', 'Alaska'),
('20', 'KS', 'Kansas'),
('21', 'KY', 'Kentucky'),
('22', 'LA', 'Louisiana'),
('23', 'ME', 'Maine'),
('24', 'MD', 'Maryland'),
('25', 'MA', 'Massachusetts'),
('26', 'MI', 'Michigan'),
('27', 'MN', 'Minnesota'),
('28', 'MS', 'Mississippi'),
('29', 'MO', 'Missouri'),
('30', 'MT', 'Montana'),
('31', 'NE', 'Nebraska'),
('32', 'NV', 'Nevada'),
('33', 'NH', 'New Hampshire'),
('34', 'NJ', 'New Jersey'),
('35', 'NM', 'New Mexico'),
('36', 'NY', 'New York'),
('37', 'NC', 'North Carolina'),
('38', 'ND', 'North Dakota'),
('39', 'OH', 'Ohio'),
('4', 'AZ', 'Arizona'),
('40', 'OK', 'Oklahoma'),
('41', 'OR', 'Oregon'),
('42', 'PA', 'Pennsylvania'),
('44', 'RI', 'Rhode Island'),
('45', 'SC', 'South Carolina'),
('46', 'SD', 'South Dakota'),
('47', 'TN', 'Tennessee'),
('48', 'TX', 'Texas'),
('49', 'UT', 'Utah'),
('5', 'AR', 'Arkansas'),
('50', 'VT', 'Vermont'),
('51', 'VA', 'Virginia'),
('53', 'WA', 'Washington'),
('54', 'WV', 'West Virginia'),
('55', 'WI', 'Wisconsin'),
('56', 'WY', 'Wyoming'),
('6', 'CA', 'California'),
('60', 'AS', 'American Samoa'),
('66', 'GU', 'Guam'),
('69', 'MP', 'Northern Mariana Islands'),
('72', 'PR', 'Puerto Rico'),
('74', 'UM', 'U.S. Minor Outlying Islands'),
('78', 'VI', 'Virgin Islands'),
('8', 'CO', 'Colorado'),
('9', 'CT', 'Connecticut');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_locations_id` int(11) NOT NULL,
  `warehouse_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_locations_id`, `warehouse_name`, `updated_at`, `created_at`) VALUES
(1, 3, 'Name1', '2014-04-24 13:53:43', '2014-04-24 13:51:38'),
(2, 1, 'warehouse Dhaka 1', '2014-04-25 00:55:33', '2014-04-25 00:55:33'),
(3, 1, 'warehouse Dhaka 2', '2014-04-25 00:56:11', '2014-04-25 00:56:11'),
(4, 0, 'Warehouse Khulna Edit', '2014-06-09 12:09:41', '2014-06-09 12:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_locations`
--

CREATE TABLE IF NOT EXISTS `warehouse_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_locations_name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `warehouse_locations`
--

INSERT INTO `warehouse_locations` (`id`, `warehouse_locations_name`, `updated_at`, `created_at`) VALUES
(1, 'Dhaka2', '2014-04-22 17:35:05', '2014-04-22 17:34:54'),
(3, 'Location 1', '2014-04-24 13:41:23', '2014-04-24 13:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `workorders`
--

CREATE TABLE IF NOT EXISTS `workorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wo_firmid` int(11) NOT NULL,
  `wo_jobid` int(11) NOT NULL,
  `wo_status` int(11) NOT NULL,
  `wo_delivery_date` date NOT NULL,
  `wo_delivery_time` time NOT NULL,
  `notes` text NOT NULL,
  `wo_requests` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `workorders`
--

INSERT INTO `workorders` (`id`, `wo_firmid`, `wo_jobid`, `wo_status`, `wo_delivery_date`, `wo_delivery_time`, `notes`, `wo_requests`, `updated_at`, `created_at`) VALUES
(1, 8, 8, 4, '2014-05-07', '04:10:45', 'Test Work', '', '2014-07-20 16:10:55', '2014-05-04 05:03:54'),
(2, 8, 8, 1, '2014-05-10', '20:52:00', 'Ttt', NULL, '2014-05-04 07:52:32', '2014-05-04 07:52:32'),
(3, 8, 7, 2, '2014-05-12', '02:37:45', 'Test 1', 'Test 2', '2014-07-21 14:39:20', '2014-05-04 12:37:56'),
(4, 8, 3, 5, '2014-05-08', '03:01:45', 'abcd', 'Efgh', '2014-07-15 15:02:02', '2014-05-04 12:42:35'),
(5, 8, 4, 5, '2014-05-08', '03:02:00', 'Delivery Date ', 'Other Requests ', '2014-07-16 15:02:08', '2014-05-04 12:43:49'),
(6, 8, 8, 5, '2014-05-14', '02:46:30', 'Testttt er', 'tttt', '2014-07-15 14:46:52', '2014-05-04 14:49:44'),
(7, 8, 9, 1, '2014-08-14', '01:21:00', 'Test', 'Test', '2014-08-12 13:21:10', '2014-08-12 13:20:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
