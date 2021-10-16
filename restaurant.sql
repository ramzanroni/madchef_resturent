-- phpMyAdmin SQL Dump
-- version 4.4.15.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 17, 2021 at 12:30 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `adons_product`
--

CREATE TABLE IF NOT EXISTS `adons_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deatails` varchar(255) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `sd` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `dicount` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `brand` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adons_product`
--

INSERT INTO `adons_product` (`id`, `name`, `deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(2, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(3, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(4, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(5, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(6, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(7, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(8, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(9, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Sylhet', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(10, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(11, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(12, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(13, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(14, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(15, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(16, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(17, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(18, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(19, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(20, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(21, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(22, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(23, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(24, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(25, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(26, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(27, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Gulshan', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(28, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(29, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(30, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(31, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(32, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(33, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(34, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(35, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(36, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(37, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(38, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(39, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(40, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(41, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(42, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(43, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(44, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(45, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Mirpur', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(46, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(47, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(48, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(49, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(50, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(51, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(52, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(53, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(54, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Uttara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(55, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(56, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(57, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(58, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(59, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(60, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(61, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(62, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(63, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Baily Road', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(64, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(65, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(66, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(67, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(68, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(69, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(70, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(71, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(72, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(73, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(74, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(75, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(76, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(77, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(78, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(79, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(80, 'Egg', 'it is......', '1634028001.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(81, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Banani', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(82, 'Smoked Chicken', 'it is..........', '1634025932.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(83, 'Beef Pepperoni', 'it is.......', '1634026023.jpg', '0', '69', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(84, 'Extra Cheese ', 'it is.....', '1634027672.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(85, 'Extra Patty - Beef', 'it is.....', '1634027740.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(86, 'Extra Patty - Chicken', 'it is....', '1634027830.jpg', '0', '139', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(87, 'Pickles', 'it is........', '1634027890.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(88, 'Beef Bacon', 'it is......', '1634027951.jpg', '0', '79', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(89, 'Egg', 'it is......', '1634388894.jpg', '0', '19', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(90, 'Jalapeno', 'it ist...............', '1634028056.jpg', '0', '29', '10', '', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Add Ons', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `branch` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `brand`, `branch`, `status`) VALUES
(4, 'Madchef', 'Mirpur', '1'),
(14, 'Madchef', 'Dhanmondi', '1'),
(121, 'Madchef', 'Gulshan', '1'),
(122, 'Madchef', 'Mohammadpur', '1'),
(125, 'Madchef', 'Banani', '1'),
(126, 'Madchef', 'Bashundhara', '1'),
(127, 'Madchef', 'Baily Road', '1'),
(128, 'Madchef', 'Uttara', '1'),
(129, 'Madchef', 'Khilgaon', '1'),
(130, 'Madchef', 'Sylhet', '1');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(3, 'Madchef', '1'),
(85, 'Cheez', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `sub_product` varchar(255) NOT NULL,
  `adons_product` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `unit_price` varchar(255) NOT NULL,
  `quantity` int(100) DEFAULT '1',
  `discount` varchar(255) DEFAULT NULL,
  `sd` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `extra_instruction` text NOT NULL,
  `product_not_available` varchar(255) NOT NULL,
  `cart_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `phone`, `product`, `product_id`, `sub_product`, `adons_product`, `size`, `unit_price`, `quantity`, `discount`, `sd`, `vat`, `total_price`, `extra_instruction`, `product_not_available`, `cart_time`) VALUES
(40, '', 'Singature Beef', '559', '66,70', '74,73', '', '229', 4, '', '91.6', '100.76', '1468', '', 'Remove it from my order', '2021-10-16 13:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(99, 'TEASERS', '1'),
(100, 'CRISPY CHICKEN', '1'),
(101, 'CLASSIC BURGERS', '1'),
(102, 'GOURMET BURGERS', '1'),
(105, 'POUTINE', '1'),
(106, 'PLATTERS', '1'),
(107, 'DIPS', '1'),
(108, 'DRINKS', '1'),
(110, 'RICE', '1');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE IF NOT EXISTS `discount` (
  `id` int(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `discount_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `order_id`, `discount`, `discount_type`) VALUES
(1, '017927887181634222834', '120', 'TK'),
(2, '017601041901634222870', '0', 'TK'),
(3, '016720637051634226402', '0', 'TK'),
(4, '016720637051634226479', '0', 'TK'),
(5, '1634230243', '10', '%'),
(6, '017927887181634230366', '120', 'TK'),
(7, '017927887181634230784', '0', 'TK'),
(8, '017927887181634232328', '0', 'TK'),
(9, '1634296675', '0', 'TK'),
(10, '1634320312', '0', 'TK'),
(11, '1634320348', '0', 'TK'),
(12, '1634333832', '0', 'TK'),
(13, '1634333928', '0', 'TK'),
(14, '1634354510', '0', 'TK'),
(15, '1634360527', '0', 'TK'),
(16, '1634361808', '0', 'TK'),
(17, '1634362017', '0', 'TK'),
(18, '1634362093', '0', 'TK'),
(19, '017927887181634364021', '120', 'TK'),
(20, '016305688771634366224', '', '%'),
(21, '1634366335', '15', '%'),
(22, '016305688771634366871', '10', 'TK'),
(23, '1634367045', '0', 'TK'),
(24, '016391992181634367094', '0', 'TK'),
(25, '015161582981634367231', '0', 'TK'),
(26, '016305688771634367301', '10', 'TK'),
(27, '1634373478', '10', '%'),
(28, '017927887181634374068', '0', 'TK'),
(29, '017927887181634374153', '0', 'TK'),
(30, '016391992181634376854', '0', 'TK'),
(31, '016391992181634376948', '0', 'TK'),
(32, '016391992181634377115', '0', 'TK'),
(33, 'NO1634378404', '0', 'TK'),
(34, '015161582981634378991', '0', 'TK'),
(35, '015161582981634379027', '0', 'TK'),
(36, '015161582981634379482', '10', '%'),
(37, '015161582981634380573', '100', 'TK'),
(38, '015161582981634380630', '0', 'TK'),
(39, '015161582981634380713', '100', 'TK'),
(40, '015161582981634381383', '0', 'TK'),
(41, '017601041901634386179', '0', 'TK'),
(42, '015161582981634389080', '0', 'TK'),
(43, '017601041901634394160', '100', 'TK'),
(44, '017601041901634394866', '100', 'TK');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `sub_product` varchar(255) NOT NULL,
  `adons_product` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `unit_price` varchar(255) NOT NULL,
  `quantity` int(100) DEFAULT '1',
  `discount` varchar(255) DEFAULT NULL,
  `sd` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `extra_instruction` text NOT NULL,
  `product_not_available` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'New',
  `agent` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `additional_phone` varchar(255) NOT NULL,
  `cart_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_status` int(250) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_id`, `brand`, `branch`, `customer_name`, `phone`, `product`, `product_id`, `sub_product`, `adons_product`, `size`, `unit_price`, `quantity`, `discount`, `sd`, `vat`, `total_price`, `extra_instruction`, `product_not_available`, `order_status`, `agent`, `address`, `additional_phone`, `cart_time`, `last_update_time`, `message_status`) VALUES
(1, '015161582981634380573', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Smokin Chic', '413', '7', '6,5,4', '', '329', 1, '', '32.9', '52.89', '496', '', 'Remove it from my order', 'Pending', 'green', 'Dhaka, Mirpur', '', '2021-10-16 12:41:18', '0000-00-00 00:00:00', 0),
(2, '015161582981634380573', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'The Dhakaiya', '416', '9', '6,5,4', '', '369', 1, '', '36.9', '57.29', '536', '', 'Remove it from my order', 'Received', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:36:13', '2021-10-16 01:15:35', 0),
(3, '015161582981634380630', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Smokin Chic', '413', '7', '4', '', '329', 1, '', '32.9', '43.09', '398', '', 'Remove it from my order', 'Cancelled', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:42:06', '0000-00-00 00:00:00', 0),
(4, '015161582981634380713', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Mighty Spicy Chic', '417', '9', '6,5,4', '', '369', 1, '', '36.9', '57.29', '536', '', 'Remove it from my order', 'Completed', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:56:51', '0000-00-00 00:00:00', 0),
(5, '015161582981634380713', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Chicken Steak Meal', '457', '11', '', '', '379', 4, '', '0', '151.6', '1516', '', 'Remove it from my order', 'Received', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:38:33', '0000-00-00 00:00:00', 0),
(6, '015161582981634380713', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'BANGKOK STYLE CRISPY CHICKEN', '429', '37', '', '', '299', 1, '', '29.9', '32.89', '299', '', 'Remove it from my order', 'Received', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:38:33', '0000-00-00 00:00:00', 0),
(7, '015161582981634380713', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Creamy Mushroom Stuffed Chicken', '455', '62', '', '', '449', 3, '', '0', '134.7', '1347', '', 'Remove it from my order', 'Completed', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:42:11', '0000-00-00 00:00:00', 0),
(8, '015161582981634381383', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Spice Garlic Mushrooms', '424', '', '', '', '199', 1, '', '0', '19.9', '199', '', 'Remove it from my order', 'Received', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:49:43', '2021-10-15 23:05:07', 0),
(9, '015161582981634381383', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Salt & Pepper Fries', '423', '', '', '', '99', 1, '', '9.9', '10.89', '99', '', 'Remove it from my order', 'Received', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:49:43', '2021-10-15 23:24:11', 0),
(10, '015161582981634381383', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Beef Wonton Tacos', '458', '', '', '', '249', 1, '', '0', '24.9', '249', '', 'Remove it from my order', 'Received', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:49:43', '2021-10-15 23:05:34', 0),
(11, '015161582981634381383', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Chicken Cheese Bombs', '427', '', '', '', '219', 1, '', '0', '21.9', '219', '', 'Remove it from my order', 'Received', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:49:43', '2021-10-15 23:04:59', 0),
(12, '015161582981634381383', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Chicken Wonton Tacos', '459', '', '', '', '249', 1, '', '0', '24.9', '249', '', 'Remove it from my order', '0', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:49:43', '0000-00-00 00:00:00', 0),
(13, '015161582981634381383', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Crispy Chicken & Bacon', '431', '', '', '', '399', 1, '', '0', '39.9', '399', '', 'Remove it from my order', '0', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:49:43', '0000-00-00 00:00:00', 0),
(14, '015161582981634381383', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Gyro Chicken Over Cajun Fries', '430', '', '', '', '349', 1, '', '0', '34.9', '349', '', 'Remove it from my order', '0', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:49:43', '0000-00-00 00:00:00', 0),
(15, '015161582981634381383', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Roast Chicken Poutine', '432', '', '', '', '299', 1, '', '0', '29.9', '299', '', 'Remove it from my order', '0', 'green', 'Dhaka, Mirpur', '', '2021-10-16 10:49:43', '0000-00-00 00:00:00', 0),
(16, '017601041901634386179', 'Madchef', 'Dhanmondi', 'Shaker Shamim', '01760104190', 'Smokin Chic', '413', '7', '5,4', '', '329', 1, '', '32.9', '49.99', '467', '', 'Remove it from my order', 'New', 'green', 'dhanmondi', '', '2021-10-16 12:09:39', '0000-00-00 00:00:00', 0),
(17, '017601041901634386179', 'Madchef', 'Dhanmondi', 'Shaker Shamim', '01760104190', 'Singature Beef', '412', '3,7', '8,2', '', '229', 1, '', '22.9', '33.99', '317', '', 'Remove it from my order', 'Received', 'green', 'dhanmondi', '', '2021-10-16 12:09:39', '2021-10-16 01:15:31', 0),
(18, '015161582981634389080', 'Madchef', 'Dhanmondi', 'Ramzan Ali', '01516158298', 'Smokin Chic', '413', '9', '82', '', '329', 1, '', '32.9', '43.09', '398', '', 'Remove it from my order', 'Received', 'green', '603 Shamim Sharani Road, West Shewra para, Mirpur, Dhaka-1216', '01516158298', '2021-10-16 12:58:00', '2021-10-16 01:15:25', 0),
(19, '017601041901634394160', 'Madchef', 'Dhanmondi', 'Shaker Shamim', '01760104190', 'Singature Beef', '412', '3,7', '90,89', '', '229', 1, '', '22.9', '29.99', '277', '', 'Remove it from my order', 'Received', 'green', 'dhanmondi', '', '2021-10-16 14:22:40', '2021-10-16 02:34:00', 0),
(20, '017601041901634394160', 'Madchef', 'Dhanmondi', 'Shaker Shamim', '01760104190', 'Smokin Chic', '413', '7', '85,83', '', '329', 1, '', '32.9', '56.99', '537', '', 'Remove it from my order', 'Received', 'green', 'dhanmondi', '', '2021-10-16 14:22:40', '2021-10-16 02:33:58', 0),
(21, '017601041901634394160', 'Madchef', 'Dhanmondi', 'Shaker Shamim', '01760104190', 'CHICKEN WINGS', '428', '52', '', '', '299', 1, '', '29.9', '32.89', '299', '', 'Remove it from my order', 'Received', 'green', 'dhanmondi', '', '2021-10-16 14:22:40', '2021-10-16 02:33:55', 0),
(22, '017601041901634394866', 'Madchef', 'Dhanmondi', 'Shaker Shamim', '01760104190', 'Singature Beef', '412', '6', '86,85', '', '229', 1, '', '22.9', '52.99', '507', '', 'Remove it from my order', 'Cooking', 'green', 'dhanmondi', '', '2021-10-16 14:37:16', '2021-10-16 02:34:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deatails` varchar(255) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `sd` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `dicount` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `brand` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `adons_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`, `adons_status`, `created_at`, `updated_at`, `active`) VALUES
(122, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Sylhet', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(123, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(127, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(128, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(129, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(131, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(133, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(134, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(136, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(138, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(144, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(145, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(147, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(148, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(151, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(152, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(153, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(154, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(156, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Sylhet', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(163, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(164, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(165, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(166, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(168, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(169, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(170, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(172, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(174, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(175, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(176, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(184, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(185, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(187, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(188, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(189, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(190, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(191, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(192, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(193, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(194, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(195, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(198, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Sylhet', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(199, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(200, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(201, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(202, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(209, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(213, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(214, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(215, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Mohammadpur', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(216, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(217, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(218, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(219, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(220, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(221, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(222, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(223, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(224, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(225, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(226, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(227, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(228, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(229, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(230, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(231, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(232, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(233, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(234, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(235, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(236, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(237, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(238, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(239, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(240, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(241, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(242, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(243, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(244, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(245, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(246, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(247, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(248, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(249, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(250, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(251, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(252, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(253, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(254, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(255, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(256, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Mohammadpur', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(257, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(258, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(259, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(260, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(261, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(262, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(263, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(264, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Mirpur', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(265, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(266, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(267, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(268, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(269, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(270, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(271, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(272, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(273, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(274, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(275, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(276, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(277, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(278, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(279, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(280, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(281, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(282, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Mirpur', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(283, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(284, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(285, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(286, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(287, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(288, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(289, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(290, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(291, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(292, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(293, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(294, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(295, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(296, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(297, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(298, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(299, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(300, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(301, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(302, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(303, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(304, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(305, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Mirpur', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(306, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(307, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(308, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(309, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(310, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(311, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(312, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(313, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Khilgaon', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(314, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(315, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(316, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(317, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(318, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(319, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(320, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(321, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(322, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(323, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(324, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(325, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(326, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(327, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(328, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(329, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(330, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(331, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Khilgaon', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(332, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(333, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(334, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(335, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(336, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(337, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(338, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(339, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(340, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(341, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(342, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(343, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(344, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(345, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(346, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(347, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(348, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(349, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(350, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(351, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(352, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(353, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(354, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Khilgaon', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(355, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(356, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(357, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(358, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(359, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(360, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(361, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(362, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Gulshan', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(363, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(364, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(365, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(366, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(367, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(368, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(369, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(370, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(371, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(372, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(373, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(374, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(375, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(376, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(377, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(378, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(379, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(380, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Gulshan', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(381, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(382, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(383, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(384, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(385, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(386, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(387, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(388, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(389, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(390, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(391, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(392, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(393, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(394, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(395, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(396, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `product` (`id`, `name`, `deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`, `adons_status`, `created_at`, `updated_at`, `active`) VALUES
(397, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(398, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(399, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(400, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(401, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(402, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(403, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Gulshan', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(404, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(405, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(406, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(407, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(408, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(409, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(410, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(411, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Dhanmondi', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(412, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(413, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(414, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(415, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(416, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(417, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(418, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(419, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(420, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(421, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(422, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(423, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(424, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(425, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(426, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(427, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(428, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(429, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(430, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(431, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(432, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(433, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(434, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(435, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(436, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(437, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(438, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(439, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(440, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(441, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(442, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(443, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(444, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(445, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(446, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(447, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(448, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(449, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(450, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(451, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(452, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Dhanmondi', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(453, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(454, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(455, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(456, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(457, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(458, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(459, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(460, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Uttara', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(461, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(462, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(463, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(464, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(465, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(466, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(467, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(468, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(469, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(470, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(471, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(472, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(473, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(474, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(475, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(476, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(477, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(478, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Uttara', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(479, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(480, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(481, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(482, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(483, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(484, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(485, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(486, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(487, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(488, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(489, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(490, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(491, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(492, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(493, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(494, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(495, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(496, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(497, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(498, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(499, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(500, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(501, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Uttara', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(502, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(503, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(504, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(505, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(506, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(507, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(508, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(509, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Bashundhara', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(510, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(511, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(512, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(513, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(514, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(515, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(516, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(517, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(518, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(519, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(520, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(521, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(522, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(523, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(524, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(525, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(526, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(527, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Bashundhara', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(528, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(529, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(530, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(531, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(532, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(533, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(534, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(535, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(536, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(537, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(538, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(539, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(540, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(541, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(542, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(543, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(544, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(545, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(546, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(547, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(548, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(549, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(550, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Bashundhara', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(551, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(552, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(553, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(554, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(555, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(556, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(557, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(558, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Banani', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(559, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(560, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(561, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(562, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(563, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(564, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(565, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(566, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(567, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(568, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(569, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(570, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(571, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(572, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(573, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(574, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(575, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(576, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Banani', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(577, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(578, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(579, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(580, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(581, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(582, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(583, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(584, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(585, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(586, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(587, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(588, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(589, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(590, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(591, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(592, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(593, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(594, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(595, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(596, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(597, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(598, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(599, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Banani', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(600, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(601, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(602, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(603, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(604, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(605, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(606, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Banani', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(607, 'Singnature Chicken', 'Singnature Chicken', '1634024974.jpg', '0', '219', '10', '10', 'full', '10', '1', 'Madchef', 'Baily Road', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(608, 'Singature Beef', 'Singature Beef', '1634025083.jpg', '0', '229', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'CLASSIC BURGERS', 'Choice Sauce,Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(609, 'Smokin Chic', 'Smokin Chic', '1634029603.jpg', '0', '329', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(610, 'Naga Overkill', 'Naga Overkill', '1634029679.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(611, 'The Cuban', 'The Cuban', '1634029750.jpg', '0', '349', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(612, 'The Dhakaiya', 'The Dhakaiya', '1634030293.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(613, 'Mighty Spicy Chic', 'Mighty Spicy Chic', '1634030361.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(614, 'Madame lucy', 'Madame lucy', '1634030589.jpg', '0', '369', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'GOURMET BURGERS', 'Choice Bun', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(615, 'Mad Monster', 'Mad Monster', '1634031304.jpg', '0', '599', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'PLATTERS', 'Choice Steak Flaver,Burger Meat Choice,Burger Bun Choice,Burger Sauce Choice,Choice of Poutine', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(616, 'Madchefs Fav', 'Madchefs Fav', '1634035602.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'CLASSIC BURGERS', 'Choice Bun,Meat Choice', 'Yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(617, 'Onion Rings', 'Deep fried onion rings', '1634040106.jpg', '0', '119', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(618, 'Spice Cajun Fries', 'French fries sprinkled with cajun spice ', '1634040359.jpg', '0', '129', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(619, 'Salt & Pepper Fries', 'Classic French fries', '1634040634.jpg', '0', '99', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(620, 'Spice Garlic Mushrooms', 'Mushroom fried with garlic', '1634040823.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(621, 'Sesame Sausage Rolls', 'chicken sausage wrapped & roasted sesame seeds', '1634041337.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(622, 'Deep Fried Paneer Sticks', 'Deshi cottage cheese sticks fried', '1634041593.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(623, 'Chicken Cheese Bombs', 'potato cheese balls', '1634041886.jpg', '0', '219', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(624, 'CHICKEN WINGS', 'Deep fried chicken wings', '1634103433.jpg', '1', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(625, 'BANGKOK STYLE CRISPY CHICKEN', 'Deep fried bone-in chicken cubes', '1634103897.jpg', '0', '299', '10', '10', 'full', '0', '1', 'Madchef', 'Baily Road', 'CRISPY CHICKEN', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `product` (`id`, `name`, `deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`, `adons_status`, `created_at`, `updated_at`, `active`) VALUES
(626, 'Gyro Chicken Over Cajun Fries', 'Gyro Chicken Over Cajun Fries\n', '1634108459.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(627, 'Crispy Chicken & Bacon', 'Crispy Chicken & Bacon\n', '1634108578.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(628, 'Roast Chicken Poutine', 'Roast Chicken Poutine\n', '1634108708.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(629, 'Bolognese Poutine', 'Bolognese Poutine\n', '1634108774.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(630, 'Shah Poutine', 'Shah Poutine', '1634108928.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'POUTINE', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(631, 'Garlic Mayo', 'Garlic Mayo\n', '1634109023.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(632, 'Mint Yogurt', 'Mint Yogurt\n', '1634109095.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(633, 'Sweet Chilli', 'Sweet Chilli\n', '1634109198.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(634, 'Naga', 'Naga\n', '1634109326.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(635, 'House Mayo', 'House Mayo\n', '1634109411.jpg', '0', '20', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(636, 'Harissa', 'Harissa\n', '1634109475.jpg', '0', '30', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DIPS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(637, 'Virgin Caipirinha(Mocktails)', 'Virgin Caipirinha(Mocktails)', '1634111155.jpg', '0', '179', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(638, 'Madhouse Special (Mocktails)', 'Madhouse Special (Mocktails)\n', '1634111266.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(639, 'Mad Mocktail (Mocktails)', 'Mad Mocktail (Mocktails)', '1634111425.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(640, 'Kiwi Fizz (Mocktails)', 'Kiwi Fizz (Mocktails)', '1634111514.jpg', '0', '169', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(641, 'Lemon Mint Mojito(Mocktails)', 'Lemon Mint Mojito(Mocktails)', '1634111588.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(642, 'Chilled Latte (Milkshakes)', 'Chilled Latte (Milkshakes)', '1634111706.jpg', '0', '149', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(643, 'Choco Coffee Punch (Milkshakes)', 'Choco Coffee Punch (Milkshakes)', '1634111800.jpg', '0', '199', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(644, 'Cookies nâ€™ Cream (Milkshakes)', 'Cookies nâ€™ Cream (Milkshakes)\n', '1634113487.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(645, 'Chocolate Peanut Butter (Milkshakes)', 'Chocolate Peanut Butter (Milkshakes)', '1634113559.jpg', '0', '229', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(646, 'Nutella Shake (Milkshakes)', 'Nutella Shake (Milkshakes)', '1634113654.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(647, 'Cake In My Shake (Milkshakes)', 'Cake In My Shake (Milkshakes)', '1634113726.jpg', '0', '279', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'DRINKS', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(648, 'Achari Rice', 'Achari Rice', '1634115146.jpg', '0', '249', '0', '0', 'full', '10', '1', 'Madchef', 'Baily Road', 'RICE', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(649, 'Spicy Basil Chicken', 'Spicy Basil Chicken:\n', '1634115526.jpg', '0', '299', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(650, 'Gyro Chicken Over Rice', 'Gyro Chicken Over Rice\n', '1634116141.jpg', '0', '349', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(651, 'Creamy Mushroom Stuffed Chicken', 'Creamy Mushroom Stuffed Chicken\n', '1634116398.jpg', '0', '449', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(652, 'Kachamorich Beef & Shrooms', 'Kachamorich Beef & Shrooms ', '1634116481.jpg', '0', '399', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'RICE', 'Choice Rice', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(653, 'Chicken Steak Meal', 'Chicken Steak Meal\n', '1634123337.jpg', '0', '379', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'PLATTERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(654, 'Beef Wonton Tacos', 'Beef Wonton Tacos\n', '1634204405.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(655, 'Chicken Wonton Tacos', 'Chicken Wonton Tacos\n', '1634204501.jpg', '0', '249', '10', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'TEASERS', 'Choice Flaver', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
  `id` int(100) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `type`) VALUES
(18, 'full'),
(19, 'half');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `subcategory` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category`, `subcategory`, `status`) VALUES
(5, 'CLASSIC BURGERS', 'Choice Sauce', '1'),
(6, 'CLASSIC BURGERS', 'Choice Bun', '1'),
(7, 'CLASSIC BURGERS', 'Meat Choice', '1'),
(8, 'CLASSIC BURGERS', 'Add Ons', '1'),
(9, 'GOURMET BURGERS', 'Choice Bun', '1'),
(11, 'PLATTERS', 'Choice Flaver', '1'),
(12, 'PLATTERS', 'Choice Steak Flaver', '1'),
(13, 'PLATTERS', 'Burger Meat Choice', '1'),
(14, 'PLATTERS', 'Burger Bun Choice', '1'),
(15, 'PLATTERS', 'Burger Sauce Choice', '1'),
(16, 'PLATTERS', 'Choice of Poutine', '1'),
(19, 'CRISPY CHICKEN', 'Choice Flaver', '1'),
(24, 'DRINKS', 'Mocktails', '1'),
(25, 'DRINKS', 'Milkshakes ', '1'),
(26, 'RICE', 'Choice Flaver', '1'),
(27, 'RICE', 'Choice Rice', '1'),
(28, 'TEASERS', 'Choice Flaver', '1');

-- --------------------------------------------------------

--
-- Table structure for table `su_product`
--

CREATE TABLE IF NOT EXISTS `su_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deatails` varchar(255) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `sd` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `dicount` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `brand` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `su_product`
--

INSERT INTO `su_product` (`id`, `name`, `deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`, `created_at`, `updated_at`, `active`) VALUES
(3, 'Classic', 'it is.....', '', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(4, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(5, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(6, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(7, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(9, 'Garlic Brioche', 'it is...', '', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(10, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(11, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(18, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(20, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(37, 'The Original ', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(38, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(39, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(40, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(41, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(42, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(43, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(44, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(45, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(46, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(47, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(48, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(49, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(50, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(51, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(52, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(55, 'Naga', 'Naga\n', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(58, 'Garlic', 'Garlic\n', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(59, 'Naga Achari Rice', 'Naga Achari Rice\n', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(60, 'Garlic Achari Rice', 'Garlic Achari Rice\n', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(61, 'Classic Fried Rice', 'Classic Fried Rice\n', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(62, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice ', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(65, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Dhanmondi', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(66, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(67, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(68, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(69, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(70, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(71, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(72, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(73, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(74, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(75, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(76, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(77, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(78, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(79, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(80, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(81, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(82, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(83, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(84, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(85, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(86, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(87, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(88, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(89, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(90, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(91, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(92, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(93, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(94, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(95, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(96, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(97, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(98, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Banani', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(99, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(100, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(101, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(102, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(103, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(104, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(105, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(106, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(107, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(108, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(109, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(110, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(111, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(112, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(113, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(114, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(115, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(116, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(117, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(118, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(119, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(120, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(121, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(122, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(123, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(124, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(125, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(126, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(127, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(128, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(129, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(130, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(131, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Bashundhara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(132, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(133, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(134, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(135, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(136, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(137, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(138, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(139, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(140, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(141, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(142, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(143, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(144, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(145, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(146, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(147, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(148, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(149, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(150, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(151, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(152, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(153, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(154, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(155, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(156, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(157, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(158, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(159, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(160, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(161, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(162, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(163, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(164, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Baily Road', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(165, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(166, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(167, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(168, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(169, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(170, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(171, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(172, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(173, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(174, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(175, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(176, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(177, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(178, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(179, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(180, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(181, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(182, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(183, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(184, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(185, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(186, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(187, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(188, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(189, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(190, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(191, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(192, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(193, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(194, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(195, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(196, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(197, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Uttara', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(198, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(199, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(200, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(201, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(202, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(203, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(204, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(205, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(206, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(207, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(208, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(209, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(210, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(211, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(212, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(213, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(214, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(215, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(216, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(217, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(218, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(219, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(220, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(221, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(222, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(223, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(224, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(225, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(226, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(227, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(228, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(229, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(230, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mirpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(231, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(232, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(233, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(234, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(235, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(236, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(237, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(238, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(239, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(240, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(241, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(242, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(243, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(244, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(245, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(246, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(247, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(248, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(249, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(250, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(251, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(252, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(253, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(254, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(255, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(256, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(257, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(258, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(259, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(260, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(261, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(262, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(263, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Mohammadpur', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(264, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(265, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(266, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(267, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(268, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(269, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(270, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(271, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(272, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(273, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(274, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(275, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(276, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(277, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(278, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(279, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(280, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(281, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(282, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(283, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(284, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(285, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(286, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(287, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(288, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(289, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(290, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(291, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `su_product` (`id`, `name`, `deatails`, `image`, `size`, `price`, `vat`, `sd`, `type`, `dicount`, `status`, `brand`, `branch`, `category`, `subcategory`, `created_at`, `updated_at`, `active`) VALUES
(292, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(293, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(294, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(295, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(296, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Gulshan', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(297, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(298, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(299, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(300, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(301, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(302, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(303, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(304, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(305, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(306, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(307, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(308, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(309, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(310, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(311, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(312, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(313, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(314, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(315, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(316, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(317, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(318, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(319, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(320, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(321, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(322, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(323, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(324, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(325, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(326, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(327, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(328, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(329, 'Naga', 'Beef Wonton Tacos', '1634203633.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Khilgaon', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(330, 'Classic', 'it is.....', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(331, 'Garlic Mayo', 'it is....', '1634026188.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(332, 'Naga Blast', 'it is......', '1634026240.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(333, 'Smokewood BBQ', 'it is......', '1634026281.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Sauce', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(334, 'Potato Brioche', 'it is....', '1634028527.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(335, 'Garlic Brioche', 'it is...', NULL, '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Bun', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(336, 'Naga-Tastic', 'it is...', '1634031776.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(337, 'BBQ', 'it is..', '1634031854.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(338, 'Chicken', 'it is', '1634035363.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(339, 'Beef', 'it is', '1634036238.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(340, 'The Original', 'tasty', '1634104175.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(341, 'Naga-Tastic', 'tasty', '1634104495.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(342, 'BBQ', 'tasty', '1634104577.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Steak Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(343, 'Beef', 'tasty', '1634104628.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(344, 'Chicken', 'tasty', '1634104683.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Burger Meat Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(345, 'Potato Brioche', 'tasty', '1634104735.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(346, 'Garlic Brioche', 'tasty', '1634104850.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Burger Bun Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(347, 'Classic', 'tasty', '1634104913.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(348, 'Garlic Mayo', 'tasty', '1634104962.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(349, 'Naga Blast', 'tasty', '1634105000.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(350, 'Smokewood BBQ', 'tasty', '1634105032.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Burger Sauce Choice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(351, 'Roast Chicken Poutine', 'tasty', '1634105088.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(352, 'Bolognese Poutine', 'tasty', '1634105123.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice of Poutine', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(353, 'Buffalo', 'ok', '1634105190.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(354, 'Honey Garlic', 'ok', '1634105248.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N'),
(355, 'Honey-Lime Sriracha', 'ok', '1634105282.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(356, 'Naga', 'Naga', '1634113843.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(357, 'Garlic', 'Garlic', '1634115233.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(358, 'Naga Achari Rice', 'Naga Achari Rice', '1634115612.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(359, 'Garlic Achari Rice', 'Garlic Achari Rice', '1634115947.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(360, 'Classic Fried Rice', 'Classic Fried Rice', '1634116012.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(361, 'Roasted Garlic Butter Rice', 'Roasted Garlic Butter Rice', '1634116039.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Rice', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y'),
(362, 'Naga', 'Beef Wonton Tacos', '1634388840.jpg', '0', '0', '0', '0', 'full', '0', '1', 'Madchef', 'Sylhet', 'Choice Flaver', 'undefined', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_status`
--

CREATE TABLE IF NOT EXISTS `ticket_status` (
  `id` int(255) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_status`
--

INSERT INTO `ticket_status` (`id`, `status_name`) VALUES
(63, 'Re Order'),
(64, 'Completed'),
(65, 'Shipped'),
(66, 'Cooking'),
(67, 'Pending'),
(68, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(150) NOT NULL,
  `user_id` varchar(150) DEFAULT NULL,
  `user_pass` varchar(150) DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(150) DEFAULT NULL,
  `user_group_id` int(150) DEFAULT NULL,
  `previlege` varchar(150) DEFAULT NULL,
  `superior_id` varchar(255) NOT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `di` int(150) DEFAULT NULL,
  `notice` varchar(10000) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `concern` varchar(250) DEFAULT NULL,
  `brand` varchar(500) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_pass`, `user_name`, `user_email`, `user_group_id`, `previlege`, `superior_id`, `designation`, `di`, `notice`, `phone`, `concern`, `brand`, `branch`) VALUES
(75, 'admin', 'admin', 'admin', 'admin@gmail.com', 0, '0', '', 'admin', NULL, NULL, '01639199218', 'Order placement', NULL, NULL),
(177, 'Md Ishan Al Mamun', '1234', 'dhanmondi_madchef ', 'madchefdhanmondi@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01922-092708', NULL, 'Madchef', 'Dhanmondi'),
(175, 'Md Saiful Mollah', '1234', ' uttara_madchef', 'madchefuttara@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01624-277443', NULL, 'Madchef', 'Uttara'),
(178, 'Md Palen Chakma', '1234', 'bashundhara_madchef', 'madchefbashundhara@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01779-816579', NULL, 'Madchef', 'Bashundhara'),
(188, 'Md Mehedi Hasan Anik', '1234', 'bailyroad_madchef', 'madchefbaileyroad@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01926-027064Â ', NULL, 'Madchef', 'Baily Road'),
(180, 'Md Asad', '1234', 'mirpur_madchef', 'Mirpur.madchef@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01313-890726', NULL, 'Madchef', 'Mirpur'),
(181, 'Md Badhon Biswas', '1234', 'gulshan_madchef ', 'cheezbymadchef4am@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01767-358442Â ', NULL, 'Madchef', 'Gulshan'),
(182, 'Md Arif Mollik', '1234', 'khilgaon_madchef', 'madcheezmalibug@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01987-494625', NULL, 'Madchef', 'Khilgaon'),
(183, 'Md Salim', '1234', 'sylhet_madchef', 'madchefsylhet@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01581-181171', NULL, 'Select A Brand Name', 'Select A Branch'),
(176, 'Md Rudra Hasan Rofiq', '1234', 'banani_madchef', 'madchefbanani@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01623-805667', NULL, 'Madchef', 'Banani'),
(174, 'Md Jakaria Islam', '1234', 'mohammadpur_madchef', 'madchefmohammadpur@gmail.com', 0, '3', '', 'Branch Manager', NULL, NULL, '01620-554006', NULL, 'Madchef', 'Mohammadpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adons_product`
--
ALTER TABLE `adons_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banch_id` (`branch`),
  ADD KEY `category` (`category`),
  ADD KEY `subcategory_name` (`subcategory`),
  ADD KEY `product_type` (`type`),
  ADD KEY `brand_name` (`brand`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_brand_id` (`brand`),
  ADD KEY `branch` (`branch`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_2` (`brand`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_2` (`category`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banch_id` (`branch`),
  ADD KEY `category` (`category`),
  ADD KEY `subcategory_name` (`subcategory`),
  ADD KEY `product_type` (`type`),
  ADD KEY `brand_name` (`brand`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category`),
  ADD KEY `subcategory` (`subcategory`);

--
-- Indexes for table `su_product`
--
ALTER TABLE `su_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banch_id` (`branch`),
  ADD KEY `category` (`category`),
  ADD KEY `subcategory_name` (`subcategory`),
  ADD KEY `product_type` (`type`),
  ADD KEY `brand_name` (`brand`);

--
-- Indexes for table `ticket_status`
--
ALTER TABLE `ticket_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adons_product`
--
ALTER TABLE `adons_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=656;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `su_product`
--
ALTER TABLE `su_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=363;
--
-- AUTO_INCREMENT for table `ticket_status`
--
ALTER TABLE `ticket_status`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=189;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand`) REFERENCES `brand` (`brand`) ON DELETE SET NULL;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `banch_name` FOREIGN KEY (`branch`) REFERENCES `branch` (`branch`) ON DELETE SET NULL,
  ADD CONSTRAINT `brand_name` FOREIGN KEY (`brand`) REFERENCES `brand` (`brand`) ON DELETE SET NULL,
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `category` (`category`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_type` FOREIGN KEY (`type`) REFERENCES `product_type` (`type`) ON DELETE SET NULL;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category`) REFERENCES `category` (`category`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
