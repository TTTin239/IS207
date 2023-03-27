-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 25, 2022 lúc 07:37 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qltv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `docgia`
--

CREATE TABLE `docgia` (
  `MaDocGia` varchar(40) NOT NULL,
  `TenDocGia` varchar(40) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `docgia`
--

INSERT INTO `docgia` (`MaDocGia`, `TenDocGia`, `SoDienThoai`) VALUES
('DG001', 'Nguyễn Du', '0123457561'),
('DG002', 'Tô Hoài', '01234578945'),
('DG005', 'Tố Hữu', '0914237846');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `muonsach`
--

CREATE TABLE `muonsach` (
  `MaDocGia` varchar(40) NOT NULL,
  `MaSach` varchar(40) NOT NULL,
  `NgayMuon` date NOT NULL,
  `NgayTra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `muonsach`
--

INSERT INTO `muonsach` (`MaDocGia`, `MaSach`, `NgayMuon`, `NgayTra`) VALUES
('DG001', 'SA001', '2022-06-01', '2022-06-30'),
('DG002', 'SA002', '2022-05-16', '2022-06-30'),
('DG005', 'SA004', '2022-04-05', '2022-06-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `MaSach` varchar(40) NOT NULL,
  `TuaDe` varchar(40) NOT NULL,
  `Gia` float NOT NULL,
  `NamXB` date NOT NULL,
  `TrangThai` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`MaSach`, `TuaDe`, `Gia`, `NamXB`, `TrangThai`) VALUES
('SA001', 'Truyện Kiều', 50000, '2003-06-10', 'Chưa mượn'),
('SA002', 'Sóng', 35000, '1999-09-16', 'Đã mượn'),
('SA004', 'Dế mèn phiêu lưu kí', 36500, '2012-10-24', 'Chưa mượn'),
('SA011', 'Kỹ năng lập trình', 2019, '0000-00-00', 'Chưa mượn'),
('SA100', 'Lập trình hướng đối tượng', 2021, '0000-00-00', 'Chưa mượn'),
('SA111', 'Lập trình web', 2019, '0000-00-00', 'Đã mượn');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `docgia`
--
ALTER TABLE `docgia`
  ADD PRIMARY KEY (`MaDocGia`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`MaSach`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
