SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `ban_hang`
--

-- --------------------------------------------------------

--
-- Tạo bảng cho "banner"
--

CREATE TABLE IF NOT EXISTS `banner` (	
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dữ liệu cho "banner"
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, 'banner_3.PNG', '990px', '210px');

-- --------------------------------------------------------

--
-- Tạo bảng cho "footer"
--

CREATE TABLE IF NOT EXISTS `footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dữ liệu cho "footer"
--

INSERT INTO `footer` (`id`, `html`) VALUES
(1, '<table width="990px">\r\n<tbody>\r\n<tr style="height: 12px;">\r\n<td style="height: 12px;" align="right" width="495px">&nbsp;</td>\r\n<td style="height: 12px;" width="495px">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 12px;">\r\n<td style="height: 12px;" align="right">&nbsp;</td>\r\n<td style="height: 12px;">&nbsp;</td>\r\n</tr>\r\n<tr style="height: 12.2609px;">\r\n<td style="height: 12.2609px;" align="right">&nbsp;</td>\r\n<td style="height: 12.2609px;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Tạo bảng cho "hóa đơn"
--

CREATE TABLE IF NOT EXISTS `hoa_don` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nguoi_mua` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dữ liệu cho "hóa đơn"
--

INSERT INTO `hoa_don` (`id`, `ten_nguoi_mua`, `email`, `dia_chi`, `dien_thoai`, `noi_dung`, `hang_duoc_mua`) VALUES
(1, 'hien', 'dds@gmail.com', 'adad', '18115131', 'ad', '42[|||]1[|||||]');

-- --------------------------------------------------------

--
-- Tạo bảng cho "menu nằm dọc"
--

CREATE TABLE IF NOT EXISTS `menu_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dữ liệu cho "menu nằm dọc"
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Sản phẩm trang 1'),
(2, 'Sản phẩm trang 2'),
(3, 'Sản phẩm trang 3');

-- --------------------------------------------------------

--
-- Tạo bảng cho "menu nằm ngang"
--

CREATE TABLE IF NOT EXISTS `menu_ngang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dữ liệu cho "menu nằm ngang"
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(1, 'Giới thiệu', '<p>Giới thiệu chung Shop Hiển &amp; Qu&acirc;n l&agrave; một doanh nghiệp tư nh&acirc;n chuy&ecirc;n cung cấp c&aacute;c sản phẩm v&agrave; dịch vụ về hoa như c&aacute;c sản phẩm từ hoa tươi v&agrave; hoa kh&ocirc;, c&aacute;c phụ kiện trang tr&iacute; li&ecirc;n quan v&agrave; dịch vụ tư vấn, huớng dẫn cắm hoa từ đơn giản đến n&acirc;ng cao cho kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc. Shop được h&igrave;nh th&agrave;nh từ &yacute; tuởng muốn l&agrave;m cầu nối gi&uacute;p mọi người trao gửi t&igrave;nh cảm m&igrave;nh đến những người th&acirc;n y&ecirc;u th&ocirc;ng qua những sản phẩm chất lượng từ hoa của shop.</p>\r\n<p>Sự kh&aacute;c biệt của shop đến từ nguồn cung ứng hoa chất lượng cao, bảo đảm gi&aacute; rẻ nhất , đồng thời sản phẩm c&oacute; những n&eacute;t kh&aacute;c biệt trong phong c&aacute;ch cắm, c&aacute;c phụ kiện đi k&egrave;m c&ugrave;ng với sản phẩm đặc bi&ecirc;t từ shop l&agrave; hoa &ldquo;Thay lời muốn n&oacute;i&rdquo; .Kế hoạch hoạt động Với đặc th&ugrave; ng&agrave;nh nghề, b&ecirc;n cạnh việc ch&uacute; trọng v&agrave;o chất lượng của c&aacute;c sản phẩm v&agrave; dịch vụ, shop sẽ hoạch định v&agrave; triển khai đồng bộ c&aacute;c hoạt động quảng b&aacute;, giới thiệu m&agrave; chủ yếu l&agrave; sử dụng c&aacute;c c&ocirc;ng cụ marketing online qua c&aacute;c k&ecirc;nh phổ biến như website, facebook, b&agrave;i PR, &hellip; kết hợp với việc tham gia c&aacute;c sự kiện về cưới hỏi thường ni&ecirc;n.</p>', ''),
(2, 'Sản phẩm', '', 'san_pham'),
(3, 'Hướng dẫn mua hàng', '<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Bạn vui l&ograve;ng l&agrave;m theo c&aacute;c bước sau đ&acirc;y để đăng k&yacute; mua h&agrave;ng tr&ecirc;n Sendo:\n\nBước 1: Truy cập v&agrave;o website Sendo hoặc ứng dụng Sendo t&igrave;m m&oacute;n h&agrave;ng muốn mua theo c&aacute;c c&aacute;ch sau:\n1. Sử dụng c&ocirc;ng cụ t&igrave;m kiếm, g&otilde; t&ecirc;n sản phẩm muốn mua.\n2. Xem c&aacute;c ng&agrave;nh h&agrave;ng của Sendo.\n3. Tham khảo &quot;Flash Sale&quot;.\n4. Tham khảo &quot;SenMall&quot;.\n5. Tham khảo &quot;B&aacute;ch h&oacute;a ch&iacute;nh h&atilde;ng&quot;.\n\nBước 2: V&agrave;o chi tiết sản phẩm cần mua, chọn &quot;Mua h&agrave;ng&quot;.\nBước 3: Chọn m&agrave;u sắc, k&iacute;ch cỡ, số lượng sản phẩm.\nBước 4: Bấm &quot;Mua ngay&quot; để tiến h&agrave;nh thanh to&aacute;n.\nBạn c&oacute; thể sử dụng chức năng &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot; để c&oacute; thể đặt nhiều sản phẩm tr&ecirc;n c&ugrave;ng một đơn h&agrave;ng. Chỉ những sản phẩm c&ugrave;ng nh&agrave; b&aacute;n h&agrave;ng mới c&oacute; thể gộp th&agrave;nh một đơn h&agrave;ng.\nBước 5: Tiến h&agrave;nh thanh to&aacute;n.\nBước 6: Nhập th&ocirc;ng tin giao h&agrave;ng v&agrave; chọn phương thức thanh to&aacute;n.\na. Nhập đầy đủ th&ocirc;ng tin.\nb. Lựa chọn nh&agrave; vận chuyển ph&ugrave; hợp với chi ph&iacute; v&agrave; thời gian giao h&agrave;ng.\nc. Chọn h&igrave;nh thức thanh to&aacute;n th&iacute;ch hợp.\nd. Kiểm tra th&ocirc;ng tin đơn h&agrave;ng, nhấp chuột v&agrave;o n&uacute;t &ldquo;Đặt h&agrave;ng&rdquo; để ho&agrave;n tất đơn h&agrave;ng.\ne. Đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nBạn sẽ nhận được th&ocirc;ng b&aacute;o khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nLưu &yacute;:\n1. Bạn n&ecirc;n tham khảo phần chi tiết sản phẩm, đ&aacute;nh gi&aacute; Shop, đ&aacute;nh gi&aacute; sản phẩm, mục hỏi đ&aacute;p của kh&aacute;ch h&agrave;ng với nh&agrave; b&aacute;n h&agrave;ng.\n2. Nếu cần th&ecirc;m th&ocirc;ng tin sản phẩm, bạn c&oacute; thể nhấp v&agrave;o mục &ldquo;Chat ngay&rdquo; để nh&agrave; b&aacute;n h&agrave;ng c&oacute; thể tư vấn r&otilde; hơn. \n3. Bạn bắt buộc phải đăng nhập mới c&oacute; thể mua h&agrave;ng tại Sendo. Trường hợp chưa c&oacute; t&agrave;i khoản, bạn c&oacute; thể đăng k&yacute; t&agrave;i khoản bằng email/số điện thoại hoặc t&agrave;i khoản Facebook/Google.\n\n\nNgo&agrave;i h&igrave;nh thức đặt h&agrave;ng th&ocirc;ng qua website, bạn cũng c&oacute; thể tải ứng dụng Sendo về điện thoại để c&oacute; thể đặt h&agrave;ng nhanh ch&oacute;ng v&agrave; tiện lợi hơn.\n\n&quot;}" data-sheets-userformat="{&quot;2&quot;:33569727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:[null,2,16777215],&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:[null,2,255],&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10,&quot;28&quot;:1}"><strong>Bước 1:</strong>&nbsp;Truy cập v&agrave;o website t&igrave;m m&oacute;n h&agrave;ng muốn mua theo c&aacute;c c&aacute;ch sau:</span></p>\r\n<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Bạn vui l&ograve;ng l&agrave;m theo c&aacute;c bước sau đ&acirc;y để đăng k&yacute; mua h&agrave;ng tr&ecirc;n Sendo:\n\nBước 1: Truy cập v&agrave;o website Sendo hoặc ứng dụng Sendo t&igrave;m m&oacute;n h&agrave;ng muốn mua theo c&aacute;c c&aacute;ch sau:\n1. Sử dụng c&ocirc;ng cụ t&igrave;m kiếm, g&otilde; t&ecirc;n sản phẩm muốn mua.\n2. Xem c&aacute;c ng&agrave;nh h&agrave;ng của Sendo.\n3. Tham khảo &quot;Flash Sale&quot;.\n4. Tham khảo &quot;SenMall&quot;.\n5. Tham khảo &quot;B&aacute;ch h&oacute;a ch&iacute;nh h&atilde;ng&quot;.\n\nBước 2: V&agrave;o chi tiết sản phẩm cần mua, chọn &quot;Mua h&agrave;ng&quot;.\nBước 3: Chọn m&agrave;u sắc, k&iacute;ch cỡ, số lượng sản phẩm.\nBước 4: Bấm &quot;Mua ngay&quot; để tiến h&agrave;nh thanh to&aacute;n.\nBạn c&oacute; thể sử dụng chức năng &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot; để c&oacute; thể đặt nhiều sản phẩm tr&ecirc;n c&ugrave;ng một đơn h&agrave;ng. Chỉ những sản phẩm c&ugrave;ng nh&agrave; b&aacute;n h&agrave;ng mới c&oacute; thể gộp th&agrave;nh một đơn h&agrave;ng.\nBước 5: Tiến h&agrave;nh thanh to&aacute;n.\nBước 6: Nhập th&ocirc;ng tin giao h&agrave;ng v&agrave; chọn phương thức thanh to&aacute;n.\na. Nhập đầy đủ th&ocirc;ng tin.\nb. Lựa chọn nh&agrave; vận chuyển ph&ugrave; hợp với chi ph&iacute; v&agrave; thời gian giao h&agrave;ng.\nc. Chọn h&igrave;nh thức thanh to&aacute;n th&iacute;ch hợp.\nd. Kiểm tra th&ocirc;ng tin đơn h&agrave;ng, nhấp chuột v&agrave;o n&uacute;t &ldquo;Đặt h&agrave;ng&rdquo; để ho&agrave;n tất đơn h&agrave;ng.\ne. Đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nBạn sẽ nhận được th&ocirc;ng b&aacute;o khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nLưu &yacute;:\n1. Bạn n&ecirc;n tham khảo phần chi tiết sản phẩm, đ&aacute;nh gi&aacute; Shop, đ&aacute;nh gi&aacute; sản phẩm, mục hỏi đ&aacute;p của kh&aacute;ch h&agrave;ng với nh&agrave; b&aacute;n h&agrave;ng.\n2. Nếu cần th&ecirc;m th&ocirc;ng tin sản phẩm, bạn c&oacute; thể nhấp v&agrave;o mục &ldquo;Chat ngay&rdquo; để nh&agrave; b&aacute;n h&agrave;ng c&oacute; thể tư vấn r&otilde; hơn. \n3. Bạn bắt buộc phải đăng nhập mới c&oacute; thể mua h&agrave;ng tại Sendo. Trường hợp chưa c&oacute; t&agrave;i khoản, bạn c&oacute; thể đăng k&yacute; t&agrave;i khoản bằng email/số điện thoại hoặc t&agrave;i khoản Facebook/Google.\n\n\nNgo&agrave;i h&igrave;nh thức đặt h&agrave;ng th&ocirc;ng qua website, bạn cũng c&oacute; thể tải ứng dụng Sendo về điện thoại để c&oacute; thể đặt h&agrave;ng nhanh ch&oacute;ng v&agrave; tiện lợi hơn.\n\n&quot;}" data-sheets-userformat="{&quot;2&quot;:33569727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:[null,2,16777215],&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:[null,2,255],&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10,&quot;28&quot;:1}">1. Sử dụng c&ocirc;ng cụ t&igrave;m kiếm, g&otilde; t&ecirc;n sản phẩm muốn mua.<br />2. Xem c&aacute;c sản phẩm h&agrave;ng của Shop.<br />3. Tham khảo "Sản phẩm nổi bật".<br />4. Tham khảo "Sản phẩm mới".<br /></span></p>\r\n<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Bạn vui l&ograve;ng l&agrave;m theo c&aacute;c bước sau đ&acirc;y để đăng k&yacute; mua h&agrave;ng tr&ecirc;n Sendo:\n\nBước 1: Truy cập v&agrave;o website Sendo hoặc ứng dụng Sendo t&igrave;m m&oacute;n h&agrave;ng muốn mua theo c&aacute;c c&aacute;ch sau:\n1. Sử dụng c&ocirc;ng cụ t&igrave;m kiếm, g&otilde; t&ecirc;n sản phẩm muốn mua.\n2. Xem c&aacute;c ng&agrave;nh h&agrave;ng của Sendo.\n3. Tham khảo &quot;Flash Sale&quot;.\n4. Tham khảo &quot;SenMall&quot;.\n5. Tham khảo &quot;B&aacute;ch h&oacute;a ch&iacute;nh h&atilde;ng&quot;.\n\nBước 2: V&agrave;o chi tiết sản phẩm cần mua, chọn &quot;Mua h&agrave;ng&quot;.\nBước 3: Chọn m&agrave;u sắc, k&iacute;ch cỡ, số lượng sản phẩm.\nBước 4: Bấm &quot;Mua ngay&quot; để tiến h&agrave;nh thanh to&aacute;n.\nBạn c&oacute; thể sử dụng chức năng &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot; để c&oacute; thể đặt nhiều sản phẩm tr&ecirc;n c&ugrave;ng một đơn h&agrave;ng. Chỉ những sản phẩm c&ugrave;ng nh&agrave; b&aacute;n h&agrave;ng mới c&oacute; thể gộp th&agrave;nh một đơn h&agrave;ng.\nBước 5: Tiến h&agrave;nh thanh to&aacute;n.\nBước 6: Nhập th&ocirc;ng tin giao h&agrave;ng v&agrave; chọn phương thức thanh to&aacute;n.\na. Nhập đầy đủ th&ocirc;ng tin.\nb. Lựa chọn nh&agrave; vận chuyển ph&ugrave; hợp với chi ph&iacute; v&agrave; thời gian giao h&agrave;ng.\nc. Chọn h&igrave;nh thức thanh to&aacute;n th&iacute;ch hợp.\nd. Kiểm tra th&ocirc;ng tin đơn h&agrave;ng, nhấp chuột v&agrave;o n&uacute;t &ldquo;Đặt h&agrave;ng&rdquo; để ho&agrave;n tất đơn h&agrave;ng.\ne. Đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nBạn sẽ nhận được th&ocirc;ng b&aacute;o khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nLưu &yacute;:\n1. Bạn n&ecirc;n tham khảo phần chi tiết sản phẩm, đ&aacute;nh gi&aacute; Shop, đ&aacute;nh gi&aacute; sản phẩm, mục hỏi đ&aacute;p của kh&aacute;ch h&agrave;ng với nh&agrave; b&aacute;n h&agrave;ng.\n2. Nếu cần th&ecirc;m th&ocirc;ng tin sản phẩm, bạn c&oacute; thể nhấp v&agrave;o mục &ldquo;Chat ngay&rdquo; để nh&agrave; b&aacute;n h&agrave;ng c&oacute; thể tư vấn r&otilde; hơn. \n3. Bạn bắt buộc phải đăng nhập mới c&oacute; thể mua h&agrave;ng tại Sendo. Trường hợp chưa c&oacute; t&agrave;i khoản, bạn c&oacute; thể đăng k&yacute; t&agrave;i khoản bằng email/số điện thoại hoặc t&agrave;i khoản Facebook/Google.\n\n\nNgo&agrave;i h&igrave;nh thức đặt h&agrave;ng th&ocirc;ng qua website, bạn cũng c&oacute; thể tải ứng dụng Sendo về điện thoại để c&oacute; thể đặt h&agrave;ng nhanh ch&oacute;ng v&agrave; tiện lợi hơn.\n\n&quot;}" data-sheets-userformat="{&quot;2&quot;:33569727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:[null,2,16777215],&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:[null,2,255],&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10,&quot;28&quot;:1}"><strong>Bước 2:</strong>&nbsp;V&agrave;o chi tiết sản phẩm cần mua</span></p>\r\n<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Bạn vui l&ograve;ng l&agrave;m theo c&aacute;c bước sau đ&acirc;y để đăng k&yacute; mua h&agrave;ng tr&ecirc;n Sendo:\n\nBước 1: Truy cập v&agrave;o website Sendo hoặc ứng dụng Sendo t&igrave;m m&oacute;n h&agrave;ng muốn mua theo c&aacute;c c&aacute;ch sau:\n1. Sử dụng c&ocirc;ng cụ t&igrave;m kiếm, g&otilde; t&ecirc;n sản phẩm muốn mua.\n2. Xem c&aacute;c ng&agrave;nh h&agrave;ng của Sendo.\n3. Tham khảo &quot;Flash Sale&quot;.\n4. Tham khảo &quot;SenMall&quot;.\n5. Tham khảo &quot;B&aacute;ch h&oacute;a ch&iacute;nh h&atilde;ng&quot;.\n\nBước 2: V&agrave;o chi tiết sản phẩm cần mua, chọn &quot;Mua h&agrave;ng&quot;.\nBước 3: Chọn m&agrave;u sắc, k&iacute;ch cỡ, số lượng sản phẩm.\nBước 4: Bấm &quot;Mua ngay&quot; để tiến h&agrave;nh thanh to&aacute;n.\nBạn c&oacute; thể sử dụng chức năng &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot; để c&oacute; thể đặt nhiều sản phẩm tr&ecirc;n c&ugrave;ng một đơn h&agrave;ng. Chỉ những sản phẩm c&ugrave;ng nh&agrave; b&aacute;n h&agrave;ng mới c&oacute; thể gộp th&agrave;nh một đơn h&agrave;ng.\nBước 5: Tiến h&agrave;nh thanh to&aacute;n.\nBước 6: Nhập th&ocirc;ng tin giao h&agrave;ng v&agrave; chọn phương thức thanh to&aacute;n.\na. Nhập đầy đủ th&ocirc;ng tin.\nb. Lựa chọn nh&agrave; vận chuyển ph&ugrave; hợp với chi ph&iacute; v&agrave; thời gian giao h&agrave;ng.\nc. Chọn h&igrave;nh thức thanh to&aacute;n th&iacute;ch hợp.\nd. Kiểm tra th&ocirc;ng tin đơn h&agrave;ng, nhấp chuột v&agrave;o n&uacute;t &ldquo;Đặt h&agrave;ng&rdquo; để ho&agrave;n tất đơn h&agrave;ng.\ne. Đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nBạn sẽ nhận được th&ocirc;ng b&aacute;o khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nLưu &yacute;:\n1. Bạn n&ecirc;n tham khảo phần chi tiết sản phẩm, đ&aacute;nh gi&aacute; Shop, đ&aacute;nh gi&aacute; sản phẩm, mục hỏi đ&aacute;p của kh&aacute;ch h&agrave;ng với nh&agrave; b&aacute;n h&agrave;ng.\n2. Nếu cần th&ecirc;m th&ocirc;ng tin sản phẩm, bạn c&oacute; thể nhấp v&agrave;o mục &ldquo;Chat ngay&rdquo; để nh&agrave; b&aacute;n h&agrave;ng c&oacute; thể tư vấn r&otilde; hơn. \n3. Bạn bắt buộc phải đăng nhập mới c&oacute; thể mua h&agrave;ng tại Sendo. Trường hợp chưa c&oacute; t&agrave;i khoản, bạn c&oacute; thể đăng k&yacute; t&agrave;i khoản bằng email/số điện thoại hoặc t&agrave;i khoản Facebook/Google.\n\n\nNgo&agrave;i h&igrave;nh thức đặt h&agrave;ng th&ocirc;ng qua website, bạn cũng c&oacute; thể tải ứng dụng Sendo về điện thoại để c&oacute; thể đặt h&agrave;ng nhanh ch&oacute;ng v&agrave; tiện lợi hơn.\n\n&quot;}" data-sheets-userformat="{&quot;2&quot;:33569727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:[null,2,16777215],&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:[null,2,255],&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10,&quot;28&quot;:1}"><strong>Bước 3:</strong>&nbsp;Chọn số lượng sản phẩm, chọn "th&ecirc;m v&agrave;o giỏ".</span></p>\r\n<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Bạn vui l&ograve;ng l&agrave;m theo c&aacute;c bước sau đ&acirc;y để đăng k&yacute; mua h&agrave;ng tr&ecirc;n Sendo:\n\nBước 1: Truy cập v&agrave;o website Sendo hoặc ứng dụng Sendo t&igrave;m m&oacute;n h&agrave;ng muốn mua theo c&aacute;c c&aacute;ch sau:\n1. Sử dụng c&ocirc;ng cụ t&igrave;m kiếm, g&otilde; t&ecirc;n sản phẩm muốn mua.\n2. Xem c&aacute;c ng&agrave;nh h&agrave;ng của Sendo.\n3. Tham khảo &quot;Flash Sale&quot;.\n4. Tham khảo &quot;SenMall&quot;.\n5. Tham khảo &quot;B&aacute;ch h&oacute;a ch&iacute;nh h&atilde;ng&quot;.\n\nBước 2: V&agrave;o chi tiết sản phẩm cần mua, chọn &quot;Mua h&agrave;ng&quot;.\nBước 3: Chọn m&agrave;u sắc, k&iacute;ch cỡ, số lượng sản phẩm.\nBước 4: Bấm &quot;Mua ngay&quot; để tiến h&agrave;nh thanh to&aacute;n.\nBạn c&oacute; thể sử dụng chức năng &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot; để c&oacute; thể đặt nhiều sản phẩm tr&ecirc;n c&ugrave;ng một đơn h&agrave;ng. Chỉ những sản phẩm c&ugrave;ng nh&agrave; b&aacute;n h&agrave;ng mới c&oacute; thể gộp th&agrave;nh một đơn h&agrave;ng.\nBước 5: Tiến h&agrave;nh thanh to&aacute;n.\nBước 6: Nhập th&ocirc;ng tin giao h&agrave;ng v&agrave; chọn phương thức thanh to&aacute;n.\na. Nhập đầy đủ th&ocirc;ng tin.\nb. Lựa chọn nh&agrave; vận chuyển ph&ugrave; hợp với chi ph&iacute; v&agrave; thời gian giao h&agrave;ng.\nc. Chọn h&igrave;nh thức thanh to&aacute;n th&iacute;ch hợp.\nd. Kiểm tra th&ocirc;ng tin đơn h&agrave;ng, nhấp chuột v&agrave;o n&uacute;t &ldquo;Đặt h&agrave;ng&rdquo; để ho&agrave;n tất đơn h&agrave;ng.\ne. Đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nBạn sẽ nhận được th&ocirc;ng b&aacute;o khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nLưu &yacute;:\n1. Bạn n&ecirc;n tham khảo phần chi tiết sản phẩm, đ&aacute;nh gi&aacute; Shop, đ&aacute;nh gi&aacute; sản phẩm, mục hỏi đ&aacute;p của kh&aacute;ch h&agrave;ng với nh&agrave; b&aacute;n h&agrave;ng.\n2. Nếu cần th&ecirc;m th&ocirc;ng tin sản phẩm, bạn c&oacute; thể nhấp v&agrave;o mục &ldquo;Chat ngay&rdquo; để nh&agrave; b&aacute;n h&agrave;ng c&oacute; thể tư vấn r&otilde; hơn. \n3. Bạn bắt buộc phải đăng nhập mới c&oacute; thể mua h&agrave;ng tại Sendo. Trường hợp chưa c&oacute; t&agrave;i khoản, bạn c&oacute; thể đăng k&yacute; t&agrave;i khoản bằng email/số điện thoại hoặc t&agrave;i khoản Facebook/Google.\n\n\nNgo&agrave;i h&igrave;nh thức đặt h&agrave;ng th&ocirc;ng qua website, bạn cũng c&oacute; thể tải ứng dụng Sendo về điện thoại để c&oacute; thể đặt h&agrave;ng nhanh ch&oacute;ng v&agrave; tiện lợi hơn.\n\n&quot;}" data-sheets-userformat="{&quot;2&quot;:33569727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:[null,2,16777215],&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:[null,2,255],&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10,&quot;28&quot;:1}"><strong>Bước 4</strong>: Nhập th&ocirc;ng tin giao h&agrave;ng.<br /></span></p>\r\n<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Bạn vui l&ograve;ng l&agrave;m theo c&aacute;c bước sau đ&acirc;y để đăng k&yacute; mua h&agrave;ng tr&ecirc;n Sendo:\n\nBước 1: Truy cập v&agrave;o website Sendo hoặc ứng dụng Sendo t&igrave;m m&oacute;n h&agrave;ng muốn mua theo c&aacute;c c&aacute;ch sau:\n1. Sử dụng c&ocirc;ng cụ t&igrave;m kiếm, g&otilde; t&ecirc;n sản phẩm muốn mua.\n2. Xem c&aacute;c ng&agrave;nh h&agrave;ng của Sendo.\n3. Tham khảo &quot;Flash Sale&quot;.\n4. Tham khảo &quot;SenMall&quot;.\n5. Tham khảo &quot;B&aacute;ch h&oacute;a ch&iacute;nh h&atilde;ng&quot;.\n\nBước 2: V&agrave;o chi tiết sản phẩm cần mua, chọn &quot;Mua h&agrave;ng&quot;.\nBước 3: Chọn m&agrave;u sắc, k&iacute;ch cỡ, số lượng sản phẩm.\nBước 4: Bấm &quot;Mua ngay&quot; để tiến h&agrave;nh thanh to&aacute;n.\nBạn c&oacute; thể sử dụng chức năng &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot; để c&oacute; thể đặt nhiều sản phẩm tr&ecirc;n c&ugrave;ng một đơn h&agrave;ng. Chỉ những sản phẩm c&ugrave;ng nh&agrave; b&aacute;n h&agrave;ng mới c&oacute; thể gộp th&agrave;nh một đơn h&agrave;ng.\nBước 5: Tiến h&agrave;nh thanh to&aacute;n.\nBước 6: Nhập th&ocirc;ng tin giao h&agrave;ng v&agrave; chọn phương thức thanh to&aacute;n.\na. Nhập đầy đủ th&ocirc;ng tin.\nb. Lựa chọn nh&agrave; vận chuyển ph&ugrave; hợp với chi ph&iacute; v&agrave; thời gian giao h&agrave;ng.\nc. Chọn h&igrave;nh thức thanh to&aacute;n th&iacute;ch hợp.\nd. Kiểm tra th&ocirc;ng tin đơn h&agrave;ng, nhấp chuột v&agrave;o n&uacute;t &ldquo;Đặt h&agrave;ng&rdquo; để ho&agrave;n tất đơn h&agrave;ng.\ne. Đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nBạn sẽ nhận được th&ocirc;ng b&aacute;o khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nLưu &yacute;:\n1. Bạn n&ecirc;n tham khảo phần chi tiết sản phẩm, đ&aacute;nh gi&aacute; Shop, đ&aacute;nh gi&aacute; sản phẩm, mục hỏi đ&aacute;p của kh&aacute;ch h&agrave;ng với nh&agrave; b&aacute;n h&agrave;ng.\n2. Nếu cần th&ecirc;m th&ocirc;ng tin sản phẩm, bạn c&oacute; thể nhấp v&agrave;o mục &ldquo;Chat ngay&rdquo; để nh&agrave; b&aacute;n h&agrave;ng c&oacute; thể tư vấn r&otilde; hơn. \n3. Bạn bắt buộc phải đăng nhập mới c&oacute; thể mua h&agrave;ng tại Sendo. Trường hợp chưa c&oacute; t&agrave;i khoản, bạn c&oacute; thể đăng k&yacute; t&agrave;i khoản bằng email/số điện thoại hoặc t&agrave;i khoản Facebook/Google.\n\n\nNgo&agrave;i h&igrave;nh thức đặt h&agrave;ng th&ocirc;ng qua website, bạn cũng c&oacute; thể tải ứng dụng Sendo về điện thoại để c&oacute; thể đặt h&agrave;ng nhanh ch&oacute;ng v&agrave; tiện lợi hơn.\n\n&quot;}" data-sheets-userformat="{&quot;2&quot;:33569727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:[null,2,16777215],&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:[null,2,255],&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10,&quot;28&quot;:1}"><strong>a</strong>. Nhập đầy đủ th&ocirc;ng tin.<br /><strong>b</strong>. Kiểm tra th&ocirc;ng tin đơn h&agrave;ng, nhấp chuột v&agrave;o n&uacute;t &ldquo;Mua h&agrave;ng&rdquo; để ho&agrave;n tất đơn h&agrave;ng.<br /><strong>c</strong>. Đặt h&agrave;ng th&agrave;nh c&ocirc;ng.</span></p>\r\n<p><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;Bạn vui l&ograve;ng l&agrave;m theo c&aacute;c bước sau đ&acirc;y để đăng k&yacute; mua h&agrave;ng tr&ecirc;n Sendo:\n\nBước 1: Truy cập v&agrave;o website Sendo hoặc ứng dụng Sendo t&igrave;m m&oacute;n h&agrave;ng muốn mua theo c&aacute;c c&aacute;ch sau:\n1. Sử dụng c&ocirc;ng cụ t&igrave;m kiếm, g&otilde; t&ecirc;n sản phẩm muốn mua.\n2. Xem c&aacute;c ng&agrave;nh h&agrave;ng của Sendo.\n3. Tham khảo &quot;Flash Sale&quot;.\n4. Tham khảo &quot;SenMall&quot;.\n5. Tham khảo &quot;B&aacute;ch h&oacute;a ch&iacute;nh h&atilde;ng&quot;.\n\nBước 2: V&agrave;o chi tiết sản phẩm cần mua, chọn &quot;Mua h&agrave;ng&quot;.\nBước 3: Chọn m&agrave;u sắc, k&iacute;ch cỡ, số lượng sản phẩm.\nBước 4: Bấm &quot;Mua ngay&quot; để tiến h&agrave;nh thanh to&aacute;n.\nBạn c&oacute; thể sử dụng chức năng &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot; để c&oacute; thể đặt nhiều sản phẩm tr&ecirc;n c&ugrave;ng một đơn h&agrave;ng. Chỉ những sản phẩm c&ugrave;ng nh&agrave; b&aacute;n h&agrave;ng mới c&oacute; thể gộp th&agrave;nh một đơn h&agrave;ng.\nBước 5: Tiến h&agrave;nh thanh to&aacute;n.\nBước 6: Nhập th&ocirc;ng tin giao h&agrave;ng v&agrave; chọn phương thức thanh to&aacute;n.\na. Nhập đầy đủ th&ocirc;ng tin.\nb. Lựa chọn nh&agrave; vận chuyển ph&ugrave; hợp với chi ph&iacute; v&agrave; thời gian giao h&agrave;ng.\nc. Chọn h&igrave;nh thức thanh to&aacute;n th&iacute;ch hợp.\nd. Kiểm tra th&ocirc;ng tin đơn h&agrave;ng, nhấp chuột v&agrave;o n&uacute;t &ldquo;Đặt h&agrave;ng&rdquo; để ho&agrave;n tất đơn h&agrave;ng.\ne. Đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nBạn sẽ nhận được th&ocirc;ng b&aacute;o khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng.\n\nLưu &yacute;:\n1. Bạn n&ecirc;n tham khảo phần chi tiết sản phẩm, đ&aacute;nh gi&aacute; Shop, đ&aacute;nh gi&aacute; sản phẩm, mục hỏi đ&aacute;p của kh&aacute;ch h&agrave;ng với nh&agrave; b&aacute;n h&agrave;ng.\n2. Nếu cần th&ecirc;m th&ocirc;ng tin sản phẩm, bạn c&oacute; thể nhấp v&agrave;o mục &ldquo;Chat ngay&rdquo; để nh&agrave; b&aacute;n h&agrave;ng c&oacute; thể tư vấn r&otilde; hơn. \n3. Bạn bắt buộc phải đăng nhập mới c&oacute; thể mua h&agrave;ng tại Sendo. Trường hợp chưa c&oacute; t&agrave;i khoản, bạn c&oacute; thể đăng k&yacute; t&agrave;i khoản bằng email/số điện thoại hoặc t&agrave;i khoản Facebook/Google.\n\n\nNgo&agrave;i h&igrave;nh thức đặt h&agrave;ng th&ocirc;ng qua website, bạn cũng c&oacute; thể tải ứng dụng Sendo về điện thoại để c&oacute; thể đặt h&agrave;ng nhanh ch&oacute;ng v&agrave; tiện lợi hơn.\n\n&quot;}" data-sheets-userformat="{&quot;2&quot;:33569727,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:[null,2,16777215],&quot;5&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;6&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;7&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;8&quot;:{&quot;1&quot;:[{&quot;1&quot;:2,&quot;2&quot;:0,&quot;5&quot;:[null,2,0]},{&quot;1&quot;:0,&quot;2&quot;:0,&quot;3&quot;:3},{&quot;1&quot;:1,&quot;2&quot;:0,&quot;4&quot;:1}]},&quot;10&quot;:1,&quot;11&quot;:4,&quot;12&quot;:0,&quot;14&quot;:[null,2,255],&quot;15&quot;:&quot;Arial&quot;,&quot;16&quot;:10,&quot;28&quot;:1}"><strong>Bước 5:</strong>&nbsp;Tiến h&agrave;nh thanh to&aacute;n.</span></p>', ''),
(4, 'Cách mua hàng', 'Nội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>', ''),
(5, 'Liên hệ', '<p>Nếu bạn c&oacute; những thắc mắc về sản phẩm, về Shop hoặc về t&igrave;nh trạng đơn h&agrave;ng cần được hỗ trợ. Bạn đều c&oacute; thể chat, nhắn tin với người b&aacute;n tr&ecirc;n Shop để được giải đ&aacute;p nh&eacute;. Dưới đ&acirc;y l&agrave; một số trường hợp m&agrave; người mua thường nhắn tin cho người b&aacute;n tr&ecirc;n Shop để y&ecirc;u cầu hỗ trợ:</p>\r\n<ul>\r\n<li>Cần được tư vấn về c&aacute;c nội dung ưu đ&atilde;i khuyến m&atilde;i.</li>\r\n</ul>\r\n<ul>\r\n<li>Cần t&igrave;m hiểu kỹ hơn một số th&ocirc;ng tin chi tiết của sản phẩm như k&iacute;ch thước, khối lượng, m&agrave;u sắc, chất liệu&hellip;</li>\r\n</ul>\r\n<ul>\r\n<li>Hỏi về t&igrave;nh trạng sản phẩm như c&ograve;n h&agrave;ng hay kh&ocirc;ng, c&aacute;ch đặt h&agrave;ng như thế n&agrave;o, th&ocirc;ng tin giao h&agrave;ng, phương thức thanh to&aacute;n&hellip;</li>\r\n</ul>\r\n<ul>\r\n<li>Trả gi&aacute; sản phẩm.</li>\r\n</ul>\r\n<ul>\r\n<li>Hỏi về c&aacute;c bước thực hiện đổi trả, bảo h&agrave;nh khi sản phẩm bị lỗi.</li>\r\n</ul>\r\n<p>Nếu Shop đang online khi bạn Chat th&igrave; c&oacute; thể họ sẽ trả lời tin nhắn của bạn ngay. Nếu họ offline th&igrave; c&oacute; thể sẽ trả lời bạn khi online hoặc trả lời sau. Thường th&igrave; c&aacute;c tin nhắn của bạn sẽ được Shop phản hồi hết.</p>\r\n<p><br /><br /></p>', '');

-- --------------------------------------------------------

--
-- Tạo bảng cho "quảng cáo"
--

CREATE TABLE IF NOT EXISTS `quang_cao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `vi_tri` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dữ liệu cho "quảng cáo"
--

INSERT INTO `quang_cao` (`id`, `html`, `vi_tri`) VALUES
(1, '<p><a href="#"><img style="display: block; margin-left: auto; margin-right: auto;" src="/ban_hang/hinh_anh/tinymce/lol_3.jpg" alt="" /></a></p>\r\n<p style="text-align: center;"><a href="#"><img src="/ban_hang/hinh_anh/tinymce/ff_1.png" alt="" /></a></p>\r\n', 'trai'),
(2, '<p><a href="#"><img style="display: block; margin-left: auto; margin-right: auto;" src="/ban_hang/hinh_anh/tinymce/lol_4.jpg" alt="" /></a></p>\r\n<p style="text-align: center;"><a href="#"><img src="/ban_hang/hinh_anh/tinymce/lol_1.jpg" alt="" /></a></p>\r\n', 'phai');

-- --------------------------------------------------------

--
-- Tạo bảng cho "sản phẩm"
--

CREATE TABLE IF NOT EXISTS `san_pham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `noi_bat` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `trang_chu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=43 ;

--
-- Dữ liệu cho "sản phẩm"
--

INSERT INTO `san_pham` (`id`, `ten`, `gia`, `hinh_anh`, `noi_dung`, `thuoc_menu`, `noi_bat`, `trang_chu`, `sap_xep_trang_chu`) VALUES
(1, 'bông hồng', 20000, '1_1.jpg', '<p>Nội dung của sản phẩm 1</p>', 1, '', '', 0),
(2, 'chùm hoa cafe sữa', 80000, '2.jpg', '<p>Nội dung sản phẩm 3</p>', 1, 'co', '', 7),
(3, 'Hoa hồng đen', 40000, '3_1.jpg', 'Nội dung của sản phẩm 1_2', 1, '', '', 0),
(4, 'Chùm hoa lớn', 450000, '4.jpg', 'Nội dung của sản phẩm 1_3', 1, '', 'co', 3),
(5, 'Hoa bán lẻ', 35000, '5.jpg', 'Nội dung của sản phẩm 1_4', 1, 'co', '', 0),
(6, 'Hoa tím', 30000, '6.jpg', '<p>Nội dung của sản phẩm 1_5</p>', 1, '', 'co', 11),
(7, 'Trắng xanh lá', 45000, '7.jpg', 'Nội dung của sản phẩm 1_6', 1, '', 'co', 2),
(8, 'vòng hoa', 80000, '8.jpg', 'Nội dung của sản phẩm 1_7', 1, '', '', 0),
(9, 'đen đỏ', 60000, '9.jpg', 'Nội dung của sản phẩm 1_8', 1, '', '', 0),
(10, 'Hộp gấu bằng bông', 160000, '10.jpg', 'Nội dung của sản phẩm 1_9', 1, '', 'co', 7),
(11, 'Bông xanh', 35000, '11.jpg', '<p>Nội dung của sản phẩm 1_10</p>', 1, '', 'co', 0),
(12, 'trắng xanh', 55000, '12.jpg', '<p>Nội dung của sản phẩm 1_11</p>', 1, '', 'co', 13),
(13, 'trắng đỏ', 55000, '13.jpg', '<p>Nội dung của sản phẩm 1_12</p>', 1, '', '', 0),
(14, 'xanh nhạt', 55000, '14.jpg', '<p>Nội dung của sản phẩm 1_13</p>', 1, '', 'co', 11),
(15, 'Hồng cánh sen', 23000, '15.jpg', '<p>Nội dung của sản phẩm 1_14</p>', 1, '', 'co', 0),
(16, 'Hồng cánh sen 2', 25000, '16.jpg', 'Nội dung của sản phẩm 1_15', 1, '', '', 5),
(17, 'bó hoa hồng kim tuyến', 300000, '17.jpg', 'Nội dung của sản phẩm 1_16', 1, 'co', 'co', 0),
(18, 'Hồng phai', 25000, '18.jpg', '<p>Nội dung của sản phẩm 1_17</p>', 1, '', 'co', 1),
(19, 'Hồng nhạt 2', 45000, '19.jpg', 'Nội dung của sản phẩm 1_18', 1, '', '', 0),
(20, 'Mẹ yêu', 170000, '20.jpg', 'Nội dung của sản phẩm 1_19', 1, '', 'co', 0),
(21, 'vàng', 85000, '21.jpg', 'Nội dung của sản phẩm 1_20', 2, '', '', 0),
(22, 'chậu hoa hồng', 30000, '22.jpg', '<p>Nội dung của sản phẩm 3_2</p>', 2, '', 'co', 8),
(23, 'chậu hoa hồng cánh sen', 80000, '23.jpg', 'Nội dung của sản phẩm 3_3', 2, '', '', 6),
(24, 'sen chưa nở', 50000, '24.jpg', 'Nội dung của sản phẩm 3_4', 2, '', '', 0),
(25, 'sen vàng hồng', 60000, '25.jpg', 'Nội dung của sản phẩm 3_5', 2, '', '', 0),
(26, 'Hồng trắng', 30000, '27.jpg', '<p>Nội dung của sản phẩm 3_6</p>', 2, '', 'co', 12),
(27, 'bọc giấy kiếng', 30000, '33.jpg', 'Nội dung của sản phẩm 3_7', 2, '', '', 9),
(28, 'Hoa bán lẻ', 25000, '34.jpg', '<p>Nội dung của sản phẩm 3_8</p>', 2, '', '', 8),
(29, 'Bó hoa bọc đen', 100000, '35.jpg', 'Nội dung của sản phẩm 3_9', 2, '', '', 0),
(30, 'Bó hoa bọc xanh dương', 110000, '36.jpg', 'Nội dung của sản phẩm 3_10', 2, '', '', 7),
(31, 'Trắng đỏ bọc đen', 120000, '37.jpg', '<p>Nội dung của sản phẩm 3_11</p>', 2, '', 'co', 9),
(32, 'Hồng bọc trắng', 100000, '38.jpg', 'Nội dung của sản phẩm 3_12', 2, '', '', 12),
(33, 'Hồng tím bọc trắng', 100000, '39.jpg', '<p>Nội dung của sản phẩm 3_13</p>', 2, '', '', 1),
(34, 'Hồng xanh lá bọc trắng', 110000, '40.jpg', 'Nội dung của sản phẩm 3_14', 2, '', 'co', 11),
(35, 'Bó xanh dương', 120000, '41.jpg', '<p>Nội dung của sản phẩm 3_15</p>', 2, '', '', 0),
(36, 'Trắng vàng bọc xanh dương', 90000, '42.jpg', 'Nội dung của sản phẩm 3_16', 2, '', '', 16),
(37, 'Bó tím trắng', 120000, '43.jpg', 'Nội dung của sản phẩm 3_17', 2, '', '', 15),
(38, '3 bông đỏ trắng hồng', 80000, '44.jpg', 'Nội dung của sản phẩm 3_18', 2, '', '', 0),
(39, '3 bông đỏ xanh hồng', 60000, '45.jpg', '<p>Nội dung của sản phẩm 3_19</p>', 2, 'co', '', 0),
(40, 'Chậu hoa hồng', 20000, '46.jpg', '<p>Nội dung của sản phẩm 3_20</p>', 2, '', 'co', 2),
(41, 'Trắng tinh khiết', 45000, '60.jpg', '', 3, '', '', 17),
(42, 'Trắng xanh lá', 45000, '55.jpg', '', 3, '', '', 18);

-- --------------------------------------------------------

--
-- Tạo bảng cho "slideshow"
--

CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dữ liệu cho "slideshow"
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, 'a_11.jpg', '#'),
(2, 'a_12.jpg', '#'),
(3, 'a_15.jpg', '#'),
(4, 'a_16.jpg', '#');

-- --------------------------------------------------------

--
-- Tạo bảng cho "Thông tin quản trị"
--

CREATE TABLE IF NOT EXISTS `thong_tin_quan_tri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ky_danh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dữ liệu cho "thông tin quản trị"
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3'),
(2, '51704044', '51704044');

