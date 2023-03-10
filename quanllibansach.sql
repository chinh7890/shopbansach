-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2022 lúc 02:00 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanllibansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsach`
--

CREATE TABLE `danhmucsach` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmucsach`
--

INSERT INTO `danhmucsach` (`MaDM`, `TenDM`) VALUES
(1, 'Sách hay nổi bật'),
(3, 'Sách thiếu nhi'),
(4, 'Sách kinh tế'),
(5, 'Sách văn học'),
(6, 'Sách công nghệ'),
(7, 'Sách ngoại ngữ'),
(8, 'Đời sống và pháp luật'),
(9, 'Giáo trình & SGK'),
(10, 'Blockchain');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` int(11) NOT NULL,
  `TenND` varchar(50) NOT NULL,
  `Email` text NOT NULL,
  `ChiTiet` text NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TongTien` int(20) NOT NULL,
  `NgayDH` datetime NOT NULL,
  `TrangThai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDH`, `TenND`, `Email`, `ChiTiet`, `DiaChi`, `TongTien`, `NgayDH`, `TrangThai`) VALUES
(62, 'nhanvien01', 'nhanvien01@gmail.com', 'Dạy Con Bằng Kể Chuyện - Đây Chính Là Tớ (1 quyển)', 'Trà Vinh', 38000, '2022-12-10 00:00:00', 1),
(97, 'admin01', 'admin01@gmail.com', 'Dạy Con Bằng Kể Chuyện - Có Các Bạn Thật Tốt (1 quyển), Combo Bầu Trời Tình Yêu (Bộ 2 Tập) (1 quyển)', 'Vĩnh Long', 236000, '2022-12-11 00:00:00', 0),
(99, 'admin01', 'admin01@gmail.com', 'Dạy Con Bằng Kể Chuyện - Cẩn Thận Người Lạ (1 quyển), Cáo Chống Lại Mùa Đông - Fox Versus Winter (1 quyển), Dạy Con Bằng Kể Chuyện - Có Các Bạn Thật Tốt (1 quyển), Dạy Con Bằng Kể Chuyện - Tớ Không Tức Giận (1 quyển), Gerda - Câu Chuyện Cá Voi (1 quyển), Buổi Cắm Trại Hoàn Hảo - The Perfect Camping Day (1 quyển), Bầu Trời Tình Yêu - Tập 1 (1 quyển)', 'Vĩnh Long', 480000, '2022-12-11 00:00:00', 0),
(103, 'user01', 'user01@gmail.com', 'Dạy Con Bằng Kể Chuyện - Cẩn Thận Người Lạ (1 quyển)', 'TP.Vĩnh Long', 38000, '2022-12-11 00:00:00', 0),
(104, 'user01', 'user01@gmail.com', 'Dạy Con Bằng Kể Chuyện - Cẩn Thận Người Lạ (1 quyển), Tớ Không Biết Bay - I Can Fly (1 quyển)', 'TP.Vĩnh Long', 148000, '2022-12-11 00:00:00', 0),
(105, 'user01', 'user01@gmail.com', 'Dạy Con Bằng Kể Chuyện - Cẩn Thận Người Lạ (15 quyển)', 'TP.Vĩnh Long', 570000, '2022-12-11 00:00:00', 0),
(106, 'admin01', 'admin01@gmail.com', 'Dạy Con Bằng Kể Chuyện - Có Các Bạn Thật Tốt (2 quyển)', 'Vĩnh Long', 76000, '2022-12-11 23:12:47', 0),
(107, 'user01', 'user01@gmail.com', 'Dạy Con Bằng Kể Chuyện - Tớ Đến Giúp Cậu (1 quyển), Dạy Con Bằng Kể Chuyện - Cẩn Thận Người Lạ (1 quyển)', 'TP.Vĩnh Long', 76000, '2022-12-12 11:44:06', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaidap`
--

CREATE TABLE `giaidap` (
  `MaGD` int(11) NOT NULL,
  `NoiDungGD` text NOT NULL,
  `MaPH` int(11) NOT NULL,
  `NgayGD` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giaidap`
--

INSERT INTO `giaidap` (`MaGD`, `NoiDungGD`, `MaPH`, `NgayGD`) VALUES
(4, 'oekee.. bíng chi lịng ', 22, '2022-12-12 16:09:24'),
(6, 'okeee', 31, '2022-12-12 19:43:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiquyen`
--

CREATE TABLE `loaiquyen` (
  `MaLQ` int(11) NOT NULL,
  `TenLQ` varchar(15) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaiquyen`
--

INSERT INTO `loaiquyen` (`MaLQ`, `TenLQ`) VALUES
(1, 'Admin'),
(2, 'Khách hàng'),
(3, 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `TenND` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `AnhDaiDien` text NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `MatKhau` varchar(20) DEFAULT NULL,
  `MaLQ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `TenND`, `Email`, `AnhDaiDien`, `DiaChi`, `MatKhau`, `MaLQ`) VALUES
(29, 'user01', 'user01@gmail.com', 'TRUNGVE80CU.jpg', 'TP.Vĩnh Long', 'user01', 2),
(68, 'Bukayo Saka', 'Bukayo@Saka.com', 'jesus.jpg', 'Lon Don', 'saka123', 2),
(77, 'chinh7890', 'messs@gmail.com', 'mesi.jpg', '', '', 1),
(107, 'Nguyễn Lê Trường Chinh', 'chinhnguyen6932q1412420@gmail.com', 'TRUNGVE80CU.jpg', '', '', 1),
(112, 'user02', 'user02@gmail.com', '', 'TP.Trà Vinh', 'user02', 2),
(115, 'nhanvien01', 'nhanvien01@gmail.com', '', 'Trà Vinh', 'nhanvien01', 3),
(116, 'chinhnguyen6930', 'chinhnguyen6930@gmail.com', '', '', '123', 2),
(117, 'Trần Quốc Dũng', 'DungTran123@gmail.com', '', 'TP.Trà Vinh', 'DungTran123', 1),
(118, 'admin01', 'admin01@gmail.com', '310236670_495819565890717_7965043749889878806_n.jpg', 'Vĩnh Long', 'admin01', 1),
(120, 'admin02', 'admin02@gmail.com', '', 'Khóm Bến Chuối, Phường 1, Thị Xã Duyên Hải, Trà VInh', 'admin02', 1),
(121, 'chinh', '12345678ac@gmail.com', '309610834_495819699224037_4659378737415261545_n.jpg', 'Khóm Bến Chuối, phường 1, thị xã Duyên Hải, Trà Vinh', '1123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `MaNXB` int(11) NOT NULL,
  `TenNXB` varchar(30) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`MaNXB`, `TenNXB`, `MaDM`) VALUES
(5, 'NXB Hồng Đức', 3),
(6, 'NXB Thanh Niên', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `MaPH` int(11) NOT NULL,
  `Email` text NOT NULL,
  `NoiDung` text NOT NULL,
  `NgayPH` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`MaPH`, `Email`, `NoiDung`, `NgayPH`) VALUES
(22, 'user01@gmail.com', 'sách quá hay hongkong1 để chê.. siuuuuuuuuuuuu', '2022-12-12 15:52:08'),
(31, 'user01@gmail.com', 'we dont talk anymore', '2022-12-12 19:41:40'),
(32, 'user01@gmail.com', 'SOSAD', '2022-12-12 19:43:01'),
(33, 'user02@gmail.com', 'baby girl i like your mooth', '2022-12-12 19:48:21'),
(34, 'user02@gmail.com', 'sách hay đọc một quyển mãi không chán nên đỡ tốn tiền mua thêm nhiều quyển. cảm ơn shopp', '2022-12-12 19:50:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `MaSach` int(11) NOT NULL,
  `TenSach` varchar(50) NOT NULL,
  `AnhMinhHoa` text NOT NULL,
  `MoTa` varchar(500) NOT NULL,
  `MaTG` int(11) NOT NULL,
  `MaTL` int(11) NOT NULL,
  `MaNXB` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `SoluongTon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`MaSach`, `TenSach`, `AnhMinhHoa`, `MoTa`, `MaTG`, `MaTL`, `MaNXB`, `Gia`, `GiamGia`, `SoluongTon`) VALUES
(38, 'Dạy Con Bằng Kể Chuyện - Tớ Đến Giúp Cậu', 'todengiupcau.jpg', 'Tâm hồn trẻ em như tờ giấy trắng, sự dẫn dắt, dạy dỗ của cha mẹ sẽ là những nét vẽ đầu tiên trong bức tranh cuộc đời của con. Các bé còn nhỏ tuổi, thường sẽ có nhiều điều cần được uốn nắn, hướng dẫn. Thay vì nói lý thuyết, giảng giải đạo lý khô khan, cha mẹ có thể thông qua những câu chuyện dễ thương để dạy bé những bài học nhỏ mà thiết thực, hẳn là bé sẽ dễ tiếp thu hơn.\r\nĐÂY CHÍNH LÀ TỚ mang đến cho bé những câu chuyện bổ ích, giúp bé học được cách suy nghĩ đúng đắn và có chủ kiến của riêng mì', 4, 5, 5, 38000, 0, 46),
(39, 'Dạy Con Bằng Kể Chuyện - Đây Chính Là Tớ', 'daychinhlato.jpg', 'Tâm hồn trẻ em như tờ giấy trắng, sự dẫn dắt, dạy dỗ của cha mẹ sẽ là những nét vẽ đầu tiên trong bức tranh cuộc đời của con. Các bé còn nhỏ tuổi, thường sẽ có nhiều điều cần được uốn nắn, hướng dẫn. Thay vì nói lý thuyết, giảng giải đạo lý khô khan, cha mẹ có thể thông qua những câu chuyện dễ thương để dạy bé những bài học nhỏ mà thiết thực, hẳn là bé sẽ dễ tiếp thu hơn.\r\nĐÂY CHÍNH LÀ TỚ mang đến cho bé những câu chuyện bổ ích, giúp bé học được cách suy nghĩ đúng đắn và có chủ kiến của riêng mì', 4, 5, 5, 38000, 0, 0),
(41, 'Dạy Con Bằng Kể Chuyện - Cẩn Thận Người Lạ', 'canthannguoila.jpg', 'Tâm hồn trẻ em như tờ giấy trắng, sự dẫn dắt, dạy dỗ của cha mẹ sẽ là những nét vẽ đầu tiên trong bức tranh cuộc đời của con. Các bé còn nhỏ tuổi, thường sẽ có nhiều điều cần được uốn nắn, hướng dẫn. Thay vì nói lý thuyết, giảng giải đạo lý khô khan, cha mẹ có thể thông qua những câu chuyện dễ thương để dạy bé những bài học nhỏ mà thiết thực, hẳn là bé sẽ dễ tiếp thu hơn.\r\nĐÂY CHÍNH LÀ TỚ mang đến cho bé những câu chuyện bổ ích, giúp bé học được cách suy nghĩ đúng đắn và có chủ kiến của riêng mì', 4, 5, 5, 38000, 0, 14),
(42, 'Cáo Thi Nhảy - Fox And The Jumping Contest', 'caothinhay.jpg', 'Cáo cực kì, cực kì muốn thắng cuộc thi nhảy cao. Cậu biết chính xác mình sẽ đặt cúp ở đâu. Vấn đề là gì? Cáo nhảy không giỏi. Nhưng cậu rất giỏi ủ mưu…\r\n\r\nCorey R. Tabor là tác giả và họa sĩ minh họa của Snail Crossing, Cáo Thi Nhảy (Fox and the Jumping Contest), Cáo Đạp Xe (Fox and the Bike Ride), Cáo Đi Muộn (Fox Is Late), Cáo Chống Lại Mùa Đông (Fox vs Winter), và Cáo Da Hổ (Fox the Tiger, từng đoạt giải giải thưởng văn học của Hiệp hội Thư viện Hoa Kỳ). Anh sống ở Seattle với vợ và con trai ', 5, 5, 6, 38000, 0, 4),
(43, 'Cáo Chống Lại Mùa Đông - Fox Versus Winter', 'caochonglaimuadong.jpg', 'Cáo không thích mùa đông chút nào. Các bạn cậu đều đi hết. Cậu chán nản và cô đơn.\r\n\r\nThế rồi Cáo ta nảy ra một ý. Nếu không trốn được, cậu sẽ chiến đấu lại mùa đông!', 5, 5, 6, 38000, 0, 4),
(44, 'Cáo Trong Đêm - Fox At Night', 'caotrongdem.jpg', 'Đêm đến. Cáo nhìn thấy bóng hình và nghe thấy tiếng động khắp nơi. Cáo dám chắc rằng màn đêm đầy rẫy quái vật. Trong cuộc phiêu lưu này, Cáo sẽ đối diện với nỗi sợ quái vật của mình cùng với những người bạn động vật sống về đêm. Hãy cùng đồng hành với Cáo vượt qua nỗi sợ của màn đêm của mình nào!\r\n\r\nCorey R. Tabor là tác giả và họa sĩ minh họa của Snail Crossing, Cáo Thi Nhảy (Fox and the Jumping Contest), Cáo Đạp Xe (Fox and the Bike Ride), Cáo Đi Muộn (Fox Is Late), Cáo Chống Lại Mùa Đông (Fox', 5, 5, 6, 38000, 0, 50),
(45, 'Cáo Đạp Xe - Fox And The Bike Ride', 'caodapxe.jpg', 'Tất cả những người bạn động vật của Fox đều rất thích cuộc thi đạp xe Tour de Tip-Top nhưng Fox lại muốn mạo hiểm-sống động-phiêu lưu. Vậy tại sao không lấy các bộ phận từ những chiếc xe đạp và tự chế biến những chiếc bánh xe của riêng mình để chuyến đi được thêm phần thú vị? Các bạn động vật rất ấn tượng với ý tưởng này. Chuyến đi bắt đầu, và mọi thứ đều ổn thỏa cho đến khi họ bắt đầu xuống dốc và hình như Fox đã quên phanh nhưng có phải vậy không?\r\n\r\nCuốn sách song ngữCáo Đạp Xe của bộ sáchChú', 5, 5, 6, 38000, 0, 5),
(46, 'Cáo Đi Muộn - Fox Is Late', 'caodimuon.jpg', 'Biết mình đã muộn giờ ăn trưa, Cáo nhảy lên tấm ván trượt và lướt vèo vèo đi! Anh ấy lướt qua tất cả các bạn bè động vật của mình: lên, xuống, sang trái, sang phải, lộn vòng! Bạn bè cũng đuổi theo Cáo, nhưng khi họ bắt kịp anh, anh đã có một bất ngờ đang đợi chờ họ!\r\n\r\nCuốn sách song ngữ Cáo Đi Muộn của bộ sách Chú Cáo Tinh Nghịch là một lựa chọn thông minh cho các bạn độc giả nhí đang tập đọc và làm quen với tiếng Anh. Bộ sách còn bao gồm Chú Cáo Da Hổ, Cáo Trong Đêm, Cáo Chống Lại Mùa Đông, Cá', 5, 5, 6, 38000, 0, 10),
(47, 'Cáo Da Hổ - Fox The Tiger', 'caodaho.jpg', 'Fox tinh nghịch, vui tính ước mình là một con hổ. Hổ to lớn, nhanh nhẹn và lén lút. Vì vậy, anh ấy quyết định trở thành một! Ngay sau đó Rùa và Thỏ cũng tham gia vào cuộc vui. Nhưng liệu Fox có muốn làm hổ mãi mãi không?\r\n\r\nCorey R. Tabor là tác giả và họa sĩ minh họa của Snail Crossing, Cáo Thi Nhảy (Fox and the Jumping Contest), Cáo Đạp Xe (Fox and the Bike Ride), Cáo Đi Muộn (Fox Is Late), Cáo Chống Lại Mùa Đông (Fox vs Winter), và Cáo Da Hổ (Fox the Tiger, từng đoạt giải giải thưởng văn học ', 5, 5, 6, 38000, 0, 0),
(48, 'Dạy Con Bằng Kể Chuyện - Có Các Bạn Thật Tốt', 'cocacbanthattot.jpg', 'Tâm hồn trẻ em như tờ giấy trắng, sự dẫn dắt, dạy dỗ của cha mẹ sẽ là những nét vẽ đầu tiên trong bức tranh cuộc đời của con. Các bé còn nhỏ tuổi, thường sẽ có nhiều điều cần được uốn nắn, hướng dẫn. Thay vì nói lý thuyết, giảng giải đạo lý khô khan, cha mẹ có thể thông qua những câu chuyện dễ thương để dạy bé những bài học nhỏ mà thiết thực, hẳn là bé sẽ dễ tiếp thu hơn.\r\nĐÂY CHÍNH LÀ TỚ mang đến cho bé những câu chuyện bổ ích, giúp bé học được cách suy nghĩ đúng đắn và có chủ kiến của riêng mì', 4, 5, 5, 38000, 0, 45),
(49, 'Dạy Con Bằng Kể Chuyện - Cơn Bão Đến Rồi', 'conbaodenroi.jpg', 'Tâm hồn trẻ em như tờ giấy trắng, sự dẫn dắt, dạy dỗ của cha mẹ sẽ là những nét vẽ đầu tiên trong bức tranh cuộc đời của con. Các bé còn nhỏ tuổi, thường sẽ có nhiều điều cần được uốn nắn, hướng dẫn. Thay vì nói lý thuyết, giảng giải đạo lý khô khan, cha mẹ có thể thông qua những câu chuyện dễ thương để dạy bé những bài học nhỏ mà thiết thực, hẳn là bé sẽ dễ tiếp thu hơn.\r\nĐÂY CHÍNH LÀ TỚ mang đến cho bé những câu chuyện bổ ích, giúp bé học được cách suy nghĩ đúng đắn và có chủ kiến của riêng mì', 4, 5, 5, 38000, 0, 50),
(50, 'Dạy Con Bằng Kể Chuyện - Tớ Không Tức Giận', 'tokhongtucgian.jpg', 'Tâm hồn trẻ em như tờ giấy trắng, sự dẫn dắt, dạy dỗ của cha mẹ sẽ là những nét vẽ đầu tiên trong bức tranh cuộc đời của con. Các bé còn nhỏ tuổi, thường sẽ có nhiều điều cần được uốn nắn, hướng dẫn. Thay vì nói lý thuyết, giảng giải đạo lý khô khan, cha mẹ có thể thông qua những câu chuyện dễ thương để dạy bé những bài học nhỏ mà thiết thực, hẳn là bé sẽ dễ tiếp thu hơn.\r\nĐÂY CHÍNH LÀ TỚ mang đến cho bé những câu chuyện bổ ích, giúp bé học được cách suy nghĩ đúng đắn và có chủ kiến của riêng mì', 4, 5, 5, 38000, 10, 48),
(51, 'Dạy Con Bằng Kể Chuyện - Dũng Cảm Là Chính Mình', 'dungcamlachinhminh.jpg', 'Tâm hồn trẻ em như tờ giấy trắng, sự dẫn dắt, dạy dỗ của cha mẹ sẽ là những nét vẽ đầu tiên trong bức tranh cuộc đời của con. Các bé còn nhỏ tuổi, thường sẽ có nhiều điều cần được uốn nắn, hướng dẫn. Thay vì nói lý thuyết, giảng giải đạo lý khô khan, cha mẹ có thể thông qua những câu chuyện dễ thương để dạy bé những bài học nhỏ mà thiết thực, hẳn là bé sẽ dễ tiếp thu hơn.\r\nĐÂY CHÍNH LÀ TỚ mang đến cho bé những câu chuyện bổ ích, giúp bé học được cách suy nghĩ đúng đắn và có chủ kiến của riêng mì', 4, 5, 5, 38000, 10, 50),
(52, 'Gerda - Câu Chuyện Về Lòng Dũng Cảm', 'cauchuyenvelongdungcam.jpg', 'HÀNH TRÌNH ĐƯƠNG ĐẦU VÀ VƯỢT QUA NỖI SỢ\r\n\r\nKể từ khi đoàn tụ, hai anh em cá voi Gerda và Lars đã cùng ngân nga khúc hát mẹ ru thuở bé. Một ngày nọ, tình cờ phát hiện ra bài ca chưa trọn vẹn, hai anh em quyết tâm lên đường đi tìm phần còn lại. Hành trình mới đầy gian nan này sẽ dạy Gerda và Lars một bài học đường đời quan trọng: bài học về lòng dũng cảm.\r\n\r\nAdrián Macho là tác giả sách thiếu nhi bán chạy hàng đầu ở Slovakia (Đông Âu). Gerda – Câu chuyện về lòng dũng cảm sẽ đưa các độc giả nhí “th', 7, 5, 6, 139000, 0, 0),
(53, 'Gerda - Câu Chuyện Cá Voi', 'cauchuyencavoi.jpg', 'CÂU CHUYỆN ĐẦY CẢM ĐỘNG VỀ ƯỚC MƠ, NIỀM TIN VÀ KHÁT VỌNG\r\n\r\nTuổi thơ hạnh phúc của cá voi nhỏ Gerda đột nhiên kết thúc bởi một biến cố bất ngờ. Bị bỏ lại một mình, không gia đình ở bên, cô lang thang khắp đại dương và trải qua nhiều ngọt bùi cay đắng, để rồi đến cuối hành trình cô tìm được một chốn đầy yêu thương gọi là nhà.\r\n\r\nMinh hoạ bởi Adrián Macho – tác giả sách thiếu nhi bán chạy hang đầu ở Slovakia (Đông Âu), Gerda – Câu chuyện Cá voi không chỉ mang bài học về sức mạnh niềm tin và khát v', 7, 5, 6, 139000, 0, 0),
(54, 'Buổi Cắm Trại Hoàn Hảo - The Perfect Camping Day', 'buoicamtraihoanhao.jpg', 'Ngày cắm trại đã đến, ấy thế mà hết Gấu Trúc rồi Cánh Cụt đổ bệnh. Hai bạn quyết định ở nhà chăm sóc nhau, và khi Cánh Cụt khoẻ hơn, Gấu Trúc chuẩn bị cho bạn mình một bất ngờ dễ thương nho nhỏ…\r\n\r\nTác giả Fifi Kuo đến từ Đài Loan. Cô đã có bằng Cử nhân về Thiết kế Kiến trúc Cảnh quan và bằng Thạc sĩ Nghệ thuật tại Trường Nghệ thuật Cambridge. Ngoài ra cô đã giành được một số giải thưởng uy tín, bao gồm Giải thưởng Macmillan và Giải thưởng Minh họa iJungle.', 9, 5, 6, 90000, 0, 4),
(55, 'Chiếc Sofa Hoàn Hảo - The Perfect Sofa', 'chiecsofahoanhao.jpg', 'Sofa trong nhà cũ quá, phải đi mua sofa mới thôi! Gấu Trúc và Cánh Cụt rủ nhau đi tìm sofa cả ngày, rồi cuối cùng cũng tìm được chiếc sofa hoàn hảo.\r\n\r\nTác giả Fifi Kuo đến từ Đài Loan. Cô đã có bằng Cử nhân về Thiết kế Kiến trúc Cảnh quan và bằng Thạc sĩ Nghệ thuật tại Trường Nghệ thuật Cambridge. Ngoài ra cô đã giành được một số giải thưởng uy tín, bao gồm Giải thưởng Macmillan và Giải thưởng Minh họa iJungle', 9, 5, 6, 90000, 0, 1),
(56, 'Tớ Không Biết Bay - I Can Fly', 'tokhongbietbay.jpg', 'Cánh Cụt Nhỏ bối rối quá: cậu có cánh, biết đập cánh, biết chạy, biết nhảy, vậy mà không thể bay! Bố bảo cậu rằng cánh cụt chỉ bơi thôi, nhưng Cánh Cụt Nhỏ tin chắc rằng mình bay được. Rốt cuộc cậu có tìm được cách gì hay không?!\r\n\r\nTác giả Fifi Kuo đến từ Đài Loan. Cô đã có bằng Cử nhân về Thiết kế Kiến trúc Cảnh quan và bằng Thạc sĩ Nghệ thuật tại Trường Nghệ thuật Cambridge. Ngoài ra cô đã giành được một số giải thưởng uy tín, bao gồm Giải thưởng Macmillan và Giải thưởng Minh họa iJungle.', 11, 5, 6, 110000, 0, 9),
(57, 'Combo Bầu Trời Tình Yêu (Bộ 2 Tập)', '', 'Nếu ngày ấy em không gặp anh\r\nCó lẽ em sẽ không khổ sở như thế\r\nSẽ không bi thương như thế\r\nSẽ không đau đớn như thế\r\nSẽ không nhớ đến anh mà tuôn trào nước mắt như thế.\r\n\r\nNhưng nếu không gặp anh\r\nEm đã không cảm nhận được niềm hân hoan ấy\r\nKhông biết cảm giác dịu dàng ấy\r\nKhông thấy niềm thương yêu ấy\r\nKhông nhận được sự ấm áp ấy\r\nKhông trải nghiệm hạnh phúc ấy… \r\n\r\nHôm nay em cũng kìm nén nước mắt, nhìn ngắm bầu trời.\r\nNgước mắt nhìn lên bầu trời.\r\n\r\nTrọn bộ gồm 2 tập:\r\n\r\nBầu Trời Tình Yêu - ', 12, 5, 6, 198000, 0, 42),
(58, 'Bầu Trời Tình Yêu - Tập 1', 'bautroivatinhyeu.jpg', 'Nếu ngày ấy em không gặp anh\r\nCó lẽ em sẽ không khổ sở như thế\r\nSẽ không bi thương như thế\r\nSẽ không đau đớn như thế\r\nSẽ không nhớ đến anh mà tuôn trào nước mắt như thế.\r\n\r\nNhưng nếu không gặp anh\r\nEm đã không cảm nhận được niềm hân hoan ấy\r\nKhông biết cảm giác dịu dàng ấy\r\nKhông thấy niềm thương yêu ấy\r\nKhông nhận được sự ấm áp ấy\r\nKhông trải nghiệm hạnh phúc ấy… \r\n\r\nHôm nay em cũng kìm nén nước mắt, nhìn ngắm bầu trời.\r\nNgước mắt nhìn lên bầu trời.\r\n\r\nMời bạn đón đọc.', 12, 5, 6, 99000, 0, 4),
(60, 'London is red', '309610834_495819699224037_4659378737415261545_n.jpg', 'ARSENAL', 4, 15, 5, 250000, 0, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `MaTG` int(11) NOT NULL,
  `TenTG` varchar(50) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`MaTG`, `TenTG`, `MaDM`) VALUES
(4, 'Đồng Niên', 3),
(5, 'Corey R Tabor', 3),
(7, 'Adrián Macho', 3),
(9, 'Lily Murray', 3),
(11, 'Thiên Ái', 3),
(12, 'Mika', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloaisach`
--

CREATE TABLE `theloaisach` (
  `MaTL` int(11) NOT NULL,
  `TenTL` varchar(50) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `theloaisach`
--

INSERT INTO `theloaisach` (`MaTL`, `TenTL`, `MaDM`) VALUES
(5, 'Truyện tranh', 3),
(6, 'Manga', 3),
(7, 'Song ngữ thiếu nhi', 3),
(8, 'Sách tô màu', 3),
(9, 'Quản trị kinh doanh', 4),
(10, 'Marketing', 4),
(11, 'Start up', 4),
(12, 'Cấp I', 9),
(13, 'Cấp II', 9),
(14, 'Cấp III', 9),
(15, 'Đại học', 9);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmucsach`
--
ALTER TABLE `danhmucsach`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`);

--
-- Chỉ mục cho bảng `giaidap`
--
ALTER TABLE `giaidap`
  ADD PRIMARY KEY (`MaGD`),
  ADD KEY `fk_giaidap_phanhoi` (`MaPH`);

--
-- Chỉ mục cho bảng `loaiquyen`
--
ALTER TABLE `loaiquyen`
  ADD PRIMARY KEY (`MaLQ`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `fk_loaiquyen_nguoidung` (`MaLQ`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`MaNXB`),
  ADD KEY `fk_danhmucsach_nhaxuatban` (`MaDM`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`MaPH`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`MaSach`),
  ADD KEY `fk_nhaxuatban_sach` (`MaNXB`),
  ADD KEY `fk_tacgia_sach` (`MaTG`),
  ADD KEY `fk_theloaisach_sach` (`MaTL`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`MaTG`),
  ADD KEY `fk_danhmucsach_tacgia` (`MaDM`);

--
-- Chỉ mục cho bảng `theloaisach`
--
ALTER TABLE `theloaisach`
  ADD PRIMARY KEY (`MaTL`),
  ADD KEY `fk_danhmucsach_theloaisach` (`MaDM`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmucsach`
--
ALTER TABLE `danhmucsach`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `giaidap`
--
ALTER TABLE `giaidap`
  MODIFY `MaGD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `loaiquyen`
--
ALTER TABLE `loaiquyen`
  MODIFY `MaLQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `MaNXB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `MaPH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `MaSach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `MaTG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `theloaisach`
--
ALTER TABLE `theloaisach`
  MODIFY `MaTL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `giaidap`
--
ALTER TABLE `giaidap`
  ADD CONSTRAINT `fk_giaidap_phanhoi` FOREIGN KEY (`MaPH`) REFERENCES `phanhoi` (`MaPH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `fk_loaiquyen_nguoidung` FOREIGN KEY (`MaLQ`) REFERENCES `loaiquyen` (`MaLQ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD CONSTRAINT `fk_danhmucsach_nhaxuatban` FOREIGN KEY (`MaDM`) REFERENCES `danhmucsach` (`MaDM`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `fk_nhaxuatban_sach` FOREIGN KEY (`MaNXB`) REFERENCES `nhaxuatban` (`MaNXB`),
  ADD CONSTRAINT `fk_tacgia_sach` FOREIGN KEY (`MaTG`) REFERENCES `tacgia` (`MaTG`),
  ADD CONSTRAINT `fk_theloaisach_sach` FOREIGN KEY (`MaTL`) REFERENCES `theloaisach` (`MaTL`);

--
-- Các ràng buộc cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD CONSTRAINT `fk_danhmucsach_tacgia` FOREIGN KEY (`MaDM`) REFERENCES `danhmucsach` (`MaDM`);

--
-- Các ràng buộc cho bảng `theloaisach`
--
ALTER TABLE `theloaisach`
  ADD CONSTRAINT `fk_danhmucsach_theloaisach` FOREIGN KEY (`MaDM`) REFERENCES `danhmucsach` (`MaDM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
