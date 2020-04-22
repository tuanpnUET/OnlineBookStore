-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 06:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `soHoaDon` int(11) NOT NULL,
  `maSach` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soLuong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `soHoaDon` int(11) NOT NULL,
  `nguoiDatHang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `diaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ghiChu` text COLLATE utf8_unicode_ci NOT NULL,
  `trangThai` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ngayDatHang` date NOT NULL,
  `ngayThanhToan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gioithieucongty`
--

CREATE TABLE `gioithieucongty` (
  `diaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioiThieu` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `dieuKhoan` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoidap`
--

CREATE TABLE `hoidap` (
  `hơTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diaChi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `noiDung` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaitintuc`
--

CREATE TABLE `loaitintuc` (
  `maloaiTin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenLoaiTin` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `taiKhoan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `maSach` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `maLoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `maTacGia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenSach` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `anh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gioiThieuSach` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngayDang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `maTacGia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenTacGia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gioiThieuTacGia` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `maLoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenTheLoai` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `maTin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maLoaiTin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenTinTuc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `noiDungTin` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`soHoaDon`),
  ADD UNIQUE KEY `soLuong` (`soLuong`),
  ADD UNIQUE KEY `gia` (`gia`),
  ADD KEY `maSach` (`maSach`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD UNIQUE KEY `nguoiDatHang` (`nguoiDatHang`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `diaChi` (`diaChi`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `trangThai` (`trangThai`),
  ADD UNIQUE KEY `ngayDatHang` (`ngayDatHang`),
  ADD UNIQUE KEY `ngayThanhToan` (`ngayThanhToan`),
  ADD UNIQUE KEY `ghiChu` (`ghiChu`) USING HASH,
  ADD KEY `soHoaDon` (`soHoaDon`);

--
-- Indexes for table `gioithieucongty`
--
ALTER TABLE `gioithieucongty`
  ADD UNIQUE KEY `diaChi` (`diaChi`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `gioiThieu` (`gioiThieu`) USING HASH,
  ADD UNIQUE KEY `dieuKhoan` (`dieuKhoan`) USING HASH;

--
-- Indexes for table `hoidap`
--
ALTER TABLE `hoidap`
  ADD UNIQUE KEY `hơTen` (`hơTen`),
  ADD UNIQUE KEY `diaChi` (`diaChi`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `noiDung` (`noiDung`);

--
-- Indexes for table `loaitintuc`
--
ALTER TABLE `loaitintuc`
  ADD PRIMARY KEY (`maloaiTin`),
  ADD UNIQUE KEY `tenLoaiTin` (`tenLoaiTin`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taiKhoan` (`taiKhoan`),
  ADD UNIQUE KEY `matKhau` (`matKhau`),
  ADD UNIQUE KEY `quyen` (`quyen`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`maSach`),
  ADD UNIQUE KEY `tenSach` (`tenSach`),
  ADD UNIQUE KEY `gia` (`gia`),
  ADD UNIQUE KEY `anh` (`anh`),
  ADD UNIQUE KEY `gioiThieuSach` (`gioiThieuSach`),
  ADD UNIQUE KEY `ngayDang` (`ngayDang`),
  ADD KEY `maLoai` (`maLoai`),
  ADD KEY `maTacGia` (`maTacGia`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`maTacGia`),
  ADD UNIQUE KEY `tenTacGia` (`tenTacGia`),
  ADD UNIQUE KEY `gioiThieuTacGia` (`gioiThieuTacGia`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`maLoai`),
  ADD UNIQUE KEY `tenTheLoai` (`tenTheLoai`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`maTin`),
  ADD UNIQUE KEY `maLoaiTin` (`maLoaiTin`),
  ADD UNIQUE KEY `tenTinTuc` (`tenTinTuc`),
  ADD UNIQUE KEY `anh` (`anh`),
  ADD UNIQUE KEY `noiDungTin` (`noiDungTin`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `soHoaDon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`maSach`) REFERENCES `sach` (`maSach`);

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`soHoaDon`) REFERENCES `chitietdonhang` (`soHoaDon`);

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`maLoai`) REFERENCES `theloai` (`maLoai`),
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`maTacGia`) REFERENCES `tacgia` (`maTacGia`);

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`maLoaiTin`) REFERENCES `loaitintuc` (`maloaiTin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
