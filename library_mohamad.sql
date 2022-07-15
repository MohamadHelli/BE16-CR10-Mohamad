-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 11:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_mohamad`
--
CREATE DATABASE IF NOT EXISTS `library_mohamad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library_mohamad`;

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `isbncode` int(20) NOT NULL,
  `dis` varchar(255) NOT NULL,
  `type` enum('book','cd','dvd') DEFAULT NULL,
  `author_first_name` varchar(50) NOT NULL,
  `author_last_name` varchar(50) NOT NULL,
  `publisher_name` varchar(50) NOT NULL,
  `publisher_address` varchar(100) NOT NULL,
  `publish_date` datetime NOT NULL,
  `status` enum('available','reserved') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `title`, `pic`, `isbncode`, `dis`, `type`, `author_first_name`, `author_last_name`, `publisher_name`, `publisher_address`, `publish_date`, `status`) VALUES
(1, 'It ends with us', 'pic.jpg', 1548496, 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most.', 'book', 'Sasha', 'Kelsow', 'Cob', '37792 Johnson Alley', '2016-07-15 10:17:47', 'available'),
(2, 'Peanuts Treasury', 'pic1.jpg', 54687653, 'Brings together more than six hundred of Charles Schulz\'s favorite Peanuts cartoons. So come join Charlie Brown, Snoopy, Lucy, Linus, Schroeder, Peppermint Patty and friends as they swat at baseballs, fight with kite-eating trees and philosophize in the p', 'book', 'Tedra', 'Halley', 'MetroBooks', '68626 Park Meadow Avenue', '2000-07-15 12:26:35', 'available'),
(3, 'Spider-Man versus the Lizard', 'pic2.jpg', 56498765, 'This edition doesn\'t have a description yet', 'book', 'Stefanie', 'Cotterell', ' Harper', '89 Morningstar Plaza', '2010-07-15 11:31:47', 'available'),
(4, 'The bazaar of bad dreams', 'pic3.jpg', 56468435, 'A master storyteller at his best--the O. Henry Prize winner Stephen King delivers a generous collection of stories, several of them brand-new, featuring revelatory autobiographical comments on when, why, and how he came to write (or rewrite) each story. ', 'cd', 'Zeb', 'Dunsire', 'MetroBooks', '68626 Park Meadow Avenue', '2015-07-15 10:33:31', 'available'),
(5, 'Misery', 'pic4.jpg', 45378345, 'Stephen King is arguably the most popular novelist in the history of American fiction. He owes his fans a love letter. Misery is it.', 'dvd', 'Forester', 'Souza', 'Cob', '37792 Johnson Alley', '1987-07-15 10:37:33', 'available'),
(6, 'The Liar', 'pic5.jpg', 3564984, 'Shelby Foxworth lost her husband. Then she lost her illusions. The man who took her from Tennessee to an exclusive Philadelphia suburb left her in crippling debt. He was an adulterer and a liar, and when Shelby tracks down his safe-deposit box, she finds ', 'dvd', 'Ddene', 'Dysert', 'Piatkus Books', '001 Cherokee Hill', '2011-09-15 10:39:13', 'reserved'),
(7, 'Dark Justice', 'pic6.jpg', 5649435, 'This edition doesn\'t have a description yet. ', 'book', 'Abdul', 'Colenutt', ' Harper', '89 Morningstar Plaza', '2004-06-20 12:43:19', 'reserved'),
(8, 'Hunger Games, catching fire', 'pic7.jpg', 65498456, 'This edition doesn\'t have a description yet.', 'cd', 'Humfried', 'Itzchaky', ' Harper', '89 Morningstar Plaza', '2013-01-15 11:46:05', 'available'),
(9, ' Born of Night (A League Novel)', 'pic8.jpg', 5216848, 'This edition doesn\'t have a description yet.', 'book', 'Orsa', 'Oppery	', 'Cob', '37792 Johnson Alley', '2009-09-15 12:50:24', 'available'),
(10, 'The Game of Love and Death', 'pic9.jpg', 56419453, 'The Game of Love and Death', 'book', 'Leeann', 'Palfrey', ' Harper', '89 Morningstar Plaza', '2015-07-15 05:52:46', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
