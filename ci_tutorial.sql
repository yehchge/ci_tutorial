-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 建立日期: 2014 年 04 月 28 日 11:28
-- 伺服器版本: 5.5.16
-- PHP 版本: 5.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `ci_tutorial`
--

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('user','admin') NOT NULL DEFAULT 'user',
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`user_id`, `type`, `email`, `password`, `date_added`) VALUES
(10, 'admin', 'admin@admin.com', 'f93b66c65ce6e535030991739c91675e5e8c0d3c', '0000-00-00 00:00:00'),
(11, 'user', 'test@test.com', '14ef34f2a60b3a0d42831029f5f4e2fa58b9a5d6', '0000-00-00 00:00:00'),
(12, 'user', 'j@j.com', '99033f52aaff9d8241a71c3a0ae37868bb6d8b24', '0000-00-00 00:00:00'),
(13, 'user', '1@1.com', '73f91f3c5c3536dfa4b8ed040f9f33678f4d9eb4', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
