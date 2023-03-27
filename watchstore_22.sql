SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`) VALUES
(1, 'quang', 'vinhquang1873@gmail.com', 'ltv1874', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'quang', '19522093@gm.uit.edu.vn', 'ltv1873', 'Computer04032001'),
(3, 'tri', '19521043@gm.uit.edu.vn', 'tnt', '25d55ad283aa400af464c76d713c07ad');

CREATE TABLE `tbl_brand` (
  `brand_Id` int(11) NOT NULL,
  `brand_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_brand` (`brand_Id`, `brand_Name`) VALUES
(1, 'Timex'),
(2, 'Omega'),
(3, 'Children Watch'),
(4, 'Movado'),
(18, 'apple watch'),
(19, 'Seiko');

CREATE TABLE `tbl_cart` (
  `cart_Id` int(11) NOT NULL,
  `prd_Id` int(11) NOT NULL,
  `ss_Id` varchar(255) NOT NULL,
  `cart_Name` varchar(255) NOT NULL,
  `cart_Price` varchar(255) NOT NULL,
  `cart_Quantily` int(11) NOT NULL,
  `cart_Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tbl_category` (
  `cate_Id` int(11) NOT NULL,
  `cate_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_category` (`cate_Id`, `cate_Name`) VALUES
(1, 'Đồng Hồ Nam'),
(2, 'Đồng Hồ Nữ'),
(3, 'Đồng Hồ Trẻ Em'),
(4, 'Đồng Hồ Thông Minh');

CREATE TABLE `tbl_customer` (
  `cus_Id` int(11) NOT NULL,
  `cus_Name` varchar(255) NOT NULL,
  `cus_Pass` varchar(200) NOT NULL,
  `cus_Address` varchar(255) NOT NULL,
  `cus_Phone` varchar(255) NOT NULL,
  `cus_Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_customer` (`cus_Id`, `cus_Name`, `cus_Pass`, `cus_Address`, `cus_Phone`, `cus_Email`) VALUES
(5, 'NGUYỄN VĂN A', '827ccb0eea8a706c4c34a16891f84e7b', 'AAA, XXX, YYY', '0123456789', 'ABC@gmail.com'),
(6, 'ltv1873', 'e10adc3949ba59abbe56e057f20f883e', 'Số 69, ấp 4', '0968520710', 'vinhquang1873@gmail.com'),
(7, 'Tin', 'e10adc3949ba59abbe56e057f20f883e', 'KTX Khu B', '0931753239', 'trantrungtin2309@gmail.com'),
(8, 'Lê Văn Trí', '25d55ad283aa400af464c76d713c07ad', 'TP HCM', '0974776412', '19521043@gm.uit.edu.vn');

CREATE TABLE `tbl_order` (
  `order_Id` int(11) NOT NULL,
  `prd_Id` int(11) NOT NULL,
  `cus_Id` int(11) NOT NULL,
  `order_Name` varchar(255) NOT NULL,
  `order_Quantily` int(11) NOT NULL,
  `order_Price` varchar(255) NOT NULL,
  `order_Image` varchar(255) NOT NULL,
  `order_Status` int(11) NOT NULL DEFAULT 0,
  `order_Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_order` (`order_Id`, `prd_Id`, `cus_Id`, `order_Name`, `order_Quantily`, `order_Price`, `order_Image`, `order_Status`, `order_Date`) VALUES
(27, 39, 7, 'Apple watch SE', 1, '9990000', '9ad9a57e4e.jpg', 2, '2022-06-06 02:49:11'),
(28, 3, 7, 'Timex 003', 1, '1110000', 'c4e3af13b0.webp', 0, '2022-06-06 02:52:59'),
(29, 11, 7, 'Movado 003', 1, '18525000', 'a3d97cbc2e.png', 0, '2022-06-06 02:52:59');

CREATE TABLE `tbl_product` (
  `prd_Id` int(11) NOT NULL,
  `prd_Name` varchar(255) NOT NULL,
  `prd_Price` varchar(255) NOT NULL,
  `prd_Image` varchar(255) NOT NULL,
  `prd_Number` int(11) NOT NULL,
  `cate_Id` int(11) NOT NULL,
  `brand_Id` int(11) NOT NULL,
  `prd_Des` text NOT NULL,
  `prd_Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_product` (`prd_Id`, `prd_Name`, `prd_Price`, `prd_Image`, `prd_Number`, `cate_Id`, `brand_Id`, `prd_Des`, `prd_Type`) VALUES
(2, 'Timex 002', '1300000', 'b11bf5b102.jpg', 0, 1, 1, '<p>M&agrave;u d&acirc;y: n&acirc;u</p>\r\n<p>M&agrave;u mặt: trắng</p>\r\n<p>Đường k&iacute;nh mặt : 40mm</p>\r\n<p>D&acirc;y : 20mm</p>\r\n<p>Độ d&agrave;y mặt: 7mm</p>\r\n<p>Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</p>\r\n<p>D&acirc;y kim loại</p>\r\n<p>Chống nước : 30m</p>\r\n<p>Loại m&aacute;y đồng hồ : Quartz</p>\r\n<p>Bảo h&agrave;nh : 12 th&aacute;ng.</p>\r\n<p>Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i</p>\r\n<p>_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1),
(3, 'Timex 003', '1110000', 'c4e3af13b0.webp', 0, 1, 1, '<p>M&agrave;u Sắc Mặt: Trắng</p>\r\n<p>M&agrave;u sắc d&acirc;y: Đen</p>\r\n<p>Đường k&iacute;nh mặt : 40mm</p>\r\n<p>D&acirc;y : 20mm</p>\r\n<p>Độ d&agrave;y mặt: 9mm</p>\r\n<p>Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</p>\r\n<p>D&acirc;y da thật.&nbsp;</p>\r\n<p>Chống nước : 50m</p>\r\n<p>Loại m&aacute;y đồng hồ : Quartz</p>\r\n<p>C&ocirc;ng nghệ đ&egrave;n nền INDIGLO độc quyền của Timex</p>\r\n<p>Bảo h&agrave;nh : 12 th&aacute;ng.</p>\r\n<p>Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i</p>\r\n<p>_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1),
(4, 'Timex 004', '3500000', '20e2a17a4b.webp', 0, 1, 1, '<p>M&agrave;u Sắc Mặt: Trắng</p>\r\n<p>M&agrave;u sắc d&acirc;y: Đen</p>\r\n<p>Đường k&iacute;nh mặt : 32mm</p>\r\n<p>D&acirc;y : 16mm</p>\r\n<p>Độ d&agrave;y mặt: 9mm</p>\r\n<p>Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</p>\r\n<p>D&acirc;y da thật.&nbsp;</p>\r\n<p>Chống nước : 30m</p>\r\n<p>Loại m&aacute;y đồng hồ : Quartz</p>\r\n<p>C&ocirc;ng nghệ đ&egrave;n nền INDIGLO độc quyền của Timex</p>\r\n<p>Bảo h&agrave;nh : 12 th&aacute;ng.</p>\r\n<p>Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i</p>\r\n<p>_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0),
(5, 'Timex 005', '1638000', '2f175dd889.webp', 0, 2, 1, '<p>M&agrave;u sắc d&acirc;y: Bạc</p>\r\n<p>M&agrave;u sắc mặt : X&aacute;m</p>\r\n<p>Đường k&iacute;nh mặt :31mm</p>\r\n<p>D&acirc;y :16mm</p>\r\n<p>Độ d&agrave;y mặt: 6.5mm</p>\r\n<p>Chất liệu d&acirc;y: Kim loại</p>\r\n<p>Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</p>\r\n<p>Chống nước : 50m</p>\r\n<p>Loại m&aacute;y đồng hồ : Quartz</p>\r\n<p>Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i<br />_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1),
(6, 'Timex 006', '1638000', '70d4e5f8e2.webp', 0, 2, 1, '<p>M&agrave;u sắc d&acirc;y: V&agrave;ng hồng</p>\r\n<p>M&agrave;u sắc mặt : X&aacute;m</p>\r\n<p>Đường k&iacute;nh mặt :31mm</p>\r\n<p>D&acirc;y :16mm</p>\r\n<p>Độ d&agrave;y mặt: 6.5mm</p>\r\n<p>Chất liệu d&acirc;y: Kim loại</p>\r\n<p>Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</p>\r\n<p>Chống nước : 50m</p>\r\n<p>Loại m&aacute;y đồng hồ : Quartz</p>\r\n<p>Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i<br />_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1),
(11, 'Movado 003', '18525000', 'a3d97cbc2e.png', 0, 2, 4, '<p>Movado BOLD, vỏ v&agrave; v&ograve;ng tay bằng th&eacute;p kh&ocirc;ng gỉ mạ ion m&agrave;u xanh lam 34 mm với mặt số c&oacute; kết cấu mờ m&agrave;u xanh lam với tinh thể th&aacute;c nước</p>', 0),
(13, 'Children 001', '190000', '6607488790.jpg', 0, 3, 3, '<p>Smile Kid&nbsp;</p>\r\n<p>Năng động, tinh nghịch</p>\r\n<p>Sản phẩm&nbsp;đồng hồ&nbsp;mang thương hiệu&nbsp;Smile Kid&nbsp;với nhiều mẫu m&atilde; năng động, trẻ trung nhưng kh&ocirc;ng k&eacute;m phần tinh tế v&agrave; sang trọng, ph&ugrave; hợp với c&aacute;c em nhỏ.</p>\r\n<p>M&agrave;n h&igrave;nh kỹ thuật số</p>\r\n<p>Vỏ nhựa</p>\r\n<p>D&acirc;y đeo bằng nhựa m&agrave;u xanh</p>\r\n<p>Đ&egrave;n nền</p>\r\n<p>D&agrave;nh cho lứa tuổi từ 3 tuổi trở l&ecirc;n</p>\r\n<p>Bảo h&agrave;nh 1 năm của nh&agrave; sản xuất</p>', 0),
(14, 'Children 002', '190000', '1d3c2154c1.jpg', 0, 3, 3, '<p>Smile Kid&nbsp;</p>\r\n<p>Năng động, tinh nghịch</p>\r\n<p>Sản phẩm&nbsp;đồng hồ&nbsp;mang thương hiệu&nbsp;Smile Kid&nbsp;với nhiều mẫu m&atilde; năng động, trẻ trung nhưng kh&ocirc;ng k&eacute;m phần tinh tế v&agrave; sang trọng, ph&ugrave; hợp với c&aacute;c em nhỏ</p>\r\n<p>M&agrave;n h&igrave;nh kỹ thuật số</p>\r\n<p>Vỏ nhựa</p>\r\n<p>D&acirc;y đeo bằng nhựa m&agrave;u hồng</p>\r\n<p>Đ&egrave;n nền</p>\r\n<p>D&agrave;nh cho lứa tuổi từ 3 tuổi trở l&ecirc;n</p>\r\n<p>Bảo h&agrave;nh 1 năm của nh&agrave; sản xuất</p>', 0),
(15, 'Children 003', '190000', '80567f86cf.jpg', 0, 3, 3, '<p>Smile Kid&nbsp;</p>\r\n<p>Năng động, tinh nghịch</p>\r\n<p>Sản phẩm&nbsp;đồng hồ&nbsp;mang thương hiệu&nbsp;Smile Kid&nbsp;với nhiều mẫu m&atilde; năng động, trẻ trung nhưng kh&ocirc;ng k&eacute;m phần tinh tế v&agrave; sang trọng, ph&ugrave; hợp với c&aacute;c em nhỏ</p>\r\n<p>M&agrave;n h&igrave;nh kỹ thuật số</p>\r\n<p>Vỏ nhựa</p>\r\n<p>D&acirc;y đeo bằng nhựa m&agrave;u đen</p>\r\n<p>Đ&egrave;n nền</p>\r\n<p>D&agrave;nh cho lứa tuổi từ 3 tuổi trở l&ecirc;n</p>\r\n<p>Bảo h&agrave;nh 1 năm của nh&agrave; sản xuất</p>', 0),
(33, 'Apple watch series 5', '5790000', '07a5e641bf.jpg', 0, 4, 18, '<p><span style=\"font-size: medium;\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh: LTPO OLED</span></p>\r\n<p><span style=\"font-size: medium;\">K&iacute;ch thước m&agrave;n h&igrave;nh (inch): 1.75</span></p>\r\n<p><span style=\"font-size: medium;\">Hệ điều h&agrave;nh: WatchOS</span></p>\r\n<p><span style=\"font-size: medium;\">Thời gian sử dụng pin (giờ): 18 giờ</span></p>\r\n<p><span style=\"font-size: medium;\">Chống nước tối đa (m): 50</span></p>\r\n<p><span style=\"font-size: medium;\">Mặt k&iacute;nh cảm ứng: K&iacute;nh sapphire</span></p>\r\n<p><span style=\"font-size: medium;\">M&agrave;u d&acirc;y: đen</span></p>\r\n<p><span style=\"font-size: medium;\">D&acirc;y: cao su</span></p>\r\n<p><span style=\"font-size: medium;\">M&agrave;u mặt: trắng</span></p>\r\n<p><span style=\"font-size: medium;\">Đường k&iacute;nh mặt : 44mm</span></p>\r\n<p><span style=\"font-size: medium;\">D&acirc;y : 20mm</span></p>\r\n<p><span style=\"font-size: medium;\">Độ d&agrave;y mặt: 7mm</span></p>\r\n<p><span style=\"font-size: medium;\">Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</span></p>\r\n<p><span style=\"font-size: medium;\">Chống nước : 30m</span></p>\r\n<p><span style=\"font-size: medium;\">Loại m&aacute;y đồng hồ : Apple</span></p>\r\n<p><span style=\"font-size: medium;\">Bảo h&agrave;nh : 12 th&aacute;ng.</span></p>\r\n<p><span style=\"font-size: medium;\">Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</span></p>\r\n<p><span style=\"font-size: medium;\">Hướng dẫn bảo quản</span></p>\r\n<ul>\r\n<li><span style=\"font-size: medium;\">Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột</span></li>\r\n<li><span style=\"font-size: medium;\">Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh</span></li>\r\n<li><span style=\"font-size: medium;\">Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt</span></li>\r\n<li><span style=\"font-size: medium;\">Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i</span></li>\r\n<li><span style=\"font-size: medium;\">L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</span></li>\r\n</ul>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1),
(34, 'Apple watch series 7', '18990000', '0058569aa0.jpg', 0, 4, 18, '<p class=\"st-table-title\">C&ocirc;ng nghệ m&agrave;n h&igrave;nh: M&agrave;n h&igrave;nh lu&ocirc;n bật Retina</p>\r\n<p class=\"st-table-title\">Thời lượng pin: 18 giờ sử dụng</p>\r\n<p class=\"st-table-title\">H&atilde;ng sản xuất: Apple ch&iacute;nh h&atilde;ng</p>\r\n<p class=\"st-table-title\">Hệ điều h&agrave;nh: WatchOS</p>\r\n<p class=\"st-table-title\">Chống nước IP6X (Bơi, chống bụi)</p>\r\n<p class=\"st-table-title\">M&agrave;u d&acirc;y: bạc</p>\r\n<p>D&acirc;y: th&eacute;p</p>\r\n<p>M&agrave;u mặt: đen</p>\r\n<p>Đường k&iacute;nh mặt : 45mm</p>\r\n<p>D&acirc;y : 20mm</p>\r\n<p>Độ d&agrave;y mặt: 7mm</p>\r\n<p>Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</p>\r\n<p>Chống nước : 30m</p>\r\n<p>Loại m&aacute;y đồng hồ : Apple</p>\r\n<p>Bảo h&agrave;nh : 12 th&aacute;ng.</p>\r\n<p>Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i</p>\r\n<p>_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ&nbsp;</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0),
(35, 'Timex 001', '6970000', '4b8fcfd0d2.jpg', 0, 1, 1, '<p>M&agrave;u Sắc Mặt: Trắng v&agrave;ng</p>\r\n<p>M&agrave;u sắc d&acirc;y: bạc v&agrave;ng</p>\r\n<p>Đường k&iacute;nh mặt : 40mm</p>\r\n<p>D&acirc;y : 20mm</p>\r\n<p>Độ d&agrave;y mặt: 9mm</p>\r\n<p>Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</p>\r\n<p>D&acirc;y kim loại</p>\r\n<p>Chống nước : 50m</p>\r\n<p>Loại m&aacute;y đồng hồ : Quartz</p>\r\n<p>C&ocirc;ng nghệ đ&egrave;n nền INDIGLO độc quyền của Timex</p>\r\n<p>Bảo h&agrave;nh : 12 th&aacute;ng.</p>\r\n<p>Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i</p>\r\n<p>_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1),
(38, 'Apple watch series 6', '7990000', 'd34f19f922.png', 0, 4, 18, '<p>Th&ocirc;ng số kỹ thuật Apple Watch Series 6 GPS, 40mm Aluminum Case with Sport Band - VN/A</p>\r\n<p><strong>&nbsp;CPU:</strong>&nbsp;Apple S6 64 bit</p>\r\n<p><strong>&nbsp;Dung lượng pin:</strong>&nbsp;Đang cập nhật</p>\r\n<p><strong>&nbsp;K&iacute;ch thước:</strong>&nbsp;40 mm x 34 mm x 10.4 mm</p>\r\n<p><strong>&nbsp;Trọng lượng:</strong>&nbsp;30.5 gram</p>\r\n<p class=\"st-table-title\">&nbsp;<strong>M&agrave;u d&acirc;y:</strong> bạc</p>\r\n<p>&nbsp;<strong>D&acirc;y:</strong> th&eacute;p</p>\r\n<p><strong>&nbsp;M&agrave;u mặt:</strong> đen</p>\r\n<p><strong>&nbsp;Đường k&iacute;nh mặt :</strong> 45mm</p>\r\n<p><strong>&nbsp;D&acirc;y :</strong> 20mm</p>\r\n<p>&nbsp;<strong>Độ d&agrave;y mặt:</strong> 7mm</p>\r\n<p>&nbsp;<strong>Loại mặt k&iacute;nh :</strong> K&iacute;nh kho&aacute;ng</p>\r\n<p>&nbsp;<strong>Chống nước :</strong> 30m</p>\r\n<p>&nbsp;<strong>Loại m&aacute;y đồng hồ :</strong> Apple</p>\r\n<p><strong>&nbsp;Bảo h&agrave;nh :</strong> 12 th&aacute;ng.</p>\r\n<p>&nbsp;Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i</p>\r\n<p>_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</p>', 0),
(39, 'Apple watch SE', '9990000', '9ad9a57e4e.jpg', 0, 4, 18, '<p><span>Cấu h&igrave;nh Apple Watch SE 40mm viền nh&ocirc;m d&acirc;y silicone</span></p>\r\n<ul class=\"parameter__list 234918 active\">\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">M&agrave;n h&igrave;nh:&nbsp;<span class=\"comma\">OLED</span>1.57 inch</p>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">Thời lượng pin: Khoảng 1.5 ng&agrave;y</p>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">Kết nối với hệ điều h&agrave;nh: iOS bản mới nhất</p>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">Mặt:&nbsp;<span class=\"comma\">Ion-X strengthened glass</span>40 mm</p>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">T&iacute;nh năng cho sức khỏe:&nbsp;<span class=\"comma\">Chế độ luyện tập</span><span class=\"comma\">Theo d&otilde;i giấc ngủ</span><span class=\"comma\">T&iacute;nh lượng calories ti&ecirc;u thụ</span><span class=\"comma\">T&iacute;nh qu&atilde;ng đường chạy</span><span class=\"comma\">Đo nhịp tim</span>Đếm số bước ch&acirc;n</p>\r\n</li>\r\n<li data-index=\"99999\" data-prop=\"0\">\r\n<p class=\"lileft\">H&atilde;ng: Apple</p>\r\n</li>\r\n</ul>\r\n<p class=\"st-table-title\">M&agrave;u d&acirc;y: bạc</p>\r\n<p>D&acirc;y: th&eacute;p</p>\r\n<p>M&agrave;u mặt: đen</p>\r\n<p>Đường k&iacute;nh mặt : 45mm</p>\r\n<p>D&acirc;y : 20mm</p>\r\n<p>Độ d&agrave;y mặt: 7mm</p>\r\n<p>Loại mặt k&iacute;nh : K&iacute;nh kho&aacute;ng</p>\r\n<p>Chống nước : 30m</p>\r\n<p>Loại m&aacute;y đồng hồ : Apple</p>\r\n<p>Bảo h&agrave;nh : 12 th&aacute;ng.</p>\r\n<p>Thương hiệu Mỹ, sản xuất tại Philippines, Nhật Bản, Trung Quốc.</p>\r\n<p>Hướng dẫn bảo quản<br />_ Tr&aacute;nh để đồng hồ nơi nhiệt độ thay đổi đột ngột<br />_ Tr&aacute;nh va chạm v&agrave; tiếp x&uacute;c với chất ăn m&ograve;n, nhiệt độ cao hoặc từ trường mạnh<br />_ Kh&ocirc;ng chỉnh n&uacute;t chỉnh giờ khi đồng hồ bị ướt<br />_ Tắt nguồn khi kh&ocirc;ng được sử dụng trong thời gian d&agrave;i</p>\r\n<p>_ L&agrave;m sạch đồng hồ theo định kỳ bằng vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.</p>\r\n<p>&nbsp;</p>', 0),
(40, 'Children 004', '650000', 'c7fd6fb6bc.jpg', 0, 3, 3, '<p>Ho&agrave;n hảo để con bạn đeo khi đi ra ngo&agrave;i, chiếc đồng hood Little Tix n&agrave;y rất ph&ugrave; hợp để gi&uacute;p con của bạn biết thời gian</p>\r\n<p>C&aacute;c t&iacute;nh năng của đồng hồ:</p>\r\n<p>&nbsp;M&agrave;n h&igrave;nh kỹ thuật số.</p>\r\n<p>&nbsp;Chiều rộng vỏ 43 mm</p>\r\n<p>&nbsp;Vỏ nhựa</p>\r\n<p>&nbsp;D&acirc;y đeo bằng nhựa, kh&oacute;a c&agrave;i</p>\r\n<p>&nbsp;Đ&egrave;n nền</p>\r\n<p>&nbsp;Hiện thị ng&agrave;y v&agrave; thứ</p>\r\n<p>&nbsp;B&aacute;o thức, đồng hồ bấm giờ</p>\r\n<p>Th&ocirc;ng tin chung:</p>\r\n<p>&nbsp;D&agrave;nh cho lứa tuổi từ 3 tuổi trở l&ecirc;n</p>\r\n<p>&nbsp;Bảo h&agrave;nh 1 năm của nh&agrave; sản xuất</p>', 0),
(41, 'Seiko SNKK11K1', '2600000', 'c52dafd1f6.jpg', 0, 1, 19, '<p><span style=\"font-size: medium;\">Thương hiệu Đồng Hồ Seiko</span></p>\r\n<p><span style=\"font-size: medium;\">SKU/UPC/MPN</span></p>\r\n<p><span style=\"font-size: medium;\">SNKK11K1</span></p>\r\n<p><span style=\"font-size: medium;\">Loại đồng hồ Đồng hồ nam</span></p>\r\n<p><span style=\"font-size: medium;\">D&ograve;ng m&aacute;y Cơ - Automatic</span></p>\r\n<p><span style=\"font-size: medium;\">Chất liệu k&iacute;nh K&iacute;nh kho&aacute;ng</span></p>\r\n<p><span style=\"font-size: medium;\">Chất liệu d&acirc;y D&acirc;y kim loại</span></p>\r\n<p><span style=\"font-size: medium;\">Độ chịu nước 3ATM</span></p>\r\n<p><span style=\"font-size: medium;\">Size mặt 38mm</span></p>\r\n<p><span style=\"font-size: medium;\">Xuất xứ Đồng hồ Nhật</span></p>\r\n<p><span style=\"font-size: medium;\">Chất liệu vỏ Vỏ th&eacute;p kh&ocirc;ng gỉ</span></p>\r\n<p><span style=\"font-size: medium;\">H&igrave;nh dạng Mặt tr&ograve;n</span></p>\r\n<p><span style=\"font-size: medium;\">M&agrave;u vỏ&nbsp; Bạc</span></p>\r\n<p>&nbsp;</p>', 0);

CREATE TABLE `tbl_slider` (
  `slide_Id` int(11) NOT NULL,
  `slide_Name` varchar(255) NOT NULL,
  `slide_Image` varchar(255) NOT NULL,
  `slide_Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_slider` (`slide_Id`, `slide_Name`, `slide_Image`, `slide_Type`) VALUES
(14, 'slider1', '0134c8aab6.jpg', 1),
(16, 'slider3', '1ef468420e.jpg', 1),
(17, 'slider4', 'aa83279c7f.png', 1),
(19, 'slider5', '4bc2dbd48d.jpg', 1),
(20, 'slider2', '97a571ab42.jpg', 1),
(21, 'slider6', 'b4dc08e765.jpg', 1);

CREATE TABLE `tbl_warehouse` (
  `house_Id` int(11) NOT NULL,
  `house_Product` varchar(255) NOT NULL,
  `house_Number` varchar(255) NOT NULL,
  `house_Date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tbl_wishlist` (
  `wish_Id` int(11) NOT NULL,
  `cus_Id` int(11) NOT NULL,
  `prd_Id` int(11) NOT NULL,
  `wish_Name` varchar(255) NOT NULL,
  `wish_Price` varchar(255) NOT NULL,
  `wish_Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_wishlist` (`wish_Id`, `cus_Id`, `prd_Id`, `wish_Name`, `wish_Price`, `wish_Image`) VALUES
(4, 5, 3, 'Thám Tử Đã Chết - Tập 1 (Tặng Kèm Bookmark Tròn)', '83300', '814572e730.jpg'),
(5, 5, 11, '5 Centimet Trên Giây', '89000', '9e7f9fd6c4.jpg'),
(6, 5, 10, 'Usborne Lift-the-Flap Telling the Time', '191700', '37744e55b4.jpg'),
(8, 5, 5, 'Tinh Hoa Kinh Tế Học (Essentials Of Economics)', '325000', '9e0d12eb62.jpg'),
(9, 5, 8, 'Economics Book', '796000', '170bff6201.jpg'),
(10, 7, 3, 'Timex 003', '1110000', 'c4e3af13b0.webp'),
(13, 8, 2, 'Timex 002', '1300000', 'b11bf5b102.jpg');


ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_Id`);

ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_Id`);

ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cate_Id`);

ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cus_Id`);

ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_Id`);

ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`prd_Id`);

ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slide_Id`);

ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`house_Id`);

ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wish_Id`);


ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `tbl_brand`
  MODIFY `brand_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `tbl_cart`
  MODIFY `cart_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

ALTER TABLE `tbl_category`
  MODIFY `cate_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `tbl_customer`
  MODIFY `cus_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tbl_order`
  MODIFY `order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

ALTER TABLE `tbl_product`
  MODIFY `prd_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

ALTER TABLE `tbl_slider`
  MODIFY `slide_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `tbl_warehouse`
  MODIFY `house_Id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tbl_wishlist`
  MODIFY `wish_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
