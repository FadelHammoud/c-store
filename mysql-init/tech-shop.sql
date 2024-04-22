-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 04:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(6, 'Hadi Jaber', 'hadijaber@gmail.com', 'hadi123', 'Tech-Shop-logo.png', 'Lebanon', ' ', '70940683', 'Top Manager'),
(7, 'Issa Jomaa', 'issajomaa@gmail.com', 'issa123', 'ecom-store-logo.png', 'Lebanon', '  ', '78849383', 'Top Manager');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(6, 'Customer Support', 'We want you to be confident that you will receive the type of customer service you’ve come to expect from Tech-Shop.\r\nand would like to remind you that  we are always here to help, even after you have left our store. '),
(9, '  Earn Points on Each Purchse', 'At TECH-SHOP, we believe in rewarding loyalty, and the best way to do that is by offering our customers a privilege program. Members will be able to earn and redeem points seamlessly for great rewards! '),
(10, 'SHIPPING POLICY', 'All orders are subject to product availability. If an item is not in stock at the time you place your order, we will notify you and payment will be refunded. \r\nWe ensure delivery within 24 to 48 working hours, across the country as table below unless there are exceptional circumstances.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(54, '::1', 1, '33', ''),
(71, '::1', 1, '1599', ''),
(74, '::1', 1, '33', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(5, 'Laptops', 'yes', ''),
(6, 'PC components', 'yes', ''),
(8, 'Accessories', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'Rianti', 'Riannti@gmail.com', 'rianti123', 'India', 'Calcuta', '8891822', 'Anywhere you want', 'member1.jpg', '::1'),
(6, 'James Bono', 'jamesbono@gmail.com', 'james1123', 'England', 'London', '555-2255-222', 'Hyde Park', 'member2.jpg', '::1'),
(7, 'issa', 'issa@gmail.com', '123', 'be', 'be', '2121', 'be', 'Screenshot (1).png', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(14, 5, 29, 962051804, 1, '', '2023-01-03', 'pending'),
(15, 7, 287, 162406099, 1, '', '2023-01-05', 'Complete'),
(16, 7, 179, 1535632242, 1, '', '2023-01-05', 'Complete'),
(17, 7, 1399, 1488753032, 1, '', '2023-01-05', 'pending'),
(18, 5, 33, 1659828460, 1, '', '2023-01-07', 'pending'),
(19, 5, 295, 118568133, 1, '', '2023-01-13', 'pending'),
(20, 5, 33, 118568133, 1, '', '2023-01-13', 'pending'),
(21, 5, 1599, 163440369, 1, '', '2023-01-13', 'pending'),
(22, 5, 1442, 163440369, 1, '', '2023-01-13', 'pending'),
(23, 5, 1442, 574826712, 1, '', '2023-01-13', 'pending'),
(24, 5, 45, 760026139, 1, '', '2023-01-13', 'pending'),
(25, 5, 77, 1925145810, 1, '', '2023-01-13', 'pending'),
(26, 5, 33, 2024110523, 1, '', '2023-01-13', 'pending'),
(27, 5, 33, 162399221, 1, '', '2023-01-13', 'pending'),
(28, 5, 33, 610608068, 1, '', '2023-01-13', 'pending'),
(29, 5, 1442, 821010565, 1, '', '2023-01-13', 'pending'),
(30, 5, 33, 678296500, 1, '', '2023-01-13', 'pending'),
(31, 5, 1442, 948142497, 1, '', '2023-01-13', 'pending'),
(32, 5, 1599, 1722247034, 1, '', '2023-01-13', 'pending'),
(33, 5, 33, 2146157947, 1, '', '2023-01-13', 'pending'),
(34, 5, 1442, 1401675743, 1, '', '2023-01-13', 'pending'),
(35, 5, 1442, 1850309013, 1, '', '2023-01-13', 'pending'),
(36, 5, 1599, 1829060056, 1, '', '2023-01-13', 'pending'),
(37, 5, 1442, 2068184084, 1, '', '2023-01-13', 'pending'),
(38, 5, 33, 744274258, 1, '', '2023-01-13', 'pending'),
(39, 5, 33, 1003666763, 1, '', '2023-01-13', 'pending'),
(40, 5, 33, 1857559057, 1, '', '2023-01-13', 'pending'),
(41, 5, 33, 1005332756, 1, '', '2023-01-14', 'Complete'),
(42, 7, 195, 0, 1, '', '2023-01-14', 'pending'),
(43, 7, 33, 0, 1, '', '2023-01-14', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'HP', 'yes', 'hp_logo.png'),
(2, 'APPLE', 'yes', 'Apple_logo.webp'),
(3, 'SAMSUNG', 'yes', 'samsung_logo.png'),
(4, 'TOSHIBA', 'yes', 'toshiba_logo1.png'),
(5, 'ACER', 'no', 'acer_logo1.png'),
(6, 'LENOVO', 'yes', 'lenovo_logo.jpg'),
(7, 'DELL', 'yes', 'Dell_logo.png'),
(8, 'INTEL', 'yes', 'intel_logo.png'),
(9, 'ASUS', 'yes', 'asus_logo.png'),
(10, 'MSI', 'yes', ''),
(11, 'AMD', 'yes', ''),
(12, 'KINGSTONE', 'yes', ''),
(13, 'HIKVISION', 'yes', ''),
(14, 'GAMING MASTER', '', ''),
(15, 'NZXT', '', ''),
(16, 'FORZA', '', ''),
(17, 'RAZER', '', ''),
(18, 'A4TECH', '', ''),
(19, 'NVIDIA', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(10, 0, 74, 'Master Card', 235, 0, '2023-01-14'),
(12, 0, 23, 'Master Card', 568, 0, '2023-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(14, 7, 1535632242, '57', 1, '', 'pending'),
(15, 7, 1488753032, '27', 1, '', 'Complete'),
(16, 5, 118568133, '50', 1, '', 'Complete'),
(17, 5, 118568133, '74', 1, '', 'pending'),
(18, 5, 163440369, '71', 1, '', 'pending'),
(19, 5, 163440369, '72', 1, '', 'pending'),
(20, 5, 574826712, '72', 1, '', 'pending'),
(21, 5, 610608068, '74', 1, '', 'pending'),
(22, 5, 821010565, '72', 1, '', 'pending'),
(23, 5, 948142497, '72', 1, '', 'pending'),
(24, 5, 1722247034, '71', 1, '', 'pending'),
(25, 5, 1401675743, '72', 1, '', 'pending'),
(26, 5, 1003666763, '54', 1, '', 'pending'),
(27, 5, 1857559057, '74', 1, '', 'pending'),
(28, 5, 1005332756, '74', 1, '', 'pending'),
(29, 7, 0, '73', 1, '', 'pending'),
(30, 7, 0, '74', 1, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(21, 20, 5, 9, '2022-12-23 21:02:29', 'ASUS VivoBook R410MA 14', '', 'asus-laptop-1_1.jpg', 'asus-laptop-1_2.jpg', 'asus-laptop-1_3.jpg', 299, 'ASUS-SDT-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Processor:</span></span><span style=\"box-sizing: border-box;\">&nbsp;Intel Celeron N4020 1.1GHz 2-Core 4MB Cache<br style=\"box-sizing: border-box;\" /></span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Memory:</span></span><span style=\"box-sizing: border-box;\">&nbsp;4GB DDR4-SDRAM</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Storage:</span></span><span style=\"box-sizing: border-box;\">&nbsp;128GB eMMC</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Graphic Card:&nbsp;</span></span>Intel&reg; UHD Graphics 600</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box; font-size: large;\">Operating System:&nbsp;</span></span><span style=\"box-sizing: border-box; font-size: large;\">DOS</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Display:&nbsp;</span></span>14.0-inch, FHD (1920 x 1080) 16:9 aspect ratio</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">I/O Ports:</span></span><span style=\"box-sizing: border-box;\">&nbsp;1x USB 2.0; 1x USB 3.2 Gen 1 Type-A; 1x USB 3.2 Gen 1 Type-C; 1x HDMI; 1x Combo Headphone/Mic</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Wireless Connectivity:</span></span><span style=\"box-sizing: border-box;\">&nbsp;Wi-Fi 5, Bluetooth 4.1</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Camera:</span></span><span style=\"box-sizing: border-box;\">&nbsp;720p HD Webcam</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Battery:</span></span><span style=\"box-sizing: border-box;\">&nbsp;42Wh Li-ion</span></span></li>\r\n</ul>', 'ASUS STUDENT LAPTOP', 199),
(22, 19, 5, 9, '2022-12-23 20:47:11', 'Asus ROG Strix Scar 17 G733ZS 17.3\" Gaming Laptop - Core i9-12900H - RAM 16GB - SSD 1TB - RTX 3080 - NVIDIA RTX 3080 | G733ZS-DS94', '', 'ASUS-GAM-1_1.jpg', 'ASUS-GAM-1_2.jpg', 'ASUS-GAM-1_3.jpg', 2599, 'ASUS-GAM-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor: &lrm;</span>5 GHz Core i9-12900H</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:&nbsp;</span>&lrm;16 GB DDR5&nbsp;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:</span>&nbsp;1TB SSD</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Graphic Card:&nbsp;</span>NVIDIA GeForce RTX 3080</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:&nbsp;</span>17.3\" 2560x1440</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">I/O Ports:</span>&nbsp;1x 3.5mm Combo Audio Jack, 1x HDMI 2.1 FRL, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-C, support DisplayPort&trade; / power delivery / G-SYNC, 1x Thunderbolt&trade; 4 support DisplayPort&trade;, 1x 2.5G LAN port</span></li>\r\n</ul>', 'ASUS GAMING LAPTOP', 2199),
(23, 19, 5, 9, '2022-12-23 20:54:46', 'Asus ROG Zephyrus Duo 16 16\" Laptop - AMD Ryzen 9 6900HX - RAM 32GB - SSD 2TB - NVIDIA GeForce RTX 3080 Ti | GX650RX-XS97', '', 'ASUS-GAM-2_1.jpg', 'ASUS-GAM-2_2.jpg', 'ASUS-GAM-2_3.jpg', 4499, 'ASUS-GAM-2', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:&nbsp;</span>AMD Ryzen&trade; 9 6900HX</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:</span>&nbsp;<span style=\"box-sizing: border-box;\">32GB RAM</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:&nbsp;</span>2TB SSD<span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">&nbsp;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:&nbsp;</span>16\" (2560x1440) 165Hz</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Graphics Card:</span>&nbsp;<span style=\"box-sizing: border-box;\">NVIDIA GeForce RTX 3080 Ti</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Operating System:</span>&nbsp;<span style=\"box-sizing: border-box;\">Windows 11 Pro</span></li>\r\n</ul>', 'ASUS GAMING LAPTOP', 3999),
(24, 18, 5, 6, '2022-12-23 21:00:20', 'Lenovo Slim 9 14ITL5 14\" Laptop - Core™ i7-1165G7 - RAM 16GB - SSD 512GB - 82D2000BUS', '', 'LENOVO-BUS-1_1.jpg', 'LENOVO-BUS-1_2.jpg', 'LENOVO-BUS-1_3.jpg', 829, 'LENOVO-BUSS-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:&nbsp;&nbsp;</span>2.8 GHz Intel Core i7 4-Core (11th Gen)</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:</span>16GB of LPDDR4x RAM</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:</span>&nbsp;512GB M.2 NVMe SSD</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:&nbsp;</span>14\" 2880 x 1800 IPS Touchscreen</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">GPU:</span>&nbsp;Integrated Intel Iris Xe Graphics</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">OS:</span>&nbsp;Windows 11</span></li>\r\n</ul>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px;\">&nbsp;</p>\r\n</div>', 'LENOVO BUSSINESS LAPTOP', 749),
(25, 18, 5, 2, '2022-12-23 21:06:18', 'Apple MacBook Air 13.6\" Laptop - Apple M2 Chip - RAM 8GB - SSD 512GB - Silver | MLY03', '', 'APPLE-1_1.jpg', '', '', 1499, 'APPLE-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Processor:</span></span><span style=\"box-sizing: border-box;\">&nbsp;Apple M2 Chip 8-Core&nbsp;</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Memory:</span></span><span style=\"box-sizing: border-box;\">&nbsp;8GB On-Board</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Storage:</span></span><span style=\"box-sizing: border-box;\">&nbsp;512GB Apple NVMe</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Display:&nbsp;</span></span>13.6\"&nbsp;<span style=\"box-sizing: border-box;\">IPS-Type LCD 2560x1664</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">I/O Ports:</span></span><span style=\"box-sizing: border-box;\">&nbsp;2 x Thunderbolt 3; 1 x 1/8\" 3.5mm Headphone&nbsp;</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Wireless Connectivity:</span></span><span style=\"box-sizing: border-box;\">&nbsp;Wi-Fi 6, Bluetooth 5.2</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Camera:</span></span><span style=\"box-sizing: border-box;\">&nbsp;1080p HD Webcam</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Battery:</span></span><span style=\"box-sizing: border-box;\">&nbsp;18 Hours</span></span></li>\r\n</ul>', 'APPLE LAPTOP', 1319),
(26, 18, 5, 2, '2022-12-23 21:10:55', 'Apple MacBook Air 13.3\" Laptop - Apple M1 chip - 8GB Memory - 256GB SSD (Latest Model) - Silver | MGN93LL/A', '', 'APPLE-2_1.webp', 'APPLE-2_2.jpg', 'APPLE-2_3.webp', 1150, 'APPLE-BUSS-2', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:&nbsp;</span>Apple M1 8-Core CPU</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:</span><span style=\"box-sizing: border-box;\">&nbsp;8GB Unified RAM</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:</span><span style=\"box-sizing: border-box;\">&nbsp;256GB SSD</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Graphic Card:</span><span style=\"box-sizing: border-box;\">&nbsp;Apple 7-Core GPU</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:&nbsp;</span>13.3\" 2560 x 1600 Retina IPS Display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Operating System:&nbsp;</span>macOS</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">I/O Ports:</span>&nbsp;2 x&nbsp;Thunderbolt 3 / USB4 | 1 x&nbsp;1/8\" / 3.5 mm Headphone Output</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Wireless Connectivity:</span><span style=\"box-sizing: border-box;\">&nbsp;Wi-Fi 6 (802.11ax) | Bluetooth 5.0</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Camera:</span><span style=\"box-sizing: border-box;\">&nbsp;User-Facing: 720p</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Battery:</span><span style=\"box-sizing: border-box;\">&nbsp;Lithium-Ion Polymer (LiPo) | 18 hours estimated battery life</span></li>\r\n</ul>', 'APPLE LAPTOP', 899),
(27, 18, 5, 2, '2022-12-23 21:13:28', 'Apple MacBook Air 13\" Laptop - Apple M2 Chip - RAM 8GB - SSD 256GB - Starlight | MLY13X/A', '', 'APPLE-3_1.webp', 'APPLE-3_2.jpg', 'APPLE-3_3.webp', 1399, 'APPLE-BUSS-3', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Processor:</span></span><span style=\"box-sizing: border-box;\">&nbsp;Apple M2 Chip 8-Core&nbsp;</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Memory:</span></span><span style=\"box-sizing: border-box;\">&nbsp;8GB&nbsp;</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Storage:</span></span><span style=\"box-sizing: border-box;\">&nbsp;256GB PCIe NVMe M.2 SSD</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Display:&nbsp;</span></span>13.6\"&nbsp;<span style=\"box-sizing: border-box;\">Liquid Retina display with 500 nits of brightness</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">I/O Ports:</span></span><span style=\"box-sizing: border-box;\">&nbsp;&nbsp;3 microphone array; 4 speaker sound system with Spatial Audio MagSafe charging port, 2 Thunderbolt ports and headphone jack Backlit Magic Keyboard and Touch ID for secure unlock&nbsp;</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Wireless Connectivity:</span></span><span style=\"box-sizing: border-box;\">&nbsp;Wi-Fi 6, Bluetooth 5.2</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Camera:</span></span><span style=\"box-sizing: border-box;\">&nbsp;1080p HD Webcam</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\"><span style=\"box-sizing: border-box;\">Battery:</span></span><span style=\"box-sizing: border-box;\">&nbsp;18 Hours</span></span></li>\r\n</ul>', 'APPLE LAPTOP', 1079),
(28, 20, 5, 5, '2022-12-23 21:19:24', 'Acer Extensa 15 15.6\" Laptop - AMD Ryzen 5 3500U - RAM 4GB - HDD 1TB | EX215-22-R24P', '', 'ACER-1_1.webp', 'ACER-1_2.webp', 'ACER-1_3.webp', 439, 'ACER-SDT-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:</span>&nbsp;AMD Ryzen 5 3500U</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:</span>&nbsp;8GB DDR4-SDRAM</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:</span>&nbsp;512GB SSD</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:&nbsp;</span>15.6\" 144Hz IPS-Level Full HD (1920 x 1080) Anti-Glare Display</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Operating System:</span>&nbsp;Endless OS</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">I/O Ports:</span>&nbsp;1 x HDMI 2.0; 1 x USB 2.0 Gen 1; 2 x USB 3.2 Gen 1; 1 x LAN</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Wireless Connectivity:</span>&nbsp;<span style=\"box-sizing: border-box;\">Wi-Fi 5 (802.11ac)</span>, Bluetooth 4.2</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Camera:</span>&nbsp;720p HD Webcam</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Battery:</span>&nbsp;2-cells, 36.7WH</span></li>\r\n</ul>', 'ACER STUDENT LAPTOP', 379),
(29, 18, 5, 1, '2022-12-23 21:22:38', 'HP NoteBook 17-CN0097 Core™ 17.3\" Laptop - Intel Core I7-1195G7 - RAM 16GB - 1TB HDD - SSD 256GB | 40K42UAR#ABA', '', 'HP-1_1.jpg', 'HP-1_2.jpg', 'HP-1_1.jpg', 699, 'HP-BUSS-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:</span>&nbsp;<span style=\"box-sizing: border-box;\">Intel&reg; Core&trade; i7-1195G7 (up to 4.5 GHz, 12 MB L3 cache, 4 cores)</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:</span>&nbsp;<span style=\"box-sizing: border-box;\">16 GB DDR4-SDRAM</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:</span>&nbsp;<span style=\"box-sizing: border-box;\">1TB HDD + 256GB SSD</span><br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Graphic Card:</span>&nbsp;<span style=\"box-sizing: border-box;\">Intel&reg; Iris&reg; Xe Graphics</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:</span>&nbsp;<span style=\"box-sizing: border-box;\">17.3\" diagonal FHD (1920 x 1080)</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">I/O Ports:</span>&nbsp;<span style=\"box-sizing: border-box;\">2 USB 3.2 GEN 1 (d.1 Gen 1) Type-A, 1 USB 3.2 GEN 1 (d.1 Gen 1) Type-C, HDMI port</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Wireless Connectivity:</span>&nbsp;Intel Wi-Fi 6 and Bluetooth&nbsp;</span></li>\r\n</ul>', 'HP BUSINESS LAPTOP', 599),
(30, 18, 5, 3, '2022-12-23 21:25:17', 'Samsung Galaxy Book Pro 950XDB-KC4US 15.6\" AMOLED - Core™ i5-1135G7 - RAM 8GB - SSD 512GB, Mystic Blue | NP950XDB-KC4US', '', 'SAMSUNG-1_1.jpg', 'SAMSUNG-1_2.webp', 'SAMSUNG-1_3.jpg', 799, 'SAMSUNG-BUSS-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:&nbsp;</span>Intel<span style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span>Core&trade; i5-1135G7 Processor 2.40GHZ</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:&nbsp;</span>8GB&nbsp;<span style=\"box-sizing: border-box;\">LPDDR4x</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:&nbsp;</span>512GB SSD</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Graphic Card:</span>Intel Iris XE Graphics</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:</span>15.6\" FHD 1920x1080</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Operating System:&nbsp;</span>Windows 11</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">I/O Ports:&nbsp;</span>1 Thunderbolt 4, 1 USB3.1, 1 USB-C,&nbsp;<span style=\"box-sizing: border-box;\">MicroSD Multi-media Card Reader</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Wireless Connectivity:</span>Wi-Fi 6E (Gig+), 802.11 ax</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Camera:</span>720p HD</span></li>\r\n</ul>', 'SAMSUNG BUSSINESS LAPTOP', 699),
(31, 19, 5, 10, '2022-12-23 21:29:00', 'MSI Creator M16 A12UE-631 16\" Laptop - Intel Core i7-12700H - RAM 16GB - SSD 512GB - RTX3060 | CreatorM1612631', '', 'MSI-1_1.jpg', 'MSI-1_2.jpg', 'MSI-1_3.webp', 1425, 'MSI-GAM-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:</span>&nbsp;Intel Core i7-12700H 6+8 Core</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:</span>&nbsp;16GB (8GB*2) DDR4 3200MHz</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:</span>&nbsp;512GB NVMe SSD</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Graphics Card:&nbsp;</span>NVIDIA&reg; GeForce RTX&trade; 3060 Laptop GPU 6GB GDDR6</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:&nbsp;</span>16\" QHD+ (2560*1600), 60Hz DCI-P3 100%&nbsp;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Operating System:</span>&nbsp;Windows 11&nbsp;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">I/O Ports:&nbsp;</span>2x USB 3.2 Gen1 (Type-A); 1x USB 2.0 (Type-A);&nbsp;<span style=\"box-sizing: border-box;\">USB 3.2 Gen1 Type C *1; HDMI(4K @ 60Hz); Audio</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Wireless Connectivity:</span>&nbsp;<span style=\"box-sizing: border-box;\">Intel Wi-Fi 6 AX201(2*2 ax); BT 5.2</span></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Battery:</span>&nbsp;<span style=\"box-sizing: border-box;\">3 cell (53Whr)</span></span></li>\r\n</ul>', 'MSI GAMING LAPTOP', 1299),
(32, 20, 5, 6, '2022-12-23 21:34:29', 'Lenovo V15 15.6\" Laptop - Intel Core I3-1005G1 - RAM 4GB - SSD 256GB | 82C5S01800', '', 'LENOVO-1_1.webp', 'LENOVO-1_2.jpg', 'LENOVO-1_3.jpg', 389, 'LENOVO-SDT-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:</span>&nbsp;Intel Core i3-1005G1</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:</span>&nbsp;4GB&nbsp;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:</span>&nbsp;256GB SSD</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:</span>&nbsp;15.6\"&nbsp;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">I/O Ports:</span>&nbsp;1x USB 2.0; 2x USB 3.2 Gen 1 Type-A; 1x HDMI 1.4b; 1x Headphone / microphone combo jack (3.5mm); 1x Power connector</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Wireless Connectivity:</span>&nbsp;<span style=\"box-sizing: border-box;\">Wi-Fi 5 (802.11ac)</span>, Bluetooth</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Camera:&nbsp;</span>Yes</span></li>\r\n</ul>', 'LENOVO STUDENT LAPTOP', 299),
(33, 19, 5, 7, '2022-12-23 21:37:48', 'Dell G15 15.6\" Laptop - AMD Ryzen 7-5800H - RAM 8GB - SSD 512GB - RTX 3050 Ti | G15RE-A975GRY-PUS', '', 'DELL-1_1.jpg', 'DELL-1_2.jpg', 'DELL-1_3.jpg', 999, 'DELL-GAM-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" type=\"disc\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Processor:</span><span style=\"box-sizing: border-box;\">&nbsp;AMD Ryzen 7 5800H</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Memory:</span><span style=\"box-sizing: border-box;\">&nbsp;8GB RAM</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Storage:</span><span style=\"box-sizing: border-box;\">&nbsp;512GB</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Graphic Card:</span><span style=\"box-sizing: border-box;\">&nbsp;NVIDIA GeForce RTX 3050 Ti</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Display:</span><span style=\"box-sizing: border-box;\">&nbsp;15.6\" FHD</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Operating System:</span><span style=\"box-sizing: border-box;\">&nbsp;Windows 11 Home</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Ports:</span>&nbsp;1 x Ethernet Port | 1 x HDMI Output | 1 x&nbsp;<span style=\"box-sizing: border-box;\">HDMI 2.1 Outputs | 4 x USB Ports | 2 x USB 2.0 Type A Ports | 1 x USB 3.2 Type A Ports | 1 x USB 3.2 Type C Ports |&nbsp;</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Networking:</span><span style=\"box-sizing: border-box;\">&nbsp;Wi-Fi, Ethernet Internet Connectivity</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Camera:</span><span style=\"box-sizing: border-box;\">&nbsp;Front-Facing Camera</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Battery:</span><span style=\"box-sizing: border-box;\">&nbsp;4242 milliampere hours battery capacity | Lithium-ion battery type</span></li>\r\n</ul>', 'DELL GAMING LAPTOP', 849),
(34, 6, 6, 9, '2022-12-24 11:31:55', 'Asus Z690-P Prime Wifi DDR5 Motherboard | 90MB1A90-M0EAY0', '', 'm-1_1.jpg', 'm-1_2.jpg', 'm-1_3.jpg', 287, 'MTB-1', '<p><span style=\"color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Intel&reg; Z690 (LGA 1700) ATX motherboard with PCIe&reg; 5.0, DDR5, three M.2 slots, 14+1 DrMOS, HDMI&reg;, DisplayPort&trade;, Intel&reg; WiFi 6, 2.5 Gb Ethernet, USB 3.2 Gen 2&times;2 Type-C&reg;, front USB 3.2 Gen 1 Type-C&reg;, Thunderbolt&trade; 4 header and Aura Sync RGB lighting</span></p>', 'MOTHERBOARD', 229),
(35, 6, 6, 10, '2022-12-24 11:35:22', 'MSI PRO B660M-G DDR4 LGA 1700 Motherboard | 911-7D45-008', '', 'M-2_1.jpg', 'M-2_2.webp', 'M-2_3.webp', 159, 'MTB-2', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Supports 12th/ 13th Gen Intel<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span>&nbsp;Core&trade;, Pentium<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span>&nbsp;Gold and Celeron<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span>&nbsp;processors for LGA 1700 socket</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Supports DDR4 Memory, up to 4600+(OC) MHz</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Core Boost : With premium layout and digital power design to support more cores and provide better performance</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Memory Boost: Advanced technology to deliver pure data signals for the best performance, stability and compatibility</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Lightning Fast Experience: PCIe 4.0, Lightning Gen4 x4&nbsp;M.2 with M.2 Shield Frozr</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">2.5G LAN: Upgraded network solution for professional and multimedia use. Delivers a secure, stable and fast network connection</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Audio Boost: Reward your ears with studio grade sound quality</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Steel Armor: Protecting VGA cards against bending and EMI for better performance, stability and strength.</li>\r\n</ul>', 'MOTHERBOARD', 129),
(36, 6, 6, 9, '2022-12-24 11:38:34', 'ASUS ROG Maximus Z790 Hero Motherboard | 90MB1CI0-M0EAY0', '', 'M-3_1.jpg', 'M-3_2.jpg', 'M-3_1.jpg', 659, 'MOTHERBOARD-3', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">ntel<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>LGA 1700 socket:&nbsp;</span>Ready for 13<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">th</span><span style=\"box-sizing: border-box;\">&nbsp;</span>Gen Intel<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>Core<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&trade;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>processors &amp; 12<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">th</span><span style=\"box-sizing: border-box;\">&nbsp;</span>Gen Intel Core<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&trade;</span>, Pentium<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>Gold and Celeron<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>Processors</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Robust Power Solution:&nbsp;</span>20 + 1 teamed power solution rated for 90A per stage with dual ProCool II power connectors, high-quality alloy chokes, and durable capacitors to support multi-core processors</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Optimized VRM Thermals:&nbsp;</span>Massive heatsinks integrated with the I/O cover, joined by an L-shaped heatpipe, and connected to the power stages with high-conductivity thermal pads</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Next-Gen M.2 Support:&nbsp;</span>PCIe<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>5.0 M.2 slot on the bundled ROG Hyper M.2 card, and four PCIe 4.0 M.2 slots all with substantial cooling solutions</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Abundant Connectivity:&nbsp;</span>Dual Thunderbolt<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&trade;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>4 USB Type-C<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>ports, USB 3.2 Gen 2x2 Type-C<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>front-panel connector with Quick Charge 4+ up to 60W, six additional USB 3.2 Gen 2 ports, two PCIe 5.0 x16 SafeSlots, HDMI<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>2.1</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">High-Performance Networking:&nbsp;</span>On-board Intel WI-FI 6E (802.11ax) and Intel 2.5 Gb Ethernet with ASUS LANGuard</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Intelligent Control:&nbsp;</span>ASUS-exclusive AI Overclocking, AI Cooling II, AI Networking and Two-Way AI Noise Cancelation to simplify setup and improve performance</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Immersive Audio:&nbsp;</span>ROG SupremeFX ALC4082 codec with ESS<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>ES9218 Quad DAC for up to 32-Bit/384 kHz playback</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Unmatched Personalization:</span><span style=\"box-sizing: border-box;\">&nbsp;</span>I/Ocover with PolymoLighting, three addressable Gen 2 headers and one RGB header, all configurable with ASUS-exclusive Aura Sync RGB lighting</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">DIY Friendly Design:</span><span style=\"box-sizing: border-box;\">&nbsp;</span>PCIe Slot Q-Release, M.2 Q-Latch, pre-mounted I/O shield, Q-Code, Q-LED, FlexKey button, Start button, BIOS FlashBack<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&trade;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>button, and Clear CMOS button</li>\r\n</ul>', 'MOTHERBOARD', 599),
(37, 8, 6, 8, '2022-12-24 11:42:13', 'Intel Core i5-12400F Processor | 12400F', '', 'C-1.webp', '', '', 180, 'CPU-1', '<h2 style=\"box-sizing: border-box; margin: 2.28571rem 0px 0.78571rem; padding: 0px; color: #282828; font-family: Karla, Arial, Helvetica, sans-serif; line-height: 1.25; font-size: 20px;\">Intel Core i5-12400F Processor | 12400F</h2>', 'CPU', 160),
(38, 8, 6, 11, '2022-12-24 11:44:58', 'AMD Ryzen 9 7900X Raphael AM5 4.7GHz 12-Core Boxed Processor - Heatsink Not Included | 7900X', '', 'C-2.webp', '', '', 565, 'CPU-2', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Number of CPU Cores:&nbsp;</span>12 Cores</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Base Clock: 4.7GHz<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">CPU Socket: AM5</span></li>\r\n</ul>', 'CPU', 499);
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(39, 8, 6, 8, '2022-12-24 11:47:52', 'ntel Core I7 12700F 12th Gen. Processor - Alder Lake CPU - Stock Cooler Included', '', 'C-3_1.webp', 'C-3_2.jpg', '', 335, 'CPU-3', '<ul class=\"list_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">12 Cores &amp; 20 Threads</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">3.6 GHz P-Core Clock Speed</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">5 GHz Maximum Turbo Frequency</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">LGA 1700 Socket</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">25MB Cache Memory</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Dual-Channel DDR5-4800 Memory</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Integrated Intel UHD 770 Graphics</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Hybrid Core Architecture</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Unlocked for Overclocking</span></li>\r\n<li class=\"listItem_dkf_HqcGmV\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\" data-selenium=\"sellingPointsListItem\"><span style=\"box-sizing: border-box; font-size: 14pt;\">12th Generation (Alder Lake)</span></li>\r\n</ul>', 'CPU', 299),
(40, 10, 6, 13, '2022-12-24 11:51:53', 'HIKVISION U1 16GB DDR4 2666MHz Desktop Memory | HKED4161DAB1D0ZA1/16G', '', 'R-1.jpg', '', '', 38, 'RAM-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\">Brand: HIKVISION</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\">Capacity: 16GB</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\">Speed: 2666MHz</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\">RAM: DDR4</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\">Type: For Desktop</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\">MPN: HKED4161DAB1D0ZA1/16G</span></li>\r\n</ul>', 'RAM', 32),
(41, 10, 6, 12, '2022-12-24 11:53:50', 'Kingston 32GB DDR5 5600 Fury Beast RGB Memory | KF556C40BBA-32', '', 'R-2_1.jpg', 'R-2_2.jpg', 'R-2_3.jpg', 159, 'RAM-2', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Enhanced RGB lighting with new heat spreader design</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Patented Kingston FURY Infrared Sync Technology</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Intel XMP 3.0-Ready and Certified</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Improved stability for overclocking</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Plug N Play at 4800MT/s</span></li>\r\n</ul>', 'RAM', 139),
(42, 10, 6, 12, '2022-12-24 11:56:25', 'Kingston Fury Beast 16GB 3200 Desktop RAM | KF432C16BB-16', '', 'R-3_1.jpg', 'R-3_2.jpg', 'R-3_3.jpg', 51, 'RAM-3', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Low-profile heat spreader design</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Cost-efficient, high-performance DDR4 upgrade</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Intel XMP-ready</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Ready for AMD Ryzen</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Plug N Play functionality at 2666MHz</span></li>\r\n</ul>', 'RAM', 41),
(43, 11, 6, 14, '2022-12-24 12:02:15', 'GamingMaster Power Supply 600W Real 80PLUS Bronze 14CM Green Fan | GM-600W-80', '', 'PS-1.jpg', '', '', 59, 'PS-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">600W Real</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">80PLUS Bronze</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">14CM Green Fan</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Connectors: 24Pin,2*CPU 8P(4+4) ,2*PCIe 8P(6+2) ,6*SATA,2*IDE</li>\r\n</ul>', 'POWER SUPPLY', 49),
(44, 11, 6, 14, '2022-12-24 12:03:59', 'GamingMaster Power Supply 200W Real, 12CM Fan | GM-200W', '', 'PS-2.jpg', '', '', 13, 'PS-2', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">200W Real</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">12cm Fan</li>\r\n</ul>', 'POWER SUPPLY', 11),
(45, 11, 6, 14, '2022-12-24 12:05:42', 'GamingMaster Power Supply 500W Real 80PLUS Bronze | GM-500W-80', '', 'PS-3.jpg', '', '', 48, 'PS-3', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">500W Real</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">80PLUS Bronze</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Connectors: 24Pin,1*CPU 8P(4+4) ,2*PCIe 8P(6+2) ,4*SATA,2*IDE</li>\r\n</ul>', 'POWER SUPPLY', 42),
(46, 13, 6, 15, '2022-12-24 12:10:07', 'NZXT Case H510 Mid-Tower Matte White with Tempered Glass | CA-H510B-W1', '', 'CASE_1_2.jpg', 'CASE-1_1.jpg', 'CASE-1_2.jpg', 82, 'CASE-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Cable management bar and modern design with uninterrupted tempered-glass side panel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Supported front panel connectors: USB 3.2 Gen2-compatible USB-C connector</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Pre-installed channels and straps for Cable routing.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Two Aer F120mm fans and removable filter on PSU intake</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Include removable mounting designed for radiators up to 280mm</li>\r\n</ul>', 'CASE', 75),
(47, 13, 6, 15, '2022-12-24 12:12:25', 'NZXT Case Phantom 820 Matte Black + Tower Case | CA-PH820-M1', '', 'CASE-2_1.jpg', 'CASE-2_2.jpg', 'CASE_2-3.jpg', 239, 'CASE-2', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">The NZXT Phantom 820 Full-Tower Case can fit: extended-ATX, XL-ATX, ATX, micro-ATX, and mini-ITX motherboards.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box;\">The case is designed to support up to four 5.25\" and six 3.5\" drives inside its bays.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Up to 13.1\" long graphics cards can be installed, or you can detach a drive cage to make room for larger cards.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box;\">Cooling components: 1*140mm fan, 3*200mm fans that provide high airflow while remainin</span><span style=\"box-sizing: border-box;\">g quiet.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box;\">It Comes with 4-channel digital fan controller to control the cooling performance of the fans.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box;\">Adjustable interior pivot 120/140mm fan slot is added to hold additional fans as well as liquid cooling solutions.</span></li>\r\n</ul>', 'CASE', 219),
(48, 13, 6, 15, '2022-12-24 12:14:34', 'NZXT Case H710i Premium ATX Mid-Tower Matte Black with Lighting and Fan Control | CA-H710I-B1', '', 'CASE-3_1.jpg', 'CASE-3_2.jpg', 'CASE-3_3.jpg', 189, 'CASE-3', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Faster microprocessor with two RGB LED strips</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Channels 2*RGB lighting channels, 3*fan channels (for voltage regulated/PWM fans)</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Connectors Compatibility: USB 3.1 Gen 2-compatible USB-C connector</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">&nbsp;cable bar for easy managment</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Modern Case design with uninterrupted tempered-glass side panel to show stunning RGB builds</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Pre-installed channels and straps to make wiring easier</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Includes Four fans for optimal internal airflow</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Removable front panel and PSU intake filters.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Includes a reversible, removeable, top-mounted bracket designed for radiators up to 360mm</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Mounting bracket to enable installing any GPU vertically</li>\r\n</ul>', 'CASE', 169),
(49, 12, 6, 6, '2022-12-24 12:17:26', 'Lenovo ThinkVision Monitor T34w-20 34\' | 61F3GAT1EU', '', 'M-1_1.jpg', 'M-1_2.jpg', 'M-1_3.webp', 484, 'MONITOR-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Display Size: 34\"<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Panel: VA<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Aspect Ratio: 21:9<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Resolution: 3440x1440<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Response Time: 4 ms (Extreme mode) / 6 ms (Typical mode) / 17 ms (Off mode)<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Refresh Rate: 60 Hz<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Brightness: 350 nits<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Contrast Ratio: 3000:1<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Color Gamut 99% sRGB<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Video Connector: 1x HDMI 2.0, 1x DP 1.2, 1x USB-C 3.2 Gen 1 (DP 1.2 Alt Mode)<br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">USB Port: 4x USB 3.1 Gen 1 (1x BC)</span></li>\r\n</ul>', 'MONITOR', 429),
(50, 12, 6, 5, '2022-12-24 12:19:33', 'ACER Nitro VG252Q-Xbmiipx 24.5\" Widescreen LCD Monitor | VG252Q Xbmiipx', '', 'M-2_1.jpg', 'M-2_2.jpg', 'M-2_3.jpg', 295, 'MONITOR-2', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">24.5&rdquo; 1920x1080 IPS Display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Nvidia Gsync Compatible Technology</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Up to 0.5ms and 240Hz Refresh Rate</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">VESA DisplayHDR 400</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">HDMIx2, DisplayPort, Speaker</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">22 x 16.6 x 9.5</li>\r\n</ul>', 'MONITOR', 279),
(51, 12, 6, 3, '2022-12-24 12:22:19', 'Samsung 49’’ Odyssey Neo G9 Double 2K LED Curved Gaming Monitor | LS49AG950NMXZN', '', 'M-3_1.webp', 'M-3_2.webp', 'M-3_3.webp', 1390, 'MONITOR-3', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Size: 49\"</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Refresh Rate: 240 Hz</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Resolution: 5,120 x 1,440</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Response Time: 1 (MPRT) ms</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: 12pt;\">Ports: 2*HDMI, 2*USB-C, 1*display port</span></li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">&nbsp;</p>', 'MONITOR', 1199),
(52, 9, 6, 10, '2022-12-24 12:24:54', 'MSI SPATIUM M371 500GB NVMe M.2 | M371', '', 'S-1_1.webp', 'S-1_2.jpg', '', 37, 'STORAGE-1', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box;\">Capacity: 500GB</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box;\">Form&nbsp;<span class=\"nobr ib\" style=\"box-sizing: border-box;\">factor: M.2</span></span></li>\r\n</ul>', 'NVME', 31),
(53, 9, 6, 12, '2022-12-24 12:27:20', 'Kingston SSD 240GB A400 SATA 3 2.5\" Internal SSD SA400S37/240G', '', 'S-2-3.jpg', 'S-2-2.jpg', 'S-2-1.jpg', 24, 'STORAGE-2', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Fast start up, loading and file transfers</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">More reliable and durable than a hard drive</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Multiple capacities with space for applications or a hard drive replacement</li>\r\n</ul>', 'SSD', 17),
(54, 9, 6, 12, '2022-12-24 12:29:12', 'Kingston SSD 480GB A400 Sata 3 480GB 2.5\" Internal SSD SA400S37/480G', '', 'S-3-1.jpg', 'S-3-2.jpg', 'S-3-3.jpg', 33, 'STORAGE-3', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Fast start up, loading and file transfers. A400 has a 7 millimeter form factor to fit in a wider array of systems. It&rsquo;s ideal for slimmer notebooks and in systems with limited available space</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">More reliable and durable than a hard drive</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Multiple capacities with space for applications or a hard drive replacement</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Capacity: 480GB, Interface: SATA Rev. 3.0 (6Gb/s) with backwards compatibility to SATA Rev. 2.0. 480GB to 500MB/s Read and 450MB/s Write</li>\r\n</ul>', 'SSD', 27),
(55, 9, 6, 13, '2022-12-24 12:31:38', 'HIKVISION E100 1024GB 2.5\" Sata 6GB/S SSD | HS-SSD-E100/1024G - Buy 10 Get 1 Free', '', 'S-4-1.jpg', 'S-4-2.jpg', 'S-4-3.jpg', 79, 'STORAGE-4', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">High-Speed Transmission?Support M.2 interface and SATA III protocol,Read speed up to 550MB/s</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Super Stability?3D NAND offers the potential for higher capacity, performance, and stability</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Vibration Resistant Structure:Use the special material to protect the device</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Safety Performance?Free of mechanical structure, electronic chip control for better data safety<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box;\">Capacity:1TB -1024GB/3D TLC/SATA III 6 Gb/s SATA II 3 Gb/s Up to 560MB/s read speed, 500MB/s write speed\" -Total byte written:Up to 480 TB -Working Temperature: 0~ 70 &deg;C</span></span></li>\r\n</ul>', 'SSD', 41),
(56, 21, 6, 16, '2022-12-24 12:37:59', 'Cougar Air Cooler | Forza 50', '', 'F-1.webp', 'F-1-2.webp', 'F-1-3.webp', 46, 'FAN-1', '<p><span style=\"color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">As a CPU tower cooler for entry-level CPU, Forza 50 with its uniquely designed front cover, paired with COUGAR MHP120 high performance fan, provides users with perfect heat dissipation. Forza 50 is absolutely suitable for default setting users.</span></p>', 'COOLING ', 39),
(57, 21, 6, 10, '2022-12-24 12:37:32', 'MSI MAG CORELIQUID 360R RGB | 306-7ZW1C31-813', '', 'F-2-1.jpg', 'F-2-2.jpg', 'F-2-3.jpg', 179, 'FAN-2', '<p><span style=\"color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">MSI MAG Core Liquid 360R CPU Cooler, ARGB Lighting, 4200 RPM Pump Speed, 2000 RPM Fam Speed</span></p>', 'COOLING', 149),
(58, 21, 6, 15, '2022-12-24 12:39:35', 'NZXT Water Cooler Kraken M22 120mm Liquid Cooler w/infinity mirror effect | RL-KRM22-01', '', 'F-3-1.jpg', 'F-3-2.jpg', '', 99, 'FAN-3', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Fan</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Fan Size:&nbsp;<span style=\"box-sizing: border-box;\">120 mm</span><span style=\"box-sizing: border-box;\">&nbsp;(1 Fan Slot)</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Fan RPM:&nbsp;<span style=\"box-sizing: border-box;\">500 - 2,000 &plusmn; 300RPM</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box;\"><span class=\"font-bold text-left hyphens-auto mr-1\" lang=\"en-us\" style=\"box-sizing: border-box;\">Airflow:&nbsp;</span>18.28 - 73.11 CFM</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Fan Noise: 21 - 36 dB(A)</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Block</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Block Compatibility:&nbsp;<span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Intel LGA</span>&nbsp;<span style=\"box-sizing: border-box;\">2066, 2011-3, 2011, 1366, 1200, 1156, 1155, 1151, 1150, Core i9, Core i7, Core i5, Core i3, Pentium, Celeron</span>;&nbsp;<span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">AMD Socket</span>&nbsp;AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1 Ryzen, FX, Athlon X4, Athlon X2, A-Series APU, Phenom, Phenom II, Athlon, Athlon II, Sempron</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Radiator</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Radiator Size:&nbsp;<span style=\"box-sizing: border-box;\">152.00 x 120.00 x 32.00 mm</span></li>\r\n</ul>', 'COOLING', 83),
(59, 15, 6, 18, '2022-12-24 12:42:40', 'A4tech Bloody B760 RGB Gaming Keyboard | B760', '', 'K-1.jpg', '', '', 45, 'KEYBOARD-1', '<p><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Connector: USB</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Key Style: Optical switch</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Key Response: 0.2ms</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Anti-Ghosting Key: Full N-Key Rollover</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Gaming Keycaps: ABS Keycaps</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Hotkey: Multimedia Hotkey</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Backlit: Neon Glare System</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Backlit Brightness: Adjustable</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Space-Bar: Screw Enhanced Space-Bar</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Key Lifetime: Up to 100 M keystrokes</span><br style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\" /><span style=\"box-sizing: border-box; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Report Rate: 1000 Hz / 1ms</span></p>', 'GAMING KEYBOARD', 39),
(60, 15, 8, 17, '2022-12-24 12:52:04', 'Razer Ornata V3 Gaming Keyboard | RZ03-04460100-R3M1', '', 'R-1-1.webp', 'R-1-2.webp', '', 69, 'KEYBOARD-2', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Low-Profile Keys: With slimmer keycaps and shorter switches, enjoy natural hand positioning that allows for long hours of use with little strain</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Mecha-Membrane Switches: Fusing the snappy, clicky feedback of a mechanical switch with the familiar feel of a conventional keyboard, each keystroke is as satisfying as it is precise</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">UV-Coated Keycaps: More durable than regular keycaps, the UV coating ensures more fade-resistant legends and greater protection against wear and tear from frequent use</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Backlit Dedicated Media Keys: Configure them to pause, play, skip and adjust everything from brightness to volume for ultimate convenience</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Magnetic Soft-Touch Wrist Rest: Designed to seamlessly snap to the keyboard, the soft-touch wrist rest provides ample comfort and support for your wrists that&rsquo;s vital during long periods of use</span></li>\r\n</ul>', 'GFAMING KEYBOARD', 60),
(61, 15, 8, 17, '2022-12-24 12:52:14', 'Razer DeathStalker V2 Pro TKL Wireless Gaming Keyboard | RZ03-04370100-R3M1', '', 'R-2-1.webp', 'R-2-2.webp', '', 209, 'KEYBOARD-3', '<ul class=\"features text-grey list ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Razer&trade; Low-Profile Optical Switches (Linear)</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Top-Class Connectivity</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Ultra-Long 50-hour Battery Life</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">70 million keystroke lifespan</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Razer&trade; HyperSpeed Wireless Technology</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Razer&trade; HyperSpeed Multi-device Support</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Razer Synapse enabled</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Fully programmable keys with on-the-fly macro recording</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">N-key roll over</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Gaming mode option</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Detachable braided fiber Type-C cable</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">5052 Aluminum Alloy Top Case</li>\r\n</ul>', 'GAMING KEYBOARD', 180),
(62, 16, 8, 18, '2022-12-24 12:52:23', 'A4tech Bloody P80 Pro Infrared Micro Switch Animation Mouse | P80', '', 'M-1.jpg', 'M-1-2.webp', '', 27, 'MOUSE-1', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Features</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Wireless Control No</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Bluetooth &nbsp;No</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Number of Buttons<span style=\"box-sizing: border-box;\">&nbsp;</span>8</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Properties</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Handedness<span style=\"box-sizing: border-box;\">&nbsp;</span>Right Handed</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Color<span style=\"box-sizing: border-box;\">&nbsp;</span>Black</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Backlight<span style=\"box-sizing: border-box;\">&nbsp;</span>RGB</li>\r\n</ul>', 'MOUSE', 22),
(63, 16, 8, 17, '2022-12-24 12:51:49', 'Razer Basilisk Ultimate Wireless Gaming Mouse With Charging Dock | RZ01-03170100-R3U1', '', 'M-2-1.jpg', 'M-2-2.jpg', 'M-2-3.jpg', 161, 'MOUSE-2', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">25% Faster Than Competing Wireless Mice: Razer HyperSpeed wireless technology brings together extreme low-latency and interference reduction for true wireless freedom</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">3x Quicker Than Traditional Mechanical Switches: Razer Optical mouse switches uses light beam-based actuation, registering button presses at the speed of light</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Included Customizable Chroma Lighting &amp; RGB Mouse Charging Dock: Features 16.8 million color combinations w, included preset profiles; provides 5 hours of wireless playtime within 10 minutes of charging</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">11 Programmable Buttons: Allows for reconfiguration and assignment of complex macro functions through Razer Synapse 3</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Up to 100 Hour Battery Life: An all-new, hyper-efficient sensor and wireless technology allows for extended gaming</span></li>\r\n</ul>', 'GAMING MOUSE', 139),
(64, 16, 8, 17, '2022-12-24 12:55:16', 'Razer Basilisk Gaming Mouse | RZ01-02330100-R3G1', '', 'M-3-1.jpg', 'M-3-2.jpg', '', 67, 'MOUSE-3', '<ul class=\"features text-grey list\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">True 16,000 DPI 5g Optical Sensor</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Customizable Scroll Wheel Resistance</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Removable DPI Clutch</li>\r\n</ul>', 'GAMING MOUSE', 50),
(65, 14, 8, 18, '2022-12-24 12:57:13', 'A4tech Bloody G528 RGB Gaming Headset | G528', '', 'H-1-1.jpg', 'H-1-2.jpg', '', 29, 'HEADSET-1', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box;\">Headset</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box;\">Speaker Unit: 50mm with Neodymium Magnet</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box;\">Frequency Response: 20 Hz &ndash; 20 KHz</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box;\">Sensitivity: 105dB</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box;\">Impedance: 16 ohm</span><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box;\">Neon Effect: RGB Flowing Lights</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Microphone<br style=\"box-sizing: border-box;\" />Frequency Response: 100 Hz-10 KHz<br style=\"box-sizing: border-box;\" />Sensitivity: &ndash; 33 dB</p>', 'HEADSET', 23),
(66, 14, 8, 17, '2022-12-24 13:00:21', 'Razer Barracuda X (2022) - Wireless Multi-Platform Gaming and Mobile Headset | RZ04-04430100-R3M1', '', 'H-2-1.jpg', 'H-2-2.jpg', 'H-2-3.jpg', 96, 'HEADSET-2', '<ul class=\"features text-grey list ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Razer&trade; SmartSwitch Dual Wireless</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">250g Ergonomic Design</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Razer&trade; TriForce 40mm Drivers</li>\r\n</ul>', 'HEADSET', 79),
(67, 14, 8, 17, '2022-12-24 13:02:01', 'Razer Kraken V3: Wired USB Gaming Headset with Razer Chroma RGB | RZ04-03770200-R3M1', '', 'H-3-1.jpg', 'H-3-2.jpg', 'H-3-3.jpg', 88, 'HEADSET-1', '<ul class=\"features text-grey list ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Razer TriForce Titanium 50mm Drivers</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">THX Spatial Audio</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Powered by Razer Chroma RGB</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">TECH SPECS</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Frequency Response:</span>&nbsp;<span style=\"box-sizing: border-box;\">20 Hz &ndash; 20 kHz</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Impedance:</span>&nbsp;<span style=\"box-sizing: border-box;\">32 ? (1 kHz)</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Sensitivity:</span>&nbsp;<span style=\"box-sizing: border-box;\">96 dB (1 kHz)</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Driver Size - Diameters (mm):</span>&nbsp;50 mm</li>\r\n</ul>', 'HEADSET', 76),
(68, 22, 8, 17, '2022-12-24 13:04:29', 'Razer Seiren Mini USB Condenser Microphone - Mercury White | RZ19-03450300-R3M1', '', 'MC-1.jpg', '', '', 45, 'MICRO-1', '<ul class=\"features text-grey list ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Ultra-precise supercardioid pickup pattern</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Professional Recording Quality</li>\r\n<li class=\"ng-star-inserted\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Ultra-compact build</li>\r\n</ul>', 'MICROPHONE', 39),
(69, 22, 8, 17, '2022-12-24 13:05:53', 'Razer Seiren X USB Digital Microphone and Headphone Amplifier | RZ19-02290100-R3M1', '', 'MC-2.jpg', '', '', 77, 'MICRO-2', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">Designed and tested by top Twitch streamers, the Razer Seir?n X is your key to getting heard in the mightiest way possible. Backed by microphone technology, it&rsquo;s the first step to taking your live streaming to new broadcasting heights.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">The Razer Seir?n X is the microphone designed specially to elevate the quality of streams. The microphone strategically filters unwanted background noise and features a built-in shock mount to dampen vibrations. To ensure it fits your gaming setup perfectly and professionally, it&rsquo;s constructed to be sleek and non-obstructive, allowing your audience to see more of you. It&rsquo;s the microphone needed to propel your streaming journey to greater heights.</p>', 'MICROPHONE', 65),
(70, 7, 6, 10, '2022-12-24 13:10:27', 'MSI GeForce RTX 4080 16GB Ventus 3X OC Graphic Card | 912-V511-013', '', 'G-1-1.webp', 'G-1-2.webp', 'G-1-3.webp', 1412, 'GRAPHIC CARD-1', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">The NVIDIA<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>GeForce RTX&trade; 4080 delivers the ultra performance and features that enthusiast gamers and creators demand. Bring your games and creative projects to life with ray tracing and AI-powered graphics. It&rsquo;s powered by the ultra-efficient NVIDIA Ada Lovelace architecture and up to 16GB of superfast G6X memory.</p>\r\n<h4 style=\"box-sizing: border-box; margin: 2.28571rem 0px 0.78571rem; padding: 0px; color: #282828; font-family: Karla, Arial, Helvetica, sans-serif; line-height: 1.25; font-size: 16px;\">Boost Clock / Memory Speed</h4>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Extreme Performance: 2550 MHz (MSI Center)<br style=\"box-sizing: border-box;\" />Boost: 2535 MHz<br style=\"box-sizing: border-box;\" />22.4 Gbps</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">16GB GDDR6X</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">DisplayPort x 3 (v1.4a)<br style=\"box-sizing: border-box;\" />HDMI&trade; x 1 (Supports 4K@120Hz HDR, 8K@60Hz HDR, and Variable Refresh Rate as specified in HDMI 2.1a)</li>\r\n</ul>', 'VIDEO GARD', 1312);
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(71, 7, 6, 19, '2022-12-24 13:19:58', 'ASUS NVIDIA GeForce RTX 3090Ti TUF Gaming Overclocked Triple Fan 24GB GDDR6X PCIe 4.0 Graphics Card | 90YV0HC1-M0AA00', '', 'G-2-1.jpg', 'G-2-2.jpg', 'G-2-3.jpg', 1599, 'GRAPHIC CARD-2', '<h2 style=\"box-sizing: border-box; margin: 2.28571rem 0px 0.78571rem; padding: 0px; color: #282828; font-family: Karla, Arial, Helvetica, sans-serif; line-height: 1.25; font-size: 20px;\">ASUS NVIDIA GeForce RTX 3090Ti TUF Gaming Overclocked Triple Fan 24GB GDDR6X PCIe 4.0 Graphics Card | 90YV0HC1-M0AA00</h2>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">NVIDIA Ampere Streaming Multiprocessors:<span style=\"box-sizing: border-box;\">&nbsp;</span></span>The all-new Ampere SM brings 2X the FP32 throughput and improved power efficiency.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">2nd Generation RT Cores:<span style=\"box-sizing: border-box;\">&nbsp;</span></span>Experience 2X the throughput of 1st gen RT Cores, plus concurrent RT and shading for a whole new level of ray-tracing performance.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">3rd Generation Tensor Cores:</span><span style=\"box-sizing: border-box;\">&nbsp;</span>Get up to 2X the throughput with structural sparsity and advanced AI algorithms such as DLSS. These cores deliver a massive boost in game performance and all-new AI capabilities.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">G6X Memory:</span><span style=\"box-sizing: border-box;\">&nbsp;</span>This is the world&rsquo;s fastest graphics memory on the GeForce RTX 3090 Ti.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">8K HDR Gaming GPU, Powered by AI:</span><span style=\"box-sizing: border-box;\">&nbsp;</span>The GeForce RTX 3090 Ti lets you play, capture, and watch your games in brilliant 8K HDR. It features DLSS 8K gaming, GeForce Experience support for 8K HDR game capture, and AV1 decode for efficient playback of 8K HDR streamed video.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">OC edition:</span><span style=\"box-sizing: border-box;\">&nbsp;</span>Boost clock 1950 MHz (OC mode)/ 1920 MHz (Gaming mode)</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Axial-tech Fan Design</span><span style=\"box-sizing: border-box;\">&nbsp;</span>has been newly tuned with a reversed central fan direction for less turbulence.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Dual Ball Fan Bearings</span><span style=\"box-sizing: border-box;\">&nbsp;</span>can last up to twice as long as sleeve bearing designs.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">Military-grade Capacitors<span style=\"box-sizing: border-box;\">&nbsp;</span></span>and other TUF components enhance durability and performance.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-size: large;\"><span style=\"box-sizing: border-box; font-weight: bold; line-height: inherit;\">GPU Tweak II</span><span style=\"box-sizing: border-box;\">&nbsp;</span>provides intuitive performance tweaking, thermal controls, and system monitoring.</span></li>\r\n</ul>', 'VIDEO CARD', 1379),
(72, 7, 6, 19, '2022-12-24 13:23:52', 'MSI GeForce RTX 4080 16GB Gaming X Trio Graphic Card | 912-V511-005', '', 'G-3-1.jpg', 'G-3-2.webp', 'G-3-3.webp', 1442, 'GRAPHIC CARD-3', '<p style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">The NVIDIA<span style=\"box-sizing: border-box; font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">&reg;</span><span style=\"box-sizing: border-box;\">&nbsp;</span>GeForce RTX&trade; 4080 delivers the ultra performance and features that enthusiast gamers and creators demand. Bring your games and creative projects to life with ray tracing and AI-powered graphics. It&rsquo;s powered by the ultra-efficient NVIDIA Ada Lovelace architecture and up to 16GB of superfast G6X memory.</p>\r\n<h4 style=\"box-sizing: border-box; margin: 2.28571rem 0px 0.78571rem; padding: 0px; color: #282828; font-family: Karla, Arial, Helvetica, sans-serif; line-height: 1.25; font-size: 16px;\">Boost Clock / Memory Speed</h4>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">2595 MHz / 22.4 Gbps</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">16GB GDDR6X</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">DisplayPort x 3 (v1.4a)<br style=\"box-sizing: border-box;\" />HDMI&trade; x 1 (Supports 4K@120Hz HDR, 8K@60Hz HDR, and Variable Refresh Rate as specified in HDMI 2.1a)</li>\r\n</ul>', 'VIDEO CARD', 1289),
(73, 12, 6, 5, '2022-12-29 16:41:53', 'ACER Nitro VG270-bmipX 27\" Widescreen LCD Monitor | VG270-bmipX', '', 'M-4-1.png', 'M-4-2.png', 'M-4-3.png', 195, 'Monitor-4', '<ul style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Screen: 27\" Full HD (1920 x 1080) 75 Hz</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Panel Technology: IPS (178&deg;x178&deg;) FreeSync</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Inputs: DisplayPort, HDMI, VGA</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Response Time: 1 ms</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Brightness: 250 Nit</li>\r\n</ul>', 'Gaming Monitor', 169),
(74, 9, 6, 13, '2022-12-29 16:50:05', 'HIKVISION E3000 256GB Internal NVMe PCIe M.2 SSD | E3000 - Buy 10 Get 1 Free', '', 'S-5-1.jpg', 'S-5-2.jpg', 'S-5-1.jpg', 33, 'Storage-5', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 1.5rem; padding: 0px; list-style-position: inside; color: #505050; font-family: Karla, Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">?High R/W Speed PCIe interface?:Hikvision E3000 Internal Solid State Drive Max. read speed up to 3500 MB/s.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">?3D NAND Technology and NVMe Standard?: 3D NAND technology helps to develop higher capacity, performance, and stability. PCIe Gen 3.0 x4, NVMe Standard Revision 1.3, Interface rates support down compatibility.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">?Anti-shock and anti-fall?: E3000 SSD is designed by No mechanical structure, using electronic chip control, data more secure.</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">?Smart firmware?: Through the SSD management tool, support dynamic SLC opening and closing, support OP adjustable, to meet the needs of multiple scenarios.</span></li>\r\n</ul>', 'NVME', 22);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(6, 'MOTHERBOARD', 'yes', ''),
(7, 'GPU', 'yes', ''),
(8, ' CPU ', 'yes', ''),
(9, ' STORAGE ', 'yes', ''),
(10, ' RAM ', 'yes', ''),
(11, ' POWER SUPPLY ', 'yes', ''),
(12, 'MONITOR', 'yes', ''),
(13, ' CASE ', 'yes', ''),
(14, ' HEADSET ', 'yes', ''),
(15, ' KEYBOARD ', 'yes', ''),
(16, ' MOUSE ', 'yes', ''),
(18, ' BUSINESS LAPTOPS ', 'yes', ''),
(19, ' GAMING LAPTOPS ', 'yes', ''),
(20, ' STUDENT LAPTOP ', 'yes', ''),
(21, ' FANS AND COOLING ', 'yes', ''),
(22, ' MICROPHONE ', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(15, '1', 'CR0223.JPG', 'http://localhost/Tech-Shop/details.php?pro_id=74'),
(16, '2', 'Inkedc000__45702.png', 'http://localhost/Tech-Shop/details.php?pro_id=73'),
(18, '4', 'Inkedprice_match__95960.jpg', 'http://localhost/Tech-Shop/details.php?pro_id=71');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(9, 'Privacy Policy', 'link_1', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 10.0pt; line-height: 107%;\">. This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 10.0pt; line-height: 107%;\">We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy.</span></p>'),
(10, 'Promo & Regulations', 'link_2', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 8.0pt; line-height: 107%;\">The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 8.0pt; line-height: 107%;\">Comply with a legal obligation</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 8.0pt; line-height: 107%;\">Protect and defend the rights or property of the Company</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 8.0pt; line-height: 107%;\">Prevent or investigate possible wrongdoing in connection with the Service</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 8.0pt; line-height: 107%;\">Protect the personal safety of Users of the Service or the public</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 8.0pt; line-height: 107%;\">Protect against legal liability</span></p>'),
(11, 'Return and Refund Condition Policy', 'link_3', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 10.0pt; line-height: 107%;\">Conditions for Returns</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 10.0pt; line-height: 107%;\">In order for the Goods to be eligible for a return, please make sure that:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 10.0pt; line-height: 107%;\">The Goods were purchased in the last 3 days</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 10.0pt; line-height: 107%;\">The Goods are in the original packaging, new, and unopened.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 10.0pt; line-height: 107%;\">We reserve the right to refuse returns of any merchandise that does not meet the above return conditions in our sole discretion.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-size: 10.0pt; line-height: 107%;\">&nbsp;</span><span style=\"font-size: 10.0pt; line-height: 107%;\">Returning Goods</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in;\"><span style=\"font-family: Calibri, sans-serif; font-size: 10pt;\">You are responsible for the cost and risk of returning the Goods to Us</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL,
  `test_title` text NOT NULL,
  `test_top` text NOT NULL,
  `test_image` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `test_title`, `test_top`, `test_image`) VALUES
(1, 'com acc', 'top', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
