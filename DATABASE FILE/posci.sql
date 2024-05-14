-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 07:28 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posci`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_desc`, `date`) VALUES
('CL02', 'Clothing - Men', 'Clothings for men only', '2021-05-31 10:00:33'),
('CW58', 'Clothing - Women', 'Clothing for Women only', '2021-05-31 13:11:53'),
('KAT1', 'Computers', 'Laptops and Computers', '2016-05-22 16:18:05'),
('LAMP', 'Console', 'Gaming Consoles', '2016-05-25 13:27:13'),
('SMPH', 'Smart Phones', 'Smart Phones for all brands', '2021-05-31 05:29:19'),
('TV', 'Smart TV', 'Smart TV of all brands', '2016-05-25 13:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `customer_phone`, `customer_address`, `date`) VALUES
('CUST0001', 'Elizabeth Akers', '7410002633', '4809  Mesa Drive', '2016-05-22 08:04:24'),
('CUST0002', 'Benedict Sauls', '7102450001', '2041  Wildwood Street', '2016-05-22 08:22:55'),
('CUST0003', 'Emily Myers', '7021456969', '871  Mandan Road', '2021-05-31 09:21:35'),
('CUST0004', 'Thomas Edward', '7036464680', '4101  Sarah Drive', '2021-05-31 09:37:31'),
('CUST0005', 'Eloise Gilliam', '7014741400', '3358  Hillcrest Drive', '2021-05-31 09:37:56'),
('CUST0006', 'Benjamin F Phillip', '7023565680', '3404  Carter Street', '2021-05-31 09:38:19'),
('CUST0007', 'Liam Moore', '7901250001', '316  Meadowview Drive', '2021-05-31 09:41:44'),
('CUST0008', 'Michael E Dorsey', '7031456550', '3758  Turkey Pen Lane', '2021-05-31 09:42:08'),
('CUST0009', 'Margaret Pfiefer', '7373569690', '15  Broadway Street', '2021-05-31 09:42:31'),
('CUST0010', 'Martin Walczak', '7103654768', '4569  Sugar Camp Road', '2021-05-31 09:43:11'),
('CUST0011', 'Katherine Green', '7023698540', '3681  Fleming Street', '2021-05-31 09:43:32'),
('CUST0012', 'Anthony Farrell', '7014741450', '1445  Bridge Street', '2021-05-31 09:44:12'),
('CUST0013', 'John Stuart', '4570002147', '144  Owagner Lane', '2021-05-31 09:44:34'),
('CUST0014', 'Franklin Morris', '7854745444', '1305  Fulton Street', '2021-05-31 09:44:57'),
('CUST0015', 'Esther Keene', '7021245855', '2419  Woodridge Lane', '2021-05-31 09:45:49'),
('CUST0016', 'Samuel Julius', '7036985421', '2290  Clarence Court', '2021-05-31 09:46:05'),
('CUST0017', 'Andrea Hernandez', '7034786540', '4717  Swick Hill Street', '2021-05-31 09:46:34'),
('CUST0018', 'Elaine Nelson', '7016969650', '1061 Black Stallion Road', '2021-05-31 13:10:36'),
('CUST0019', 'Jay Deen', '7026000021', '2685  Meadow View Drive', '2021-05-31 13:31:05'),
('CUST0020', 'Charles Thompson', '7014200010', '3628  Radio Park Drive', '2021-05-31 13:32:06'),
('CUST0021', 'William J Beck', '7350002140', '4665  Lunetta Street', '2021-05-31 13:34:27'),
('CUST0022', 'Philip Gheek', '7000024500', '2091  Trainer Avenue', '2021-05-31 13:35:38'),
('CUST0023', 'Juan J Keyes', '1457000010', '3287  Grove Avenue', '2021-05-31 13:36:37'),
('CUST0024', 'Dale C Garcia', '8012224570', '1989  Grasselli Street', '2021-05-31 13:36:57'),
('CUST0025', 'Barbara Richmond', '4545754210', '3170  Andell Road', '2021-05-31 13:38:12'),
('CUST0026', 'Craig Cervantes', '4012586960', '1231  Gregory Lane', '2021-05-31 13:38:31'),
('CUST0027', 'Terra Martin', '2457000026', 'Terra C Martin', '2021-05-31 13:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT '0',
  `sale_price` int(20) NOT NULL,
  `sale_price_type1` int(20) NOT NULL,
  `sale_price_type2` int(20) NOT NULL,
  `sale_price_type3` int(20) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `category_id`, `product_desc`, `product_qty`, `sale_price`, `sale_price_type1`, `sale_price_type2`, `sale_price_type3`, `date`) VALUES
('AMB9', 'Apple MacBook Air (M1 2020)', 'KAT1', 'CPU: Apple M1, Graphics: Integrated 7-core /8-core GPU, RAM: 8GB – 16GB, Screen: 13.3-inch (diagonal) 2,560 x 1,600 LED-backlit display with IPS technology, Storage: 256GB – 2TB SSD, Dimensions: 11.97 x 8.36 x 0.63 inches (30.41 x 21.24 x 1.61cm; W x D x H)', 39, 1260, 1255, 1250, 1249, '2021-05-31 10:35:42'),
('AR79', 'Alienware Aurora Ryzen Edition R10', 'KAT1', 'CPU: Up to AMD Ryzen 9 5950X, Graphics: Up to NVIDIA GeForce RTX 3080, RAM: Up to 128GB 3200MHz DDR4, Storage: Up to 2TB SSD + 2TB HDD', 48, 2433, 2423, 2413, 2403, '2021-05-31 11:57:02'),
('BJ02', 'Plaid Denim Jacket', 'CL02', 'Turn-Down Collar, Safari Jacket, Style: Casual, Color-Block Design, Sustainable, Quick Dry, Breathable, Plain Dyed, Thickness: Regular, Pattern Type: Striped, Size up to 3XL', 191, 20, 19, 18, 17, '2021-05-31 10:05:02'),
('DPT7', 'Dell Precision 7920 Tower', 'KAT1', 'Dual-CPU monster for tasks that can leverage its server-grade hardware and require maximum reliability. Just be prepared for sticker shock if you go all-in like on our test model.', 16, 2219, 2205, 2200, 22198, '2016-05-29 14:26:41'),
('GP05', 'Google Pixel 5', 'SMPH', 'Dimensions: 144.7mm x 70.4mm x 8mm, OS: Android 11, Screen size: 6-inch, Resolution: 2340 x 1080, CPU: Snapdragon 765G, RAM: 8GB, Storage: 128GB, Battery: 4000mAh, Rear camera: 16MP + 12MP, Front camera: 8MP', 22, 719, 709, 689, 659, '2021-05-31 10:33:27'),
('HP60', 'HP Spectre x360 (2021)', 'KAT1', 'CPU: 11th-generation Intel Core i5 – i7, Graphics: Intel Iris Xe Graphics, RAM: 8GB – 16GB, Screen: 13.3\\\" FHD (1920 x 1080) IPS BrightView micro-edge WLED-backlit multitouch – 13.3\\\" diagonal 4K (3840 x 2160) UWVA BrightView micro-edge AMOLED multitouch, Storage: 256GB – 2TB SSD', 52, 1171, 1165, 1156, 1149, '2021-05-31 10:40:02'),
('IP12', 'iPhone 12 Pro Max', 'SMPH', 'Dimensions: 146.7mm x 71.5mm x 7.4 mm / 160.8mm x 78.1mm x 7.4mm, OS: iOS 14, Screen size: 6.1-inch / 6.7-inch, Resolution: 1170 x 2532 / 1284 x 2778, CPU: A14 Bionic, RAM: 6GB, Storage: 128GB/256GB/512GB, Rear camera: 12MP + 12MP + 12MP, Front camera: 12MP', 22, 1399, 1199, 1159, 1099, '2021-05-31 10:24:30'),
('LGC1', 'LG C1 OLED Series', 'TV', 'Screen size: 48-inch, 55-inch, 65-inch, 77-inch, Resolution: 4K, Panel type: OLED, Smart TV: webOS, HDR: HDR, HLG, Dolby Vision', 39, 2499, 2491, 2489, 2485, '2021-05-31 10:46:59'),
('MSS2', 'Microsoft Surface Studio 2', 'KAT1', 'Microsoft Surface Studio 2 is a beautiful, pricey all-in-one desktop for artists, content creators, and professionals wedded to pen input. It packs components peppier than the originals, and a downright stunning screen.', 11, 3695, 3685, 3680, 3678, '2016-05-26 16:00:13'),
('NS69', 'Nintendo Switch', 'LAMP', 'Dimensions: 4 x 9.5 x 5.4 inch(W x L x H) with Joy-Cons, GPU: 768MHz (docked)/307.2MHz (undocked) Nvidia custom Tegra SOC, RAM: 4 GB, Max Resolution: docked 720p, undocked 1080p, Optical Drive: None, Storage: 32GB (expandable), Portable battery life: approx 3 - 7 hours', 76, 313, 309, 305, 299, '2021-05-31 10:44:14'),
('OPP9', 'OnePlus 9 Pro', 'SMPH', 'Dimensions: 163.2 x 73.6 x 8.7mm, OS: Android 11, Screen size: 6.7-inch, Resolution: 1440 x 3216, CPU: Snapdragon 888, RAM: 8/12GB, Storage: 128/256GB, Battery: 4,500mAh, Rear camera: 48MP + 50MP + 8MP + 2MP, Front camera: 16MP', 39, 990, 950, 900, 880, '2021-05-31 10:27:18'),
('PS05', 'PlayStation 5', 'LAMP', 'CPU: AMD Zen 2-based CPU with 8 cores at 3.5GHz (variable frequency), GPU: 10.28 TFLOPs, 36 CUs at 2.23GHz (variable frequency), Memory bandwidth: 448GB/s, Internal storage: Custom 825GB SSD, Optical Drive: 4K UHD Blu-ray Drive (for standard edition)', 57, 1320, 1315, 1310, 1305, '2016-05-26 15:58:15'),
('QN95', 'Samsung QN95A Neo QLED', 'TV', 'Screen size: 75-inch, Resolution: 4K, Panel technology: Neo QLED, Smart TV: Tizen, HDR: HDR10, HLG, HDR10+', 40, 4299, 4199, 4099, 3899, '2021-05-31 10:49:29'),
('SALD', 'Sony A8H OLED', 'TV', 'Screen size: 55-inch, 65-inchResolution: 4K, Panel Type: OLED, Smart TV: Android TV, HDR: HDR10, HLG, Dolby Vision', 9, 1990, 1899, 1812, 1790, '2016-05-26 14:28:21'),
('SG21', 'Samsung Galaxy S21 Ultra', 'SMPH', 'Weight: 227g, Dimensions: 165.1 x 75.6 x 8.9 mm, OS: Android 11, Screen size: 6.8-inch, Resolution: 1440 x 3200, CPU: Snapdragon 888 / Exynos 2100, RAM: 12GB / 16GB, Storage: 128GB/256GB/512GB, Battery: 5,000mAh, Rear camera: 108MP + 10MP + 10MP + 12MP, Front camera: 40MP', 16, 1200, 1195, 1193, 1190, '2016-05-26 14:27:15'),
('SGN6', 'Samsung Galaxy Note 20 Ultra', 'SMPH', 'Dimensions: 164.8 x 77.2 x 8.1mm, OS: Android 10, Screen size: 6.9-inch, CPU: Exynos 990 / Snapdragon 865 Plus, RAM: 12GB, Storage: 128GB/256/512GB, Battery: 4,500mAh, Rear camera: 108MP/12MP + 12MP + 12MP, Front camera: 10MP', 18, 1239, 1179, 1149, 1049, '2021-05-31 10:29:01'),
('SJ20', 'Sweat Suit Jogger Sets', 'CL02', 'QUICK DRY, Breathable, Plus Size, Fashion Comfortable, Size up to 3XL, Type: Training & Jogging Wear, Age Group: Adults, Product Type: Street Wear', 767, 24, 23, 22, 21, '2021-05-31 10:08:48'),
('SQ80', 'Samsung Q80T QLED', 'TV', 'Screen Size: 75-inch, Resolution: 4K, Panel Type: QLED, Smart TV: Tizen, HDR: HDR10, HLG, HDR10+', 43, 2349, 2329, 2309, 2299, '2021-05-31 13:13:26'),
('TD02', 'Tie Dye T Shirts', 'CL02', 'Multi-Colored, 100% Cotton, O-Neck Collar, Tie-Dye Design, Drop Shoulder Design, Short Sleeves, Fabric Weight: 160 grams, Size up to 3XL', 57, 10, 9, 9, 8, '2021-05-31 10:01:27'),
('XPS7', 'Dell XPS 15 (2020)', 'KAT1', 'CPU: 10th-generation Intel Core i5 – i7, Graphics: Intel Iris Plus Graphics - Nvidia GeForce GTX 1650 Ti, RAM: 8GB – 64GB, Screen: 15.6\\\" FHD+ (1920 x 1200) IPS - UHD+ (3840 x 2400), Storage: 256GB – 1TB SSD', 48, 1699, 1679, 1659, 1649, '2021-05-31 10:38:04'),
('XSX9', 'Xbox Series X', 'LAMP', 'CPU: 8x Cores @ 3.8 GHz (3.6 GHz w/ SMT) Custom Zen 2 CPU, GPU: 12 TFLOPS, 52 CUs @ 1.825 GHz Custom RDNA 2 GPU, Die Size: 360.45 mm2, Process: 7nm Enhanced, Memory: 16 GB GDDR6 w/ 320b bus, Memory Bandwidth: 10GB @ 560 GB/s, 6GB @ 336 GB/s', 28, 519, 514, 509, 499, '2021-05-31 10:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_data`
--

CREATE TABLE `purchase_data` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Purchase Transaction, 0=Purchase Retur',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_data`
--

INSERT INTO `purchase_data` (`id`, `transaction_id`, `product_id`, `category_id`, `quantity`, `price_item`, `subtotal`, `type`, `date`) VALUES
(48, 'RETP1466610553', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-06-22 15:58:25'),
(49, 'RETP1466610553', 'PHIL001', 'LAMP', '1', '12000', '12000', 1, '2016-06-22 15:58:25'),
(54, 'RETP1466951903', 'TOS10', 'TV', '1', '750000', '750000', 1, '2016-06-26 14:38:23'),
(55, 'RETP1467027787', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-06-27 11:43:07'),
(56, 'RETP1466951256', 'TOS10', 'TV', '1', '750000', '750000', 1, '2016-06-30 08:56:09'),
(58, 'RETP1466951903', 'TOS10', 'TV', '1', '750000', '750000', 1, '2016-06-30 08:57:36'),
(59, 'RETP1467027787', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-06-30 08:58:02'),
(61, 'RETP1467277500', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-06-30 09:05:31'),
(62, 'RETP1467277695', 'SAM100', 'TV', '1', '6200000', '6200000', 1, '2016-06-30 09:08:15'),
(63, 'RETP1467277695', 'SAM100', 'TV', '1', '6200000', '6200000', 1, '2016-06-30 09:08:52'),
(64, 'RETP1467277877', 'SAM100', 'TV', '1', '6200000', '6200000', 1, '2016-06-30 09:11:17'),
(66, 'RETP1467277877', 'SAM100', 'TV', '1', '6200000', '6200000', 1, '2016-06-30 09:18:58'),
(70, 'RETP1474810256', 'SAM2100', 'KAT1', '1', '210000', '210000', 1, '2016-09-25 13:30:56'),
(71, 'RETP1474810256', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-09-25 13:30:56'),
(72, 'RETP1474810333', 'SAM2100', 'KAT1', '1', '210000', '210000', 1, '2016-09-25 13:32:13'),
(73, 'RETP1474810333', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-09-25 13:32:13'),
(74, 'RETP1474810385', 'SAM2100', 'KAT1', '1', '210000', '210000', 1, '2016-09-25 13:33:05'),
(75, 'RETP1474810385', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-09-25 13:33:05'),
(77, 'RETP1474810569', 'SAM2100', 'KAT1', '1', '210000', '210000', 1, '2016-09-25 13:37:47'),
(78, 'RETP1474810569', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-09-25 13:37:47'),
(79, 'RETP1474810256', 'SAM2100', 'KAT1', '1', '210000', '210000', 1, '2016-09-25 13:41:09'),
(80, 'RETP1474810256', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-09-25 13:41:09'),
(82, 'RETP1474811008', 'MAS10', 'KAT1', '1', '100000', '100000', 1, '2016-09-25 13:43:59'),
(84, 'TRCE100', 'MSS2', 'KAT1', '6', '3695', '22170', 1, '2021-05-31 13:03:31'),
(85, 'TRCE100', 'DPT7', 'KAT1', '8', '2219', '17752', 1, '2021-05-31 13:03:31'),
(86, 'TRCE690', 'SQ80', 'TV', '6', '940', '5640', 1, '2021-05-31 17:06:54'),
(87, 'RETP1622481028', 'DPT7', 'KAT1', '1', '2219', '2219', 1, '2021-05-31 17:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_retur`
--

CREATE TABLE `purchase_retur` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sales_retur_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_return` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `return_by` enum('1','0') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Retur by 1 = barang, 0 = uang',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_retur`
--

INSERT INTO `purchase_retur` (`id`, `sales_retur_id`, `total_price`, `total_item`, `is_return`, `return_by`, `date`) VALUES
('RETP1622481028', 'TRCE100', '2219', '1', '0', '1', '2021-05-31 13:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_transaction`
--

CREATE TABLE `purchase_transaction` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` int(20) NOT NULL,
  `total_item` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `supplier_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_transaction`
--

INSERT INTO `purchase_transaction` (`id`, `total_price`, `total_item`, `date`, `supplier_id`) VALUES
('TRCE100', 39922, 14, '2021-05-31 13:03:31', 'SUP002'),
('TRCE690', 5640, 6, '2021-05-31 17:06:54', 'SUP010');

-- --------------------------------------------------------

--
-- Table structure for table `sales_data`
--

CREATE TABLE `sales_data` (
  `id` int(11) NOT NULL,
  `sales_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Sales Transaction, 0=Sales Retur',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales_data`
--

INSERT INTO `sales_data` (`id`, `sales_id`, `product_id`, `category_id`, `quantity`, `price_item`, `subtotal`, `type`, `date`) VALUES
(9, 'OUT1464796294', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-06-01 15:51:50'),
(81, 'RETS1474810592', 'SAM2100', 'KAT1', '1', '210000', '210000', 1, '2016-09-25 13:36:35'),
(82, 'RETS1474810592', 'MAS10', 'KAT1', '1', '120000', '120000', 1, '2016-09-25 13:36:35'),
(84, 'OUT1622466842', 'SG21', 'SMPH', '1', '1200', '1200', 1, '2021-05-31 13:14:38'),
(85, 'OUT1622467272', 'DPT7', 'KAT1', '1', '2219', '2219', 1, '2021-05-31 13:21:29'),
(86, 'OUT1622472147', 'NS69', 'LAMP', '3', '309', '927', 1, '2021-05-31 14:42:52'),
(87, 'OUT1622472410', 'BJ02', 'CL02', '8', '19', '152', 1, '2021-05-31 14:47:11'),
(88, 'OUT1622472766', 'SALD', 'TV', '3', '1899', '5697', 1, '2021-05-31 14:53:07'),
(89, 'RETS1622472928', 'NS69', 'LAMP', '1', '309', '309', 1, '2021-05-31 14:55:36'),
(90, 'OUT1622476577', 'GP05', 'SMPH', '3', '719', '2157', 1, '2021-05-31 15:56:48'),
(91, 'OUT1622476825', 'XSX9', 'LAMP', '2', '519', '1038', 1, '2021-05-31 16:00:49'),
(92, 'OUT1622477105', 'SJ20', 'CL02', '4', '23', '92', 1, '2021-05-31 16:05:31'),
(93, 'OUT1622477105', 'TD02', 'CL02', '6', '10', '60', 1, '2021-05-31 16:05:31'),
(94, 'OUT1622477140', 'BJ02', 'CL02', '234', '18', '4212', 1, '2021-05-31 16:06:37'),
(95, 'OUT1622477202', 'SJ20', 'CL02', '1', '24', '24', 1, '2021-05-31 16:06:54'),
(96, 'OUT1622477318', 'QN95', 'TV', '2', '4199', '8398', 1, '2021-05-31 16:08:56'),
(97, 'OUT1622477417', 'SGN6', 'SMPH', '2', '1239', '2478', 1, '2021-05-31 16:10:40'),
(98, 'OUT1622480447', 'SQ80', 'TV', '5', '2299', '11495', 1, '2021-05-31 17:01:55'),
(99, 'OUT1622480447', 'SALD', 'TV', '4', '1812', '7248', 1, '2021-05-31 17:01:55'),
(100, 'OUT1622480447', 'PS05', 'LAMP', '7', '1310', '9170', 1, '2021-05-31 17:01:55'),
(101, 'OUT1622480604', 'SG21', 'SMPH', '6', '1193', '7158', 1, '2021-05-31 17:04:03'),
(102, 'OUT1622480604', 'IP12', 'SMPH', '4', '1399', '5596', 1, '2021-05-31 17:04:03'),
(103, 'OUT1622480676', 'SQ80', 'TV', '5', '2309', '11545', 1, '2021-05-31 17:04:51'),
(104, 'RETS1622480951', 'BJ02', 'CL02', '71', '18', '1278', 1, '2021-05-31 17:09:29'),
(105, 'OUT1622481388', 'BJ02', 'CL02', '72', '20', '1440', 1, '2021-05-31 17:16:56'),
(106, 'OUT1622481459', 'PS05', 'LAMP', '4', '1315', '5260', 1, '2021-05-31 17:18:36'),
(107, 'OUT1622481594', 'LGC1', 'TV', '3', '2491', '7473', 1, '2021-05-31 17:20:06'),
(108, 'OUT1622481666', 'LGC1', 'TV', '4', '2499', '9996', 1, '2021-05-31 17:21:19'),
(109, 'OUT1622481728', 'XSX9', 'LAMP', '6', '514', '3084', 1, '2021-05-31 17:22:24'),
(110, 'OUT1622481746', 'AR79', 'KAT1', '4', '2423', '9692', 1, '2021-05-31 17:22:44'),
(111, 'OUT1622481877', 'MSS2', 'KAT1', '3', '3695', '11085', 1, '2021-05-31 17:24:50'),
(112, 'OUT1622481902', 'DPT7', 'KAT1', '3', '2219', '6657', 1, '2021-05-31 17:25:14'),
(113, 'OUT1622481957', 'GP05', 'SMPH', '4', '719', '2876', 1, '2021-05-31 17:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `sales_retur`
--

CREATE TABLE `sales_retur` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sales_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_return` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales_retur`
--

INSERT INTO `sales_retur` (`id`, `sales_id`, `total_price`, `total_item`, `is_return`, `date`) VALUES
('RETS1622472928', 'OUT1622472147', '309', '1', '0', '2021-05-31 11:10:28'),
('RETS1622480951', 'OUT1622477140', '1278', '71', '0', '2021-05-31 13:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `sales_transaction`
--

CREATE TABLE `sales_transaction` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_cash` tinyint(1) NOT NULL,
  `total_price` int(100) NOT NULL,
  `total_item` int(100) NOT NULL,
  `pay_deadline_date` date DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales_transaction`
--

INSERT INTO `sales_transaction` (`id`, `customer_id`, `is_cash`, `total_price`, `total_item`, `pay_deadline_date`, `date`) VALUES
('OUT1622466842', 'CUST0003', 1, 1200, 1, '2021-05-31', '2021-05-31 13:14:38'),
('OUT1622467272', 'CUST0002', 0, 2219, 1, '2021-06-30', '2021-05-31 13:21:29'),
('OUT1622472147', 'CUST0004', 1, 927, 3, '2021-05-31', '2021-05-31 14:42:52'),
('OUT1622472410', 'CUST0006', 1, 152, 8, '2021-05-31', '2021-05-31 14:47:11'),
('OUT1622472766', 'CUST0016', 0, 5697, 3, '2021-06-30', '2021-05-31 14:53:07'),
('OUT1622476577', 'CUST0012', 1, 2157, 3, '2021-05-31', '2021-05-31 15:56:48'),
('OUT1622476825', 'CUST0005', 1, 1038, 2, '2021-05-31', '2021-05-31 16:00:49'),
('OUT1622477105', 'CUST0017', 1, 152, 10, '2021-05-31', '2021-05-31 16:05:31'),
('OUT1622477140', 'CUST0015', 0, 4212, 234, '2021-06-30', '2021-05-31 16:06:37'),
('OUT1622477202', 'CUST0008', 1, 24, 1, '2021-06-30', '2021-05-31 16:07:15'),
('OUT1622477318', 'CUST0009', 1, 8398, 2, '2021-05-31', '2021-05-31 16:08:56'),
('OUT1622477417', 'CUST0014', 0, 2478, 2, '2021-06-30', '2021-05-31 16:10:40'),
('OUT1622480447', 'CUST0018', 1, 27913, 16, '2021-05-31', '2021-05-31 17:01:54'),
('OUT1622480604', 'CUST0007', 1, 12754, 10, '2021-06-30', '2021-05-31 17:08:05'),
('OUT1622480676', 'CUST0013', 1, 11545, 5, '2021-05-31', '2021-05-31 17:04:51'),
('OUT1622481388', 'CUST0019', 0, 1440, 72, '2021-06-30', '2021-05-31 17:16:56'),
('OUT1622481459', 'CUST0020', 0, 5260, 4, '2021-06-30', '2021-05-31 17:18:35'),
('OUT1622481594', 'CUST0021', 0, 7473, 3, '2021-06-30', '2021-05-31 17:20:06'),
('OUT1622481666', 'CUST0022', 0, 9996, 4, '2021-06-30', '2021-05-31 17:21:19'),
('OUT1622481728', 'CUST0023', 0, 3084, 6, '2021-06-30', '2021-05-31 17:22:24'),
('OUT1622481746', 'CUST0024', 1, 9692, 4, '2021-05-31', '2021-05-31 17:22:44'),
('OUT1622481877', 'CUST0025', 0, 11085, 3, '2021-06-30', '2021-05-31 17:24:50'),
('OUT1622481902', 'CUST0026', 0, 6657, 3, '2021-06-30', '2021-05-31 17:25:14'),
('OUT1622481957', 'CUST0027', 0, 2876, 4, '2021-06-30', '2021-05-31 17:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_address` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `supplier_name`, `supplier_phone`, `supplier_address`, `date`) VALUES
('SUP001', 'Applied Electronics Ltd.', '0257000010', '3142  Copperhead Road', '2016-05-20 17:00:00'),
('SUP002', 'Eastygen Inc', '0364547001', '3651  Birch  Street', '2016-05-25 14:45:17'),
('SUP003', 'Deegee Electronics', '0547854410', '4717  Swick Hill Street', '2021-05-31 09:49:37'),
('SUP004', 'Rutronik WW', '3640001012', '4605  Hilltop Drive', '2021-05-31 09:50:19'),
('SUP005', 'Phoenix Electronics', '0258520002', '1902  Ross Street', '2021-05-31 09:52:30'),
('SUP006', 'Kingston Inc', '2450002459', '4188  Wilkinson Court', '2021-05-31 09:53:23'),
('SUP007', 'Marine Supplies', '0678940025', '2878  Reel Avenue', '2021-05-31 09:53:52'),
('SUP008', 'Rebound Suppliers', '5322934503', '63 Little Myers Street', '2021-05-31 09:54:18'),
('SUP009', 'Gateway Suppliers', '0770040357', '75  Marlborough Crescent', '2021-05-31 09:56:40'),
('SUP010', 'Genesis Inc.', '0245857840', '65 Old Edinburgh Road', '2021-05-31 13:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_profile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `photo_profile`, `password`) VALUES
(1, 'admin', 'admin@admin.com', 'http://localhost/posci/uploads/userav.png', '7A53BBFD92F938D20D04FB5614728BF9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `purchase_data`
--
ALTER TABLE `purchase_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_retur`
--
ALTER TABLE `purchase_retur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `purchase_transaction`
--
ALTER TABLE `purchase_transaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `sales_data`
--
ALTER TABLE `sales_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_retur`
--
ALTER TABLE `sales_retur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sales_transaction`
--
ALTER TABLE `sales_transaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_data`
--
ALTER TABLE `purchase_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `sales_data`
--
ALTER TABLE `sales_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
