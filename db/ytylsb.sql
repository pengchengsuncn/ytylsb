-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 05 月 05 日 03:35
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ytylsb`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, '熊出没系列'),
(2, '充气动漫系列'),
(3, '充气城堡系列'),
(4, '充气乐园系列'),
(5, '充气滑梯系列'),
(6, '充气攀岩系列'),
(7, '充气水上系列'),
(8, '充气竞技产品'),
(9, '充气组合系列');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `size` varchar(50) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `size`, `img_path`, `category_id`) VALUES
(1, '大风车', NULL, 'images/products/001.jpg', 4),
(2, '迪斯尼城堡', '16mX9m', 'images/products/002.jpg', 3),
(3, '动画城', NULL, 'images/products/003.jpg', 4),
(4, '儿童城堡', '12.5mX8m', 'images/products/004.jpg', 3),
(5, '海豚滑梯', '9mX16m', 'images/products/005.jpg', 5),
(6, '金龙乐园', '10mX8m', 'images/products/006.jpg', 4),
(7, '篮球部落', '8mX5m', 'images/products/007.jpg', 8),
(8, '蘑菇小屋', '5mX6m', 'images/products/008.jpg', 9),
(9, '哪吒传奇', '14mX7m', 'images/products/009.jpg', 2),
(10, '生日蛋糕', NULL, 'images/products/010.jpg', 9),
(11, '世纪卡通园', '14mX7m', 'images/products/011.jpg', 4),
(12, '水果乐园', NULL, 'images/products/012.jpg', 9),
(13, '喜羊羊灰太狼', '10mX8m', 'images/products/013.jpg', 2),
(14, '小城堡', '4mX4m', 'images/products/014.jpg', 3),
(15, '钻洞滑梯', '12mX4m', 'images/products/015.jpg', 5),
(16, '疯狂企鹅大滑梯', '14mx7m', 'images/products/016.jpg', 5),
(17, '海洋世界', '15mX8m', 'images/products/017.jpg', 7),
(18, '攀岩', '8mX8m', 'images/products/018.jpg', 6),
(19, '熊出没', '6mX4m', 'images/products/019.jpg', 1),
(20, '熊出没', '12mx7m', 'images/products/020.jpg', 1),
(21, '熊出没', '12mx7m', 'images/products/021.jpg', 1),
(22, '侏罗纪公园', '14mx10m', 'images/products/022.jpg', 4),
(23, '投篮游戏', '4.6x3x4.6', 'images/products/023.jpg', 8),
(24, '水池', '5x8m', 'images/products/024.jpg', 7),
(25, '熊出没', '5x8m', 'images/products/025.jpg', 3),
(26, '熊出没', '5x8m', 'images/products/026.jpg', 1),
(27, '8字滑梯', '16mx8m', 'images/products/027.jpg', 4),
(28, '熊出没', '9x16m', 'images/products/028.jpg', 1),
(29, '儿童乐园', '10x6m', 'images/products/029.jpg', 3),
(30, '快乐之旅', '10x6m', 'images/products/030.jpg', 3),
(31, '水池', '10x20m', 'images/products/031.jpg', 7),
(32, '熊出没', '11x7', 'images/products/032.jpg', 5),
(33, '水池', '11x8m', 'images/products/033.jpg', 7),
(34, '熊出没', '12x7m', 'images/products/034.jpg', 1),
(35, '超级玛丽', '12x8m', 'images/products/035.jpg', 5),
(36, '熊出没', '14mx7m', 'images/products/036.jpg', 5),
(37, '飞鹰计划', '14mx7m', 'images/products/037.jpg', 3),
(38, '熊出没', '14mx7m', 'images/products/038.jpg', 5),
(39, '熊出没', '14mx7m', 'images/products/039.jpg', 1),
(40, '熊出没', '14mx7m', 'images/products/040.jpg', 1),
(41, '大攀岩', '15x8m', 'images/products/041.jpg', 5),
(42, '大猩猩', '15x8m', 'images/products/042.jpg', 5),
(43, '迪斯尼城堡', '15x8m', 'images/products/043.jpg', 5),
(44, '圣诞老人大滑梯', '15x8m', 'images/products/044.jpg', 5),
(45, '大攀岩', '16x9m', 'images/products/045.jpg', 5),
(46, '大滑梯', '19mX8m', 'images/products/046.jpg', 5),
(47, '鲨鱼滑梯', '20x10m', 'images/products/047.jpg', 5),
(48, '奥运大赛场', '23X4X4.5', 'images/products/048.jpg', 8),
(49, '超级玛丽', '14X7/15X8', 'images/products/049.jpg', 5),
(50, '充气攀岩', '9×9×9', 'images/products/050.jpg', 6),
(51, '大滑梯', '20X10', 'images/products/051.jpg', 5),
(52, '方攀岩', '9m9m9m', 'images/products/052.jpg', 6),
(53, '福娃乐园', '6x10', 'images/products/053.jpg', 3),
(54, '快乐童年', '12.5m×8m', 'images/products/054.jpg', 3),
(55, '龙宝宝滑梯', '14X7/15X8', 'images/products/055.jpg', 5),
(56, '蒙牛攀岩', '8x8x8', 'images/products/056.jpg', 6),
(57, '米奇滑梯', '14mX7m', 'images/products/057.jpg', 5),
(58, '米奇之家', '8m×5m', 'images/products/058.jpg', 3),
(59, '蘑菇乐园', '10mX6m', 'images/products/059.jpg', 3),
(60, '攀岩', '8X8', 'images/products/060.jpg', 6),
(61, '森林争霸', '14x7x6', 'images/products/061.jpg', 5),
(62, '狮子乐园', '6mX5m', 'images/products/062.jpg', 5),
(63, '太空基地', '30X20', 'images/products/063.jpg', 9),
(64, '五环攀岩', NULL, 'images/products/064.jpg', 6),
(65, '喜羊头与灰太狼', '10mX8m', 'images/products/065.jpg', 3),
(66, '喜洋洋', '11X7', 'images/products/066.jpg', 3),
(67, '熊出没', '14X7', 'images/products/067.jpg', 1),
(68, '熊出没', '8mx5m', 'images/products/068.jpg', 3),
(69, '熊出没', '10X6', 'images/products/069.jpg', 1),
(70, '熊出没', '11X7', 'images/products/070.jpg', 1),
(71, '熊出没', '12X6', 'images/products/071.jpg', 5),
(72, '熊出没', '12x7', 'images/products/072.jpg', 5),
(73, '熊出没', '12x10', 'images/products/073.jpg', 5),
(74, '熊出没', '14x17', 'images/products/074.jpg', 1),
(75, '熊出没', '15x8', 'images/products/075.jpg', 1),
(76, '熊出没', '17x9', 'images/products/076.jpg', 5),
(77, '熊猫乐园', '15m×8m', 'images/products/077.jpg', 3),
(78, '雪山攀越', '10x5x10', 'images/products/078.jpg', 8),
(79, '椰树障碍赛', '14x3.7x5', 'images/products/079.jpg', 8),
(80, '障碍赛', '13.3x3.7x5', 'images/products/080.jpg', 8),
(81, '侏罗纪公园', '14x10', 'images/products/081.jpg', 3),
(82, '足球场', '22x10x3.8', 'images/products/082.jpg', 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
