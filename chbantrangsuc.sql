-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2016 lúc 04:37 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `chbantrangsuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahoadon` int(11) NOT NULL,
  `matrangsuc` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `hienthi` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `manhanvien` int(11) NOT NULL,
  `mathanhvien` int(11) NOT NULL,
  `ngaylap` date NOT NULL,
  `tongtien` int(11) NOT NULL,
  `hienthi` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitrangsuc`
--

CREATE TABLE `loaitrangsuc` (
  `maloaitrangsuc` int(11) NOT NULL,
  `tenloaitrangsuc` text NOT NULL,
  `hienthi` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaitrangsuc`
--

INSERT INTO `loaitrangsuc` (`maloaitrangsuc`, `tenloaitrangsuc`, `hienthi`) VALUES
(1, 'Nhẫn', b'1'),
(2, 'Dây chuyền', b'1'),
(3, 'Lắc tay', b'1'),
(4, 'Bông tai', b'1'),
(5, 'Lắc chân', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaivang`
--

CREATE TABLE `loaivang` (
  `maloaivang` int(11) NOT NULL,
  `tenloaivang` text NOT NULL,
  `hienthi` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaivang`
--

INSERT INTO `loaivang` (`maloaivang`, `tenloaivang`, `hienthi`) VALUES
(1, 'Vàng trắng', b'1'),
(2, 'Vàng 18K', b'1'),
(3, 'Vàng 24K', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manhanvien` int(11) NOT NULL,
  `tennhanvien` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hienthi` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `mathanhvien` int(11) NOT NULL,
  `tenthanhvien` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cmnd` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `hienthi` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangsuc`
--

CREATE TABLE `trangsuc` (
  `matrangsuc` int(11) NOT NULL,
  `tentrangsuc` text NOT NULL,
  `maloaitrangsuc` int(11) NOT NULL,
  `maloaivang` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `xuatxu` text NOT NULL,
  `mota` text NOT NULL,
  `hienthi` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `trangsuc`
--

INSERT INTO `trangsuc` (`matrangsuc`, `tentrangsuc`, `maloaitrangsuc`, `maloaivang`, `giaban`, `soluong`, `hinhanh`, `xuatxu`, `mota`, `hienthi`) VALUES
(1, 'Nhẫn', 1, 1, 2200000, 10, 'NhanT1.jpg', 'Made In VietNam', 'Nhẫn chỉ dành cho nữ', b'1'),
(2, 'Nhẫn', 1, 1, 1200000, 10, 'NhanT2.jpg', 'Made In VietName', 'Nhẫn cặp', b'1'),
(3, 'Nhẫn', 1, 1, 1000000, 10, 'NhanT3.jpg', 'Made In VietNam', 'Nhẫn chỉ dành cho nữ', b'1'),
(4, 'Nhẫn', 1, 1, 1100000, 10, 'NhanT4.jpg', 'Made In VietNam', 'Nhẫn chỉ dành cho nữ', b'1'),
(5, 'Nhẫn', 1, 1, 850000, 10, 'NhanT5.jpg', 'Made in VietName', 'Nhẫn chỉ dành cho nam', b'1'),
(6, 'Nhẫn', 1, 1, 970000, 10, 'NhanT6.jpg', 'Made in VietName', 'Nhẫn chỉ dành cho nam', b'1'),
(7, 'Nhẫn', 1, 1, 2150000, 10, 'NhanT7.jpg', 'Made in VietNam\r\n', 'Nhẫn cặp', b'1'),
(8, 'Nhẫn', 1, 1, 2300000, 10, 'NhanT8.jpg', 'Made in VietNam', 'Nhẫn cặp', b'1'),
(9, 'Dây chuyền', 2, 1, 1420000, 10, 'DayChuyenT1.jpg', 'Made in vietnam', 'Nổi bật lên sự quý phái của người phụ nữa', b'1'),
(10, 'Dây chuyền', 2, 1, 1150000, 10, 'DayChuyenT2.jpg', 'Made in vietnam', 'Dây chuyền có mặt trái tim nổi bật lên sự chung thủy', b'1'),
(11, 'Dây chuyền', 2, 1, 1220000, 10, 'DayChuyenT3.jpg', 'Made in vietnam', 'Nổi bật lên sự cao sang của người phụ nữ', b'1'),
(12, 'Dây chuyền', 2, 1, 1450000, 10, 'DayChuyenT4.jpg', 'Made in vietnam', 'CÓ mặt hình trái tim', b'1'),
(13, 'Dây chuyền', 2, 1, 1240000, 10, 'DayChuyenT5.jpg', 'Made in vietnam', 'Nổi bật sự tinh nghịch', b'1'),
(14, 'Lắc tay', 3, 1, 580000, 10, 'LacTayT1.jpg', 'Made in vietnam', 'Đẹp hết sức', b'1'),
(15, 'Lắc tay', 3, 1, 1300000, 10, 'LacTayT2.jpg', 'Made in vietnam', 'Đẹp hết sức', b'1'),
(16, 'Lắc tay', 3, 1, 2100000, 10, 'LacTayT3.jpg', 'Made in vietnam', 'Đẹp hết sức', b'1'),
(17, 'Lắc tay', 3, 1, 1520000, 10, 'LacTayT4.jpg', 'Made in vietnam', 'Đẹp hết sức', b'1'),
(18, 'Lắc tay', 3, 1, 1420000, 10, 'LacTayT5.jpg', 'Made in vietnam', 'Đẹp hết sức', b'1'),
(19, 'Lắc tay', 3, 1, 1100000, 10, 'LacTayT6.jpg', 'Made in vietnam', 'Đẹp hết sức', b'1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahoadon`,`matrangsuc`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`,`manhanvien`,`mathanhvien`);

--
-- Chỉ mục cho bảng `loaitrangsuc`
--
ALTER TABLE `loaitrangsuc`
  ADD PRIMARY KEY (`maloaitrangsuc`);

--
-- Chỉ mục cho bảng `loaivang`
--
ALTER TABLE `loaivang`
  ADD PRIMARY KEY (`maloaivang`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manhanvien`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`mathanhvien`);

--
-- Chỉ mục cho bảng `trangsuc`
--
ALTER TABLE `trangsuc`
  ADD PRIMARY KEY (`matrangsuc`),
  ADD KEY `fk_TrangSuc_LoaiTrangSuc` (`maloaitrangsuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahoadon` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `loaitrangsuc`
--
ALTER TABLE `loaitrangsuc`
  MODIFY `maloaitrangsuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `loaivang`
--
ALTER TABLE `loaivang`
  MODIFY `maloaivang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `mathanhvien` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `trangsuc`
--
ALTER TABLE `trangsuc`
  MODIFY `matrangsuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
