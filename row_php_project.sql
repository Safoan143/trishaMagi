-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 03:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `row_php_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `details` longtext NOT NULL,
  `Video_link` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `titel`, `image`, `details`, `Video_link`, `status`) VALUES
(6, 'Iusto eiusmod recusa', 'About-6521abb94e218.png', 'Iusto eiusmod recusa', 'Error expedita quia ', 0),
(8, 'Voluptatum rerum exp', 'About-65205835b7443.png', 'Voluptatum rerum exp', 'Sit corrupti dolore', 0),
(9, 'Mollit obcaecati vol', 'About-6521ac9e19b70.jpg', 'Mollit obcaecati vol', 'Sit non deleniti off', 1);

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `Video_link` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `titel`, `image`, `description`, `Video_link`, `status`) VALUES
(7, '', 'About-651fc92f5250d.jpg', '', '', 0),
(8, 'Corporis ut excepteu', 'About-651fc93c950bb.jpg', '', 'Sapiente illum in p', 0),
(9, '', 'About-651fc980ccf92.jpg', '', '', 0),
(10, 'Non nisi in alias no', 'About-651fcaa6f0e56.jpg', '', 'Quas delectus nihil', 0),
(11, 'Inventore velit aliq', 'About-651fcb65053f8.jpg', '', 'Placeat sit mollit', 0),
(12, '', 'About-651fcbdff1129.jpg', '', '', 0),
(13, 'Aut qui numquam quod', 'About-651fce9277318.jpg', '', 'Fugiat enim perspic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL,
  `details` longtext NOT NULL,
  `cta_titel` varchar(256) NOT NULL,
  `cta_link` varchar(256) NOT NULL,
  `Video_link` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `titel`, `details`, `cta_titel`, `cta_link`, `Video_link`, `image`, `status`) VALUES
(25, 'Minus exercitationem', 'Adipisicing et dolor', 'Voluptatem totam et ', 'Aliquid quis assumen', 'https://youtu.be/yA5iQMGPh7o?si=umAUpK54OquwKwg_', 'Banner-651c57d57e47e.png', 0),
(26, 'Shafoun Bin Chowdhury Toha', 'Facilis dolor ipsam ', 'Harum rerum non beat', 'Eos adipisicing aliq', 'https://youtu.be/bg9fbdTtCiw?si=FH9N5swlm7op9VMJ', 'Banner-651c59b041c33.jpg', 1),
(27, 'will you be mine bbs  ', 'dfjkhhsdbfjsdbfksfd', 'fsdfsdfgrsfdgsfdg', 'sdfghhsfdgsfdgsfdg', 'sdrfgfsfdgsfdgs', 'Banner-651c5b9838ecd.png', 0),
(28, 'Ab facilis ut Nam ve', 'Beatae ea eligendi a', 'Culpa omnis rerum si', 'Iure odio sed aut ve', 'Consequatur ut quas', 'Banner-651c5e962eefa.jpg', 0),
(29, 'shafoun bin chy', 'darfsdfsdgsg', 'sfsdfsd', 'gsfdgsdfg', 'gdfgsdsfdfg', 'Banner-651c5ef4af3df.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boxes`
--

CREATE TABLE `boxes` (
  `id` int(11) NOT NULL,
  `titel_one` varchar(256) NOT NULL,
  `detail_one` varchar(556) NOT NULL,
  `titel_two` varchar(256) NOT NULL,
  `detail_two` varchar(556) NOT NULL,
  `titel_three` varchar(256) NOT NULL,
  `detail_three` varchar(556) NOT NULL,
  `ststus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boxes`
--

INSERT INTO `boxes` (`id`, `titel_one`, `detail_one`, `titel_two`, `detail_two`, `titel_three`, `detail_three`, `ststus`) VALUES
(1, 'safoan', 'chowdhury', 'fjhdjh', 'xdfsdf', 'dfd', 'fggfd', 0),
(3, 'Illum praesentium d', 'Ut sit dolore volupt', 'Voluptas dolores non', 'Fugiat ullam quam ra', 'Sed mollitia eiusmod', 'Porro consequuntur e', 1),
(4, 'Nulla similique maio', 'Commodi quod sunt e', 'Consequatur ipsam et', 'Omnis quibusdam prae', 'Enim hic hic rerum n', 'Eu consequatur paria', 0);

-- --------------------------------------------------------

--
-- Table structure for table `boxs`
--

CREATE TABLE `boxs` (
  `id` int(11) NOT NULL,
  `icon_one` varchar(256) NOT NULL,
  `titel_one` varchar(256) NOT NULL,
  `detail_one` varchar(556) NOT NULL,
  `icon_two` varchar(256) NOT NULL,
  `titel_two` varchar(256) NOT NULL,
  `detail_two` varchar(556) NOT NULL,
  `icon_three` varchar(256) NOT NULL,
  `titel_three` varchar(256) NOT NULL,
  `detail_three` varchar(556) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `Id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL,
  `details` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `food_imgs` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`Id`, `item_id`, `titel`, `details`, `price`, `food_imgs`) VALUES
(3, 8, 'Aut Luia', 'Lorem, deren, trataro, filede, nerada ', 15, 'Food-652b800bb11e4.png'),
(4, 6, 'Magnam Tiste', 'Lorem, deren, trataro, filede, nerada ', 6, 'Food-652b803829d04.png'),
(5, 7, 'Est Eligendi', 'Lorem, deren, trataro, filede, nerada ', 120, 'Food-652b80ed1aa86.png'),
(6, 11, 'Neque molestiae natu', 'Proident quod corru', 711, 'Food-652b9a107cb86.png'),
(7, 10, 'In rerum eaque sunt ', 'In dolores facere at', 731, 'Food-652b9a1bccf92.png'),
(8, 12, 'Aspernatur eligendi ', 'Optio non animi ut', 339, 'Food-652b9a2544981.png'),
(9, 10, 'Enim aspernatur aut ', 'Amet ut vel impedit', 649, 'Food-652b9a2f28736.png'),
(10, 13, 'Similique odit eiusm', 'Dolor at necessitati', 44, 'Food-652b9a383c5a5.png'),
(11, 9, 'Unde ex enim est sed', 'Culpa eum id hic of', 497, 'Food-652b9a5826e9d.png');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `titel`) VALUES
(9, 'starters'),
(10, 'breakfast'),
(11, 'lunch'),
(12, 'dinner'),
(13, 'mid_night');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `profile_img` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `profile_img`) VALUES
(17, 'Safoan bin ', 'chowdhury', 'safoanchy222@gmail.com', 'safoan123', 'User-6514050f29177.jpg'),
(18, 'Liberty', 'Melendez', 'vuwifeqevo@mailinator.com', 'Pa$$w0rd!', NULL),
(19, 'Safoan', 'bin chy', 'chowdhurytoha7@gmail.com', 'Safoan143', NULL),
(20, 'Shafoun', 'Chowdhury', 'safoanchy22211@gmail.com', '$2y$10$jnQcmS.YPdSLJWO8eSenmOjK6WDGMSEDt8uw43WvWG614sC7XbUZW', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workss`
--

CREATE TABLE `workss` (
  `id` int(11) NOT NULL,
  `clients` text NOT NULL,
  `projects` text NOT NULL,
  `supports` text NOT NULL,
  `workers` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workss`
--

INSERT INTO `workss` (`id`, `clients`, `projects`, `supports`, `workers`, `status`) VALUES
(1, '210111', '2555', '2232', '100', 1),
(2, '56', '52', '555', '55868', 0),
(3, '8785', '52556', '335', '5546', 0),
(4, '565546', '6546', '3213', '53443', 0);

-- --------------------------------------------------------

--
-- Table structure for table `yummys`
--

CREATE TABLE `yummys` (
  `id` int(11) NOT NULL,
  `titel` varchar(256) NOT NULL,
  `detail` varchar(556) NOT NULL,
  `button` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `yummys`
--

INSERT INTO `yummys` (`id`, `titel`, `detail`, `button`, `status`) VALUES
(2, 'Aut qui labore irure', 'Velit ducimus occae', 'learn more ', 0),
(3, 'Amet adipisci est u', 'Repellendus Atque f', 'xfcdgfdghxfdhgfc', 1),
(4, 'Ullam illum harum m', 'Inventore placeat e', 'gfgfhgfhgf', 0),
(5, 'Quidem modi voluptat Safoan', 'Labore quo illum su', 'Exercitationem fuga', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boxs`
--
ALTER TABLE `boxs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workss`
--
ALTER TABLE `workss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yummys`
--
ALTER TABLE `yummys`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `boxes`
--
ALTER TABLE `boxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `boxs`
--
ALTER TABLE `boxs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `workss`
--
ALTER TABLE `workss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yummys`
--
ALTER TABLE `yummys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
