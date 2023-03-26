-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 12:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_banxe`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(1, 'hihihihihi', '<p>Cười hi hi vui l&eacute;m</p>\r\n', '<p>Sẽ ra sao khi cười hihi</p>\r\n', 1, 1, '4k.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(4, 7, '6652', 1),
(5, 7, '1595', 0),
(6, 7, '6429', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(1, '6652', 19, 1),
(2, '6652', 20, 1),
(3, '1595', 19, 1),
(4, '1595', 20, 1),
(5, '6429', 20, 3),
(6, '6429', 21, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(3, 'Tân', 'tanblu@gmail.com', '0123456789', '202cb962ac59075b964b07152d234b70', 'Gò Zấp'),
(4, 'Nghĩa', 'nghiablu@gmail.com', '0123123', '202cb962ac59075b964b07152d234b70', 'Bình Thạnh'),
(5, 'Nghĩa 2', 'nghiatwo@gmai.com', '0123123123', '202cb962ac59075b964b07152d234b70', 'Bình Thạnh'),
(6, 'khoa 3', 'khoa3@gmail.com', 'Thủ Đức', '202cb962ac59075b964b07152d234b70', '0123456'),
(7, 'Khoa ngu', 'khoangu@gmail.com', 'hehe', '202cb962ac59075b964b07152d234b70', '0123456'),
(8, 'Tân 2', 'tan2@gmail.com', 'gò vấp', '202cb962ac59075b964b07152d234b70', '0123456'),
(9, 'Nghĩaaaa', 'nghiangu@gmail.com', '123456 aaa', '202cb962ac59075b964b07152d234b70', '123456'),
(10, 'Khoa', 'aaa@gmail.com', 'Bình Thạnh', '202cb962ac59075b964b07152d234b70', '0123456789'),
(11, 'Khoa', 'aaa@gmail.com', 'Bình Thạnh', '202cb962ac59075b964b07152d234b70', '0123456789'),
(27, 'Khoa', 'tanngu@gmail.com', 'Gò Zấp', 'e10adc3949ba59abbe56e057f20f883e', '0123456789'),
(28, 'Khoa', 'tanngu@gmail.com', 'Gò Zấp', 'e10adc3949ba59abbe56e057f20f883e', '0123456789'),
(29, 'Khang', 'khangngu@gmail.com', 'Bình Thạnh', 'e10adc3949ba59abbe56e057f20f883e', '12345666'),
(33, 'khang two', 'khang2@gmail.com', 'Bình Thạnh', 'e10adc3949ba59abbe56e057f20f883e', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(200) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(2, 'Xe Yamaha', 2),
(3, 'Xe Suzuki', 3),
(4, 'Xe Honda', 3),
(8, 'Xe VinFast', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(1, 'Tin mới 2', 1),
(3, 'Tin ưu đãi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<p>Nguyen Minh Nghia</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Phone: +84 942861921</p>\r\n\r\n<p>Email:&nbsp;<a href=\"mailto:nguyenminhnghiablu@gmail.com\" target=\"_blank\">nguyenminhnghiablu@gmail.com</a></p>\r\n\r\n<p><strong><a href=\"https://www.facebook.com/nghia.nguyenminh.77128261\" target=\"_blank\">Facebook</a>&nbsp;|&nbsp;<a href=\"https://github.com/minhnghia1708\" target=\"_blank\">Github</a>&nbsp;</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masanpham` varchar(100) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(150) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(17, 'Xe AirBlack', 'AB150', '50000000', 15, 'ab.jpg', 'Dòng xe cực tốt với thương hiệu lâu đời', 'Công nghệ 2022 siêu đỉnh', 1, 4),
(19, 'XSR 155', 'xsr', '88000000', 5, 'xsr2.png', 'Sau khi được giới thiệu lần đầu tại Thái Lan vào tháng 8/2019, Yamaha XSR 155 đã được Quang Phương Motor đưa về VN từ đầu năm 2020, xe được nhập khẩu từ Indonesia', 'Xe đẹp lắm mua đi anh em <3', 1, 2),
(20, 'Xe máy điện Vespa Venus', 'Venus', '15900000', 6, 'vespavenus.jpg', 'Thiết kế tinh xảo, động cơ êm ái, chế độ vận hành an toàn. Đó là những gì mà người tiêu dùng nhận xét về xe máy điện Vespa Venus', 'Có những màu\r\nĐỎ, TRẮNG, XANH TÍM THAN, ĐEN\r\n\r\nQUÀ TẶNG KHUYẾN MÃI\r\n Miễn phí vận chuyển nội thành 30km\r\n Tặng mũ bảo hiểm trị giá 250.000 đ', 1, 8),
(21, 'Raider 150 Fi', 'raider150fi', '51190000', 8, 'raider150fi.jpg', 'Suzuki vừa chính thức ra mắt Raider 150 phiên bản mới 2023 với 3 màu mới là xanh đen cam, đen đỏ và xanh mờ, được thiết kế thời trang hơn và thể thao cá tính hơn', 'Phiên bản tiêu chuẩn\r\nGiá bán lẻ đề xuất (đã có thuế GTGT)', 1, 3),
(22, 'Honda Wave 110CC', 'wave110cc', '18190000', 20, 'wave110cc.jpg', 'Honda đã cho ra mắt dòng Wave Alpha thế hệ đầu tiên vào năm 2002. Đến nay, Honda Wave Alpha vẫn là dòng xe phổ thông được đông đảo người tiêu dùng Việt ưa chuộng. Vừa qua, Honda ra mắt Wave Alpha 110cc phiê', 'Honda Wave Alpha 2023 đang được bán ra thị trường với 4 tùy chọn màu sắc khác nhau: Trắng bạc, xanh bạc, đỏ bạc và đen nhám.', 1, 4),
(23, 'Honda Vario 150CC', 'vario150cc', '62500000', 15, 'vario150cc.jpg', 'Honda Vario 2023 tiếp tục sử dụng động cơ eSP xylanh đơn, 4 thì, SOHC, làm mát bằng dung dịch.\r\n\r\nĐược trang bị động cơ dung tích 149,3cc, có công suất 13 mã lực tại tua máy 8.500 vòng/phút và mô men xoắn c', 'Với ngoại hình khá gọn và sở hữu khối động cơ eSP hiện đại, Honda Vario 2023 mang đến trải nghiệm vận hành khá linh hoạt và êm ái.', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
