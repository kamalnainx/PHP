-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 09:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oldwheels`
--

-- --------------------------------------------------------

--
-- Table structure for table `allcars`
--

CREATE TABLE `allcars` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `value` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allcars`
--

INSERT INTO `allcars` (`id`, `brand`, `model`, `value`) VALUES
(1, 'datsun', 'go', 180000),
(1, 'datsun', 'go', 180000),
(1, 'datsun', 'go', 180000);

-- --------------------------------------------------------

--
-- Table structure for table `bike_brand`
--

CREATE TABLE `bike_brand` (
  `Bike_id` int(11) NOT NULL,
  `Bike_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bike_brand`
--

INSERT INTO `bike_brand` (`Bike_id`, `Bike_name`) VALUES
(1, 'Honda'),
(2, 'Suzuki'),
(3, 'TVS'),
(4, 'Bajaj'),
(5, 'Hero'),
(6, 'Yamaha'),
(7, 'KTM'),
(8, 'Royal Enfield'),
(9, 'Jawa'),
(10, 'Mahindra'),
(11, 'Harley Davidson'),
(12, 'Revolt');

-- --------------------------------------------------------

--
-- Table structure for table `bike_model`
--

CREATE TABLE `bike_model` (
  `Bike_id` int(11) NOT NULL,
  `Bike_Brand_id` int(11) NOT NULL,
  `Bike_Model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bike_model`
--

INSERT INTO `bike_model` (`Bike_id`, `Bike_Brand_id`, `Bike_Model`) VALUES
(1, 1, 'Honda Activa'),
(2, 1, 'Honda CB Shine'),
(3, 1, 'Honda Dio'),
(4, 1, 'Honda CB Unicorn'),
(5, 1, 'Honda Grazia'),
(6, 1, 'Honda Livo'),
(7, 1, 'Honda CB Hornet 160R'),
(8, 1, 'Honda X-Blade'),
(9, 1, 'Honda CBR 150R'),
(10, 1, 'Honda CBR 250R'),
(11, 1, 'Honda CRF1100L Africa Twin'),
(12, 1, 'Honda Gold Wing'),
(13, 2, 'Suzuki Access 125'),
(14, 2, 'Suzuki Gixxer SF'),
(15, 2, 'Suzuki Gixxer'),
(16, 2, 'Suzuki Burgman Street'),
(17, 2, 'Suzuki Intruder'),
(18, 2, 'Suzuki Hayabusa'),
(19, 2, 'Suzuki V-Strom 650 XT'),
(20, 2, 'Suzuki RM-Z250'),
(21, 2, 'Suzuki GSX-S750'),
(22, 2, 'Suzuki GSX-S1000'),
(23, 3, 'TVS Apache RTR series (Apache RTR 160, Apache RTR 180, Apache RTR 200 4V)'),
(24, 3, 'TVS Jupiter'),
(25, 3, 'TVS Ntorq 125'),
(26, 3, 'TVS Star City+'),
(27, 3, 'TVS Radeon'),
(28, 3, 'TVS XL100'),
(29, 3, 'TVS Victor'),
(30, 3, 'TVS Scooty Pep+'),
(31, 3, 'TVS iQube Electric Scooter'),
(32, 3, 'TVS Sport'),
(33, 4, 'Bajaj Pulsar series (Pulsar 150, Pulsar 180, Pulsar NS160, Pulsar NS200, Pulsar RS200)'),
(34, 4, 'Bajaj Platina'),
(35, 4, 'Bajaj Avenger series (Avenger Street 160, Avenger Cruise 220)'),
(36, 4, 'Bajaj CT100'),
(37, 4, 'Bajaj Dominar 400'),
(38, 4, 'Bajaj Chetak Electric Scooter'),
(39, 4, 'Bajaj Discover series (Discover 125, Discover 110)'),
(40, 4, 'Bajaj V series (V12, V15)'),
(41, 4, 'Bajaj Kratos VS400 (Bajaj entry into the premium cruiser segment)'),
(42, 4, 'Bajaj Boxer'),
(43, 5, 'Hero Splendor series (Splendor Plus, Splendor iSmart, Super Splendor)'),
(44, 5, 'Hero Passion Pro'),
(45, 5, 'Hero HF Deluxe'),
(46, 5, 'Hero Glamour'),
(47, 5, 'Hero Xtreme 160R'),
(48, 5, 'Hero Xpulse 200'),
(49, 5, 'Hero Maestro Edge 125'),
(50, 5, 'Hero Pleasure Plus'),
(51, 5, 'Hero Destini 125'),
(52, 5, 'Hero Karizma ZMR (discontinued but still popular)'),
(53, 6, 'Yamaha FZ series (FZS-FI, FZ-FI)'),
(54, 6, 'Yamaha YZF R15 V3.0'),
(55, 6, 'Yamaha MT-15'),
(56, 6, 'Yamaha Fascino 125'),
(57, 6, 'Yamaha Ray ZR 125'),
(58, 6, 'Yamaha Fazer 25'),
(59, 6, 'Yamaha Saluto RX'),
(60, 6, 'Yamaha SZ-RR V2.0'),
(61, 6, 'Yamaha R3'),
(62, 6, 'Yamaha Alpha'),
(63, 7, 'KTM Duke series (Duke 125, Duke 200, Duke 250, Duke 390, Duke 790)'),
(64, 7, 'KTM RC series (RC 125, RC 200, RC 390)'),
(65, 7, 'KTM Adventure series (Adventure 250, Adventure 390)'),
(66, 7, 'KTM 125 Duke'),
(67, 7, 'KTM 390 Adventure'),
(68, 7, 'KTM 250 Duke'),
(69, 7, 'KTM 200 Duke'),
(70, 7, 'KTM 790 Duke'),
(71, 8, 'Royal Enfield Classic 350'),
(72, 8, 'Royal Enfield Bullet 350'),
(73, 8, 'Royal Enfield Himalayan'),
(74, 8, 'Royal Enfield Interceptor 650'),
(75, 8, 'Royal Enfield Continental GT 650'),
(76, 8, 'Royal Enfield Meteor 350'),
(77, 8, 'Royal Enfield Thunderbird 350X'),
(78, 8, 'Royal Enfield Thunderbird 500X (discontinued but still available in the used market)'),
(79, 8, 'Royal Enfield Classic 500 (discontinued but still available in the used market)'),
(80, 8, 'Royal Enfield Bullet Trials 350'),
(81, 9, 'Jawa Classic'),
(82, 9, 'Jawa Forty Two'),
(83, 9, 'Jawa Perak'),
(84, 10, 'Mahindra Gusto'),
(85, 10, 'Mahindra Centuro'),
(86, 10, 'Mahindra Mojo'),
(87, 10, 'Mahindra Rodeo'),
(88, 10, 'Mahindra Duro'),
(89, 11, 'Harley-Davidson Street 750'),
(90, 11, 'Harley-Davidson Iron 883'),
(91, 11, 'Harley-Davidson Forty-Eight'),
(92, 11, 'Harley-Davidson Fat Boy'),
(93, 11, 'Harley-Davidson Heritage Classic'),
(94, 11, 'Harley-Davidson Road King'),
(95, 11, 'Harley-Davidson Street Rod'),
(96, 11, 'Harley-Davidson Breakout'),
(97, 11, 'Harley-Davidson Fat Bob'),
(98, 11, 'Harley-Davidson CVO Limited'),
(99, 12, 'Revolt RV400');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Datsun'),
(2, 'Ford'),
(3, 'Honda'),
(4, 'Hyundai'),
(5, 'Jeep'),
(6, 'Kia'),
(7, 'Mahindra'),
(8, 'Maruti Suzuki'),
(9, 'MG'),
(10, 'Renault'),
(11, 'Skoda'),
(12, 'Tata'),
(13, 'Toyota'),
(14, 'Volkswagen');

-- --------------------------------------------------------

--
-- Table structure for table `brandname`
--

CREATE TABLE `brandname` (
  `id` tinyint(50) NOT NULL,
  `brand` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brandname2`
--

CREATE TABLE `brandname2` (
  `brand` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brandname2`
--

INSERT INTO `brandname2` (`brand`) VALUES
('Datsun\r\nFord\r\nHonda\r\nHyundai\r\nJeep\r\nKia\r\nMahindra\r\nMaruti Suzuki\r\nMG\r\nRenault\r\nSkoda\r\nTata\r\nToyota\r\nVolkswagen'),
('Datsun\r\nFord\r\nHonda\r\nHyundai\r\nJeep\r\nKia\r\nMahindra\r\nMaruti Suzuki\r\nMG\r\nRenault\r\nSkoda\r\nTata\r\nToyota\r\nVolkswagen'),
('Datsun\r\nFord\r\nHonda\r\nHyundai\r\nJeep\r\nKia\r\nMahindra\r\nMaruti Suzuki\r\nMG\r\nRenault\r\nSkoda\r\nTata\r\nToyota\r\nVolkswagen');

-- --------------------------------------------------------

--
-- Table structure for table `collectdata`
--

CREATE TABLE `collectdata` (
  `brand` varchar(40) NOT NULL,
  `model` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collectdata`
--

INSERT INTO `collectdata` (`brand`, `model`, `contact`) VALUES
('', '', '9069660970'),
('', '', '9069660970'),
('', '', '9069660970'),
('', '', '9069660970'),
('1', '1', '0906966097'),
('', '', ''),
('6', '24', '0906966097'),
('1', '3', '56465465412'),
('3', '9', '56465465412'),
('', '', '0906966097'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('1', '1', '9069660970'),
('', '', ''),
('', '', '56465465412'),
('1', '1', '9069660970'),
('', '', ''),
('', '', ''),
('', '', '9069660970'),
('', '', ''),
('1', '1', ''),
('3', '9', ''),
('1', '1', '9069660970'),
('14', '75', '0906966097'),
('5', '19', '0906966097'),
('2', '4', '9069660970'),
('3', '11', '9069660970'),
('1', '1', '9069660970'),
('5', '19', '9069660970'),
('2', '5', '9069660970'),
('3', '9', '9069660970'),
('6', '24', '9069660970'),
('', '', '9069660970'),
('', '', '9069660970'),
('', '', '9069660970'),
('', '', '9069660970'),
('1', '1', '0906966097'),
('', '', ''),
('6', '24', '0906966097'),
('1', '3', '56465465412'),
('3', '9', '56465465412'),
('', '', '0906966097'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('1', '1', '9069660970'),
('', '', ''),
('', '', '56465465412'),
('1', '1', '9069660970'),
('', '', ''),
('', '', ''),
('', '', '9069660970'),
('', '', ''),
('1', '1', ''),
('3', '9', ''),
('1', '1', '9069660970'),
('14', '75', '0906966097'),
('5', '19', '0906966097'),
('2', '4', '9069660970'),
('3', '11', '9069660970'),
('1', '1', '9069660970'),
('5', '19', '9069660970'),
('2', '5', '9069660970'),
('3', '9', '9069660970'),
('6', '24', '9069660970'),
('3', '9', '9069660970'),
('', '', '9069660970'),
('', '', '9069660970'),
('', '', '9069660970'),
('', '', '9069660970'),
('1', '1', '0906966097'),
('', '', ''),
('6', '24', '0906966097'),
('1', '3', '56465465412'),
('3', '9', '56465465412'),
('', '', '0906966097'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('4', '14', '9069660970'),
('1', '1', '9069660970'),
('', '', ''),
('', '', '56465465412'),
('1', '1', '9069660970'),
('', '', ''),
('', '', ''),
('', '', '9069660970'),
('', '', ''),
('1', '1', ''),
('3', '9', ''),
('1', '1', '9069660970'),
('14', '75', '0906966097'),
('5', '19', '0906966097'),
('2', '4', '9069660970'),
('3', '11', '9069660970'),
('1', '1', '9069660970'),
('5', '19', '9069660970'),
('2', '5', '9069660970'),
('3', '9', '9069660970'),
('6', '24', '9069660970'),
('', '', ''),
('2', '4', '09999840082'),
('2', '6', '09999840082');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `Name` varchar(50) NOT NULL,
  `Email` text NOT NULL,
  `Contact_Number` varchar(20) NOT NULL,
  `Message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`Name`, `Email`, `Contact_Number`, `Message`) VALUES
('Krishnan Avasthi', 'krishnanavasthi@gmail.com', '2147483647', 'Hello'),
('Krishnan Avasthi', 'krishnanavasthi@gmail.com', '9069660970', 'Hello'),
('devesh', 'abci6555@gmail.com', '8882079587', 'Hello i am devesh.'),
('Krishnan Avasthi', 'krishnanavasthi@gmail.com', '09069660970', 'Again check'),
('Krishnan Avasthi', 'krishnanavasthi@gmail.com', '0906966097', 'wetrewryt'),
('Krishnan Avasthi', 'krishnanavasthi@gmail.com', '09069660970', 'wetrewryt'),
('Krishnan Avasthi', 'krishnanavasthi@gmail.com', '09069660970', 'wlast'),
('Krishnan Avasthi', 'krishnanavasthi@gmail.com', '09069660970', 'hellooooooo'),
('', '', '', ''),
('sdfg', 'sd@sdf', '3516565152', '');

-- --------------------------------------------------------

--
-- Table structure for table `datsun_car`
--

CREATE TABLE `datsun_car` (
  `datsun_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datsun_car`
--

INSERT INTO `datsun_car` (`datsun_name`) VALUES
('Go\r\nGo Plus\r\nRedi Go'),
('Go\r\nGo Plus\r\nRedi Go'),
('Go\r\nGo Plus\r\nRedi Go');

-- --------------------------------------------------------

--
-- Table structure for table `ford_car`
--

CREATE TABLE `ford_car` (
  `ford_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ford_car`
--

INSERT INTO `ford_car` (`ford_name`) VALUES
('Aspire\r\nEcosport\r\nEndeavour\r\nFigo\r\nFreestyle\r\n'),
('Aspire\r\nEcosport\r\nEndeavour\r\nFigo\r\nFreestyle\r\n'),
('Aspire\r\nEcosport\r\nEndeavour\r\nFigo\r\nFreestyle\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `honda_car`
--

CREATE TABLE `honda_car` (
  `honda_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `honda_car`
--

INSERT INTO `honda_car` (`honda_name`) VALUES
('Amaze\r\nCity\r\nCivic\r\nCR-V'),
('Amaze\r\nCity\r\nCivic\r\nCR-V'),
('Amaze\r\nCity\r\nCivic\r\nCR-V');

-- --------------------------------------------------------

--
-- Table structure for table `hyundai_car`
--

CREATE TABLE `hyundai_car` (
  `hyundai_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hyundai_car`
--

INSERT INTO `hyundai_car` (`hyundai_name`) VALUES
('Aura\r\nCreta\r\ni10\r\ni20\r\nSantro\r\nVerna'),
('Aura\r\nCreta\r\ni10\r\ni20\r\nSantro\r\nVerna'),
('Aura\r\nCreta\r\ni10\r\ni20\r\nSantro\r\nVerna');

-- --------------------------------------------------------

--
-- Table structure for table `jeep_car`
--

CREATE TABLE `jeep_car` (
  `jeep_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jeep_car`
--

INSERT INTO `jeep_car` (`jeep_name`) VALUES
('Compass\r\nCompass Trail Hawk\r\nGrand Cherokee\r\nWrangler'),
('Compass\r\nCompass Trail Hawk\r\nGrand Cherokee\r\nWrangler'),
('Compass\r\nCompass Trail Hawk\r\nGrand Cherokee\r\nWrangler');

-- --------------------------------------------------------

--
-- Table structure for table `kia_car`
--

CREATE TABLE `kia_car` (
  `kia_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kia_car`
--

INSERT INTO `kia_car` (`kia_name`) VALUES
('Caren\r\nCarnival\r\nSeltos\r\nSonet'),
('Caren\r\nCarnival\r\nSeltos\r\nSonet'),
('Caren\r\nCarnival\r\nSeltos\r\nSonet');

-- --------------------------------------------------------

--
-- Table structure for table `mahindra_car`
--

CREATE TABLE `mahindra_car` (
  `mahindra_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahindra_car`
--

INSERT INTO `mahindra_car` (`mahindra_name`) VALUES
('Bolero\r\nKUV 100\r\nMarazzo\r\nScorpio\r\nThar\r\nTUV 300\r\nXUV 300\r\nXUV 500'),
('Bolero\r\nKUV 100\r\nMarazzo\r\nScorpio\r\nThar\r\nTUV 300\r\nXUV 300\r\nXUV 500'),
('Bolero\r\nKUV 100\r\nMarazzo\r\nScorpio\r\nThar\r\nTUV 300\r\nXUV 300\r\nXUV 500');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `mail_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`mail_id`) VALUES
('krishnanavasthi@gmail.com'),
('krishnanavasthi@gmail.com'),
('abc@gmail.com'),
('abc@gmail.com'),
('krishnanavasthi@gmail.com'),
('ashjfdgjkasdfljkhsfa@kjgaskd'),
('krishnanavasthi@gmail.com'),
('kjashfjk@jkasd'),
('krishnanavasthi@gmail.com'),
('krishnanavasthi@gmail.com'),
('krishnanavasthi@gmail.com'),
('abc@gmail.com'),
('abc@gmail.com'),
('ashjfdgjkasdfljkhsfa@kjgaskd'),
('ashjfdgjkasdfljkhsfa@kjgaskd'),
('abc@gmail.com'),
('abc@gmail.com'),
(''),
(''),
('abc@gmail.com'),
('abc@gmail.com'),
('krishnanavasthi@gmail.com'),
('isthiscorrect@gmail.com'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs'),
('qweag@wesdf.rs');

-- --------------------------------------------------------

--
-- Table structure for table `maruti_car`
--

CREATE TABLE `maruti_car` (
  `maruti_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maruti_car`
--

INSERT INTO `maruti_car` (`maruti_name`) VALUES
('Alto\r\nAlto K10\r\nBaleno\r\nBrezza\r\nCiaz\r\nCelerio\r\nErtiga\r\nIgnis\r\nS-Presso\r\nSwift\r\nSwift Dzire\r\n'),
('Wagon R'),
('Alto\r\nAlto K10\r\nBaleno\r\nBrezza\r\nCiaz\r\nCelerio\r\nErtiga\r\nIgnis\r\nS-Presso\r\nSwift\r\nSwift Dzire\r\n'),
('Wagon R'),
('Alto\r\nAlto K10\r\nBaleno\r\nBrezza\r\nCiaz\r\nCelerio\r\nErtiga\r\nIgnis\r\nS-Presso\r\nSwift\r\nSwift Dzire\r\n'),
('Wagon R');

-- --------------------------------------------------------

--
-- Table structure for table `mg_car`
--

CREATE TABLE `mg_car` (
  `mg_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mg_car`
--

INSERT INTO `mg_car` (`mg_name`) VALUES
('Astor\r\nGloster\r\nHector\r\nHector Plus'),
('Astor\r\nGloster\r\nHector\r\nHector Plus'),
('Astor\r\nGloster\r\nHector\r\nHector Plus');

-- --------------------------------------------------------

--
-- Table structure for table `modal`
--

CREATE TABLE `modal` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `Modal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modal`
--

INSERT INTO `modal` (`id`, `brand_id`, `Modal`) VALUES
(1, 1, 'Go'),
(2, 1, 'Go Plus'),
(3, 1, 'Redi Go'),
(4, 2, 'Aspire'),
(5, 2, 'Ecosport'),
(6, 2, 'Endeavour'),
(7, 2, 'Figo'),
(8, 2, 'Freestyle'),
(9, 3, 'Amaze'),
(10, 3, 'City'),
(11, 3, 'Civic'),
(12, 3, 'CR-V'),
(13, 4, 'Aura'),
(14, 4, 'Creta'),
(15, 4, 'i10'),
(16, 4, 'i20'),
(17, 4, 'Santro'),
(18, 4, 'Verna'),
(19, 5, 'Compass'),
(20, 5, 'Compass Trail Hawk'),
(21, 5, 'Grand Cherokee'),
(22, 5, 'Wrangler'),
(23, 6, 'Caren'),
(24, 6, 'Carnival'),
(25, 6, 'Seltos'),
(26, 6, 'Sonet'),
(27, 7, 'Bolero'),
(28, 7, 'KUV 100'),
(29, 7, 'Marazzo'),
(30, 7, 'Scorpio'),
(31, 7, 'Thar'),
(32, 7, 'TUV 300'),
(33, 7, 'XUV 300'),
(34, 7, 'XUV 500'),
(35, 8, 'Alto 800'),
(36, 8, 'Alto K10'),
(37, 8, 'Baleno'),
(38, 8, 'Brezza'),
(39, 8, 'Ciaz'),
(40, 8, 'Celerio'),
(41, 8, 'Ertiga'),
(42, 8, 'Ignis'),
(43, 8, 'S-Presso'),
(44, 8, 'Swift'),
(45, 8, 'Swift Dzire'),
(46, 8, 'WagonR'),
(47, 9, 'Astor'),
(48, 9, 'Gloster'),
(49, 9, 'Hector'),
(50, 9, 'Hector Plus'),
(51, 10, 'Duster'),
(52, 10, 'Kwid'),
(53, 10, 'Triber'),
(54, 11, 'Karoq'),
(55, 11, 'Octavia'),
(56, 11, 'Rapid'),
(57, 11, 'Superb'),
(58, 12, 'Altroz'),
(59, 12, 'Harrier'),
(60, 12, 'Nexon'),
(61, 12, 'Nexon EV'),
(62, 12, 'Punch'),
(63, 12, 'Safari'),
(64, 12, 'Tiago'),
(65, 12, 'Tigor'),
(66, 13, 'Camry'),
(67, 13, 'Fortuner'),
(68, 13, 'Glanza'),
(69, 13, 'Innova'),
(70, 13, 'Innova Crysta'),
(71, 13, 'Yaris'),
(72, 14, 'Polo'),
(73, 14, 'Tigwan Allspace'),
(74, 14, 'T-Roc'),
(75, 14, 'Vento');

-- --------------------------------------------------------

--
-- Table structure for table `renault_car`
--

CREATE TABLE `renault_car` (
  `renault_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renault_car`
--

INSERT INTO `renault_car` (`renault_name`) VALUES
('Duster\r\nKwid\r\nTriber'),
('Duster\r\nKwid\r\nTriber'),
('Duster\r\nKwid\r\nTriber');

-- --------------------------------------------------------

--
-- Table structure for table `skoda_car`
--

CREATE TABLE `skoda_car` (
  `skoda_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skoda_car`
--

INSERT INTO `skoda_car` (`skoda_name`) VALUES
('Karoq\r\nOctavia\r\nRapid\r\nSuperb'),
('Karoq\r\nOctavia\r\nRapid\r\nSuperb'),
('Karoq\r\nOctavia\r\nRapid\r\nSuperb');

-- --------------------------------------------------------

--
-- Table structure for table `tata_car`
--

CREATE TABLE `tata_car` (
  `tata_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tata_car`
--

INSERT INTO `tata_car` (`tata_name`) VALUES
('Altroz\r\nHarrier\r\nNexon\r\nNexon EV\r\nPunch\r\nSafari\r\nTiago\r\nTigor'),
('Altroz\r\nHarrier\r\nNexon\r\nNexon EV\r\nPunch\r\nSafari\r\nTiago\r\nTigor'),
('Altroz\r\nHarrier\r\nNexon\r\nNexon EV\r\nPunch\r\nSafari\r\nTiago\r\nTigor');

-- --------------------------------------------------------

--
-- Table structure for table `toyota_car`
--

CREATE TABLE `toyota_car` (
  `toyota_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toyota_car`
--

INSERT INTO `toyota_car` (`toyota_name`) VALUES
('Camry\r\nFortuner\r\nGlanza\r\nInnova\r\nInnova Crysta\r\nYaris'),
('Camry\r\nFortuner\r\nGlanza\r\nInnova\r\nInnova Crysta\r\nYaris'),
('Camry\r\nFortuner\r\nGlanza\r\nInnova\r\nInnova Crysta\r\nYaris');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `currency` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `currency`) VALUES
(1, 'Krishnan', 'krishnanavasthi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(2, 'abc', 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(3, 'kamal', 'knain@yahoo.com', 'e807f1fcf82d132f9bb018ca6738a19f', 0);

-- --------------------------------------------------------

--
-- Table structure for table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `modal_id` int(11) NOT NULL,
  `min_value` varchar(255) NOT NULL,
  `mix_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `value`
--

INSERT INTO `value` (`id`, `modal_id`, `min_value`, `mix_value`) VALUES
(1, 1, '95000', '210000'),
(2, 2, '105000', '230000'),
(3, 3, '112000', '230000'),
(4, 4, '215000', '670000'),
(5, 5, '440000', '875000'),
(6, 6, '1200000', '2800000'),
(7, 7, '140000', '590000'),
(8, 8, '210000', '435000'),
(9, 9, '554036', '609439'),
(10, 10, '607238', '674034'),
(11, 11, '660440', '766111'),
(12, 12, '713643', '785007'),
(13, 13, '766845', '912546'),
(14, 14, '820048', '902052'),
(15, 15, '873250', '978040'),
(16, 16, '926452', '1028362'),
(17, 17, '979655', '1165789'),
(18, 18, '1032857', '1187786'),
(19, 19, '1086060', '1259829'),
(20, 20, '1139262', '1253188'),
(21, 21, '1192464', '1430957'),
(22, 22, '1245667', '1432517'),
(23, 23, '1298869', '1467722'),
(24, 24, '1352071', '1595444'),
(25, 25, '1405274', '1587959'),
(26, 26, '1458476', '1750171'),
(27, 27, '1511679', '1677963'),
(28, 28, '1564881', '1721369'),
(29, 29, '1618083', '1941700'),
(30, 30, '1671286', '1972117'),
(31, 31, '1724488', '1983161'),
(32, 32, '1777690', '2026567'),
(33, 33, '1830893', '2142145'),
(34, 34, '1884095', '2223232'),
(35, 35, '162000', '280000'),
(36, 36, '185000', '320000'),
(37, 37, '440000', '760000'),
(38, 38, '380000', '980000'),
(39, 39, '360000', '850000'),
(40, 40, '228000', '525000'),
(41, 41, '320000', '595000'),
(42, 42, '245000', '480000'),
(43, 43, '320000', '570000'),
(44, 44, '195000', '480000'),
(45, 45, '215000', '577000'),
(46, 46, '213000', '680000'),
(47, 47, '239258', '282324'),
(48, 48, '234233', '271710'),
(49, 49, '229209', '252129'),
(50, 50, '224184', '246603'),
(51, 51, '219160', '249842'),
(52, 52, '214135', '244114'),
(53, 53, '209111', '232113'),
(54, 54, '204086', '244903'),
(55, 55, '199062', '234893'),
(56, 56, '194037', '227024'),
(57, 57, '189013', '226815'),
(58, 58, '183988', '217106'),
(59, 59, '178964', '196860'),
(60, 60, '173939', '203509'),
(61, 61, '168915', '190874'),
(62, 62, '163890', '180279'),
(63, 63, '158866', '184285'),
(64, 64, '153841', '176918'),
(65, 65, '148817', '174116'),
(66, 66, '143793', '159610'),
(67, 67, '138768', '162359'),
(68, 68, '133744', '147118'),
(69, 69, '128719', '142878'),
(70, 70, '123695', '138538'),
(71, 71, '118670', '137657'),
(72, 72, '113646', '134102'),
(73, 73, '108621', '119483'),
(74, 74, '103597', '114992'),
(75, 75, '98572', '109415');

-- --------------------------------------------------------

--
-- Table structure for table `volkswagen_car`
--

CREATE TABLE `volkswagen_car` (
  `volkswagen_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volkswagen_car`
--

INSERT INTO `volkswagen_car` (`volkswagen_name`) VALUES
('Polo\r\nTigwan Allspace\r\nT-Roc\r\nVento'),
('Polo\r\nTigwan Allspace\r\nT-Roc\r\nVento'),
('Polo\r\nTigwan Allspace\r\nT-Roc\r\nVento');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike_brand`
--
ALTER TABLE `bike_brand`
  ADD PRIMARY KEY (`Bike_id`);

--
-- Indexes for table `bike_model`
--
ALTER TABLE `bike_model`
  ADD PRIMARY KEY (`Bike_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bike_brand`
--
ALTER TABLE `bike_brand`
  MODIFY `Bike_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bike_model`
--
ALTER TABLE `bike_model`
  MODIFY `Bike_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `modal`
--
ALTER TABLE `modal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
