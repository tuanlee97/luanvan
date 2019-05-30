-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2019 lúc 04:41 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tourtravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdattour`
--

CREATE TABLE `chitietdattour` (
  `ma_ctt` int(10) UNSIGNED NOT NULL,
  `madattour` int(10) UNSIGNED NOT NULL,
  `tendichvu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giadichvu` double NOT NULL,
  `tonggia` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dattour`
--

CREATE TABLE `dattour` (
  `madattour` int(10) UNSIGNED NOT NULL,
  `tonggia` double NOT NULL,
  `makh` int(10) UNSIGNED NOT NULL,
  `ngaydat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadanh`
--

CREATE TABLE `diadanh` (
  `madiadanh` int(10) UNSIGNED NOT NULL,
  `tendiadanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `noidung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diadanh`
--

INSERT INTO `diadanh` (`madiadanh`, `tendiadanh`, `gia`, `noidung`, `hinhanh`, `tinh`, `created_at`, `updated_at`) VALUES
(1, 'Thác Dambri', 500000, 'Thác Dambri - ngọn thác hùng vĩ tại cao nguyên Bảo Lộc ', '', 2, NULL, NULL),
(2, 'Khu Du Lịch Trang Trại Rau và Hoa', 200000, 'Khu Du Lịch Trang Trại Rau và Hoa, nằm trải rộng cả một thung lũng với bốn bề là rau và hoa đẹp tuyệt vời ', '', 2, NULL, NULL),
(3, 'Linh Ẩn tự', 350000, 'Viếng Linh Ẩn tự, ngôi chùa với tượng Phật Di Lặc lớn nhất tỉnh Lâm Đồng. ', '', 2, NULL, NULL),
(4, 'Nhà máy Trà Atiso& Rượu Vang Vĩnh Tiến', 250000, 'Nhà máy Trà Atiso& Rượu Vang Vĩnh Tiến nổi tiếng , tham quan tìm hiểu quy trình sản xuất trà Atisô, trà thảo dược, rượu vang và Đông Trùng Hạ Thảo.', '', 2, NULL, NULL),
(6, 'Bãi biển cát trắng Cà Ná', 300000, 'Chiêm ngưỡng Bãi biển cát trắng Cà Ná - một trong những bãi biển đẹp nổi tiếng của miền Trung', '', 1, NULL, NULL),
(7, 'Khu du lịch Hòn Lao', 160000, 'Tới khu du lịch Hòn Lao - đảo Khỉ, thư giãn, xem xiếc hoặc thử các môn thể thao bãi biển', '', 1, NULL, NULL),
(8, 'Tắm biển Dốc Lết', 270000, 'Tắm biển Dốc Lết - Một trong những bãi biển êm, đẹp, nổi tiếng của tỉnh Khánh Hòa', '', 1, NULL, NULL),
(9, 'Chùa Quan Âm Asakusa', 320000, 'Đi tham quan Chùa Quan Âm Asakusa - một trong những công trình cổ nhất và nổi tiếng tại Tokyo', '', 4, NULL, NULL),
(10, 'Núi Phú Sỹ', 540000, 'Núi Phú Sỹ (ngọn núi cao nhất Nhật Bản 3.776m và là biểu tượng của Nhật).', '', 4, NULL, NULL),
(11, 'Làng cổ Oshino Hakkai', 600000, 'Tham quan Làng cổ Oshino Hakkai với vẻ đẹp thanh bình, những món ăn địa phương lạ mắt và quý khách cũng có thể ngắm nhìn núi Phú Sỹ ngay từ trong làng', '', 4, NULL, NULL),
(12, 'Lâu đài Osaka', 550000, 'Tham quan (bên ngoài) Lâu đài Osaka - nơi chốn thiên đường với cảnh quan tuyệt mỹ, hài hòa giữa thiên nhiên và con người', '', 3, NULL, NULL),
(13, 'Chùa Kiyomizu ', 450000, 'ham quan Chùa Kiyomizu thờ Phật Quan Âm thiên thủ thiên nhãn - di sản văn hóa nổi tiếng ở Kyoto', '', 3, NULL, NULL),
(14, 'Chùa Kinkakuji', 400000, 'Tham quan Chùa Kinkakuji nằm nổi bật trên mặt nền hồ nước trong xanh.', '', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemden`
--

CREATE TABLE `diemden` (
  `id_diemden` int(10) UNSIGNED NOT NULL,
  `tendiemden` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matour` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diemden`
--

INSERT INTO `diemden` (`id_diemden`, `tendiemden`, `matour`, `created_at`, `updated_at`) VALUES
(1, 'Đà Lạt', 1, NULL, NULL),
(2, 'Nha Trang', 1, NULL, NULL),
(3, 'Nha Trang', 2, NULL, NULL),
(4, 'Tokyo', 3, NULL, NULL),
(5, 'Osaka', 3, NULL, NULL),
(6, 'Tokyo', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachsan`
--

CREATE TABLE `khachsan` (
  `makhachsan` int(10) UNSIGNED NOT NULL,
  `tenkhachsan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachsan`
--

INSERT INTO `khachsan` (`makhachsan`, `tenkhachsan`, `gia`, `hinhanh`, `tinh`, `created_at`, `updated_at`) VALUES
(1, 'KS-NhaTrang 1', 500000, '', 1, NULL, NULL),
(2, 'KS-NhaTrang 2', 700000, '', 1, NULL, NULL),
(3, 'KS-Đà Lạt 1', 350000, '', 2, NULL, NULL),
(4, 'KS-Đà Lạt 2', 450000, '', 2, NULL, NULL),
(5, 'KS-Tokyo 1', 1500000, '', 4, NULL, NULL),
(6, 'KS-Tokyo 2', 2000000, '', 4, NULL, NULL),
(7, 'KS-Osaka 1', 1200000, '', 3, NULL, NULL),
(8, 'KS-Osaka 2', 1900000, '', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitour`
--

CREATE TABLE `loaitour` (
  `maloai` int(10) UNSIGNED NOT NULL,
  `tenloai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitour`
--

INSERT INTO `loaitour` (`maloai`, `tenloai`, `created_at`, `updated_at`) VALUES
(1, 'Tour Trong Nước', '2019-05-26 11:56:11', '2019-05-26 11:56:11'),
(2, 'Tour Ngoài Nước', '2019-05-26 11:59:11', '2019-05-26 11:59:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(104, '2014_10_12_000000_create_users_table', 1),
(105, '2019_05_19_153733_create_social_facebook_accounts_table', 1),
(106, '2019_05_19_154214_create_social_google_accounts_table', 1),
(107, '2019_05_22_094712_create_loaitour_table', 1),
(108, '2019_05_22_094807_create_tour_table', 1),
(109, '2019_05_22_094856_create_quocgia_table', 1),
(110, '2019_05_22_094907_create_tinh_table', 1),
(111, '2019_05_22_095003_create_diadanh_table', 1),
(112, '2019_05_24_112146_create_khachsan_table', 1),
(113, '2019_05_24_112221_create_diemden_table', 1),
(114, '2019_05_24_112356_create_thamquan_table', 1),
(115, '2019_05_24_112424_create_noinghi_table', 1),
(116, '2019_05_24_112444_create_noianuong_table', 1),
(117, '2019_05_24_143140_create_nhahang_table', 1),
(118, '2019_05_24_151405_create_dattour_table', 1),
(119, '2019_05_24_151424_create_chitietdattour_table', 1),
(120, '2019_05_27_163503_create_admin_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhahang`
--

CREATE TABLE `nhahang` (
  `manhahang` int(10) UNSIGNED NOT NULL,
  `tennhahang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhahang`
--

INSERT INTO `nhahang` (`manhahang`, `tennhahang`, `gia`, `hinhanh`, `tinh`, `created_at`, `updated_at`) VALUES
(1, 'NH-Đà Lạt 1', 150000, '', 2, NULL, NULL),
(2, 'NH-Đà Lạt 2', 200000, '', 2, NULL, NULL),
(3, 'NH-NhaTrang 1', 100000, '', 1, NULL, NULL),
(4, 'NH-NhaTrang 2', 220000, '', 1, NULL, NULL),
(5, 'NH-Tokyo 1', 250000, '', 4, NULL, NULL),
(6, 'NH-Tokyo 2', 350000, '', 4, NULL, NULL),
(7, 'NH-Osaka 1', 300000, '', 3, NULL, NULL),
(8, 'NH-Osaka 2', 240000, '', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noianuong`
--

CREATE TABLE `noianuong` (
  `id_noianuong` int(10) UNSIGNED NOT NULL,
  `ten_noianuong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `khuvuc` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `noianuong`
--

INSERT INTO `noianuong` (`id_noianuong`, `ten_noianuong`, `gia`, `khuvuc`, `created_at`, `updated_at`) VALUES
(1, 'NH-Đà Lạt 1', 150000, 1, NULL, NULL),
(2, 'NH-Đà Lạt 2', 200000, 1, NULL, NULL),
(3, 'NH-NhaTrang 1', 100000, 2, NULL, NULL),
(4, 'NH-NhaTrang 2', 220000, 2, NULL, NULL),
(5, 'NH-NhaTrang 1', 100000, 3, NULL, NULL),
(6, 'NH-NhaTrang 2', 220000, 3, NULL, NULL),
(7, 'NH-Tokyo 1', 250000, 4, NULL, NULL),
(8, 'NH-Tokyo 2', 350000, 4, NULL, NULL),
(9, 'NH-Osaka 1', 300000, 5, NULL, NULL),
(10, 'NH-Osaka 2', 240000, 5, NULL, NULL),
(11, 'NH-Tokyo 1', 250000, 6, NULL, NULL),
(12, 'NH-Tokyo 2', 350000, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noinghi`
--

CREATE TABLE `noinghi` (
  `id_noinghi` int(10) UNSIGNED NOT NULL,
  `ten_noinghi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `khuvuc` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `noinghi`
--

INSERT INTO `noinghi` (`id_noinghi`, `ten_noinghi`, `gia`, `khuvuc`, `created_at`, `updated_at`) VALUES
(1, 'KS-NhaTrang 1', 500000, 2, NULL, NULL),
(2, 'KS-NhaTrang 2', 700000, 2, NULL, NULL),
(3, 'KS-Đà Lạt 1', 350000, 1, NULL, NULL),
(4, 'KS-Đà Lạt 2', 450000, 1, NULL, NULL),
(5, 'KS-NhaTrang 1', 500000, 3, NULL, NULL),
(6, 'KS-NhaTrang 2', 700000, 3, NULL, NULL),
(13, 'KS-Tokyo 1', 1500000, 4, NULL, NULL),
(14, 'KS-Tokyo 2', 2000000, 4, NULL, NULL),
(15, 'KS-Osaka 1', 1200000, 5, NULL, NULL),
(16, 'KS-Osaka 2', 1900000, 5, NULL, NULL),
(17, 'KS-Tokyo 1', 1500000, 6, NULL, NULL),
(18, 'KS-Tokyo 2', 2000000, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quocgia`
--

CREATE TABLE `quocgia` (
  `maquocgia` int(10) UNSIGNED NOT NULL,
  `tenquocgia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quocgia`
--

INSERT INTO `quocgia` (`maquocgia`, `tenquocgia`, `created_at`, `updated_at`) VALUES
(81, 'Nhật Bản', '2019-05-26 12:03:11', '2019-05-26 12:03:11'),
(84, 'Việt Nam', '2019-05-26 11:59:11', '2019-05-26 11:59:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_facebook_accounts`
--

CREATE TABLE `social_facebook_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_google_accounts`
--

CREATE TABLE `social_google_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thamquan`
--

CREATE TABLE `thamquan` (
  `id_thamquan` int(10) UNSIGNED NOT NULL,
  `ten_thamquan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `khuvuc` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thamquan`
--

INSERT INTO `thamquan` (`id_thamquan`, `ten_thamquan`, `gia`, `khuvuc`, `created_at`, `updated_at`) VALUES
(1, 'Thác Dambri', 500000, 1, NULL, NULL),
(2, 'Khu Du Lịch Trang Trại Rau và Hoa', 200000, 1, NULL, NULL),
(3, 'Bãi biển cát trắng Cà Ná', 300000, 2, NULL, NULL),
(4, 'Khu du lịch Hòn Lao', 160000, 2, NULL, NULL),
(5, 'Bãi biển cát trắng Cà Ná', 300000, 3, NULL, NULL),
(6, 'Khu du lịch Hòn Lao', 160000, 3, NULL, NULL),
(7, 'Tắm biển Dốc Lết', 270000, 3, NULL, NULL),
(8, 'Chùa Quan Âm Asakusa', 320000, 4, NULL, NULL),
(9, 'Núi Phú Sỹ', 540000, 4, NULL, NULL),
(10, 'Lâu đài Osaka', 550000, 5, NULL, NULL),
(11, 'Chùa Kiyomizu ', 450000, 5, NULL, NULL),
(12, 'Chùa Kinkakuji', 400000, 5, NULL, NULL),
(13, 'Chùa Quan Âm Asakusa', 320000, 6, NULL, NULL),
(14, 'Núi Phú Sỹ', 540000, 6, NULL, NULL),
(15, 'Làng cổ Oshino Hakkai', 600000, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `matinh` int(10) UNSIGNED NOT NULL,
  `tentinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quocgia` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinh`
--

INSERT INTO `tinh` (`matinh`, `tentinh`, `quocgia`, `created_at`, `updated_at`) VALUES
(1, 'Nha Trang', 84, NULL, NULL),
(2, 'Đà Lạt', 84, NULL, NULL),
(3, 'Osaka', 81, NULL, NULL),
(4, 'Tokyo', 81, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `matour` int(10) UNSIGNED NOT NULL,
  `loaitour` int(10) UNSIGNED NOT NULL,
  `tentour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `songay` int(11) NOT NULL,
  `sodem` int(11) NOT NULL,
  `diemxuatphat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`matour`, `loaitour`, `tentour`, `songay`, `sodem`, `diemxuatphat`, `noidung`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tour Đà Lạt - Nha Trang', 4, 3, 'Hồ Chí Minh', 'Thì đi hết đà lạt rồi đi nha trang rồi về.', 'tour-1.jpg', NULL, NULL),
(2, 1, 'Tour Nha Trang', 3, 2, 'Hồ Chí Minh', 'Đi Nha Trang hít khí biển rồi zìa', 'tour-2.jpg', NULL, NULL),
(3, 2, 'Tour Tokyo - Osaka', 5, 4, 'Hồ Chí Minh', 'Đi dạo 1 vòng Nhựt Bổn rồi zìa', 'tour-3.jpg', NULL, NULL),
(4, 2, 'Tour đi Tokyo', 3, 2, 'Hồ Chí Minh', 'Ði tới Tô-Ky-Ô. Mình xách tay chiếc dù. Mặc áo ki-mô-nô. Tô-Ky-Ô Tô-Ky-Ô. Dù là dù với ki-mô-nô ', 'tour-4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Chỉ mục cho bảng `chitietdattour`
--
ALTER TABLE `chitietdattour`
  ADD PRIMARY KEY (`ma_ctt`),
  ADD KEY `chitietdattour_madattour_foreign` (`madattour`);

--
-- Chỉ mục cho bảng `dattour`
--
ALTER TABLE `dattour`
  ADD PRIMARY KEY (`madattour`),
  ADD KEY `dattour_makh_foreign` (`makh`);

--
-- Chỉ mục cho bảng `diadanh`
--
ALTER TABLE `diadanh`
  ADD PRIMARY KEY (`madiadanh`),
  ADD KEY `diadanh_tinh_foreign` (`tinh`);

--
-- Chỉ mục cho bảng `diemden`
--
ALTER TABLE `diemden`
  ADD PRIMARY KEY (`id_diemden`),
  ADD KEY `diemden_matour_foreign` (`matour`);

--
-- Chỉ mục cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`makhachsan`),
  ADD KEY `khachsan_tinh_foreign` (`tinh`);

--
-- Chỉ mục cho bảng `loaitour`
--
ALTER TABLE `loaitour`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhahang`
--
ALTER TABLE `nhahang`
  ADD PRIMARY KEY (`manhahang`),
  ADD KEY `nhahang_tinh_foreign` (`tinh`);

--
-- Chỉ mục cho bảng `noianuong`
--
ALTER TABLE `noianuong`
  ADD PRIMARY KEY (`id_noianuong`),
  ADD KEY `noianuong_khuvuc_foreign` (`khuvuc`);

--
-- Chỉ mục cho bảng `noinghi`
--
ALTER TABLE `noinghi`
  ADD PRIMARY KEY (`id_noinghi`),
  ADD KEY `noinghi_khuvuc_foreign` (`khuvuc`);

--
-- Chỉ mục cho bảng `quocgia`
--
ALTER TABLE `quocgia`
  ADD PRIMARY KEY (`maquocgia`);

--
-- Chỉ mục cho bảng `social_facebook_accounts`
--
ALTER TABLE `social_facebook_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_facebook_accounts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `social_google_accounts`
--
ALTER TABLE `social_google_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_google_accounts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `thamquan`
--
ALTER TABLE `thamquan`
  ADD PRIMARY KEY (`id_thamquan`),
  ADD KEY `thamquan_khuvuc_foreign` (`khuvuc`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`matinh`),
  ADD KEY `tinh_quocgia_foreign` (`quocgia`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`matour`),
  ADD KEY `tour_loaitour_foreign` (`loaitour`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietdattour`
--
ALTER TABLE `chitietdattour`
  MODIFY `ma_ctt` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dattour`
--
ALTER TABLE `dattour`
  MODIFY `madattour` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `diadanh`
--
ALTER TABLE `diadanh`
  MODIFY `madiadanh` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `diemden`
--
ALTER TABLE `diemden`
  MODIFY `id_diemden` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `makhachsan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `loaitour`
--
ALTER TABLE `loaitour`
  MODIFY `maloai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `nhahang`
--
ALTER TABLE `nhahang`
  MODIFY `manhahang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `noianuong`
--
ALTER TABLE `noianuong`
  MODIFY `id_noianuong` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `noinghi`
--
ALTER TABLE `noinghi`
  MODIFY `id_noinghi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `quocgia`
--
ALTER TABLE `quocgia`
  MODIFY `maquocgia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `social_facebook_accounts`
--
ALTER TABLE `social_facebook_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `social_google_accounts`
--
ALTER TABLE `social_google_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thamquan`
--
ALTER TABLE `thamquan`
  MODIFY `id_thamquan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tinh`
--
ALTER TABLE `tinh`
  MODIFY `matinh` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `matour` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdattour`
--
ALTER TABLE `chitietdattour`
  ADD CONSTRAINT `chitietdattour_madattour_foreign` FOREIGN KEY (`madattour`) REFERENCES `dattour` (`madattour`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `dattour`
--
ALTER TABLE `dattour`
  ADD CONSTRAINT `dattour_makh_foreign` FOREIGN KEY (`makh`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `diadanh`
--
ALTER TABLE `diadanh`
  ADD CONSTRAINT `diadanh_tinh_foreign` FOREIGN KEY (`tinh`) REFERENCES `tinh` (`matinh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `diemden`
--
ALTER TABLE `diemden`
  ADD CONSTRAINT `diemden_matour_foreign` FOREIGN KEY (`matour`) REFERENCES `tour` (`matour`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  ADD CONSTRAINT `khachsan_tinh_foreign` FOREIGN KEY (`tinh`) REFERENCES `tinh` (`matinh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `nhahang`
--
ALTER TABLE `nhahang`
  ADD CONSTRAINT `nhahang_tinh_foreign` FOREIGN KEY (`tinh`) REFERENCES `tinh` (`matinh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `noianuong`
--
ALTER TABLE `noianuong`
  ADD CONSTRAINT `noianuong_khuvuc_foreign` FOREIGN KEY (`khuvuc`) REFERENCES `diemden` (`id_diemden`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `noinghi`
--
ALTER TABLE `noinghi`
  ADD CONSTRAINT `noinghi_khuvuc_foreign` FOREIGN KEY (`khuvuc`) REFERENCES `diemden` (`id_diemden`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `social_facebook_accounts`
--
ALTER TABLE `social_facebook_accounts`
  ADD CONSTRAINT `social_facebook_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `social_google_accounts`
--
ALTER TABLE `social_google_accounts`
  ADD CONSTRAINT `social_google_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thamquan`
--
ALTER TABLE `thamquan`
  ADD CONSTRAINT `thamquan_khuvuc_foreign` FOREIGN KEY (`khuvuc`) REFERENCES `diemden` (`id_diemden`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD CONSTRAINT `tinh_quocgia_foreign` FOREIGN KEY (`quocgia`) REFERENCES `quocgia` (`maquocgia`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `tour_loaitour_foreign` FOREIGN KEY (`loaitour`) REFERENCES `loaitour` (`maloai`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
