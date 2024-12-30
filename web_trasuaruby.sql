-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 29, 2024 at 04:06 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_trasuaruby`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

DROP TABLE IF EXISTS `tbl_baiviet`;
CREATE TABLE IF NOT EXISTS `tbl_baiviet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenbaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(10, 'Tin nóng', '<p>Thưởng Tết cao nhất ở TP HCM hơn 1,9 tỷ đồng</p>\r\n', '<h1>Thưởng Tết cao nhất ở TP HCM hơn 1,9 tỷ đồng</h1>\r\n\r\n<p>Mức thưởng Tết Ất Tỵ d&agrave;nh cho c&aacute; nh&acirc;n ở TP HCM cao nhất hơn 1,9 tỷ đồng, thấp hơn năm trước, song dẫn đầu hơn 20 địa phương đ&atilde; c&ocirc;ng bố.</p>\r\n\r\n<p>Nội dung tr&ecirc;n nằm trong b&aacute;o c&aacute;o lương, thưởng Tết 2025 của Sở Lao động, Thương binh v&agrave; X&atilde; hội TP HCM sau khi ghi nhận từ 1.570 doanh nghiệp với 310.000 lao động.</p>\r\n\r\n<p><img alt=\"Công nhân Khu chế xuất Tân Thuận, quận 7, TP HCM  trong giờ làm việc. Ảnh: Lê Tuyết\" src=\"https://i1-vnexpress.vnecdn.net/2024/12/23/img-1724-jpg-1734942732-1761-1734942779.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=oE4oSZAWgRL2tY_UYctagg\" /></p>\r\n\r\n<p>C&ocirc;ng nh&acirc;n Khu chế xuất T&acirc;n Thuận, quận 7, TP HCM trong giờ l&agrave;m việc. Ảnh:&nbsp;<em>L&ecirc; Tuyết</em></p>\r\n\r\n<p>Người được thưởng cao nhất l&agrave;m ở doanh nghiệp vốn đầu tư nước ngo&agrave;i (FDI) với mức 1,908 tỷ đồng, c&ograve;n mức thấp nhất 5,9 triệu đồng. Thưởng cao nhất năm nay giảm so với năm ngo&aacute;i (2,078 tỷ đồng), song mức thấp nhất tăng 1,1 triệu đồng của năm trước. Mức thưởng b&igrave;nh qu&acirc;n năm nay l&agrave; 12,7 triệu đồng mỗi người, tăng 3,3% so với năm ngo&aacute;i (12,3 triệu đồng).</p>\r\n\r\n<p>Đối với Tết Dương lịch 2025, mức thưởng cao nhất d&agrave;nh cho một người l&agrave; 1,8 tỷ đồng cũng thuộc về doanh nghiệp FDI, mức thưởng b&igrave;nh qu&acirc;n l&agrave; 3,4 triệu đồng v&agrave; thấp nhất l&agrave; 300.000 đồng.</p>\r\n\r\n<p>Trong khi đ&oacute;, ở phần tiền lương năm 2024, theo b&aacute;o c&aacute;o của doanh nghiệp, mức lương cao nhất doanh nghiệp trả cho một lao động l&agrave; 863 triệu đồng mỗi th&aacute;ng, mức lương b&igrave;nh qu&acirc;n l&agrave; 12,4 triệu đồng v&agrave; thấp nhất 6,2 triệu đồng. Lương cao nhất năm nay cho một c&aacute; nh&acirc;n giảm so với năm ngo&aacute;i (931,5 triệu đồng) nhưng mức b&igrave;nh qu&acirc;n v&agrave; thấp nhất lại tăng.</p>\r\n\r\n<p>Trong 1.570 doanh nghiệp gửi b&aacute;o c&aacute;o, c&oacute; 394 doanh nghiệp (chiếm 25%) th&ocirc;ng tin gặp kh&oacute; trong thưởng Tết cho lao động do đơn h&agrave;ng giảm, thu hẹp hoạt động, kh&oacute; thu hồi c&ocirc;ng nợ, l&atilde;i vay... Tuy nhi&ecirc;n, hầu hết doanh nghiệp đều cố gắng thưởng Tết theo quy chế, hợp đồng lao động. Nhiều đơn vị c&ograve;n tặng qu&agrave;, phiếu mua h&agrave;ng, l&igrave; x&igrave;, tổ chức xe đưa đ&oacute;n lao động về qu&ecirc;.</p>\r\n\r\n<p>TP HCM hiện c&oacute; hơn 500.000 doanh nghiệp, sử dụng hơn 2,5 triệu lao động (t&iacute;nh theo số liệu c&oacute; đ&oacute;ng Bảo hiểm x&atilde; hội), trong đ&oacute; c&aacute;c khu c&ocirc;ng nghiệp, chế xuất, c&ocirc;ng nghệ cao c&oacute; khoảng 1.800 doanh nghiệp sử dụng 250.000 lao động.</p>\r\n\r\n<p>Trước TP HCM, c&oacute; hơn 20 tỉnh th&agrave;nh c&ocirc;ng bố thưởng Tết, trong đ&oacute; mức cao nhất 700 triệu đồng d&agrave;nh cho c&aacute; nh&acirc;n thuộc doanh nghiệp tại Đ&agrave; Nẵng.</p>\r\n\r\n<p>Tết năm nay, người lao động&nbsp;<a href=\"https://vnexpress.net/thu-tuong-dong-y-nghi-tet-9-ngay-tu-26-thang-chap-4820716.html\">nghỉ 9 ng&agrave;y</a>, từ 26 th&aacute;ng Chạp đến hết m&ugrave;ng 5 th&aacute;ng Gi&ecirc;ng (25/1-2/2/2025).</p>\r\n\r\n<p><strong>L&ecirc; Tuyết</strong></p>\r\n', 7, 1, '1734971362_vietnam.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `id_cart` int(11) NOT NULL AUTO_INCREMENT,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(255) NOT NULL,
  `cart_shipping` int(11) NOT NULL,
  PRIMARY KEY (`id_cart`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(96, 21, '3936', 0, '2024-12-24 14:00:21', 'tienmat', 9),
(97, 20, '6489', 1, '2024-12-29 04:01:05', 'VNPAY', 8),
(98, 20, '3082', 1, '2024-12-29 04:01:55', 'VNPAY', 8),
(99, 20, '9371', 1, '2024-12-29 04:15:48', 'VNPAY', 8),
(100, 20, '5291', 1, '2024-12-28 21:36:18', 'paypal', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

DROP TABLE IF EXISTS `tbl_cart_details`;
CREATE TABLE IF NOT EXISTS `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL AUTO_INCREMENT,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  PRIMARY KEY (`id_cart_details`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(124, '5291', 79, 1),
(123, '6918', 79, 1),
(122, '9371', 78, 1),
(121, '3082', 75, 1),
(120, '3082', 76, 1),
(119, '3082', 79, 1),
(115, '3936', 79, 2),
(118, '6489', 75, 1),
(117, '6489', 76, 1),
(116, '6489', 79, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

DROP TABLE IF EXISTS `tbl_dangky`;
CREATE TABLE IF NOT EXISTS `tbl_dangky` (
  `id_dangky` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_dangky`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(20, 'Lê Tuấn Đạt', 'datle123@gmail.com', 'Quận 8', 'e10adc3949ba59abbe56e057f20f883e', '0375202500'),
(21, 'Tuấn Đạt', 'datle1@gmail.com', 'Quận 8', 'e10adc3949ba59abbe56e057f20f883e', '0375202501'),
(22, 'Văn Hiếu', 'hieu123@gmail.com', 'Cần Giờ', 'e10adc3949ba59abbe56e057f20f883e', '0375202511');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhgiasao`
--

DROP TABLE IF EXISTS `tbl_danhgiasao`;
CREATE TABLE IF NOT EXISTS `tbl_danhgiasao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhgiasao`
--

INSERT INTO `tbl_danhgiasao` (`id`, `product_id`, `rating`) VALUES
(1, 79, 5),
(2, 79, 3),
(3, 79, 5),
(4, 79, 4),
(5, 79, 4),
(6, 79, 5),
(7, 79, 4),
(8, 79, 4),
(9, 79, 3),
(10, 79, 5),
(11, 79, 4),
(12, 79, 4),
(13, 79, 4),
(14, 79, 3),
(15, 79, 4),
(16, 79, 1),
(17, 79, 4),
(18, 76, 4),
(19, 76, 1),
(20, 76, 5),
(21, 74, 5),
(22, 74, 4),
(23, 78, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

DROP TABLE IF EXISTS `tbl_danhmuc`;
CREATE TABLE IF NOT EXISTS `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_danhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`) VALUES
(22, 'Trà sữa'),
(23, 'Trà'),
(24, 'Hồng trà'),
(25, 'Cacao'),
(27, 'Sương sáo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmucbaiviet`
--

DROP TABLE IF EXISTS `tbl_danhmucbaiviet`;
CREATE TABLE IF NOT EXISTS `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL AUTO_INCREMENT,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL,
  PRIMARY KEY (`id_baiviet`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(7, 'Tin thời sự', 1),
(8, 'Tin trẻ em', 2),
(9, 'Tin người lớn', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

DROP TABLE IF EXISTS `tbl_lienhe`;
CREATE TABLE IF NOT EXISTS `tbl_lienhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thongtinlienhe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\r\n	<li>Số điện thoại :<em>&nbsp;<strong>0375202500</strong></em></li>\r\n	<li>Zalo : <strong><em>L&ecirc; Tuấn Đạt</em></strong></li>\r\n	<li>Facebook : https://www.facebook.com/?locale=vi_VN</li>\r\n</ol>\r\n\r\n<p><strong>Chuy&ecirc;n cung cấp c&aacute;c loại tr&agrave; v&agrave; tr&agrave; sữa ngon bổ rẽ &lt;3</strong></p>\r\n\r\n<p><img alt=\"HÃ¬nh áº£nh dá»“ Ã¡n\" src=\"https://logico.com.vn/upload_images/images/2023/11/30/bst-101-hinh-anh-ong-gia-noel-dep-de-thuong-cute-mien-phi-3.png\" style=\"height:205px; width:400px\" /></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_momo`
--

DROP TABLE IF EXISTS `tbl_momo`;
CREATE TABLE IF NOT EXISTS `tbl_momo` (
  `id_momo` int(11) NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL,
  PRIMARY KEY (`id_momo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

DROP TABLE IF EXISTS `tbl_sanpham`;
CREATE TABLE IF NOT EXISTS `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giasp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  PRIMARY KEY (`id_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(48, 'Trà sữa socola', '1', '20000', '1735017935_1trasuasocola.png', '', '', 1, 22),
(49, 'Trà sữa bơ tiramisu', '2', '21000', '1735018061_2trasuabotiramisu.png', '', '', 1, 22),
(50, 'Trà sữa tiramisu', '3', '22000', '1735018860_3trasuatiramisu.png', '', '', 1, 22),
(51, 'Trà sữa muối', '4', '23000', '1735018904_4trasuamuoi.png', '', '', 1, 22),
(52, 'Cacao đường đen', '5', '24000', '1735018919_5cacaosuatuoitranchauduongden.png', '', '', 1, 25),
(53, 'Hồng trà nhật nguyệt', '6', '25000', '1735018941_6hongtranhatnguyet.png', '', '', 1, 24),
(54, 'Hồng trà mật ong', '7', '26000', '1735018956_7hongtranhatnguyetmatong.png', '', '', 1, 24),
(55, 'Lựu đỏ thạch dừa', '8', '28000', '1735018978_8luudothachdua.png', '', '', 1, 23),
(56, 'Lựu đỏ mảng cầu', '9', '29000', '1735018996_9luudomangcau.png', '', '', 1, 23),
(57, 'Lựu đỏ thanh mai', '10', '30000', '1735019037_10luudothanhmai.png', '', '', 1, 23),
(58, 'Oolong búp sen', '11', '21000', '1735019056_11olongbupsen.png', '', '', 1, 23),
(59, 'Trà sen vàng', '12', '22000', '1735019074_12senvang.png', '', '', 1, 23),
(60, 'Sương sáo thảo mộc', '13', '24000', '1735019108_14suongsaothaomoc.png', '', '', 1, 27),
(61, 'Trà sữa Matcha ván sữa', '14', '25000', '1735019127_15trasuamatchavangsua.png', '', '', 1, 22),
(62, 'Trà sữa shan tuyết lài', '15', '25000', '1735019276_16trasuashantuyetlai.png', '', '', 1, 22),
(63, 'Trà sữa trân châu củ năng', '16', '26000', '1735019319_17trasuatranchaucunang.png', '', '', 1, 22),
(64, 'Trà đào hồng', '17', '27000', '1735019338_18tradaohong.png', '', '', 1, 23),
(65, 'Trà lài mật ong', '18', '28000', '1735019362_19tralaimatongkemtrungkhe.png', '', '', 1, 23),
(66, 'Trà sữa đậu đỏ', '19', '29000', '1735019380_20trasuadaudo.png', '', '', 1, 22),
(67, 'Trà sữa cheese ball', '20', '30000', '1735019485_21trasuacheeseball.png', '', '', 1, 22),
(68, 'Trà sữa bơ', '21', '21000', '1735019506_22trasuabo.png', '', '', 1, 22),
(69, 'Trà sữa trân châu hoàng kim', '22', '22000', '1735019538_23trasuatranchauhoangkim.png', '', '', 1, 22),
(70, 'Trà sữa trân châu trắng', '23', '23000', '1735019566_24trasuatranchautrang.png', '', '', 1, 22),
(71, 'Trà thơm', '24', '24000', '1735019583_25trathom.png', '', '', 1, 23),
(72, 'Yakult lựu đỏ', '25', '25000', '1735019605_26yakulkluudo.png', '', '', 1, 23),
(73, 'Yakult mận', '26', '26000', '1735019627_27yakulkman.png', '', '', 1, 23),
(74, 'Trà vãi', '27', '27000', '1735019649_28travai.png', '', '', 1, 23),
(75, 'Trà tắc', '28', '28000', '1735019664_29tratac.png', '', '', 1, 23),
(76, 'Trà mảng cầu oolong', '29', '29000', '1735019686_30tramangcauolongxuanxanh.png', '', '', 1, 23),
(77, 'Trà oolong sen chanh', '30', '30000', '1735019709_31traolongsenchanhgiatay.png', '', '', 1, 23),
(78, 'Trà việt quất', '31', '21000', '1735019727_32travietquat.png', '', '', 1, 23),
(79, 'Trà vải thiều', '32', '23000', '1735020814_28travai.png', '', '', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

DROP TABLE IF EXISTS `tbl_shipping`;
CREATE TABLE IF NOT EXISTS `tbl_shipping` (
  `id_shipping` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) NOT NULL,
  `id_dangky` int(11) NOT NULL,
  PRIMARY KEY (`id_shipping`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(8, 'Lê Tuấn Đạt', '0375202500', 'Quận 8', 'Giao nhanh nhé', 20),
(9, 'Tuấn Đạt', '0303030303', 'TPHCM', 'aadđssd', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

DROP TABLE IF EXISTS `tbl_thongke`;
CREATE TABLE IF NOT EXISTS `tbl_thongke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(12, '2024-12-23', 3, '0', 0),
(13, '2024-12-24', 1, '46000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vnpay`
--

DROP TABLE IF EXISTS `tbl_vnpay`;
CREATE TABLE IF NOT EXISTS `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL AUTO_INCREMENT,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankCode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL,
  PRIMARY KEY (`id_vnpay`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vnpay`
--

INSERT INTO `tbl_vnpay` (`id_vnpay`, `vnp_amount`, `vnp_bankCode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `code_cart`) VALUES
(8, '2000000', 'NCB', 'VNP14765527', 'ATM', 'Thanh toÃ¡n hÃ³a Ä‘Æ¡n Ä‘áº·t táº¡i web', '20241223203359', 'OL1SYOFY', '14765527', '4577'),
(9, '2000000', 'NCB', 'VNP14765638', 'ATM', 'Thanh toÃ¡n hÃ³a Ä‘Æ¡n Ä‘áº·t táº¡i web', '20241223212306', 'OL1SYOFY', '14765638', '8549'),
(10, '2000000', 'NCB', 'VNP14765638', 'ATM', 'Thanh toÃ¡n hÃ³a Ä‘Æ¡n Ä‘áº·t táº¡i web', '20241223212306', 'OL1SYOFY', '14765638', '8549'),
(11, '2000000', 'NCB', 'VNP14765638', 'ATM', 'Thanh toÃ¡n hÃ³a Ä‘Æ¡n Ä‘áº·t táº¡i web', '20241223212306', 'OL1SYOFY', '14765638', '8549'),
(12, '2000000', 'NCB', 'VNP14765809', 'ATM', 'Thanh toán hóa đơn đặt tại web', '20241223230231', 'OL1SYOFY', '14765809', '6536'),
(13, '2100000', 'NCB', 'VNP14773547', 'ATM', 'Thanh toán hóa đơn đặt tại web', '20241229041605', 'OL1SYOFY', '14773547', '9371');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
