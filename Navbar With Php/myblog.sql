-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 12:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'vk', 'vk@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` varchar(100) DEFAULT '#',
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `action`, `status`) VALUES
(9, 'Home', 'index.php', 1),
(10, 'BollyWood', 'category.php', 1),
(11, 'Drama', 'category.php', 1),
(12, 'Cricket', 'category.php', 1),
(13, 'News', 'category.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `post_id`, `created_at`) VALUES
(15, 'Very Nice', 'vk', 43, '2021-07-07 06:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `images`) VALUES
(15, 40, '1.jpg'),
(16, 40, '2.jpg'),
(17, 40, 'adminicon.png'),
(18, 40, 'bookmark.png'),
(19, 40, 'choose.png'),
(20, 41, 'akshay.jpeg'),
(21, 41, 'bollywood.jfif'),
(22, 42, 'akshay-kumar-and-twinkle-khanna-1.jpg'),
(23, 42, 'bollywood1.jfif'),
(24, 43, 'bollywood1.jfif'),
(25, 43, 'bollywood2.jfif'),
(26, 44, 'drama2.png'),
(27, 44, 'drama3.jfif'),
(28, 45, 'drama.jfif'),
(29, 45, 'drama4.jfif'),
(30, 46, 'drama1.png'),
(31, 46, 'drama5.jfif'),
(32, 47, 'cric.jpg'),
(33, 47, 'cric1.jfif'),
(34, 47, 'cric2.jfif'),
(35, 47, 'cric3.jpg'),
(36, 47, 'cric4.jpg'),
(37, 47, 'cric5.jpg'),
(38, 48, 'news.jfif'),
(39, 48, 'news1.jpg'),
(40, 48, 'news2.jfif'),
(41, 48, 'news3.jfif'),
(42, 48, 'news4.jfif'),
(43, 48, 'news5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `short` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `category_id`, `short`) VALUES
(41, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><em><strong>Nulla </strong></em>sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellen<strong>tesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</strong></span><strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></strong></p>\r\n', '2021-07-07 03:47:39', 10, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, '),
(42, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ', '<p><span style=\"background-color:Yellow;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"background-color:Yellow;\">Nulla sed ali</span>quam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></p>\r\n', '2021-07-07 03:49:20', 10, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, '),
(43, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></p>\r\n', '2021-07-07 03:50:39', 10, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, '),
(44, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></p>\r\n', '2021-07-07 03:51:07', 11, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, '),
(45, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></p>\r\n', '2021-07-07 03:51:46', 11, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, '),
(46, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></p>\r\n', '2021-07-07 03:52:17', 11, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, '),
(47, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></p>\r\n', '2021-07-07 03:53:14', 12, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, '),
(48, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra,&nbsp;</span></p>\r\n', '2021-07-07 03:53:50', 13, 'Nulla sed aliquam dui. Pellentesque dolor turpis, efficitur cursus pellentesque non, bibendum eget felis. Ut elementum, ante eget feugiat viverra, ');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `parent_menu_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `parent_menu_id`, `name`, `action`, `status`) VALUES
(10, 10, 'bollywood', 'category.php', 1),
(11, 11, 'Hero', '#', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
