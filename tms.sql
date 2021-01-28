-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 06:55 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2019-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(15) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `email`, `phone`, `message`) VALUES
(1, 'himel', 'test', 'test', 18, 'dhasjkdhksajdsajk');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 7, 'moin@gmail.com', '2019-12-09', '2019-12-15', 'Please manage a skilled tour guide', '2019-12-13 15:45:41', 2, 'a', '2019-12-13 15:59:19'),
(13, 8, 'moin@gmail.com', '2019-12-23', '2019-12-26', 'Please arrange good jeep. ', '2019-12-13 16:02:20', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'sdfvxv', 'cvdvxdv@dsfsdf.com', 'hxbvjmxbcv', 'cvxvdvdv', 'dxvdvvxv', '2019-12-10 19:16:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(9, 'moin@gmail.com', 'Refund', 'I want refund of Sundarban tour ', '2019-12-13 16:04:49', 'Ok got it. Please send your Account number to get refund. Thank You', '2019-12-13 16:06:48'),
(10, 'moin@gmail.com', 'Cancellation', 'I want to cancel my Saint martin tour ', '2019-12-13 16:08:30', 'Ok.Thank you', '2019-12-13 16:09:38'),
(11, 'moin@gmail.com', 'Booking Issues', 'I want to change my booking date', '2019-12-13 16:12:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<span style=\"color: rgb(0, 0, 0); text-align: justify;\">\r\n<h3 style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-size: x-large;\">Booking your Holiday</span></h3><h3 style=\"\">\r\n\r\n<p style=\"\"><span style=\"font-family: arial; font-size: medium;\">a) All communications by the Company in relation to your holiday will be sent to the address stated on the booking form.</span></p>\r\n\r\n<p style=\"\"><span style=\"font-family: arial; font-size: medium;\">b) All bookings must be made through an authorized representative of the Company. At the time of booking the Company booking form must be completed and submitted together with a deposit of 50% of the total cost of the booking.</span></p>\r\n\r\n<p style=\"\"><span style=\"font-family: arial; font-size: medium;\">c) Receipt of the deposit and booking form by the Company does neither guarantee nor imply confirmation of the booking. No booking shall be confirmed until the Company issues a written notice. The Company reserves the right to refuse a booking without giving any reason and shall in that event return any deposit received.</span></p>\r\n\r\n<p style=\"\"><span style=\"font-family: arial; font-size: medium;\">d) Your holiday must be paid in full at least 30 days before the departure date. If payment is not received by the due date, the Company reserves the right to cancel the booking and retain the deposit. The person who signs the booking form guarantees payment of the total amount shown on the booking form in accordance with these conditions. It is the responsibility of the signatory to ensure the Company receives payment in full by the due date. No reminders will be sent.</span></p>\r\n\r\n<p style=\"\"><span style=\"font-family: arial; font-size: medium;\">e) If you book within 30 days of your departure date payment must be made in full at the time of booking.</span></p>\r\n\r\n<p style=\"\"><span style=\"font-family: arial; font-size: medium;\">f) All special requests, such as dietary requirements, should be noted on the booking form.</span></p>\r\n\r\n<p style=\"\"><span style=\"font-family: arial; font-size: medium;\">g) The Company will provide the service as set out and confirmed in writing.</span></p>\r\n\r\n\r\n										</h3></span>\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><span style=\"font-size: 14px;\">As a general rule, this website does not collect Personal Information about you when you visit the site. You can generally Visit this Site, without revealing, Personal Information, unless you choose to provide such information. Any Personal information collected shall be used only for the stated purpose and shall NOT be shared with any other department organization (public/private).\r\n\r\n</span><p style=\"font-size: 14px;\">This site may contain links to non-Government sites whose data protection and privacy practices may differ from ours. We are not responsible for the content and privacy practices of these other websites and encourage you to consult the privacy notices of those sites.</p><p style=\"font-size: 14px;\">\r\n\r\n<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n</span></p><h3 style=\"\"><span style=\"font-size: large;\">Policy Modifications</span></h3><h3 style=\"\">\r\n<p style=\"\"><span style=\"font-size: medium;\">We may change this Privacy Policy from time to time. We will post any changes here, so be sure to check back periodically. However, please be assured that if the Privacy Policy changes in the future, we will not use the personal information you have submitted to us under this Privacy Policy in a manner that is materially inconsistent with this Privacy Policy, without your prior consent.</span></p><p style=\"font-size: 14px;\">\r\n\r\n</p></h3><h3 style=\"\"><span style=\"font-size: x-large;\">Security</span></h3><h3 style=\"\">\r\n<p style=\"\"><span style=\"font-size: medium;\">The personally identifiable information we collect about you is stored in limited access servers. We will maintain safeguards to protect the security of these servers and your personally identifiable information.</span></p>\r\n\r\n\r\n										</h3></span>'),
(3, 'Aboutus', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Creating Bangladesh Where Every Households Become Home of Tourism.\r\n<p>TMS Ltd. Is established in 2019 with a vision to promote local travel experiences in Bangladesh. TMS is an online touring platform to provide adventurous holiday experiences in a different region of Bangladesh. Besides, providing traditional tourism services we provide exclusive community-based tourism services in Bangladesh. TMS provides tour services in collaboration with the local community. You’ll get a chance to stay with the local community, experience new culture, lifestyle. With TMS, travelers will get a chance to experience Bangladesh in a new way. With 18 multi day tours & 6-day tours around Dhaka city, we are serving more than 100 customers in a month.</p></span>\r\n'),
(11, 'contact', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <title>Contact V17</title>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"icon\" type=\"image/png\" href=\"images/icons/favicon.ico\"/>\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/Linearicons-Free-v1.0.0/icon-font.min.css\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animate/animate.css\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/css-hamburgers/hamburgers.min.css\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animsition/css/animsition.min.css\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/select2/select2.min.css\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/daterangepicker/daterangepicker.css\">\r\n    <!--===============================================================================================-->\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\r\n    <!--===============================================================================================-->\r\n</head>\r\n<body>\r\n\r\n\r\n<div class=\"container-contact100\">\r\n    <div class=\"wrap-contact100\">\r\n        <form class=\"contact100-form validate-form\" action=\"includes/contact.php\" method=\"POST\" >\r\n				<span class=\"contact100-form-title\">\r\n					Send Us A Message\r\n				</span>\r\n\r\n            <label class=\"label-input100\" for=\"first-name\">Tell us your name *</label>\r\n            <div class=\"wrap-input100 rs1-wrap-input100 validate-input\" data-validate=\"Type first name\">\r\n                <input id=\"first-name\" class=\"input100\" type=\"text\" name=\"first-name\" placeholder=\"First name\">\r\n                <span class=\"focus-input100\"></span>\r\n            </div>\r\n            <div class=\"wrap-input100 rs2-wrap-input100 validate-input\" data-validate=\"Type last name\">\r\n                <input class=\"input100\" type=\"text\" name=\"last-name\" placeholder=\"Last name\">\r\n                <span class=\"focus-input100\"></span>\r\n            </div>\r\n\r\n            <label class=\"label-input100\" for=\"email\">Enter your email *</label>\r\n            <div class=\"wrap-input100 validate-input\" data-validate = \"Valid email is required: ex@abc.xyz\">\r\n                <input id=\"email\" class=\"input100\" type=\"text\" name=\"email\" placeholder=\"Eg. example@email.com\">\r\n                <span class=\"focus-input100\"></span>\r\n            </div>\r\n\r\n            <label class=\"label-input100\" for=\"phone\">Enter phone number</label>\r\n            <div class=\"wrap-input100\">\r\n                <input id=\"phone\" class=\"input100\" type=\"text\" name=\"phone\" placeholder=\"Eg. +880 1234567890\">\r\n                <span class=\"focus-input100\"></span>\r\n            </div>\r\n\r\n            <label class=\"label-input100\" for=\"message\">Message *</label>\r\n            <div class=\"wrap-input100 validate-input\" data-validate = \"Message is required\">\r\n                <textarea id=\"message\" class=\"input100\" name=\"message\" placeholder=\"Write us a message\"></textarea>\r\n                <span class=\"focus-input100\"></span>\r\n            </div>\r\n\r\n            <div class=\"container-contact100-form-btn\">\r\n                <button class=\"contact100-form-btn\" name=\"send01\">\r\n                    Send Message\r\n                </button>\r\n            </div>\r\n        </form>\r\n\r\n        <div class=\"contact100-more flex-col-c-m\" style=\"background-image: url(\'images/bg-01.jpg\');\">\r\n            <div class=\"flex-w size1 p-b-47\">\r\n                <div class=\"txt1 p-r-25\">\r\n                    <span class=\"lnr lnr-map-marker\"></span>\r\n                </div>\r\n\r\n                <div class=\"flex-col size2\">\r\n						<span class=\"txt1 p-b-20\">\r\n							Address: \r\n						</span>\r\n\r\n                    <span class=\"txt2\"> Panthapath, Dhaka, Bangladesh\r\n						</span>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"dis-flex size1 p-b-47\">\r\n                <div class=\"txt1 p-r-25\">\r\n                    <span class=\"lnr lnr-phone-handset\"></span>\r\n                </div>\r\n\r\n                <div class=\"flex-col size2\">\r\n						<span class=\"txt1 p-b-20\">\r\n							Lets Talk\r\n						</span>\r\n\r\n                    <span class=\"txt3\">\r\n							+8801799215255\r\n						</span>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"dis-flex size1 p-b-47\">\r\n                <div class=\"txt1 p-r-25\">\r\n                    <span class=\"lnr lnr-envelope\"></span>\r\n                </div>\r\n\r\n                <div class=\"flex-col size2\">\r\n						<span class=\"txt1 p-b-20\">\r\n							General Support\r\n						</span>\r\n\r\n                    <span class=\"txt3\">\r\n							moin2402kabir@gmail.com\r\n						</span>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n\r\n\r\n<div id=\"dropDownSelect1\"></div>\r\n\r\n<!--===============================================================================================-->\r\n<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\r\n<!--===============================================================================================-->\r\n<script src=\"vendor/animsition/js/animsition.min.js\"></script>\r\n<!--===============================================================================================-->\r\n<script src=\"vendor/bootstrap/js/popper.js\"></script>\r\n<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n<!--===============================================================================================-->\r\n<script src=\"vendor/select2/select2.min.js\"></script>\r\n<script>\r\n    $(\".selection-2\").select2({\r\n        minimumResultsForSearch: 20,\r\n        dropdownParent: $(\'#dropDownSelect1\')\r\n    });\r\n</script>\r\n<!--===============================================================================================-->\r\n<script src=\"vendor/daterangepicker/moment.min.js\"></script>\r\n<script src=\"vendor/daterangepicker/daterangepicker.js\"></script>\r\n<!--===============================================================================================-->\r\n<script src=\"vendor/countdowntime/countdowntime.js\"></script>\r\n<!--===============================================================================================-->\r\n<script src=\"js/main.js\"></script>\r\n<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\r\n<script>\r\n    window.dataLayer = window.dataLayer || [];\r\n    function gtag(){dataLayer.push(arguments);}\r\n    gtag(\'js\', new Date());\r\n\r\n    gtag(\'config\', \'UA-23581568-13\');\r\n</script>\r\n</body>\r\n</html>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(7, 'St. Martin Island Experience', 'General', 'St.Martin, Teknaf', 100, 'Sea view/Balcony / Electricity/ Safe and pure water/Ceiling Fan,Hairdryer', '1.Stay at Eco Resort at St. Martin Island\r\n2.Journey to St Martin on ship\r\n3.Special local fish dishes\r\n4.Explore Mystical Chera Dwip', 'is.jpg', '2019-12-12 18:48:09', '2019-12-12 19:01:30'),
(8, 'Breathtaking Bandarban Exploration', 'Group', 'Bandarban', 120, 'Hill view/Balcony / Electricity/ Safe and pure water/Ceiling Fan/Jeep ', ' 1.Visit Nilgiri, Chimbuk, Shoilopropat, Nilachol, Meghla & Sornomondir\r\n 2.Experience tribal lifestyle and food menus\r\n 3.Delicious local food from restaurant\r\n 4.Enjoy Chander Gari ride on hilly roads', '12-e1552043125998.jpg', '2019-12-12 19:03:34', NULL),
(9, 'Sajek Valley Community Experience', 'Couple and Family', 'Sajek, Khagrachari', 130, 'Hill view/Balcony / Electricity/ Safe and pure water/Ceiling Fan/Jeep ', ' 1.Stay at Eco Resort on top of Sajek\r\n 2.Alutila Cave, Hazachora & Risang Waterfall expedition\r\n 3.Hiking to Konglok Para/Village\r\n 4.Enjoy Chander Gari ride on hilly roads', 'view-from-Megh-Machang.jpg', '2019-12-12 19:05:44', NULL),
(10, 'Experience Monipuri Way of Life', 'Group', 'Sreemangal, Sylhet', 80, ' Managing Housing/ Ensuring Healthy Cooking/ Maintaining Sanitation/ Using Personal Security Tools/ Making Tour Schedule Upholding Responsibility of Local Guide', ' 1.Culture Community Experience\r\n 2.Stay at Home Stay in Manipuri Village\r\n 3.Exclusive Tea Picking Session in the morning\r\n 4.Learn weaving with authentic hand-loam\r\n 5.Enjoy Authentic Manipuri Food', '1542.jpg', '2019-12-12 19:07:01', NULL),
(11, 'Exploring Cox\'s Bazar ', 'Couple and Family', 'Cox\'s Bazar', 100, 'Sea view/Balcony / Electricity/ Safe and pure water/Ceiling Fan,Hairdryer', '1. Exploring moheshkhali\r\n2. Exciting Fish dishes\r\n3. Live BBQ\r\n4.Exploring Himchori\r\n5. Transportation', 'A (11).jpg', '2019-12-12 19:09:10', NULL),
(12, 'Sundarban Day Long Tour', 'Group', 'Mongla', 150, 'Launch/ Electricity/ Safe and pure water/Ceiling Fan,Hairdryer', '1.Day Long Cruise Inside Sundarban\r\n2.Tour Guide\r\n3.Entrance Fees\r\n4.Lunch with Standard Food\r\n5. Several Spots Visit in Sundarban', 'edited-1-Copy.jpg', '2019-12-12 19:13:02', NULL),
(13, 'Nijhum Dwip Lifestyle Tour', 'Group', 'Hatiya, Chittgaong', 50, 'Cabin Accommodation on Ship/Accommodation at a Village Home-stay/Tour Guide Entrance Fees/ All transportation in destination location/ All Meals During Tour', '1.Wildlife expedition at the island\r\n2.Boat ride through canal around Mangrove forest\r\n3.Fresh fish items from river\r\n4.Overnight river cruise on ship cabin', 'images (1).jpg', '2019-12-12 19:17:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'Kabir', '1799215255', 'moin@gmail.com', 'b5374e7e995f12aab43be9dd67907a4e', '2019-12-12 17:02:34', '2019-12-12 17:04:32'),
(13, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2019-12-13 16:04:49', NULL),
(14, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2019-12-13 16:08:30', NULL),
(15, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2019-12-13 16:12:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
