-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 27, 2022 lúc 09:08 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `92lottery`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `5d`
--

CREATE TABLE `5d` (
  `id` int(11) NOT NULL,
  `period` bigint(20) DEFAULT 0,
  `result` varchar(5) NOT NULL DEFAULT '0',
  `game` int(11) NOT NULL DEFAULT 1,
  `status` int(11) DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `5d`
--

INSERT INTO `5d` (`id`, `period`, `result`, `game`, `status`, `time`) VALUES
(148, 2022070110000, '23521', 10, 1, '1661584076087'),
(149, 2022070110001, '0', 10, 0, '1661584076087'),
(150, 2022070110000, '23521', 5, 1, '1661584076087'),
(151, 2022070110001, '0', 5, 0, '1661584076087'),
(152, 2022070110000, '23521', 3, 1, '1661584076087'),
(153, 2022070110001, '0', 3, 0, '1661584076087'),
(154, 2022070110000, '23521', 1, 1, '1661584076087'),
(155, 2022070110001, '0', 1, 0, '1661584076087');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `wingo1` text NOT NULL,
  `wingo3` text NOT NULL,
  `wingo5` text NOT NULL,
  `wingo10` text NOT NULL,
  `k5d` text NOT NULL,
  `k5d3` text NOT NULL,
  `k5d5` text,
  `k5d10` text NOT NULL,
  `k3d` text NOT NULL,
  `k3d3` text NOT NULL,
  `k3d5` text NOT NULL,
  `k3d10` text NOT NULL,
  `win_rate` int(11) NOT NULL,
  `telegram` varchar(100) NOT NULL,
  `cskh` varchar(100) NOT NULL,
  `app` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `wingo1`, `wingo3`, `wingo5`, `wingo10`, `k5d`, `k5d3`, `k5d5`, `k5d10`, `k3d`, `k3d3`, `k3d5`, `k3d10`, `win_rate`, `telegram`, `cskh`, `app`) VALUES
(1, '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 80, 'https://t.me/dreamsister', 'https://t.me/ChenQiaoYing', '#');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_recharge`
--

CREATE TABLE `bank_recharge` (
  `id` int(11) NOT NULL,
  `name_bank` varchar(50) NOT NULL DEFAULT '0',
  `name_user` varchar(100) NOT NULL DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'bank',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bank_recharge`
--

INSERT INTO `bank_recharge` (`id`, `name_bank`, `name_user`, `stk`, `type`, `time`) VALUES
(1, 'MB BANK', 'NGUYEN NHAT LONG', '0800103725301', 'bank', '1655689155500'),
(2, 'MOMO', 'NGUYEN NHAT LONG', '387633464', 'momo', '1655689155500');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `financial_details`
--

CREATE TABLE `financial_details` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone_used` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `financial_details`
--

INSERT INTO `financial_details` (`id`, `phone`, `phone_used`, `money`, `type`, `time`) VALUES
(1, 'AO02014YD', '387636509', 1000, '1', '1657373080436'),
(2, 'AO02014YD', '387636509', 1000, '2', '1657373264811'),
(3, 'AO02014YD', '387636509', 1000, '2', '1657373269339'),
(4, 'AO02014YD', '387636509', 3000, '1', '1657448535900'),
(5, 'AO02014YD', '387636509', 2000, '1', '1657448801632');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `k3`
--

CREATE TABLE `k3` (
  `id` int(11) NOT NULL,
  `period` bigint(20) NOT NULL DEFAULT 0,
  `result` int(11) NOT NULL,
  `game` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `k3`
--

INSERT INTO `k3` (`id`, `period`, `result`, `game`, `status`, `time`) VALUES
(17, 2022070110000, 235, 10, 1, '1661584076087'),
(18, 2022070110001, 0, 10, 0, '1661584076087'),
(19, 2022070110000, 235, 5, 1, '1661584076087'),
(20, 2022070110001, 0, 5, 0, '1661584076087'),
(21, 2022070110000, 235, 3, 1, '1661584076087'),
(22, 2022070110001, 0, 3, 0, '1661584076087'),
(23, 2022070110000, 235, 1, 1, '1661584076087'),
(24, 2022070110001, 0, 1, 0, '1661584076087');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `f1` varchar(50) NOT NULL,
  `f2` varchar(50) NOT NULL,
  `f3` varchar(50) NOT NULL,
  `f4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `level`
--

INSERT INTO `level` (`id`, `level`, `f1`, `f2`, `f3`, `f4`) VALUES
(1, 0, '0.6', '0.18', '0.054', '0.0162'),
(2, 1, '0.7', '0.21', '0.063', '0.0189'),
(3, 2, '0.75', '0.225', '0.0675', '0.0203'),
(4, 3, '0.8', '0.24', '0.072', '0.0216'),
(5, 4, '0.85', '0.255', '0.0765', '0.023'),
(6, 5, '0.9', '0.27', '0.081', '0.0243'),
(7, 6, '1', '0.3', '0.09', '0.027');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `minutes_1`
--

CREATE TABLE `minutes_1` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `stage` varchar(255) NOT NULL DEFAULT '0',
  `result` int(11) NOT NULL DEFAULT 0,
  `more` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` varchar(50) NOT NULL DEFAULT '0',
  `bet` varchar(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `point_list`
--

CREATE TABLE `point_list` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `telegram` varchar(100) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `money_us` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `total1` int(11) NOT NULL DEFAULT 2888,
  `total2` int(11) NOT NULL DEFAULT 4888,
  `total3` int(11) DEFAULT 8888,
  `total4` int(11) NOT NULL DEFAULT 28888,
  `total5` int(11) NOT NULL DEFAULT 48888,
  `total6` int(11) NOT NULL DEFAULT 68888,
  `total7` int(11) NOT NULL DEFAULT 88888
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `point_list`
--

INSERT INTO `point_list` (`id`, `phone`, `telegram`, `money`, `money_us`, `level`, `total1`, `total2`, `total3`, `total4`, `total5`, `total6`, `total7`) VALUES
(2, '387636508', '0', 0, 0, 1, 0, 0, 8888, 28888, 48888, 68888, 88888),
(7, 'AO02014YD', 'https://t.me/ChenQiaoYings', 0, 0, 2, 2888, 4888, 8888, 28888, 48888, 68888, 88888),
(8, '387636509', '0', 0, 0, 0, 2888, 4888, 8888, 28888, 48888, 68888, 88888),
(9, '387636500', '0', 0, 0, 0, 2888, 4888, 8888, 28888, 48888, 68888, 88888),
(10, '387636501', '0', 0, 0, 0, 2888, 4888, 8888, 28888, 48888, 68888, 88888),
(11, 'ATDOEFSVB', '0', 0, 2000, 2, 2888, 4888, 8888, 28888, 48888, 68888, 88888),
(13, '387636505', '0', 0, 0, 0, 2888, 4888, 8888, 28888, 48888, 68888, 88888);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recharge`
--

CREATE TABLE `recharge` (
  `id` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL DEFAULT '0',
  `transaction_id` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `url` text,
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `recharge`
--

INSERT INTO `recharge` (`id`, `id_order`, `transaction_id`, `phone`, `money`, `type`, `status`, `today`, `url`, `time`) VALUES
(29, '202261517295472166608', 'VT202207051724363989', '387636508', 51471, 'bank', 2, '2022-07-05', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0enAvQWNyVzV0cjRXQ21udzBsQlhqWlcrcHlNdVVrNlF6T0xmcjVKNzZxNA%3D%3D', '1657016675728'),
(30, '202261528176334540227', 'VT202207051752472007', '387636508', 50134, 'bank', 2, '2022-07-05', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0MHlsNHBMQXIwZmlKcTVxVHNPaXdTREhQSlR3N1hzYXBRNm9XWmFNTzMvOA%3D%3D', '1657018367348'),
(31, '202261524605996699003', 'VT202207051755572554', '387636508', 50340, 'bank', 2, '2022-07-05', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0Mkdudy91NVBmdktxbm5aR2FMbldST1dVV3ZDSEJRaDFNOGtwS1d2WVNWYQ%3D%3D', '1657018556891'),
(32, '202261591204336430156', 'VT202207051756167568', '387636509', 150742, 'bank', 1, '2022-07-08', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0L3RyRlZjWCtiREFqTU0wZzdoWFBOeCtyR1VtZTRWSGE5SGJwQkhHZGcvVw%3D%3D', '1657018556891'),
(33, '202261528211887766999', 'VT202207051756569750', '387636509', 50430, 'bank', 1, '2022-07-08', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0eVdPUEJvU05lZGtJUXBQUC9GK3BUTENKUVdBaFlZak1FRURkTDlRbTllOA%3D%3D', '1657299786983'),
(34, '202261547189286576585', 'VT202207060009561119', '387636509', 50479, 'momo', 2, '2022-07-06', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0MVl6bU1zVXF6NVdYMzBsSDdySExDNVlUQW9STDc5NmZXci9zMGNRL2U3bA%3D%3D', '1657299786983'),
(35, '202261577816036586817', 'NULL', '387636500', 151881, 'momo', 1, '2022-07-06', 'NULL', '1657041354848'),
(36, '202261526961645073353', 'VT202207060026357103', '387636509', 50968, 'bank', 2, '2022-07-06', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0MmxuWUluTWo3eWwzdEhydVVoTjc0bG9QMy9lVlJKVnpJc3BmV2JmRU5Cbg%3D%3D', '1657299786983'),
(37, '202261634972508201128', 'VT202207062251094878', '387636508', 50961, 'bank', 2, '2022-07-06', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0NmtXMVB5NWVvOWN5K0h2ajRoY1V2cjI2NFYzVlpHS1M0UmJlQ1diaFRvRA%3D%3D', '1657299786983'),
(38, '202261882566088174390', 'VT202207090003084060', '387636509', 201649, 'bank', 1, '2022-07-09', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0OTlRN0M5MXFjSTZwSTVmSklwR0Y3ay8reGI2K2Fkb0luVnZEeldoVlltSg%3D%3D', '1657299786983'),
(39, '2022612583332544487712', 'VT202207251651217813', 'AO02014YD', 51507, 'bank', 2, '2022-07-25', 'https://viet2pay.live/pay?code=b3BhM3NDaCsrQUNwSmpxT3JkcHE0ODRraXRoQk5UTEE4WUo1cXVwMldyK0RYMVRUSDdxbWpEZUpFSm9wbXZ6Yw%3D%3D', '1658742680753'),
(40, '2022612566017241625173', 'NULL', 'AO02014YD', 51946, 'momo', 2, '2022-07-25', 'NULL', '1658743295630'),
(41, '2022612511487707006825', 'NULL', 'AO02014YD', 500000, 'momo', 2, '2022-07-25', 'NULL', '1658743607237'),
(42, '2022612533532157269647', '0', 'AO02014YD', 50000, 'bank', 2, '2022-07-25', '0', '1658743631599'),
(43, '2022612592659642284177', '0', 'AO02014YD', 50000, 'bank', 0, '2022-07-25', '0', '1658743651271'),
(44, '2022612562302649202042', '0', '387636508', 50000, 'bank', 2, '2022-07-25', '0', '1658743751240'),
(45, '2022612586196916561855', '0', '387636508', 210000, 'bank', 2, '2022-07-25', '0', '1658751986931'),
(46, '2022612530767985491768', '0', '387636508', 50000, 'bank', 2, '2022-07-25', '0', '1658752095535'),
(47, '2022612558348999896272', '0', '387636508', 200000, 'bank', 2, '2022-07-25', '0', '1658752104214'),
(48, '2022612526934692575781', '0', '387636508', 111111, 'bank', 2, '2022-07-25', '0', '1658752148056'),
(49, '2022712426395975408455', '0', '387636508', 50000, 'bank', 2, '2022-08-24', '0', '1661324898807');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `redenvelopes`
--

CREATE TABLE `redenvelopes` (
  `id` int(11) NOT NULL,
  `id_redenvelope` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `used` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `redenvelopes`
--

INSERT INTO `redenvelopes` (`id`, `id_redenvelope`, `phone`, `money`, `used`, `amount`, `status`, `time`) VALUES
(1, '20220709SXP0V9DI', '387636508', 200000, 0, 1, 1, '1657307934418'),
(2, '20220709UU29A7HG', '387636508', 200000, 1, 1, 0, '1657308501742'),
(4, '20220709ZZ0T4PQFJCSD5MVS', 'AO02014YD', 1000, 1, 1, 1, '1657323168923'),
(5, '202207090GSLLWMLT9ODGJ7M', 'AO02014YD', 1000, 1, 1, 0, '1657323185143'),
(6, '2022070988SP65NAUW1UAE0I', 'AO02014YD', 50000, 1, 1, 0, '1657323231889'),
(7, '20220709RKS8ZYXM47R2BYRZ', 'AO02014YD', 48000, 1, 1, 0, '1657372297549');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `redenvelopes_used`
--

CREATE TABLE `redenvelopes_used` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone_used` varchar(50) NOT NULL DEFAULT '0',
  `id_redenvelops` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `redenvelopes_used`
--

INSERT INTO `redenvelopes_used` (`id`, `phone`, `phone_used`, `id_redenvelops`, `money`, `time`) VALUES
(1, 'AO02014YD', '387636509', '20220709UU29A7HG', 2000000, '1657300072341'),
(2, 'AO02014YD', '387636509', '20220709SXP0V9DI', 200000, '1657314379390'),
(3, 'AO02014YD', '387636509', '20220709SXP0V9DI', 200000, '1657314383701'),
(4, 'AO02014YD', '387636509', '20220709SXP0V9DI', 200000, '1657314394578'),
(5, 'AO02014YD', '387636509', '20220709SXP0V9DI', 200000, '1657314497992');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result_5d`
--

CREATE TABLE `result_5d` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(20) DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `stage` bigint(20) DEFAULT 0,
  `result` varchar(5) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` int(11) NOT NULL,
  `join_bet` varchar(10) NOT NULL DEFAULT '0',
  `bet` varchar(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `result_5d`
--

INSERT INTO `result_5d` (`id`, `id_product`, `phone`, `code`, `invite`, `stage`, `result`, `level`, `money`, `price`, `amount`, `fee`, `get`, `game`, `join_bet`, `bet`, `status`, `time`) VALUES
(137, '20220815217301195667488', '387636508', '6fGGw42409', '2cOCs36373', 2022070110001, '76996', 1, 2000, 1960, 1, 40, 0, 1, 'a', '01', 2, '1660503042276');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result_k3`
--

CREATE TABLE `result_k3` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '0',
  `invite` varchar(50) NOT NULL DEFAULT '0',
  `stage` varchar(50) NOT NULL DEFAULT '0',
  `result` varchar(5) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` varchar(5) NOT NULL DEFAULT '0',
  `join_bet` varchar(100) NOT NULL DEFAULT '0',
  `typeGame` varchar(100) NOT NULL DEFAULT '0',
  `bet` varchar(100) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `result_k3`
--

INSERT INTO `result_k3` (`id`, `id_product`, `phone`, `code`, `invite`, `stage`, `result`, `level`, `money`, `price`, `amount`, `fee`, `get`, `game`, `join_bet`, `typeGame`, `bet`, `status`, `time`) VALUES
(60, '20220827330735366360925', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 7000, 6860, 1, 140, 0, '1', '4', 'unlike', '1,2,3@u@1,2,3', 2, '1661563850889'),
(61, '20220827387075152655172', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 7000, 6860, 1, 140, 167115, '1', '4', 'unlike', '4,5,6@u@4,5,6', 1, '1661563884750'),
(62, '20220827569185625985976', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 3000, 2940, 1, 60, 0, '1', '4', 'unlike', '@u@2,3', 2, '1661564082031'),
(63, '20220827700826492439085', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 1000, 980, 1, 20, 0, '1', '4', 'unlike', '@u@', 2, '1661564094829'),
(64, '20220827318706442407350', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 3000, 2940, 1, 60, 108622, '1', '4', 'unlike', '4,5,6@y@', 1, '1661564237862'),
(65, '20220827325941243725703', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 2000, 1960, 1, 40, 6870, '1', '4', 'unlike', '@y@5,6', 1, '1661564242820'),
(66, '20220827782340052783770', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 3000, 2940, 1, 60, 0, '1', '4', 'unlike', '1,2,3@y@', 2, '1661564262637'),
(67, '20220827716956478960048', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 20000, 19600, 1, 400, 0, '1', '4', 'unlike', '1,2,3,4,5,6@y@', 2, '1661564461022'),
(68, '20220827119680511499355', '387636508', '6fGGw42409', '2cOCs36373', '2022070110001', '333', 1, 27000, 26460, 1, 540, 0, '1', '4', 'unlike', '1,2,3,4,5,6@u@2,3,5,1', 2, '1661564733781'),
(69, '20220827814969994138054', '387636508', '6fGGw42409', '2cOCs36373', '2022070110002', '511', 1, 2000, 1960, 1, 40, 0, '1', '1', 'total', '16,17', 2, '1661569054549'),
(70, '20220827731384561889430', '387636508', '6fGGw42409', '2cOCs36373', '2022070110002', '511', 1, 1000, 980, 1, 20, 0, '1', '1', 'total', '12', 2, '1661570244549'),
(71, '20220827643519523106603', '387636508', '6fGGw42409', '2cOCs36373', '2022070110002', '511', 1, 1000, 980, 1, 20, 0, '1', '1', 'total', '8', 2, '1661570245876'),
(72, '20220827607295194415290', '387636509', 'zDlhz96925', 'atSus53635', '2022070110004', '0', 0, 2000, 1960, 1, 40, 0, '1', '1', 'total', '10,12', 0, '1661572944987'),
(73, '20220827769586589465142', '387636509', 'zDlhz96925', 'atSus53635', '2022070110004', '0', 0, 2000, 1960, 1, 40, 0, '1', '1', 'total', '7,12', 0, '1661573163171'),
(74, '20220827735924397775457', '387636509', 'zDlhz96925', 'atSus53635', '2022070110004', '0', 0, 3000, 2940, 1, 60, 0, '1', '1', 'total', '10,11,12', 0, '1661573212739'),
(75, '20220827491995896535316', '387636509', 'zDlhz96925', 'atSus53635', '2022070110004', '0', 0, 2000, 1960, 1, 40, 0, '1', '1', 'total', '10,12', 0, '1661573243051'),
(76, '20220827325949167830911', '387636509', 'zDlhz96925', 'atSus53635', '2022070110004', '0', 0, 1000, 980, 1, 20, 0, '1', '1', 'total', '12', 0, '1661573325659'),
(77, '20220827605062480182622', '387636509', 'zDlhz96925', 'atSus53635', '2022070110004', '0', 0, 7000, 6860, 1, 140, 0, '1', '2', 'two-same', '22,33,55@33|2,4&55|2,4', 0, '1661574722977'),
(78, '20220827653524766968020', '387636509', 'zDlhz96925', 'atSus53635', '2022070110004', '0', 0, 1000, 980, 1, 20, 0, '1', '1', 'total', '12', 0, '1661574954122');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roses`
--

CREATE TABLE `roses` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '0',
  `invite` varchar(50) NOT NULL DEFAULT '0',
  `f1` int(11) NOT NULL DEFAULT 0,
  `f2` int(11) NOT NULL DEFAULT 0,
  `f3` int(11) NOT NULL DEFAULT 0,
  `f4` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `roses`
--

INSERT INTO `roses` (`id`, `phone`, `code`, `invite`, `f1`, `f2`, `f3`, `f4`, `time`) VALUES
(173, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1660503042276'),
(174, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661524496029'),
(175, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661524521701'),
(176, '387636508', '6fGGw42409', '2cOCs36373', 2400, 720, 216, 65, '1661524551944'),
(177, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661525706303'),
(178, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661525744280'),
(179, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661526198009'),
(180, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661526249463'),
(181, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661526285446'),
(182, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661526593825'),
(183, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661526666015'),
(184, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661526789935'),
(185, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661526819839'),
(186, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661526827061'),
(187, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661526832911'),
(188, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661526874247'),
(189, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661526982572'),
(190, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661527103664'),
(191, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661527114510'),
(192, '387636508', '6fGGw42409', '2cOCs36373', 42, 13, 4, 1, '1661529832256'),
(193, '387636508', '6fGGw42409', '2cOCs36373', 0, 0, 0, 0, '1661530010412'),
(194, '387636508', '6fGGw42409', '2cOCs36373', 66, 20, 6, 2, '1661532640032'),
(195, '387636508', '6fGGw42409', '2cOCs36373', 30, 9, 3, 1, '1661534935970'),
(196, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661535367229'),
(197, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661537156197'),
(198, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661537336253'),
(199, '387636508', '6fGGw42409', '2cOCs36373', 48, 14, 4, 1, '1661537563477'),
(200, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661540473739'),
(201, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661540489897'),
(202, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661541297682'),
(203, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661541397916'),
(204, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661541537346'),
(205, '387636508', '6fGGw42409', '2cOCs36373', 36, 11, 3, 1, '1661542271876'),
(206, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661543098404'),
(207, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661543103915'),
(208, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661543231083'),
(209, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661543258451'),
(210, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661543510571'),
(211, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661544301315'),
(212, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661544649014'),
(213, '387636508', '6fGGw42409', '2cOCs36373', 36, 11, 3, 1, '1661546336282'),
(214, '387636508', '6fGGw42409', '2cOCs36373', 54, 16, 5, 1, '1661551157253'),
(215, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661551917889'),
(216, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661552250799'),
(217, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661552559761'),
(218, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661556607535'),
(219, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661556650614'),
(220, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661556671504'),
(221, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661557244655'),
(222, '387636508', '6fGGw42409', '2cOCs36373', 24, 7, 2, 1, '1661557261518'),
(223, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661557280223'),
(224, '387636508', '6fGGw42409', '2cOCs36373', 36, 11, 3, 1, '1661560485599'),
(225, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661560488349'),
(226, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661560490126'),
(227, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661561718958'),
(228, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661562065855'),
(229, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661562067661'),
(230, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661562069742'),
(231, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661562209269'),
(232, '387636508', '6fGGw42409', '2cOCs36373', 42, 13, 4, 1, '1661562279503'),
(233, '387636508', '6fGGw42409', '2cOCs36373', 36, 11, 3, 1, '1661562283862'),
(234, '387636508', '6fGGw42409', '2cOCs36373', 42, 13, 4, 1, '1661563850889'),
(235, '387636508', '6fGGw42409', '2cOCs36373', 42, 13, 4, 1, '1661563884750'),
(236, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661564082031'),
(237, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661564094829'),
(238, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661564237862'),
(239, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661564242820'),
(240, '387636508', '6fGGw42409', '2cOCs36373', 18, 5, 2, 0, '1661564262637'),
(241, '387636508', '6fGGw42409', '2cOCs36373', 120, 36, 11, 3, '1661564461022'),
(242, '387636508', '6fGGw42409', '2cOCs36373', 162, 49, 15, 4, '1661564733781'),
(243, '387636508', '6fGGw42409', '2cOCs36373', 12, 4, 1, 0, '1661569054549'),
(244, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661570244549'),
(245, '387636508', '6fGGw42409', '2cOCs36373', 6, 2, 1, 0, '1661570245876'),
(246, '387636509', 'zDlhz96925', 'atSus53635', 12, 4, 1, 0, '1661572944987'),
(247, '387636509', 'zDlhz96925', 'atSus53635', 12, 4, 1, 0, '1661573163171'),
(248, '387636509', 'zDlhz96925', 'atSus53635', 18, 5, 2, 0, '1661573212739'),
(249, '387636509', 'zDlhz96925', 'atSus53635', 12, 4, 1, 0, '1661573243051'),
(250, '387636509', 'zDlhz96925', 'atSus53635', 6, 2, 1, 0, '1661573325659'),
(251, '387636509', 'zDlhz96925', 'atSus53635', 42, 13, 4, 1, '1661574722977'),
(252, '387636509', 'zDlhz96925', 'atSus53635', 6, 2, 1, 0, '1661574954122');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `roses_f1` int(11) NOT NULL DEFAULT 0,
  `roses_f` int(11) NOT NULL DEFAULT 0,
  `roses_today` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `ctv` varchar(50) NOT NULL DEFAULT '0',
  `veri` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0',
  `time_otp` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `id_user`, `phone`, `token`, `name_user`, `password`, `money`, `total_money`, `roses_f1`, `roses_f`, `roses_today`, `level`, `rank`, `code`, `invite`, `ctv`, `veri`, `otp`, `ip_address`, `status`, `time`, `time_otp`) VALUES
(1, '53621', '387636508', '159865e87a57d2381e80236159874066', 'Member47165', 'e10adc3949ba59abbe56e057f20f883e', 8861644, 200000, 0, 1622, 0, 1, 0, '6fGGw42409', '2cOCs36373', '000000', 1, '965681', '::2', 1, '1655689155500', '1657133391602'),
(28, '38374', 'AO02014YD', 'a99bc9609b7a6d7ddcaab63930a921e0', 'Member21490', '202cb962ac59075b964b07152d234b70', 15334054, 0, 153920, 14773, 0, 2, 0, 'atSus53635', '2cOCs36373', '0', 1, '0', '::1', 1, '1657194389383', '1657018556891'),
(29, '83908', '387636509', 'f6f3a66ab6caa447396ab23db14afc0e', 'Member38078', '202cb962ac59075b964b07152d234b70', 15224234, 50000, 0, 0, 0, 0, 0, 'zDlhz96925', 'atSus53635', 'AO02014YD', 1, '505237', '::1', 1, '1657299973800', '1657224366224'),
(30, '82051', '387636500', '0685b68cb10a2ace9e79551e7a13fbe8', 'Member54523', 'e10adc3949ba59abbe56e057f20f883e', 15242234, 0, 0, 0, 0, 1, 0, 'ikefU82152', 'zDlhz96925', 'AO02014YD', 1, '747134', '::5', 1, '1657299973800', '1657224366224'),
(31, '32671', '387636501', '0', 'Member78462', '202cb962ac59075b964b07152d234b70', 0, 0, 0, 0, 0, 0, 0, 'ERcER35554', 'ikefU82152', 'AO02014YD', 1, '502772', '::4', 1, '1657299973800', '1657300072341'),
(33, '65710', 'ATDOEFSVB', '9d48f5a3bfbaa46fee04def7895c64ca', 'Member35489', '202cb962ac59075b964b07152d234b70', 0, 0, 0, 0, 0, 2, 0, 'HcsUo51424', '2cOCs36373', '0', 1, '0', '::3', 1, '1657439832191', '0'),
(35, '94522', '387636505', '0', 'Member20358', 'f89518b47c557152b74d533f14499f0c', 0, 0, 0, 0, 0, 0, 0, 'ODrQo23776', 'zDlhz96925', 'AO02014YD', 1, '529031', '::1', 1, '1658655422476', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_bank`
--

CREATE TABLE `user_bank` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `name_bank` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(100) DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `tp` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `sdt` varchar(20) DEFAULT '0',
  `tinh` varchar(100) NOT NULL DEFAULT '0',
  `chi_nhanh` varchar(100) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_bank`
--

INSERT INTO `user_bank` (`id`, `phone`, `name_bank`, `name_user`, `stk`, `tp`, `email`, `sdt`, `tinh`, `chi_nhanh`, `time`) VALUES
(2, '387636509', 'MB BANK', 'NGUYEN NHAT LONG', '0800103725301', 'Ha Noi', 'longmobile@gmail.com', '0387636508', 'Kien Giang', 'Kien Giang', '1656823358029'),
(3, '387636508', 'MB BANK', 'NGUYEN NHAT LONG', '12421412412', 'HN', 'email@gmail.com', '0800100200', 'HN', 'HN', '1658743827846');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wingo`
--

CREATE TABLE `wingo` (
  `id` int(11) NOT NULL,
  `period` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `game` varchar(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wingo`
--

INSERT INTO `wingo` (`id`, `period`, `amount`, `game`, `status`, `time`) VALUES
(1533, '2022070110000', 6, 'wingo10', 1, '1661584076087'),
(1534, '2022070110001', 0, 'wingo10', 0, '1661584076087'),
(1535, '2022070110000', 6, 'wingo5', 1, '1661584076087'),
(1536, '2022070110001', 0, 'wingo5', 0, '1661584076087'),
(1537, '2022070110000', 6, 'wingo3', 1, '1661584076087'),
(1538, '2022070110001', 0, 'wingo3', 0, '1661584076087'),
(1539, '2022070110000', 6, 'wingo', 1, '1661584076087'),
(1540, '2022070110001', 0, 'wingo', 0, '1661584076087');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `name_bank` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(100) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `withdraw`
--

INSERT INTO `withdraw` (`id`, `id_order`, `phone`, `money`, `stk`, `name_bank`, `name_user`, `status`, `today`, `time`) VALUES
(9, '202261535228379551672', '387636509', 100100, '0800103725301', 'MB BANK', 'NGUYEN NHAT LONG', 0, '2022-07-06', '1657299786983'),
(10, '202261535228379551672', '387636500', 100100, '0800103725301', 'MB BANK', 'NGUYEN NHAT LONG', 1, '2022-07-06', '1657299786983');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `5d`
--
ALTER TABLE `5d`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_recharge`
--
ALTER TABLE `bank_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `financial_details`
--
ALTER TABLE `financial_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `k3`
--
ALTER TABLE `k3`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `minutes_1`
--
ALTER TABLE `minutes_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `point_list`
--
ALTER TABLE `point_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `redenvelopes`
--
ALTER TABLE `redenvelopes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `redenvelopes_used`
--
ALTER TABLE `redenvelopes_used`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `result_5d`
--
ALTER TABLE `result_5d`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `result_k3`
--
ALTER TABLE `result_k3`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roses`
--
ALTER TABLE `roses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_bank`
--
ALTER TABLE `user_bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wingo`
--
ALTER TABLE `wingo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `5d`
--
ALTER TABLE `5d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bank_recharge`
--
ALTER TABLE `bank_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `financial_details`
--
ALTER TABLE `financial_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `k3`
--
ALTER TABLE `k3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `minutes_1`
--
ALTER TABLE `minutes_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT cho bảng `point_list`
--
ALTER TABLE `point_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `redenvelopes`
--
ALTER TABLE `redenvelopes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `redenvelopes_used`
--
ALTER TABLE `redenvelopes_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `result_5d`
--
ALTER TABLE `result_5d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `result_k3`
--
ALTER TABLE `result_k3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `roses`
--
ALTER TABLE `roses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `user_bank`
--
ALTER TABLE `user_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wingo`
--
ALTER TABLE `wingo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1541;

--
-- AUTO_INCREMENT cho bảng `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
