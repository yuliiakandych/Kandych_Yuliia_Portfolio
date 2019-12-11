-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 11, 2019 at 08:48 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lightbox`
--

CREATE TABLE `tbl_lightbox` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `tools` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `authors` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_lightbox`
--

INSERT INTO `tbl_lightbox` (`id`, `image`, `category`, `tools`, `name`, `description`, `authors`) VALUES
(1, 'DigitalLights.jpg', 'Web Design & Development', 'Tools: Abobe Photoshop, Adobe XD, HTML5, SASS, JavaScript', 'Digital Lights', 'Description:\r\nTo create a website for a professional agency “Digital Lights” \r\n“Digital Lights” a group of passionate creatives who are committed to bringing a special shine to all work. As a full-service advertising agency, they target local businesses and organizations to highlight their brand, products, and services to solve problems and spark innovation.\r\n\r\n', 'Authors:\r\nJulia Kandych - Designer\r\nLan Le - Developer\r\nVira Romanko - Project Manager\r\nKayla Chang - Motion Designer'),
(2, 'KijijiAuto.jpg', 'Motion Design', 'Tools: Cinema4d, Adobe AfterEffect', 'Kijiji Autos', 'Description:\r\nKijiji auto is a service that helps Canadians find any vehicle. I selected 4 different car models to present kijiji auto commercial. The main idea of the project is to provide clear information about cars that are listed for sale. \r\n', 'Author:\r\nYuliia Kandych'),
(3, 'TRAA.jpg', 'Web Design & Development', 'Tools: Abobe Photoshop, Adobe XD, HTML5, SASS, JavaScript', 'Thames River \r\nAnglers Associations', 'Description:\r\nTo create a website for a professional agency “Digital Lights” \r\n“Digital Lights” a group of passionate creatives who are committed to bringing a special shine to all work. As a full-service advertising agency, they target local businesses and organizations to highlight their brand, products, and services to solve problems and spark innovation.\r\n\r\n', 'Authors:\r\nYuliia Kandych - Designer\r\nLan Le - Developer'),
(4, 'TermoSecurity.jpg', 'Web Design & Development', 'Tools: Abobe Photoshop, Adobe XD, HTML5, SASS, JavaScript', 'TermoSecurity', 'Description:\r\nGenerate brand identity collateral that will position your HouseCom™ ThermoSecurity™ System product\r\nagainst the completion on the store shelves. Create the specific functionality of the HouseCom™\r\nThermoSecurity™ System and the GUI (graphical user interface) that will be a part of the industrial design\r\nfor the actual HouseCom hardware and software.\r\n', 'Authors:\r\nYuliia Kandych -Designer\r\nTien Le -Designer\r\nLan Le -Developer\r\nVira Romanko -Developer\r\nJimmy Calderon -Progect Manager'),
(5, 'BioDreamers.jpg', 'Graphic Design', 'Tools: Adobe Illustrator, Adobe Photoshop, Cinema4d, Adobe AfterEffect', 'BioDreamers', 'Description:\r\nCreate an Organ Marketing Awareness Campaign. The organ regeneration process is the main aspect in our campaign. The task is to bring an awareness to this new organ transplant process and spread the ‘word’ on what it is, who can benefit from it and why this process is so unique and why it should become a part of mainstream medicine.\r\n', 'Authors:\r\nYuliia Kandych \r\nLan Le \r\nVira Romanko'),
(6, 'SportsNet.jpg', 'Motion Design', 'Tools: Cinema4d, Adobe AfterEffect', 'SportsNet', 'Description:\r\nCreate an announcement for a football game. The great events in sport world. \r\n', 'Author:\r\nYuliia Kandych'),
(7, 'KingLure.jpg', 'Graphic Design/Branding', 'Tools: Adobe Illustrator, Adobe Photoshop', 'King Lure', 'Description:\r\nCreate a brand identity for King Lure products.\r\nThey create limited high quality spinning reels for real fishermen.\r\n', 'Authors:\r\nYuliia Kandych\r\nAaron Paterson'),
(8, 'Pizza.jpg', 'Web Design', 'Tools: Adobe Illustrator, Adobe Photoshop, Adobe XD', 'The Pizza App', 'Description:\r\nCreate an easy in use application for pizza lovers.\r\n', 'Author:\r\nYuliia Kandych');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `id` int(2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(70) NOT NULL,
  `title` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`id`, `image`, `category`, `title`) VALUES
(1, 'DigitalLights.jpg', 'Web Design & Development', 'Digital Lights'),
(2, 'TRAA.jpg', 'Web Design & Development', 'Thames River \r\nAnglers Associations'),
(3, 'kijijiAuto.jpg', 'Motion Design', 'Kijiji Auto'),
(4, 'TermoSecurity.jpg', 'Web Design & Development', 'Termo Security'),
(5, 'SportsNet.jpg', 'Motion Design', 'SportsNet'),
(6, 'pizza.jpg', 'Web Design', 'The Pizza App'),
(7, 'BioDreamers.jpg', 'Graphic Design', 'BioDreamers'),
(8, 'KingLure.jpg', 'Graphic Design/Brand Identity', 'King Lure');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_lightbox`
--
ALTER TABLE `tbl_lightbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_lightbox`
--
ALTER TABLE `tbl_lightbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
