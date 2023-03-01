-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2022 lúc 02:14 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE spring_nhom9;
USE spring_nhom9;

--
-- Cơ sở dữ liệu: `spring_nhom9`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ward_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'MSI'),
(3, 'ACER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'ASUS'),
(2, 'Keyboard'),
(3, 'Shell');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

CREATE TABLE `city` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'Thành phố Hà Nội'),
(2, 'Tỉnh Hà Giang'),
(4, 'Tỉnh Cao Bằng'),
(6, 'Tỉnh Bắc Kạn'),
(8, 'Tỉnh Tuyên Quang'),
(10, 'Tỉnh Lào Cai'),
(11, 'Tỉnh Điện Biên'),
(12, 'Tỉnh Lai Châu'),
(14, 'Tỉnh Sơn La'),
(15, 'Tỉnh Yên Bái'),
(17, 'Tỉnh Hòa Bình'),
(19, 'Tỉnh Thái Nguyên'),
(20, 'Tỉnh Lạng Sơn'),
(22, 'Tỉnh Quảng Ninh'),
(24, 'Tỉnh Bắc Giang'),
(25, 'Tỉnh Phú Thọ'),
(26, 'Tỉnh Vĩnh Phúc'),
(27, 'Tỉnh Bắc Ninh'),
(30, 'Tỉnh Hải Dương'),
(31, 'Thành phố Hải Phòng'),
(33, 'Tỉnh Hưng Yên'),
(34, 'Tỉnh Thái Bình'),
(35, 'Tỉnh Hà Nam'),
(36, 'Tỉnh Nam Định'),
(37, 'Tỉnh Ninh Bình'),
(38, 'Tỉnh Thanh Hóa'),
(40, 'Tỉnh Nghệ An'),
(42, 'Tỉnh Hà Tĩnh'),
(44, 'Tỉnh Quảng Bình'),
(45, 'Tỉnh Quảng Trị'),
(46, 'Tỉnh Thừa Thiên Huế'),
(48, 'Thành phố Đà Nẵng'),
(49, 'Tỉnh Quảng Nam'),
(51, 'Tỉnh Quảng Ngãi'),
(52, 'Tỉnh Bình Định'),
(54, 'Tỉnh Phú Yên'),
(56, 'Tỉnh Khánh Hòa'),
(58, 'Tỉnh Ninh Thuận'),
(60, 'Tỉnh Bình Thuận'),
(62, 'Tỉnh Kon Tum'),
(64, 'Tỉnh Gia Lai'),
(66, 'Tỉnh Đắk Lắk'),
(67, 'Tỉnh Đắk Nông'),
(68, 'Tỉnh Lâm Đồng'),
(70, 'Tỉnh Bình Phước'),
(72, 'Tỉnh Tây Ninh'),
(74, 'Tỉnh Bình Dương'),
(75, 'Tỉnh Đồng Nai'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu'),
(79, 'Thành phố Hồ Chí Minh'),
(80, 'Tỉnh Long An'),
(82, 'Tỉnh Tiền Giang'),
(83, 'Tỉnh Bến Tre'),
(84, 'Tỉnh Trà Vinh'),
(86, 'Tỉnh Vĩnh Long'),
(87, 'Tỉnh Đồng Tháp'),
(89, 'Tỉnh An Giang'),
(91, 'Tỉnh Kiên Giang'),
(92, 'Thành phố Cần Thơ'),
(93, 'Tỉnh Hậu Giang'),
(94, 'Tỉnh Sóc Trăng'),
(95, 'Tỉnh Bạc Liêu'),
(96, 'Tỉnh Cà Mau');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `name`, `city_id`) VALUES
(1, 'Quận Ba Đình', 1),
(2, 'Quận Hoàn Kiếm', 1),
(3, 'Quận Tây Hồ', 1),
(4, 'Quận Long Biên', 1),
(5, 'Quận Cầu Giấy', 1),
(6, 'Quận Đống Đa', 1),
(7, 'Quận Hai Bà Trưng', 1),
(8, 'Quận Hoàng Mai', 1),
(9, 'Quận Thanh Xuân', 1),
(16, 'Huyện Sóc Sơn', 1),
(17, 'Huyện Đông Anh', 1),
(18, 'Huyện Gia Lâm', 1),
(19, 'Quận Nam Từ Liêm', 1),
(20, 'Huyện Thanh Trì', 1),
(21, 'Quận Bắc Từ Liêm', 1),
(24, 'Thành phố Hà Giang', 2),
(26, 'Huyện Đồng Văn', 2),
(27, 'Huyện Mèo Vạc', 2),
(28, 'Huyện Yên Minh', 2),
(29, 'Huyện Quản Bạ', 2),
(30, 'Huyện Vị Xuyên', 2),
(31, 'Huyện Bắc Mê', 2),
(32, 'Huyện Hoàng Su Phì', 2),
(33, 'Huyện Xín Mần', 2),
(34, 'Huyện Bắc Quang', 2),
(35, 'Huyện Quang Bình', 2),
(40, 'Thành phố Cao Bằng', 4),
(42, 'Huyện Bảo Lâm', 4),
(43, 'Huyện Bảo Lạc', 4),
(45, 'Huyện Hà Quảng', 4),
(47, 'Huyện Trùng Khánh', 4),
(48, 'Huyện Hạ Lang', 4),
(49, 'Huyện Quảng Hòa', 4),
(51, 'Huyện Hòa An', 4),
(52, 'Huyện Nguyên Bình', 4),
(53, 'Huyện Thạch An', 4),
(58, 'Thành Phố Bắc Kạn', 6),
(60, 'Huyện Pác Nặm', 6),
(61, 'Huyện Ba Bể', 6),
(62, 'Huyện Ngân Sơn', 6),
(63, 'Huyện Bạch Thông', 6),
(64, 'Huyện Chợ Đồn', 6),
(65, 'Huyện Chợ Mới', 6),
(66, 'Huyện Na Rì', 6),
(70, 'Thành phố Tuyên Quang', 8),
(71, 'Huyện Lâm Bình', 8),
(72, 'Huyện Na Hang', 8),
(73, 'Huyện Chiêm Hóa', 8),
(74, 'Huyện Hàm Yên', 8),
(75, 'Huyện Yên Sơn', 8),
(76, 'Huyện Sơn Dương', 8),
(80, 'Thành phố Lào Cai', 10),
(82, 'Huyện Bát Xát', 10),
(83, 'Huyện Mường Khương', 10),
(84, 'Huyện Si Ma Cai', 10),
(85, 'Huyện Bắc Hà', 10),
(86, 'Huyện Bảo Thắng', 10),
(87, 'Huyện Bảo Yên', 10),
(88, 'Thị xã Sa Pa', 10),
(89, 'Huyện Văn Bàn', 10),
(94, 'Thành phố Điện Biên Phủ', 11),
(95, 'Thị Xã Mường Lay', 11),
(96, 'Huyện Mường Nhé', 11),
(97, 'Huyện Mường Chà', 11),
(98, 'Huyện Tủa Chùa', 11),
(99, 'Huyện Tuần Giáo', 11),
(100, 'Huyện Điện Biên', 11),
(101, 'Huyện Điện Biên Đông', 11),
(102, 'Huyện Mường Ảng', 11),
(103, 'Huyện Nậm Pồ', 11),
(105, 'Thành phố Lai Châu', 12),
(106, 'Huyện Tam Đường', 12),
(107, 'Huyện Mường Tè', 12),
(108, 'Huyện Sìn Hồ', 12),
(109, 'Huyện Phong Thổ', 12),
(110, 'Huyện Than Uyên', 12),
(111, 'Huyện Tân Uyên', 12),
(112, 'Huyện Nậm Nhùn', 12),
(116, 'Thành phố Sơn La', 14),
(118, 'Huyện Quỳnh Nhai', 14),
(119, 'Huyện Thuận Châu', 14),
(120, 'Huyện Mường La', 14),
(121, 'Huyện Bắc Yên', 14),
(122, 'Huyện Phù Yên', 14),
(123, 'Huyện Mộc Châu', 14),
(124, 'Huyện Yên Châu', 14),
(125, 'Huyện Mai Sơn', 14),
(126, 'Huyện Sông Mã', 14),
(127, 'Huyện Sốp Cộp', 14),
(128, 'Huyện Vân Hồ', 14),
(132, 'Thành phố Yên Bái', 15),
(133, 'Thị xã Nghĩa Lộ', 15),
(135, 'Huyện Lục Yên', 15),
(136, 'Huyện Văn Yên', 15),
(137, 'Huyện Mù Căng Chải', 15),
(138, 'Huyện Trấn Yên', 15),
(139, 'Huyện Trạm Tấu', 15),
(140, 'Huyện Văn Chấn', 15),
(141, 'Huyện Yên Bình', 15),
(148, 'Thành phố Hòa Bình', 17),
(150, 'Huyện Đà Bắc', 17),
(152, 'Huyện Lương Sơn', 17),
(153, 'Huyện Kim Bôi', 17),
(154, 'Huyện Cao Phong', 17),
(155, 'Huyện Tân Lạc', 17),
(156, 'Huyện Mai Châu', 17),
(157, 'Huyện Lạc Sơn', 17),
(158, 'Huyện Yên Thủy', 17),
(159, 'Huyện Lạc Thủy', 17),
(164, 'Thành phố Thái Nguyên', 19),
(165, 'Thành phố Sông Công', 19),
(167, 'Huyện Định Hóa', 19),
(168, 'Huyện Phú Lương', 19),
(169, 'Huyện Đồng Hỷ', 19),
(170, 'Huyện Võ Nhai', 19),
(171, 'Huyện Đại Từ', 19),
(172, 'Thị xã Phổ Yên', 19),
(173, 'Huyện Phú Bình', 19),
(178, 'Thành phố Lạng Sơn', 20),
(180, 'Huyện Tràng Định', 20),
(181, 'Huyện Bình Gia', 20),
(182, 'Huyện Văn Lãng', 20),
(183, 'Huyện Cao Lộc', 20),
(184, 'Huyện Văn Quan', 20),
(185, 'Huyện Bắc Sơn', 20),
(186, 'Huyện Hữu Lũng', 20),
(187, 'Huyện Chi Lăng', 20),
(188, 'Huyện Lộc Bình', 20),
(189, 'Huyện Đình Lập', 20),
(193, 'Thành phố Hạ Long', 22),
(194, 'Thành phố Móng Cái', 22),
(195, 'Thành phố Cẩm Phả', 22),
(196, 'Thành phố Uông Bí', 22),
(198, 'Huyện Bình Liêu', 22),
(199, 'Huyện Tiên Yên', 22),
(200, 'Huyện Đầm Hà', 22),
(201, 'Huyện Hải Hà', 22),
(202, 'Huyện Ba Chẽ', 22),
(203, 'Huyện Vân Đồn', 22),
(205, 'Thị xã Đông Triều', 22),
(206, 'Thị xã Quảng Yên', 22),
(207, 'Huyện Cô Tô', 22),
(213, 'Thành phố Bắc Giang', 24),
(215, 'Huyện Yên Thế', 24),
(216, 'Huyện Tân Yên', 24),
(217, 'Huyện Lạng Giang', 24),
(218, 'Huyện Lục Nam', 24),
(219, 'Huyện Lục Ngạn', 24),
(220, 'Huyện Sơn Động', 24),
(221, 'Huyện Yên Dũng', 24),
(222, 'Huyện Việt Yên', 24),
(223, 'Huyện Hiệp Hòa', 24),
(227, 'Thành phố Việt Trì', 25),
(228, 'Thị xã Phú Thọ', 25),
(230, 'Huyện Đoan Hùng', 25),
(231, 'Huyện Hạ Hoà', 25),
(232, 'Huyện Thanh Ba', 25),
(233, 'Huyện Phù Ninh', 25),
(234, 'Huyện Yên Lập', 25),
(235, 'Huyện Cẩm Khê', 25),
(236, 'Huyện Tam Nông', 25),
(237, 'Huyện Lâm Thao', 25),
(238, 'Huyện Thanh Sơn', 25),
(239, 'Huyện Thanh Thủy', 25),
(240, 'Huyện Tân Sơn', 25),
(243, 'Thành phố Vĩnh Yên', 26),
(244, 'Thành phố Phúc Yên', 26),
(246, 'Huyện Lập Thạch', 26),
(247, 'Huyện Tam Dương', 26),
(248, 'Huyện Tam Đảo', 26),
(249, 'Huyện Bình Xuyên', 26),
(250, 'Huyện Mê Linh', 1),
(251, 'Huyện Yên Lạc', 26),
(252, 'Huyện Vĩnh Tường', 26),
(253, 'Huyện Sông Lô', 26),
(256, 'Thành phố Bắc Ninh', 27),
(258, 'Huyện Yên Phong', 27),
(259, 'Huyện Quế Võ', 27),
(260, 'Huyện Tiên Du', 27),
(261, 'Thị xã Từ Sơn', 27),
(262, 'Huyện Thuận Thành', 27),
(263, 'Huyện Gia Bình', 27),
(264, 'Huyện Lương Tài', 27),
(268, 'Quận Hà Đông', 1),
(269, 'Thị xã Sơn Tây', 1),
(271, 'Huyện Ba Vì', 1),
(272, 'Huyện Phúc Thọ', 1),
(273, 'Huyện Đan Phượng', 1),
(274, 'Huyện Hoài Đức', 1),
(275, 'Huyện Quốc Oai', 1),
(276, 'Huyện Thạch Thất', 1),
(277, 'Huyện Chương Mỹ', 1),
(278, 'Huyện Thanh Oai', 1),
(279, 'Huyện Thường Tín', 1),
(280, 'Huyện Phú Xuyên', 1),
(281, 'Huyện Ứng Hòa', 1),
(282, 'Huyện Mỹ Đức', 1),
(288, 'Thành phố Hải Dương', 30),
(290, 'Thành phố Chí Linh', 30),
(291, 'Huyện Nam Sách', 30),
(292, 'Thị xã Kinh Môn', 30),
(293, 'Huyện Kim Thành', 30),
(294, 'Huyện Thanh Hà', 30),
(295, 'Huyện Cẩm Giàng', 30),
(296, 'Huyện Bình Giang', 30),
(297, 'Huyện Gia Lộc', 30),
(298, 'Huyện Tứ Kỳ', 30),
(299, 'Huyện Ninh Giang', 30),
(300, 'Huyện Thanh Miện', 30),
(303, 'Quận Hồng Bàng', 31),
(304, 'Quận Ngô Quyền', 31),
(305, 'Quận Lê Chân', 31),
(306, 'Quận Hải An', 31),
(307, 'Quận Kiến An', 31),
(308, 'Quận Đồ Sơn', 31),
(309, 'Quận Dương Kinh', 31),
(311, 'Huyện Thủy Nguyên', 31),
(312, 'Huyện An Dương', 31),
(313, 'Huyện An Lão', 31),
(314, 'Huyện Kiến Thụy', 31),
(315, 'Huyện Tiên Lãng', 31),
(316, 'Huyện Vĩnh Bảo', 31),
(317, 'Huyện Cát Hải', 31),
(318, 'Huyện Bạch Long Vĩ', 31),
(323, 'Thành phố Hưng Yên', 33),
(325, 'Huyện Văn Lâm', 33),
(326, 'Huyện Văn Giang', 33),
(327, 'Huyện Yên Mỹ', 33),
(328, 'Thị xã Mỹ Hào', 33),
(329, 'Huyện Ân Thi', 33),
(330, 'Huyện Khoái Châu', 33),
(331, 'Huyện Kim Động', 33),
(332, 'Huyện Tiên Lữ', 33),
(333, 'Huyện Phù Cừ', 33),
(336, 'Thành phố Thái Bình', 34),
(338, 'Huyện Quỳnh Phụ', 34),
(339, 'Huyện Hưng Hà', 34),
(340, 'Huyện Đông Hưng', 34),
(341, 'Huyện Thái Thụy', 34),
(342, 'Huyện Tiền Hải', 34),
(343, 'Huyện Kiến Xương', 34),
(344, 'Huyện Vũ Thư', 34),
(347, 'Thành phố Phủ Lý', 35),
(349, 'Thị xã Duy Tiên', 35),
(350, 'Huyện Kim Bảng', 35),
(351, 'Huyện Thanh Liêm', 35),
(352, 'Huyện Bình Lục', 35),
(353, 'Huyện Lý Nhân', 35),
(356, 'Thành phố Nam Định', 36),
(358, 'Huyện Mỹ Lộc', 36),
(359, 'Huyện Vụ Bản', 36),
(360, 'Huyện Ý Yên', 36),
(361, 'Huyện Nghĩa Hưng', 36),
(362, 'Huyện Nam Trực', 36),
(363, 'Huyện Trực Ninh', 36),
(364, 'Huyện Xuân Trường', 36),
(365, 'Huyện Giao Thủy', 36),
(366, 'Huyện Hải Hậu', 36),
(369, 'Thành phố Ninh Bình', 37),
(370, 'Thành phố Tam Điệp', 37),
(372, 'Huyện Nho Quan', 37),
(373, 'Huyện Gia Viễn', 37),
(374, 'Huyện Hoa Lư', 37),
(375, 'Huyện Yên Khánh', 37),
(376, 'Huyện Kim Sơn', 37),
(377, 'Huyện Yên Mô', 37),
(380, 'Thành phố Thanh Hóa', 38),
(381, 'Thị xã Bỉm Sơn', 38),
(382, 'Thành phố Sầm Sơn', 38),
(384, 'Huyện Mường Lát', 38),
(385, 'Huyện Quan Hóa', 38),
(386, 'Huyện Bá Thước', 38),
(387, 'Huyện Quan Sơn', 38),
(388, 'Huyện Lang Chánh', 38),
(389, 'Huyện Ngọc Lặc', 38),
(390, 'Huyện Cẩm Thủy', 38),
(391, 'Huyện Thạch Thành', 38),
(392, 'Huyện Hà Trung', 38),
(393, 'Huyện Vĩnh Lộc', 38),
(394, 'Huyện Yên Định', 38),
(395, 'Huyện Thọ Xuân', 38),
(396, 'Huyện Thường Xuân', 38),
(397, 'Huyện Triệu Sơn', 38),
(398, 'Huyện Thiệu Hóa', 38),
(399, 'Huyện Hoằng Hóa', 38),
(400, 'Huyện Hậu Lộc', 38),
(401, 'Huyện Nga Sơn', 38),
(402, 'Huyện Như Xuân', 38),
(403, 'Huyện Như Thanh', 38),
(404, 'Huyện Nông Cống', 38),
(405, 'Huyện Đông Sơn', 38),
(406, 'Huyện Quảng Xương', 38),
(407, 'Thị xã Nghi Sơn', 38),
(412, 'Thành phố Vinh', 40),
(413, 'Thị xã Cửa Lò', 40),
(414, 'Thị xã Thái Hoà', 40),
(415, 'Huyện Quế Phong', 40),
(416, 'Huyện Quỳ Châu', 40),
(417, 'Huyện Kỳ Sơn', 40),
(418, 'Huyện Tương Dương', 40),
(419, 'Huyện Nghĩa Đàn', 40),
(420, 'Huyện Quỳ Hợp', 40),
(421, 'Huyện Quỳnh Lưu', 40),
(422, 'Huyện Con Cuông', 40),
(423, 'Huyện Tân Kỳ', 40),
(424, 'Huyện Anh Sơn', 40),
(425, 'Huyện Diễn Châu', 40),
(426, 'Huyện Yên Thành', 40),
(427, 'Huyện Đô Lương', 40),
(428, 'Huyện Thanh Chương', 40),
(429, 'Huyện Nghi Lộc', 40),
(430, 'Huyện Nam Đàn', 40),
(431, 'Huyện Hưng Nguyên', 40),
(432, 'Thị xã Hoàng Mai', 40),
(436, 'Thành phố Hà Tĩnh', 42),
(437, 'Thị xã Hồng Lĩnh', 42),
(439, 'Huyện Hương Sơn', 42),
(440, 'Huyện Đức Thọ', 42),
(441, 'Huyện Vũ Quang', 42),
(442, 'Huyện Nghi Xuân', 42),
(443, 'Huyện Can Lộc', 42),
(444, 'Huyện Hương Khê', 42),
(445, 'Huyện Thạch Hà', 42),
(446, 'Huyện Cẩm Xuyên', 42),
(447, 'Huyện Kỳ Anh', 42),
(448, 'Huyện Lộc Hà', 42),
(449, 'Thị xã Kỳ Anh', 42),
(450, 'Thành Phố Đồng Hới', 44),
(452, 'Huyện Minh Hóa', 44),
(453, 'Huyện Tuyên Hóa', 44),
(454, 'Huyện Quảng Trạch', 44),
(455, 'Huyện Bố Trạch', 44),
(456, 'Huyện Quảng Ninh', 44),
(457, 'Huyện Lệ Thủy', 44),
(458, 'Thị xã Ba Đồn', 44),
(461, 'Thành phố Đông Hà', 45),
(462, 'Thị xã Quảng Trị', 45),
(464, 'Huyện Vĩnh Linh', 45),
(465, 'Huyện Hướng Hóa', 45),
(466, 'Huyện Gio Linh', 45),
(467, 'Huyện Đa Krông', 45),
(468, 'Huyện Cam Lộ', 45),
(469, 'Huyện Triệu Phong', 45),
(470, 'Huyện Hải Lăng', 45),
(471, 'Huyện Cồn Cỏ', 45),
(474, 'Thành phố Huế', 46),
(476, 'Huyện Phong Điền', 46),
(477, 'Huyện Quảng Điền', 46),
(478, 'Huyện Phú Vang', 46),
(479, 'Thị xã Hương Thủy', 46),
(480, 'Thị xã Hương Trà', 46),
(481, 'Huyện A Lưới', 46),
(482, 'Huyện Phú Lộc', 46),
(483, 'Huyện Nam Đông', 46),
(490, 'Quận Liên Chiểu', 48),
(491, 'Quận Thanh Khê', 48),
(492, 'Quận Hải Châu', 48),
(493, 'Quận Sơn Trà', 48),
(494, 'Quận Ngũ Hành Sơn', 48),
(495, 'Quận Cẩm Lệ', 48),
(497, 'Huyện Hòa Vang', 48),
(498, 'Huyện Hoàng Sa', 48),
(502, 'Thành phố Tam Kỳ', 49),
(503, 'Thành phố Hội An', 49),
(504, 'Huyện Tây Giang', 49),
(505, 'Huyện Đông Giang', 49),
(506, 'Huyện Đại Lộc', 49),
(507, 'Thị xã Điện Bàn', 49),
(508, 'Huyện Duy Xuyên', 49),
(509, 'Huyện Quế Sơn', 49),
(510, 'Huyện Nam Giang', 49),
(511, 'Huyện Phước Sơn', 49),
(512, 'Huyện Hiệp Đức', 49),
(513, 'Huyện Thăng Bình', 49),
(514, 'Huyện Tiên Phước', 49),
(515, 'Huyện Bắc Trà My', 49),
(516, 'Huyện Nam Trà My', 49),
(517, 'Huyện Núi Thành', 49),
(518, 'Huyện Phú Ninh', 49),
(519, 'Huyện Nông Sơn', 49),
(522, 'Thành phố Quảng Ngãi', 51),
(524, 'Huyện Bình Sơn', 51),
(525, 'Huyện Trà Bồng', 51),
(527, 'Huyện Sơn Tịnh', 51),
(528, 'Huyện Tư Nghĩa', 51),
(529, 'Huyện Sơn Hà', 51),
(530, 'Huyện Sơn Tây', 51),
(531, 'Huyện Minh Long', 51),
(532, 'Huyện Nghĩa Hành', 51),
(533, 'Huyện Mộ Đức', 51),
(534, 'Thị xã Đức Phổ', 51),
(535, 'Huyện Ba Tơ', 51),
(536, 'Huyện Lý Sơn', 51),
(540, 'Thành phố Quy Nhơn', 52),
(542, 'Huyện An Lão', 52),
(543, 'Thị xã Hoài Nhơn', 52),
(544, 'Huyện Hoài Ân', 52),
(545, 'Huyện Phù Mỹ', 52),
(546, 'Huyện Vĩnh Thạnh', 52),
(547, 'Huyện Tây Sơn', 52),
(548, 'Huyện Phù Cát', 52),
(549, 'Thị xã An Nhơn', 52),
(550, 'Huyện Tuy Phước', 52),
(551, 'Huyện Vân Canh', 52),
(555, 'Thành phố Tuy Hoà', 54),
(557, 'Thị xã Sông Cầu', 54),
(558, 'Huyện Đồng Xuân', 54),
(559, 'Huyện Tuy An', 54),
(560, 'Huyện Sơn Hòa', 54),
(561, 'Huyện Sông Hinh', 54),
(562, 'Huyện Tây Hoà', 54),
(563, 'Huyện Phú Hoà', 54),
(564, 'Thị xã Đông Hòa', 54),
(568, 'Thành phố Nha Trang', 56),
(569, 'Thành phố Cam Ranh', 56),
(570, 'Huyện Cam Lâm', 56),
(571, 'Huyện Vạn Ninh', 56),
(572, 'Thị xã Ninh Hòa', 56),
(573, 'Huyện Khánh Vĩnh', 56),
(574, 'Huyện Diên Khánh', 56),
(575, 'Huyện Khánh Sơn', 56),
(576, 'Huyện Trường Sa', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 58),
(584, 'Huyện Bác Ái', 58),
(585, 'Huyện Ninh Sơn', 58),
(586, 'Huyện Ninh Hải', 58),
(587, 'Huyện Ninh Phước', 58),
(588, 'Huyện Thuận Bắc', 58),
(589, 'Huyện Thuận Nam', 58),
(593, 'Thành phố Phan Thiết', 60),
(594, 'Thị xã La Gi', 60),
(595, 'Huyện Tuy Phong', 60),
(596, 'Huyện Bắc Bình', 60),
(597, 'Huyện Hàm Thuận Bắc', 60),
(598, 'Huyện Hàm Thuận Nam', 60),
(599, 'Huyện Tánh Linh', 60),
(600, 'Huyện Đức Linh', 60),
(601, 'Huyện Hàm Tân', 60),
(602, 'Huyện Phú Quý', 60),
(608, 'Thành phố Kon Tum', 62),
(610, 'Huyện Đắk Glei', 62),
(611, 'Huyện Ngọc Hồi', 62),
(612, 'Huyện Đắk Tô', 62),
(613, 'Huyện Kon Plông', 62),
(614, 'Huyện Kon Rẫy', 62),
(615, 'Huyện Đắk Hà', 62),
(616, 'Huyện Sa Thầy', 62),
(617, 'Huyện Tu Mơ Rông', 62),
(618, 'Huyện Ia H\' Drai', 62),
(622, 'Thành phố Pleiku', 64),
(623, 'Thị xã An Khê', 64),
(624, 'Thị xã Ayun Pa', 64),
(625, 'Huyện KBang', 64),
(626, 'Huyện Đăk Đoa', 64),
(627, 'Huyện Chư Păh', 64),
(628, 'Huyện Ia Grai', 64),
(629, 'Huyện Mang Yang', 64),
(630, 'Huyện Kông Chro', 64),
(631, 'Huyện Đức Cơ', 64),
(632, 'Huyện Chư Prông', 64),
(633, 'Huyện Chư Sê', 64),
(634, 'Huyện Đăk Pơ', 64),
(635, 'Huyện Ia Pa', 64),
(637, 'Huyện Krông Pa', 64),
(638, 'Huyện Phú Thiện', 64),
(639, 'Huyện Chư Pưh', 64),
(643, 'Thành phố Buôn Ma Thuột', 66),
(644, 'Thị Xã Buôn Hồ', 66),
(645, 'Huyện Ea H\'leo', 66),
(646, 'Huyện Ea Súp', 66),
(647, 'Huyện Buôn Đôn', 66),
(648, 'Huyện Cư M\'Gar', 66),
(649, 'Huyện Krông Búk', 66),
(650, 'Huyện Krông Năng', 66),
(651, 'Huyện Ea Kar', 66),
(652, 'Huyện M\'Đrắk', 66),
(653, 'Huyện Krông Bông', 66),
(654, 'Huyện Krông Pắc', 66),
(655, 'Huyện Krông A Na', 66),
(656, 'Huyện Lắk', 66),
(657, 'Huyện Cư Kuin', 66),
(660, 'Thành phố Gia Nghĩa', 67),
(661, 'Huyện Đăk Glong', 67),
(662, 'Huyện Cư Jút', 67),
(663, 'Huyện Đắk Mil', 67),
(664, 'Huyện Krông Nô', 67),
(665, 'Huyện Đắk Song', 67),
(666, 'Huyện Đắk R\'Lấp', 67),
(667, 'Huyện Tuy Đức', 67),
(672, 'Thành phố Đà Lạt', 68),
(673, 'Thành phố Bảo Lộc', 68),
(674, 'Huyện Đam Rông', 68),
(675, 'Huyện Lạc Dương', 68),
(676, 'Huyện Lâm Hà', 68),
(677, 'Huyện Đơn Dương', 68),
(678, 'Huyện Đức Trọng', 68),
(679, 'Huyện Di Linh', 68),
(680, 'Huyện Bảo Lâm', 68),
(681, 'Huyện Đạ Huoai', 68),
(682, 'Huyện Đạ Tẻh', 68),
(683, 'Huyện Cát Tiên', 68),
(688, 'Thị xã Phước Long', 70),
(689, 'Thành phố Đồng Xoài', 70),
(690, 'Thị xã Bình Long', 70),
(691, 'Huyện Bù Gia Mập', 70),
(692, 'Huyện Lộc Ninh', 70),
(693, 'Huyện Bù Đốp', 70),
(694, 'Huyện Hớn Quản', 70),
(695, 'Huyện Đồng Phú', 70),
(696, 'Huyện Bù Đăng', 70),
(697, 'Huyện Chơn Thành', 70),
(698, 'Huyện Phú Riềng', 70),
(703, 'Thành phố Tây Ninh', 72),
(705, 'Huyện Tân Biên', 72),
(706, 'Huyện Tân Châu', 72),
(707, 'Huyện Dương Minh Châu', 72),
(708, 'Huyện Châu Thành', 72),
(709, 'Thị xã Hòa Thành', 72),
(710, 'Huyện Gò Dầu', 72),
(711, 'Huyện Bến Cầu', 72),
(712, 'Thị xã Trảng Bàng', 72),
(718, 'Thành phố Thủ Dầu Một', 74),
(719, 'Huyện Bàu Bàng', 74),
(720, 'Huyện Dầu Tiếng', 74),
(721, 'Thị xã Bến Cát', 74),
(722, 'Huyện Phú Giáo', 74),
(723, 'Thị xã Tân Uyên', 74),
(724, 'Thành phố Dĩ An', 74),
(725, 'Thành phố Thuận An', 74),
(726, 'Huyện Bắc Tân Uyên', 74),
(731, 'Thành phố Biên Hòa', 75),
(732, 'Thành phố Long Khánh', 75),
(734, 'Huyện Tân Phú', 75),
(735, 'Huyện Vĩnh Cửu', 75),
(736, 'Huyện Định Quán', 75),
(737, 'Huyện Trảng Bom', 75),
(738, 'Huyện Thống Nhất', 75),
(739, 'Huyện Cẩm Mỹ', 75),
(740, 'Huyện Long Thành', 75),
(741, 'Huyện Xuân Lộc', 75),
(742, 'Huyện Nhơn Trạch', 75),
(747, 'Thành phố Vũng Tàu', 77),
(748, 'Thành phố Bà Rịa', 77),
(750, 'Huyện Châu Đức', 77),
(751, 'Huyện Xuyên Mộc', 77),
(752, 'Huyện Long Điền', 77),
(753, 'Huyện Đất Đỏ', 77),
(754, 'Thị xã Phú Mỹ', 77),
(755, 'Huyện Côn Đảo', 77),
(760, 'Quận 1', 79),
(761, 'Quận 12', 79),
(764, 'Quận Gò Vấp', 79),
(765, 'Quận Bình Thạnh', 79),
(766, 'Quận Tân Bình', 79),
(767, 'Quận Tân Phú', 79),
(768, 'Quận Phú Nhuận', 79),
(769, 'Thành phố Thủ Đức', 79),
(770, 'Quận 3', 79),
(771, 'Quận 10', 79),
(772, 'Quận 11', 79),
(773, 'Quận 4', 79),
(774, 'Quận 5', 79),
(775, 'Quận 6', 79),
(776, 'Quận 8', 79),
(777, 'Quận Bình Tân', 79),
(778, 'Quận 7', 79),
(783, 'Huyện Củ Chi', 79),
(784, 'Huyện Hóc Môn', 79),
(785, 'Huyện Bình Chánh', 79),
(786, 'Huyện Nhà Bè', 79),
(787, 'Huyện Cần Giờ', 79),
(794, 'Thành phố Tân An', 80),
(795, 'Thị xã Kiến Tường', 80),
(796, 'Huyện Tân Hưng', 80),
(797, 'Huyện Vĩnh Hưng', 80),
(798, 'Huyện Mộc Hóa', 80),
(799, 'Huyện Tân Thạnh', 80),
(800, 'Huyện Thạnh Hóa', 80),
(801, 'Huyện Đức Huệ', 80),
(802, 'Huyện Đức Hòa', 80),
(803, 'Huyện Bến Lức', 80),
(804, 'Huyện Thủ Thừa', 80),
(805, 'Huyện Tân Trụ', 80),
(806, 'Huyện Cần Đước', 80),
(807, 'Huyện Cần Giuộc', 80),
(808, 'Huyện Châu Thành', 80),
(815, 'Thành phố Mỹ Tho', 82),
(816, 'Thị xã Gò Công', 82),
(817, 'Thị xã Cai Lậy', 82),
(818, 'Huyện Tân Phước', 82),
(819, 'Huyện Cái Bè', 82),
(820, 'Huyện Cai Lậy', 82),
(821, 'Huyện Châu Thành', 82),
(822, 'Huyện Chợ Gạo', 82),
(823, 'Huyện Gò Công Tây', 82),
(824, 'Huyện Gò Công Đông', 82),
(825, 'Huyện Tân Phú Đông', 82),
(829, 'Thành phố Bến Tre', 83),
(831, 'Huyện Châu Thành', 83),
(832, 'Huyện Chợ Lách', 83),
(833, 'Huyện Mỏ Cày Nam', 83),
(834, 'Huyện Giồng Trôm', 83),
(835, 'Huyện Bình Đại', 83),
(836, 'Huyện Ba Tri', 83),
(837, 'Huyện Thạnh Phú', 83),
(838, 'Huyện Mỏ Cày Bắc', 83),
(842, 'Thành phố Trà Vinh', 84),
(844, 'Huyện Càng Long', 84),
(845, 'Huyện Cầu Kè', 84),
(846, 'Huyện Tiểu Cần', 84),
(847, 'Huyện Châu Thành', 84),
(848, 'Huyện Cầu Ngang', 84),
(849, 'Huyện Trà Cú', 84),
(850, 'Huyện Duyên Hải', 84),
(851, 'Thị xã Duyên Hải', 84),
(855, 'Thành phố Vĩnh Long', 86),
(857, 'Huyện Long Hồ', 86),
(858, 'Huyện Mang Thít', 86),
(859, 'Huyện Vũng Liêm', 86),
(860, 'Huyện Tam Bình', 86),
(861, 'Thị xã Bình Minh', 86),
(862, 'Huyện Trà Ôn', 86),
(863, 'Huyện Bình Tân', 86),
(866, 'Thành phố Cao Lãnh', 87),
(867, 'Thành phố Sa Đéc', 87),
(868, 'Thành phố Hồng Ngự', 87),
(869, 'Huyện Tân Hồng', 87),
(870, 'Huyện Hồng Ngự', 87),
(871, 'Huyện Tam Nông', 87),
(872, 'Huyện Tháp Mười', 87),
(873, 'Huyện Cao Lãnh', 87),
(874, 'Huyện Thanh Bình', 87),
(875, 'Huyện Lấp Vò', 87),
(876, 'Huyện Lai Vung', 87),
(877, 'Huyện Châu Thành', 87),
(883, 'Thành phố Long Xuyên', 89),
(884, 'Thành phố Châu Đốc', 89),
(886, 'Huyện An Phú', 89),
(887, 'Thị xã Tân Châu', 89),
(888, 'Huyện Phú Tân', 89),
(889, 'Huyện Châu Phú', 89),
(890, 'Huyện Tịnh Biên', 89),
(891, 'Huyện Tri Tôn', 89),
(892, 'Huyện Châu Thành', 89),
(893, 'Huyện Chợ Mới', 89),
(894, 'Huyện Thoại Sơn', 89),
(899, 'Thành phố Rạch Giá', 91),
(900, 'Thành phố Hà Tiên', 91),
(902, 'Huyện Kiên Lương', 91),
(903, 'Huyện Hòn Đất', 91),
(904, 'Huyện Tân Hiệp', 91),
(905, 'Huyện Châu Thành', 91),
(906, 'Huyện Giồng Riềng', 91),
(907, 'Huyện Gò Quao', 91),
(908, 'Huyện An Biên', 91),
(909, 'Huyện An Minh', 91),
(910, 'Huyện Vĩnh Thuận', 91),
(911, 'Thành phố Phú Quốc', 91),
(912, 'Huyện Kiên Hải', 91),
(913, 'Huyện U Minh Thượng', 91),
(914, 'Huyện Giang Thành', 91),
(916, 'Quận Ninh Kiều', 92),
(917, 'Quận Ô Môn', 92),
(918, 'Quận Bình Thủy', 92),
(919, 'Quận Cái Răng', 92),
(923, 'Quận Thốt Nốt', 92),
(924, 'Huyện Vĩnh Thạnh', 92),
(925, 'Huyện Cờ Đỏ', 92),
(926, 'Huyện Phong Điền', 92),
(927, 'Huyện Thới Lai', 92),
(930, 'Thành phố Vị Thanh', 93),
(931, 'Thành phố Ngã Bảy', 93),
(932, 'Huyện Châu Thành A', 93),
(933, 'Huyện Châu Thành', 93),
(934, 'Huyện Phụng Hiệp', 93),
(935, 'Huyện Vị Thủy', 93),
(936, 'Huyện Long Mỹ', 93),
(937, 'Thị xã Long Mỹ', 93),
(941, 'Thành phố Sóc Trăng', 94),
(942, 'Huyện Châu Thành', 94),
(943, 'Huyện Kế Sách', 94),
(944, 'Huyện Mỹ Tú', 94),
(945, 'Huyện Cù Lao Dung', 94),
(946, 'Huyện Long Phú', 94),
(947, 'Huyện Mỹ Xuyên', 94),
(948, 'Thị xã Ngã Năm', 94),
(949, 'Huyện Thạnh Trị', 94),
(950, 'Thị xã Vĩnh Châu', 94),
(951, 'Huyện Trần Đề', 94),
(954, 'Thành phố Bạc Liêu', 95),
(956, 'Huyện Hồng Dân', 95),
(957, 'Huyện Phước Long', 95),
(958, 'Huyện Vĩnh Lợi', 95),
(959, 'Thị xã Giá Rai', 95),
(960, 'Huyện Đông Hải', 95),
(961, 'Huyện Hòa Bình', 95),
(964, 'Thành phố Cà Mau', 96),
(966, 'Huyện U Minh', 96),
(967, 'Huyện Thới Bình', 96),
(968, 'Huyện Trần Văn Thời', 96),
(969, 'Huyện Cái Nước', 96),
(970, 'Huyện Đầm Dơi', 96),
(971, 'Huyện Năm Căn', 96),
(972, 'Huyện Phú Tân', 96),
(973, 'Huyện Ngọc Hiển', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` bigint(20) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `time_create` varchar(255) NOT NULL,
  `total_price` double NOT NULL,
  `was_pay` bit(1) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_public_id` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `model_year` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `description`, `image_public_id`, `image_url`, `model_year`, `name`, `price`, `stock`, `brand_id`, `category_id`) VALUES
(1, 'HTML từ zero tới Hero', 'spring/ljbjiukzavrvgdjkhlta', 'http://res.cloudinary.com/dantocthang/image/upload/v1669442776/spring/ljbjiukzavrvgdjkhlta.jpg', 2022, 'Akko 3087', 1500000, 11, 1, 3),
(2, 'Tai nghe đến từ Razer', 'spring/lsiqmueuqidfprovgtux', 'http://res.cloudinary.com/dantocthang/image/upload/v1669442847/spring/lsiqmueuqidfprovgtux.jpg', 2018, 'Tai nghe Razer', 580000, 0, 1, 1),
(3, 'sadfsafas', 'spring/w6lpmrpxgcq5wk1jtdnl', 'http://res.cloudinary.com/dantocthang/image/upload/v1669516300/spring/w6lpmrpxgcq5wk1jtdnl.jpg', 2022, 'fasdf', 32342, 10, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `role` varchar(120) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `username`) VALUES
(1, 'b@gmail.com', '$2a$10$bOL9Q/D23jlr9zhrKtVUwuXgowR2pEL2hFnJa/POYNmSUxWgd/m9q', 'admin', 'mod'),
(11, 'c@gmail.com', '$2a$10$q6IeE8PEJDlLpJqG3uzEs.ygSJy1P99TsyYa3RhAD2I9hCl5jkDbi', 'user', 'dantocthang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ward`
--

CREATE TABLE `ward` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ward`
--

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6i66ijb8twgcqtetl8eeeed6v` (`user_id`),
  ADD KEY `FKq7vspx6bqxq5lawbv2calw5lb` (`ward_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK80ah95nnjgc8h3x4e5kgs4q56` (`invoice_id`),
  ADD KEY `FKjcyd5wv4igqnw413rgxbfu4nv` (`product_id`),
  ADD KEY `FKka3t831w0aw2vrwgsbhcn5y4m` (`user_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKsgx09prp6sk2f0we38bf2dtal` (`city_id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `FKfr58frcfyt9my16gqv09hn2n8` (`address_id`),
  ADD KEY `FKc8jotskr93810vgn75qlbusw2` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs6cydsualtsrprvlf2bb3lcam` (`brand_id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Chỉ mục cho bảng `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKslko72wj5nauqvsgefqkvwpsb` (`district_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `ward`
--
ALTER TABLE `ward`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32249;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK6i66ijb8twgcqtetl8eeeed6v` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKq7vspx6bqxq5lawbv2calw5lb` FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`);

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FK80ah95nnjgc8h3x4e5kgs4q56` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`),
  ADD CONSTRAINT `FKjcyd5wv4igqnw413rgxbfu4nv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKka3t831w0aw2vrwgsbhcn5y4m` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `FKsgx09prp6sk2f0we38bf2dtal` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Các ràng buộc cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FKc8jotskr93810vgn75qlbusw2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKfr58frcfyt9my16gqv09hn2n8` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Các ràng buộc cho bảng `ward`
--
ALTER TABLE `ward`
  ADD CONSTRAINT `FKslko72wj5nauqvsgefqkvwpsb` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
