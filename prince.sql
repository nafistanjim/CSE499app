-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2019 at 07:48 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prince`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(0, '1'),
(1, '2'),
(2, '3'),
(3, '4'),
(4, '5'),
(5, '6'),
(6, '7'),
(7, '8'),
(9, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(9, 'Basma', 'Binte Azmal', '09394566543'),
(11, 'A Walk in Customer', NULL, NULL),
(14, 'Shifa', 'Shahnj', '09781633451'),
(15, 'Jannatul', 'Fredaous', '09956288467'),
(16, 'Jannatin', 'Tajrin', '09891344576');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(1, 'Nafis', 'Tanjim', 'Male', 'nafis.tanjim@gmail.com', '09124033805', 1, '0000-00-00', 113),
(2, 'Indra', 'Roy', 'Male', 'indra.roy@yahoo.com', '09091245761', 2, '2019-01-28', 156),
(4, 'Monica', 'Zebin', 'Female', 'monic.zebin@gmail.com', '09123357105', 1, '2019-03-06', 158);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'Dhaka', 'Mymensingh'),
(112, 'Dhaka', 'Dhamrai'),
(113, 'Dhaka', 'Gazipur'),
(114, 'Dhaka', 'Gopalganj'),
(115, 'Dhaka', 'Faridpur'),
(116, 'Rangpur', 'Panchagar'),
(126, 'Rangpur', 'Binalbagan'),
(130, 'Rangpur', 'Thakurgaon'),
(131, 'Rangpur', 'Dinajpur'),
(132, 'Rangpur', 'Nilphamari'),
(133, 'Rajshahi', 'Shirajganj'),
(134, 'Rajshahi', 'Chapai Nawabganj'),
(135, 'Rajshahi', 'Bogra'),
(136, 'Rajshahi', 'Pabna'),
(137, 'Rajshahi', 'Nator'),
(138, 'Sylhet', 'Sylhet'),
(139, 'Sylhet', 'Tamabil'),
(140, 'Sylhet', 'Srimangal'),
(141, 'Sylhet', 'Sunamganj'),
(142, 'Sylhet', 'Habiganj'),
(143, 'Khulna', 'Magura'),
(144, 'Khulna', 'Meherpur'),
(145, 'Khulna', 'Bagerhat'),
(146, 'Khulna', 'Narail'),
(147, 'Khulna', 'Chuadanga'),
(148, 'Barishal', 'Bamna'),
(149, 'Barishal', 'Amtali'),
(150, 'Barishal', 'Taltali'),
(151, 'Barishal', 'Barguna'),
(152, 'Barishal', 'Patharghat'),
(153, 'Chittagong', 'Comilla'),
(154, 'Chittagong', 'Khagrachori'),
(155, 'Chittagong', 'Feni'),
(156, 'Chittagong', 'Noakhali'),
(157, 'Chittagong', 'Rangamti'),
(158, 'Dhaka', 'Manikganj');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Nafis', 'Tanjim', 113, 'PC@00', '09124033805'),
('Emman', 'Adventures', 116, 'emman@', '09123346576'),
('Bruce', 'Willis', 113, 'bruce@', NULL),
('Regine', 'Santos', 111, 'regine@', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES

(1, '20191001', 'Acifix', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(2, '20191002', 'Amdocal', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(3, '20191003', 'Adafil', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(4, '20191004', 'Amdocal Plus', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(5, '20191005', 'Aeronid', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(6, '20191006', 'Amdocal Plus', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(7, '20191007', ' Aerovil', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(8, '20191008', ' Amdopril', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(9, '20191009', ' Alendon', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(10, '20191010', 'Amdopril', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(11, '20191011', 'Alpatin', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(12, '20191012', 'Amdopril', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(13, '20191013', 'Alphin DS', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(14, '20191014', 'Amdova', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(15, '20191015', 'Antacid Max', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(16, '20191016', 'Angilock25', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(17, '20191017', 'Angilock50', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(18, '20191018', 'Apixa ', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(19, '20191019', 'Apresin', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(20, '20191020', 'Aristocal', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(21, '20191021', 'Aristocal D', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(22, '20191022', 'Aristocal M', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(23, '20191023', 'Aristoferon', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(24, '20191024', 'Aristofol Fe', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(25, '20191025', 'Aristoplex', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(26, '20191026', 'Aristovit B', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(27, '20191027', 'Aristovit M', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(28, '20191028', 'Aristovit X', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(29, '20191029', 'Arixon', 'Injection', 1, 1, 289, 1, 16, '2019-03-13'),
(30, '20191030', 'Abetis', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(31, '20191031', 'Arlin', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(32, '20191032', 'Aristocal', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(33, '20191033', 'AZ-500', 'Capsule', 1, 1, 289, 1, 16, '2019-03-13'),
(34, '20191034', 'Baloxa', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(35, '20191035', 'Barri', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(36, '20191036', 'Becoral D', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(37, '20191037', 'Becoral Dx', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(38, '20191038', 'Bemsivir', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(39, '20191039', 'Betapro', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(40, '20191040', 'Bexidal', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(41, '20191041', 'Bexihaler', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(42, '20191042', 'Bexipred', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(43, '20191043', 'Bexitrol F', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(44, '20191044', 'Bexovid', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(45, '20191045', 'Bextram Gold', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(46, '20191046', 'Bextram Kids', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(47, '20191047', 'Bextram Silver', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(48, '20191048', 'Bextram Teen hm', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(49, '20191049', 'Bextram Teen hr ', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(50, '20191050', 'Billi', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(51, '20191051', 'Billi Meltab', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(52, '20191052', 'Bizoran', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(53, '20191053', 'Buflex', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(54, '20191054', ' Calorate', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(55, '20191055', ' Calorate Kit', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(56, '20191056', ' Candoral', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(57, '20191057', ' Cardopril', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(58, '20191058', ' Carnitab', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(59, '20191059', ' Cephalen', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(60, '20191060', ' Cerivin', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(62, '20191061', ' Cesonide', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(63, '20191062', ' Chlormet', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(64, '20191063', ' Cinarex', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(65, '20191064', ' Cinarex D', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(66, '20191065', ' Citicol', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(67, '20191066', ' Carnovas', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(68, '20191067', ' Carnovas HZ', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(69, '20191068', ' Carocet', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(70, '20191069', ' Carofol Z', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(71, '20191070', ' Cefida', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(72, '20191071', ' Ceftoril', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(73, '20191072', ' Citicol', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(74, '20191073', ' Cleven', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(75, '20191074', ' Cloron0.5', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(76, '20191075', ' Cosmotrin', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(77, '20191076', ' Covishield', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(78, '20191077', ' Cox B', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(79, '20191078', ' Curin', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(80, '20191079', ' Clinacyn', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(81, '20191080', ' Clinacyn T', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(82, '20191081', ' Clobex', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(83, '20191082', ' D-Rise', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(84, '20191083', ' Dakovir-C', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(85, '20191084', ' Decomit', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(86, '20191085', ' Decomit Plus', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(87, '20191086', ' Deflux', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(88, '20191087', ' Deflux Meltab', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(89, '20191088', ' Dexaqua DS', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(90, '20191089', ' Dexifen', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(91, '20191090', ' Dexoride', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(92, '20191091', ' Dextrim', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(93, '20191092', ' Dextromethorphan', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(94, '20191093', ' Diactin', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(95, '20191094', ' Diapro', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(96, '20191095', ' Diapro MR', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(97, '20191096', ' Diaryl', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(98, '20191097', ' Diavix ', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(99, '20191098', ' Digecid Plus', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(100, '20191099', ' Dilapress', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(101, '20191100', ' Dinovo', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(102, '20191101', ' Duvent', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(103, '20191102', ' Dynase', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(104, '20191103', ' Dilapress', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(105,'20191104', ' Dinogest', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(106,'20191105', ' Dinovo', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(107,'20191106', ' Eburic', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(108,'20191107', ' Ecotrim', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(109,'20191108', ' Efol ER', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(110,'20191109', ' Emijoy', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(111,'20191110', ' Emonium', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(112,'20191111', ' Emorivir ', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(113,'20191112', ' Empalina10/5', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(114,'20191113', ' Enaril', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(115,'20191114', ' Evo', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(116,'20191115', ' Fluzin10', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(117,'20191116', ' Glysup1.15', 'Syrup', 1, 1, 289, 1, 16, '2019-03-13'),
(118,'20191117', ' Indever10', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(119,'20191118', ' Indever40', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(120,'20191119', ' Mervan', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(121,'20191120', ' Methipred8', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(122,'20191121', ' Monas10', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(123,'20191122', ' Othera20', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(124,'20191123', ' Provair10', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(125,'20191124', ' Rabeca20', 'Tablet', 1, 1, 289, 1, 16, '2019-03-13'),
(126,'20191125', ' Sergel', 'Capsule', 1, 1, 289, 1, 16, '2019-03-13'),
-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(11, 'Beximco', 114, '09457488521'),
(12, 'Aristopharma', 115, '09635877412'),
(13, 'Incepta', 111, '09587855685'),
(15, 'Renata', 116, '09124033805'),
(16, 'ACI', 155, '09775673257');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`) VALUES
(3, 16, '3', '456,982.00', '48,962.36', '408,019.64', '48,962.36', '456,982.00', '500000', '2019-03-18', '0318160336'),
(4, 11, '2', '1,967.00', '210.75', '1,756.25', '210.75', '1,967.00', '2000', '2019-03-18', '0318160622'),
(5, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2019-03-18', '0318170309'),
(6, 15, '1', '77,850.00', '8,341.07', '69,508.93', '8,341.07', '77,850.00', '80000', '2019-03-18', '0318170352'),
(7, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170511'),
(8, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170524'),
(9, 14, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170551'),
(10, 11, '1', '289.00', '30.96', '258.04', '30.96', '289.00', '500', '2019-03-18', '0318170624'),
(11, 9, '2', '1,148.00', '123.00', '1,025.00', '123.00', '1,148.00', '2000', '2019-03-18', '0318170825'),
(12, 9, '1', '5,500.00', '589.29', '4,910.71', '589.29', '5,500.00', '6000', '2019-03-18 19:40 pm', '0318194016');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(7, '0318160336', 'Apixa', '2', '32999', 'Nafis', 'Manager'),
(8, '0318160336', 'Amdova', '5', '77850', 'Nafis', 'Manager'),
(9, '0318160336', 'Acifix', '6', '289', 'Nafis', 'Manager'),
(10, '0318160622', 'Amdocal', '2', '550', 'Nafis', 'Manager'),
(11, '0318160622', 'Amdova', '3', '289', 'Nafis', 'Manager'),
(12, '0318170309', 'Antacide MAX', '1', '550', 'Nafis', 'Manager'),
(13, '0318170352', 'Amdropril', '1', '77850', 'Nafis', 'Manager'),
(14, '0318170511', 'Amdocal Pro', '2', '859', 'Nafis', 'Manager'),
(15, '0318170524', 'Aristocal', '2', '859', 'Nafis', 'Manager'),
(16, '0318170551', 'Aristovit B', '2', '859', 'Nafis', 'Manager'),
(17, '0318170624', 'Aristovit X', '1', '289', 'Nafis', 'Manager'),
(18, '0318170825', 'Aristovit M', '1', '289', 'Nafis', 'Manager'),
(19, '0318170825', 'Arixon', '1', '859', 'Nafis', 'Manager'),
(20, '0318194016', 'Atova', '10', '550', 'Indra', 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'unguardable', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(7, 2, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 2),
(9, 4, 'mncpdrnl', '8cb2237d0679ca88db6464eac60da96345513964', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`TRANS_D_ID`) REFERENCES `transaction_details` (`TRANS_D_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
