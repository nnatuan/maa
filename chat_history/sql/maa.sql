-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 09, 2026 lúc 01:33 AM
-- Phiên bản máy phục vụ: 10.3.39-MariaDB-log
-- Phiên bản PHP: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `maa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tarticle`
--

CREATE TABLE `maa_tarticle` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(500) DEFAULT NULL,
  `nid_type` int(11) DEFAULT NULL,
  `ctitle` varchar(500) DEFAULT NULL,
  `ctag` varchar(400) NOT NULL,
  `eng_ctitle` varchar(500) DEFAULT NULL,
  `alwcmt` char(1) DEFAULT NULL,
  `cshort_content` text DEFAULT NULL,
  `eng_cshort_content` text DEFAULT NULL,
  `ccontent` text DEFAULT NULL,
  `eng_ccontent` text DEFAULT NULL,
  `cimage_thumb` varchar(200) DEFAULT NULL,
  `ctype` char(1) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cishome` char(1) DEFAULT NULL,
  `cno_delete` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `dtime02` time DEFAULT NULL,
  `dtime01` time DEFAULT NULL,
  `cnote` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tarticle`
--

INSERT INTO `maa_tarticle` (`nid`, `ccode`, `nid_type`, `ctitle`, `ctag`, `eng_ctitle`, `alwcmt`, `cshort_content`, `eng_cshort_content`, `ccontent`, `eng_ccontent`, `cimage_thumb`, `ctype`, `nstatus`, `cishome`, `cno_delete`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `dtime02`, `dtime01`, `cnote`) VALUES
(1, '', 0, 'Giới thiệu', '', 'About us', '', '', NULL, '\r\n<p>Lorem ipsum dolor sit amet, mea eu dolor comprehensam. Per eu dolore ubique. Quodsi cetero omittam mel ne. Vis mentitum appetere persequeris ex.</p>\r\n\r\n<p>Mentitum suavitate ne his, ipsum minimum ne sed. His case posse graeco et, id nam natum volumus recusabo. Ne denique epicuri facilisi eos. Ne mea appareat convenire petentium, ne mea nihil populo. Sed ne everti oblique disputando, mei errem oblique periculis at, posse altera eam ad. Eu vel quem omnesque expetenda, eruditi deserunt assentior ex mel.</p>\r\n\r\n<p>Postea scribentur cu vel, tantas gloriatur duo te. Ubique periculis ne nec. Molestiae appellantur et duo. In duo integre perfecto, duo facete ocurreret id. Vis ad erant fuisset, ea nulla timeam nam, id nam ubique doctus.</p>\r\n\r\n<p>Eirmod gloriatur neglegentur at pro, his in libris alienum platonem. Eos quaestio mediocrem disputando ex. Rebum inani has ei, sit accusata appellantur at. Dico wisi oportere et quo, in postea recteque eum. Ut nam tota exerci, ei sea partem iracundia. Pri quot phaedrum intellegebat id.</p>\r\n\r\n<p>In eam inermis singulis, ei mel aperiam offendit. Quas deleniti euripidis sea ex. Libris ancillae platonem ad mei, mea aliquip mandamus tincidunt ex. Qui noster prodesset ea, atqui aeque gubergren et qui, appetere salutandi necessitatibus id duo.</p>\r\n\r\n<p>Et probo prompta per, vim et quidam posidonium, legere prompta omnesque ea nam. Zril malorum aliquam in eos. Usu fierent vulputate id, accumsan molestiae duo eu. Exerci equidem nec ne, ut pri meliore fabellas indoctum, no pro solum appetere pertinacia.</p>\r\n\r\n<p>Ut labitur albucius est, ex has regione splendide quaerendum, elit autem semper eam ei. Laudem dicunt quodsi ea vix. Numquam appellantur eos no, in wisi fabellas quo, omnesque reprimique sed eu. Sumo alienum nam ne. Sit ut lobortis definitionem, et case voluptua duo. Amet rebum fugit te eam.</p>\r\n\r\n<p>Sea atomorum consectetuer id, te inani congue eos. Accusata persequeris necessitatibus ex his. An wisi legimus intellegat vis, tation feugait democritum eu ius. Vis copiosae sensibus cu, eu sea repudiandae ullamcorper. Democritum dissentiunt eos no, alii iisque splendide an usu.</p>\r\n\r\n<p>Nam paulo facilisis in, ut probo dicat cum. Scripta definitiones qui ad, admodum nominati adipiscing ut vel. Prompta alienum ponderum eu mel, tale possim consetetur eum ad. Doctus vivendum assueverit vim ne, te usu errem tollit gubergren.</p>\r\n\r\n<p>Quo ea meis dolor, no nulla epicurei sit. Eirmod tamquam appareat pri ad, te est erant primis. Semper everti salutatus sed te. Cum dolore eligendi in. Eos eius feugait lobortis ea. His mucius ceteros splendide et.</p>\r\n\r\n<p>Te vel latine sadipscing. Doming pericula philosophia sed ei, option interesset vis at. Erat delicata mandamus no qui. Vis an lucilius accusamus, cibo congue eu vis. Eam porro scripta patrioque te, qui no ubique doming fastidii. Cu vix virtute mentitum, qui aeque qualisque voluptaria an.</p>\r\n\r\n<p>Probo regione mentitum mei et, mei diam fabellas adolescens te, eros ridens bonorum id pri. Nullam qualisque vix cu, est esse sale propriae et. Ex pertinacia delicatissimi sed, appetere vulputate cu vim. Eu facilis persecuti disputationi his, pri omnes putant albucius id. Postea quodsi quo ne.</p>\r\n\r\n<p>Eligendi vulputate voluptatum an vis, vim laudem reprimique consequuntur ex, has maiorum vulputate an. Melius pertinacia honestatis ea nec, eam debitis convenire ea. Sed patrioque appellantur ei, nec cu facete omittam lobortis. Ne aliquam percipit eos, elitr molestie quo in. Inani singulis ullamcorper pri id.</p>\r\n\r\n<p>Cum eu minim apeirian, maluisset persecuti theophrastus eu mei. Mollis accumsan nec cu. Duo ne integre molestiae complectitur, pri alia equidem in, usu ne omnes dolorem expetendis. Ne semper temporibus vis, in vis appetere patrioque.</p>\r\n\r\n<p>Ius eirmod voluptatum ei, cibo vivendum electram ne nec. Ex prima comprehensam ius, has nostrum cotidieque persequeris cu. Iisque eripuit signiferumque per an, id essent verterem inimicus vim. Legere quodsi causae id usu, has at liber corpora adversarium, te vis elit probatus hendrerit. No stet partem sanctus mea, pri et tale dissentiunt concludaturque. At pro semper qualisque incorrupte, at vel petentium principes persequeris.</p>\r\n<script data-ts=\"1751957146081\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, mea eu dolor comprehensam. Per eu dolore ubique. Quodsi cetero omittam mel ne. Vis mentitum appetere persequeris ex.</p>\r\n\r\n<p>Mentitum suavitate ne his, ipsum minimum ne sed. His case posse graeco et, id nam natum volumus recusabo. Ne denique epicuri facilisi eos. Ne mea appareat convenire petentium, ne mea nihil populo. Sed ne everti oblique disputando, mei errem oblique periculis at, posse altera eam ad. Eu vel quem omnesque expetenda, eruditi deserunt assentior ex mel.</p>\r\n\r\n<p>Postea scribentur cu vel, tantas gloriatur duo te. Ubique periculis ne nec. Molestiae appellantur et duo. In duo integre perfecto, duo facete ocurreret id. Vis ad erant fuisset, ea nulla timeam nam, id nam ubique doctus.</p>\r\n\r\n<p>Eirmod gloriatur neglegentur at pro, his in libris alienum platonem. Eos quaestio mediocrem disputando ex. Rebum inani has ei, sit accusata appellantur at. Dico wisi oportere et quo, in postea recteque eum. Ut nam tota exerci, ei sea partem iracundia. Pri quot phaedrum intellegebat id.</p>\r\n\r\n<p>In eam inermis singulis, ei mel aperiam offendit. Quas deleniti euripidis sea ex. Libris ancillae platonem ad mei, mea aliquip mandamus tincidunt ex. Qui noster prodesset ea, atqui aeque gubergren et qui, appetere salutandi necessitatibus id duo.</p>\r\n\r\n<p>Et probo prompta per, vim et quidam posidonium, legere prompta omnesque ea nam. Zril malorum aliquam in eos. Usu fierent vulputate id, accumsan molestiae duo eu. Exerci equidem nec ne, ut pri meliore fabellas indoctum, no pro solum appetere pertinacia.</p>\r\n\r\n<p>Ut labitur albucius est, ex has regione splendide quaerendum, elit autem semper eam ei. Laudem dicunt quodsi ea vix. Numquam appellantur eos no, in wisi fabellas quo, omnesque reprimique sed eu. Sumo alienum nam ne. Sit ut lobortis definitionem, et case voluptua duo. Amet rebum fugit te eam.</p>\r\n\r\n<p>Sea atomorum consectetuer id, te inani congue eos. Accusata persequeris necessitatibus ex his. An wisi legimus intellegat vis, tation feugait democritum eu ius. Vis copiosae sensibus cu, eu sea repudiandae ullamcorper. Democritum dissentiunt eos no, alii iisque splendide an usu.</p>\r\n\r\n<p>Nam paulo facilisis in, ut probo dicat cum. Scripta definitiones qui ad, admodum nominati adipiscing ut vel. Prompta alienum ponderum eu mel, tale possim consetetur eum ad. Doctus vivendum assueverit vim ne, te usu errem tollit gubergren.</p>\r\n\r\n<p>Quo ea meis dolor, no nulla epicurei sit. Eirmod tamquam appareat pri ad, te est erant primis. Semper everti salutatus sed te. Cum dolore eligendi in. Eos eius feugait lobortis ea. His mucius ceteros splendide et.</p>\r\n\r\n<p>Te vel latine sadipscing. Doming pericula philosophia sed ei, option interesset vis at. Erat delicata mandamus no qui. Vis an lucilius accusamus, cibo congue eu vis. Eam porro scripta patrioque te, qui no ubique doming fastidii. Cu vix virtute mentitum, qui aeque qualisque voluptaria an.</p>\r\n\r\n<p>Probo regione mentitum mei et, mei diam fabellas adolescens te, eros ridens bonorum id pri. Nullam qualisque vix cu, est esse sale propriae et. Ex pertinacia delicatissimi sed, appetere vulputate cu vim. Eu facilis persecuti disputationi his, pri omnes putant albucius id. Postea quodsi quo ne.</p>\r\n\r\n<p>Eligendi vulputate voluptatum an vis, vim laudem reprimique consequuntur ex, has maiorum vulputate an. Melius pertinacia honestatis ea nec, eam debitis convenire ea. Sed patrioque appellantur ei, nec cu facete omittam lobortis. Ne aliquam percipit eos, elitr molestie quo in. Inani singulis ullamcorper pri id.</p>\r\n\r\n<p>Cum eu minim apeirian, maluisset persecuti theophrastus eu mei. Mollis accumsan nec cu. Duo ne integre molestiae complectitur, pri alia equidem in, usu ne omnes dolorem expetendis. Ne semper temporibus vis, in vis appetere patrioque.</p>\r\n\r\n<p>Ius eirmod voluptatum ei, cibo vivendum electram ne nec. Ex prima comprehensam ius, has nostrum cotidieque persequeris cu. Iisque eripuit signiferumque per an, id essent verterem inimicus vim. Legere quodsi causae id usu, has at liber corpora adversarium, te vis elit probatus hendrerit. No stet partem sanctus mea, pri et tale dissentiunt concludaturque. At pro semper qualisque incorrupte, at vel petentium principes persequeris.</p>\r\n<script data-ts=\"1751957146083\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', NULL, 1, NULL, NULL, '', 748, 1, '2012-11-02', '2025-07-08', '21:51:01', '01:48:02', ''),
(39, '', 0, 'Thông báo', '', '', '1', '', '', '', '<p>Lorem ipsum dolor sit amet, mea eu dolor comprehensam. Per eu dolore ubique. Quodsi cetero omittam mel ne. Vis mentitum appetere persequeris ex.</p>\n\n<p>Mentitum suavitate ne his, ipsum minimum ne sed. His case posse graeco et, id nam natum volumus recusabo. Ne denique epicuri facilisi eos. Ne mea appareat convenire petentium, ne mea nihil populo. Sed ne everti oblique disputando, mei errem oblique periculis at, posse altera eam ad. Eu vel quem omnesque expetenda, eruditi deserunt assentior ex mel.</p>\n\n<p>Postea scribentur cu vel, tantas gloriatur duo te. Ubique periculis ne nec. Molestiae appellantur et duo. In duo integre perfecto, duo facete ocurreret id. Vis ad erant fuisset, ea nulla timeam nam, id nam ubique doctus.</p>\n\n<p>Eirmod gloriatur neglegentur at pro, his in libris alienum platonem. Eos quaestio mediocrem disputando ex. Rebum inani has ei, sit accusata appellantur at. Dico wisi oportere et quo, in postea recteque eum. Ut nam tota exerci, ei sea partem iracundia. Pri quot phaedrum intellegebat id.</p>\n\n<p>In eam inermis singulis, ei mel aperiam offendit. Quas deleniti euripidis sea ex. Libris ancillae platonem ad mei, mea aliquip mandamus tincidunt ex. Qui noster prodesset ea, atqui aeque gubergren et qui, appetere salutandi necessitatibus id duo.</p>\n\n<p>Et probo prompta per, vim et quidam posidonium, legere prompta omnesque ea nam. Zril malorum aliquam in eos. Usu fierent vulputate id, accumsan molestiae duo eu. Exerci equidem nec ne, ut pri meliore fabellas indoctum, no pro solum appetere pertinacia.</p>\n\n<p>Ut labitur albucius est, ex has regione splendide quaerendum, elit autem semper eam ei. Laudem dicunt quodsi ea vix. Numquam appellantur eos no, in wisi fabellas quo, omnesque reprimique sed eu. Sumo alienum nam ne. Sit ut lobortis definitionem, et case voluptua duo. Amet rebum fugit te eam.</p>\n\n<p>Sea atomorum consectetuer id, te inani congue eos. Accusata persequeris necessitatibus ex his. An wisi legimus intellegat vis, tation feugait democritum eu ius. Vis copiosae sensibus cu, eu sea repudiandae ullamcorper. Democritum dissentiunt eos no, alii iisque splendide an usu.</p>\n\n<p>Nam paulo facilisis in, ut probo dicat cum. Scripta definitiones qui ad, admodum nominati adipiscing ut vel. Prompta alienum ponderum eu mel, tale possim consetetur eum ad. Doctus vivendum assueverit vim ne, te usu errem tollit gubergren.</p>\n\n<p>Quo ea meis dolor, no nulla epicurei sit. Eirmod tamquam appareat pri ad, te est erant primis. Semper everti salutatus sed te. Cum dolore eligendi in. Eos eius feugait lobortis ea. His mucius ceteros splendide et.</p>\n\n<p>Te vel latine sadipscing. Doming pericula philosophia sed ei, option interesset vis at. Erat delicata mandamus no qui. Vis an lucilius accusamus, cibo congue eu vis. Eam porro scripta patrioque te, qui no ubique doming fastidii. Cu vix virtute mentitum, qui aeque qualisque voluptaria an.</p>\n\n<p>Probo regione mentitum mei et, mei diam fabellas adolescens te, eros ridens bonorum id pri. Nullam qualisque vix cu, est esse sale propriae et. Ex pertinacia delicatissimi sed, appetere vulputate cu vim. Eu facilis persecuti disputationi his, pri omnes putant albucius id. Postea quodsi quo ne.</p>\n\n<p>Eligendi vulputate voluptatum an vis, vim laudem reprimique consequuntur ex, has maiorum vulputate an. Melius pertinacia honestatis ea nec, eam debitis convenire ea. Sed patrioque appellantur ei, nec cu facete omittam lobortis. Ne aliquam percipit eos, elitr molestie quo in. Inani singulis ullamcorper pri id.</p>\n\n<p>Cum eu minim apeirian, maluisset persecuti theophrastus eu mei. Mollis accumsan nec cu. Duo ne integre molestiae complectitur, pri alia equidem in, usu ne omnes dolorem expetendis. Ne semper temporibus vis, in vis appetere patrioque.</p>\n\n<p>Ius eirmod voluptatum ei, cibo vivendum electram ne nec. Ex prima comprehensam ius, has nostrum cotidieque persequeris cu. Iisque eripuit signiferumque per an, id essent verterem inimicus vim. Legere quodsi causae id usu, has at liber corpora adversarium, te vis elit probatus hendrerit. No stet partem sanctus mea, pri et tale dissentiunt concludaturque. At pro semper qualisque incorrupte, at vel petentium principes persequeris.</p>\n', '', '1', 0, NULL, NULL, '', 1, 1, '2022-09-23', '2022-09-23', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tbackground`
--

CREATE TABLE `maa_tbackground` (
  `nid` int(11) NOT NULL,
  `cbackground` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cimage` varchar(250) DEFAULT NULL,
  `clink` varchar(200) DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tbackground`
--

INSERT INTO `maa_tbackground` (`nid`, `cbackground`, `cimage`, `clink`, `cnote`, `nstatus`) VALUES
(1, 'AEON Vietnam Co., Ltd', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:18px;\">Cảm ơn sự hợp t&aacute;c v&agrave; hỗ trợ của <strong>Ph&uacute; Bảo</strong> trong thời gian qua đ&atilde; hỗ trợ <strong>AEON </strong>trong việc cung cấp sản phẩm đến kh&aacute;ch h&agrave;ng nhằm đảm bảo một phần nhu cầu của kh&aacute;ch h&agrave;ng. Sản phẩm của Ph&uacute; Bảo tuy mức gi&aacute; hơi cao nhưng chất lượng cũng kh&aacute; tốt.&nbsp;</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:18px;\">Thank you!</span></span></p>\n', 1),
(2, 'Coopmart Thanh Hà', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-size:18px;\">Chất lượng sản phẩm tốt, đ&aacute;p ứng nhanh h&agrave;ng h&oacute;a khi si&ecirc;u thị cần hỗ trợ</span></p>\n', 1),
(3, 'Nhà thuốc Trân Châu', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-size:20px;\">Lu&ocirc;n lu&ocirc;n tin tưởng sản phẩm Perfetta, nh&acirc;n vi&ecirc;n nhiệt t&igrave;nh, dễ thương</span></p>\n', 1),
(4, 'Nhà thuốc Hoàng Trí', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-size:20px;\">Nh&agrave; thuốc đ&atilde; tin d&ugrave;ng sản phẩm trong nhiều năm, h&agrave;i l&ograve;ng về chất lượng sản phẩm, c&aacute;ch phục vụ nh&acirc;n vi&ecirc;n, tiếp tục đồng h&agrave;nh c&ugrave;ng c&ocirc;ng ty với những sản phẩm mới hơn.</span></p>\n', 1),
(5, 'Hệ thống USMART', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-size:20px;\">Sản phẩm đ&oacute;ng th&agrave;nh từng zip tiện lợi, chất lượng, nh&acirc;n vi&ecirc;n hỗ trợ nhiệt t&igrave;nh.</span></p>\n', 1),
(6, 'Nhà thuốc 19', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-size:20px;\">Đ&atilde; đồng h&agrave;nh c&ugrave;ng Perfetta được 5 năm, h&agrave;ng đạt chuẩn, kh&aacute;ch h&agrave;ng rất h&agrave;i l&ograve;ng về sản phẩm, NTD cần cải tiến mẫu m&atilde; đẹp hơn ph&ugrave; hợp với người Ch&acirc;u &Aacute;.</span></p>\n', 1),
(7, 'Công Ty Thực Phẩm Á Châu', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-size:20px;\">Găng tay: chất lượng ổn định, ko gi&atilde;n nở khi gặp nước, &ocirc;m s&aacute;t b&agrave;n tay n&ecirc;n c&ocirc;ng nh&acirc;n dễ l&agrave;m việc.</span></p>\n', 1),
(8, 'Công Ty TNHH Dược Phẩm Mỹ Anh', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-size:20px;\"><strong>Khẩu trang Ph&uacute; Bảo </strong>l&agrave; thương hiệu uy t&iacute;n l&acirc;u đời c&oacute; nhiều sản phẩm,chất lượng đa dạng.<br />\nBao b&igrave; đ&oacute;ng g&oacute;i đẹp mắt, mang khẩu trang Perfetta cảm gi&aacute;c th&ocirc;ng tho&aacute;ng dễ chịu. Ch&iacute;nh v&igrave; những l&yacute; do đ&oacute; m&agrave; gi&aacute; th&agrave;nh sản phẩm c&oacute; cao hơn c&aacute;c loại KT kh&aacute;c nhưng NTD vẫn tin d&ugrave;ng v&agrave; chọn KT Perfetta Ph&uacute; Bảo&nbsp;<br />\nBGĐ v&agrave; đội ngũ nh&acirc;n vi&ecirc;n rất nhiệt t&igrave;nh dễ mến, lu&ocirc;n coi trong đối t&aacute;c v&agrave; phục vụ hết m&igrave;nh, lắng nghe t&acirc;m tư nguyện vọng của kh&aacute;ch h&agrave;ng để phục vụ tốt nhất. C&aacute;m ơn Khẩu trang Perfetta, c&aacute;m ơn Ph&uacute; Bảo.&nbsp;</span></p>\n', 1),
(9, 'Nhà thuốc Cẩm Anh', '', 'Vietnam', '<p style=\"text-align: center;\"><span style=\"font-size:20px;\">Nh&acirc;n vi&ecirc;n chăm s&oacute;c nhiệt t&igrave;nh, cung ứng h&agrave;ng h&oacute;a kịp thời, Perfetta l&agrave; thương hiệu uy t&iacute;n, cung ứng khẩu trang với gi&aacute; ph&ugrave; hợp trong m&ugrave;a dịch, h&oacute;a đơn đầy đủ.</span><span style=\"font-size:20px;\"></span></p>\n', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tbanner_images`
--

CREATE TABLE `maa_tbanner_images` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cbanner_images` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `nid_loc_banner` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tbanner_images`
--

INSERT INTO `maa_tbanner_images` (`nid`, `ccode`, `cbanner_images`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `nid_loc_banner`) VALUES
(1, '#', 'S1', '', 's1_20230112052646.webp', '', 1, '1', 1, 1, '2020-04-24', '2023-01-12', 0),
(2, '#', 'S2', '', 's2_20230112052709.png', '', 1, '2', 1, 1, '2020-04-24', '2023-01-12', 0),
(3, '#', 'S3', '', 's3_20230112052720.png', '', 1, '3', 1, 1, '2020-04-28', '2023-01-12', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tbrand_products`
--

CREATE TABLE `maa_tbrand_products` (
  `nid` int(11) NOT NULL,
  `nid_material_products` int(11) DEFAULT NULL,
  `nid_cat_products` int(11) DEFAULT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cbrand_products` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` int(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tbrand_products`
--

INSERT INTO `maa_tbrand_products` (`nid`, `nid_material_products`, `nid_cat_products`, `ccode`, `cbrand_products`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, 13, 36, 'D.net', 'D.net', '', '', '', 1, 1, 746, 1, '2013-01-28', '2013-01-19'),
(36, 13, 36, 'Dune HD', 'Dune HD', '', 'dun-hd_20130128030028.jpg', '', 1, 1, 746, 1, '2013-01-28', '2013-01-19'),
(37, 13, 36, '1', 'Egreat', '', '', '', 1, 1, 1, 1, '2013-01-19', '2013-01-19'),
(39, 13, 36, '1', 'HD Pro', '', '', '', 1, 1, 1, 1, '2013-01-19', '2013-01-19'),
(40, 13, 36, 'ImaxHD', 'ImaxHD', '', 'imax_20130128025720.jpg', '', 1, 1, 746, 1, '2013-01-28', '2013-01-19'),
(41, 13, 36, '1', 'Mede8er', '', '', '', 1, 1, 1, 1, '2013-01-19', '2013-01-19'),
(42, 13, 36, '1', 'Popcon Hour', '', '', '', 1, 1, 1, 1, '2013-01-19', '2013-01-19'),
(43, 13, 36, '1', 'Powerzest HD', '', '', '', 1, 1, 1, 1, '2013-01-19', '2013-01-19'),
(44, 13, 36, '1', 'TVIX', '', '', '', 1, 1, 1, 1, '2013-01-19', '2013-01-19'),
(45, 15, 42, 'HD Optoma', 'Optoma', '', 'OptomaDLP_20130128025507.jpg', '', 1, 1, 746, 1, '2013-01-28', '2013-01-19'),
(46, 15, 42, 'HD Panasonic', 'Panasonic', '', '', '', 1, 1, 746, 1, '2013-01-23', '2013-01-19'),
(47, 15, 42, 'HD Sony', 'Sony', '', 'sony_logo_20130128025416.jpg', '', 1, 1, 746, 1, '2013-01-28', '2013-01-19'),
(48, 15, 42, 'HD Viewsonic', 'Viewsonic', '', '', '', 1, 1, 746, 1, '2013-01-28', '2013-01-19'),
(50, 17, 47, '1', 'Hitachi', '', '', '', 1, 1, 1, 1, '2013-01-19', '2013-01-19'),
(51, 17, 47, 'WD External', 'Western Digital', '', '', '', 1, 1, 746, 1, '2013-03-05', '2013-01-19'),
(52, 0, 37, 'Imax3d', 'Imax3d', '', 'imax_20130128025553.jpg', '', 1, 1, 746, NULL, '2013-01-28', NULL),
(53, 0, 37, 'HD life', 'HD life', '', NULL, '', 1, 1, 746, NULL, '2013-01-23', NULL),
(54, 0, 37, 'Vaudi', 'Vaudi', '', NULL, '', 1, 4, 746, NULL, '2013-01-23', NULL),
(55, 0, 37, 'Himedia', 'Himedia', '', NULL, '', 1, 5, 746, NULL, '2013-01-23', NULL),
(56, 0, 37, 'Mede8er', 'Mede8er', '', NULL, '', 1, 6, 746, NULL, '2013-01-23', NULL),
(57, 0, 37, 'Tyco', 'Tyco', '', NULL, '', 1, 7, 746, NULL, '2013-01-23', NULL),
(58, 0, 37, 'Xtreamer Prodigy', 'Xtreamer Prodigy', '', NULL, '', 1, 8, 746, NULL, '2013-01-23', NULL),
(59, 0, 43, '3D Optoma', 'Optoma', '', 'OptomaDLP_20130128025513.jpg', '', 1, 1, 746, NULL, '2013-01-28', NULL),
(60, 0, 43, '3D Panasonic', 'Panasonic', '', NULL, '', 1, 2, 746, NULL, '2013-01-23', NULL),
(61, 0, 43, '3D JVC', 'JVC', '', NULL, '', 1, 3, 746, NULL, '2013-01-23', NULL),
(62, 0, 43, '3D Sony', 'Sony', '', 'sony_logo_20130128025429.jpg', '', 1, 4, 746, NULL, '2013-01-28', NULL),
(65, 0, 39, 'MARANTZ', 'MARANTZ', '', '', '', 1, 0, 746, NULL, '2013-03-05', NULL),
(66, 0, 39, 'Denon', 'Denon', '', '', '', 1, 0, 746, NULL, '2013-03-05', NULL),
(67, 0, 39, 'PRIMARE', 'PRIMARE', '', '', '', 1, 0, 746, NULL, '2013-03-05', NULL),
(68, 0, 57, 'DENON Home Theatre', 'DENON', '', '', '', 1, 0, 746, NULL, '2013-03-05', NULL),
(69, 0, 57, 'ONKYO Hometheatre', 'ONKYO', '', '', '', 1, 0, 746, NULL, '2013-03-05', NULL),
(70, 17, 46, 'WD Internal', 'Western Digital', '', '', '', 1, 0, 746, NULL, '2013-03-05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tcat_news`
--

CREATE TABLE `maa_tcat_news` (
  `nid` int(11) NOT NULL,
  `nid_section_news` int(11) DEFAULT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `ccat_news` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `nspecial` char(4) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tcat_news`
--

INSERT INTO `maa_tcat_news` (`nid`, `nid_section_news`, `ccode`, `ccat_news`, `ctag`, `nspecial`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, 6, 'news', 'News', '', NULL, NULL, '', 1, '', 1, 1, '2022-09-22', '2025-07-01'),
(2, 6, 'doi-ngu-giang-vien', 'Đội ngũ giảng viên', '', NULL, NULL, '', 1, '', 1, 1, '2022-09-22', '2025-05-30'),
(3, 6, 'khoa-hoc', 'Khóa học', '', NULL, NULL, '', 1, '3', 1, 1, '2022-09-22', '2025-06-19'),
(4, 6, 'projects', 'Projects', '', NULL, NULL, '', 1, '4', 1, 1, '2022-09-22', '2025-07-01'),
(5, 6, 'MAA Global Partnerships', 'MAA Global Partnerships', '', NULL, NULL, '', 1, '5', 1, 1, '2022-09-22', '2025-07-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tcat_products`
--

CREATE TABLE `maa_tcat_products` (
  `nid` int(11) NOT NULL,
  `nid_material_products` int(11) DEFAULT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `ccat_products` varchar(250) DEFAULT NULL,
  `eng_ccat_products` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` int(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tcat_products`
--

INSERT INTO `maa_tcat_products` (`nid`, `nid_material_products`, `ccode`, `ccat_products`, `eng_ccat_products`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, 1, 'ca-phe', 'Cà phê', '', '', '', '', 1, 1, 1, NULL, '2022-08-31', NULL),
(2, 1, 'tra', 'Trà', '', '', '', '', 1, 2, 1, NULL, '2022-08-31', NULL),
(3, 1, 'banh', 'Bánh', '', '', '', '', 1, 3, 1, NULL, '2022-08-31', NULL),
(4, 1, 'do-an-vat', 'Đồ ăn vặt', '', '', '', '', 1, 4, 1, NULL, '2022-08-31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tconfig`
--

CREATE TABLE `maa_tconfig` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cvalue` varchar(500) DEFAULT NULL,
  `eng_cvalue` varchar(500) DEFAULT NULL,
  `cnote` varchar(25) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` datetime DEFAULT NULL,
  `ddate02` datetime DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tconfig`
--

INSERT INTO `maa_tconfig` (`nid`, `ccode`, `cname`, `cvalue`, `eng_cvalue`, `cnote`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `cimage`, `nstatus`) VALUES
(1, '123', 'email contact page', 'info@gmail.com.vn', NULL, '', 713, 1, NULL, '2022-04-18 00:00:00', NULL, NULL),
(2, 'fds', 'meta keyword global', 'ART & DESIGN', NULL, '', 741, 1, '2010-01-30 00:00:00', '2023-03-08 00:00:00', NULL, NULL),
(3, 'gfd', 'title global', 'ART & DESIGN', NULL, '', 741, 1, '2010-01-23 00:00:00', '2023-03-08 00:00:00', NULL, NULL),
(4, NULL, 'meta description global', 'We inspire students to build their future with imagination, creativity, and bold ideas.', 'We inspire students to build their future with imagination, creativity, and bold ideas.', '', 746, 1, '2011-05-18 00:00:00', '2025-07-19 00:00:00', NULL, NULL),
(5, NULL, 'Image FB', 'Image FB', '', '', 1, 1, '2022-04-18 00:00:00', '2026-01-25 00:00:00', '3336_20260125023838.php', NULL),
(6, NULL, 'Số điện thoại', '(+01) 123 456 7899', NULL, '', 1, 1, '2022-04-18 00:00:00', '2022-04-18 00:00:00', '', NULL),
(7, NULL, 'Địa chỉ', '38-2 Hilton Street, California', NULL, '', 1, 1, '2022-04-18 00:00:00', '2022-04-18 00:00:00', '', NULL),
(8, NULL, 'Link FB', '#', NULL, '', 1, 1, '2022-05-03 00:00:00', '2022-05-03 00:00:00', '', NULL),
(9, NULL, 'Link Twitter', '#', NULL, '', 1, 1, '2022-05-03 00:00:00', '2022-08-25 00:00:00', '', NULL),
(10, NULL, 'Link Lazada', '#', NULL, '', 1, 1, '2022-05-03 00:00:00', '2022-07-14 00:00:00', '', NULL),
(11, NULL, 'Link Zalo', '#', NULL, '', 1, 1, '2022-05-03 00:00:00', '2022-07-14 00:00:00', '', NULL),
(12, NULL, 'Logo', '#', NULL, '', 1, 1, '2022-05-03 00:00:00', '2023-03-08 00:00:00', 'logo_20230308045021.png', NULL),
(13, NULL, 'Link Tiktok', '#', NULL, '', 1, 1, '2022-07-14 00:00:00', '2022-07-14 00:00:00', '', NULL),
(14, NULL, 'Link Youtube', '#', NULL, '', 1, 1, '2022-07-14 00:00:00', '2022-07-14 00:00:00', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tcookie`
--

CREATE TABLE `maa_tcookie` (
  `nid` int(11) NOT NULL,
  `cid_session` varchar(50) DEFAULT NULL,
  `nid_user` int(11) DEFAULT NULL,
  `ckey` varchar(100) DEFAULT NULL,
  `cvalue` varchar(250) DEFAULT NULL,
  `cstatus` char(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tcookie`
--

INSERT INTO `maa_tcookie` (`nid`, `cid_session`, `nid_user`, `ckey`, `cvalue`, `cstatus`) VALUES
(1, '2020_08_06_1596678971', 1, 'cookie_popup_ip', '::1', '1'),
(2, '', 0, 'cookie_popup_ip', '::1', '1'),
(3, '2020_08_06_1596687374', 748, 'cookie_news_listview_m_orderby_clause', 'nid', '1'),
(4, '2020_08_06_1596687374', 748, 'cookie_news_listview_m_orderby_sort', 'asc', '1'),
(5, '2020_08_06_1596687374', 748, 'cookie_news_listview_txt_current_page', '3', '1'),
(6, '2020_08_06_1596687374', 748, 'cookie_popup_ip', '113.161.72.94', '1'),
(7, '2020_08_06_1596687374', 748, 'cookie_order_listview_m_orderby_clause', 'nid', '1'),
(8, '2020_08_06_1596687374', 748, 'cookie_order_listview_m_orderby_sort', 'asc', '1'),
(9, '2020_08_06_1596687374', 748, 'cookie_order_listview_txt_current_page', '1', '1'),
(10, '2020_08_06_1596678971', 1, 'cookie_order_listview_m_orderby_clause', 'nid', '1'),
(11, '2020_08_06_1596678971', 1, 'cookie_order_listview_m_orderby_sort', 'asc', '1'),
(12, '2020_08_06_1596678971', 1, 'cookie_order_listview_txt_current_page', '1', '1'),
(13, '2020_08_07_1596765005', 0, 'cookie_popup_ip', '14.187.119.158', '1'),
(14, '2020_08_07_1596765005', 1, 'cookie_module_listview_m_orderby_clause', 'nid', '1'),
(15, '2020_08_07_1596765005', 1, 'cookie_module_listview_m_orderby_sort', 'asc', '1'),
(16, '2020_08_07_1596765005', 1, 'cookie_module_listview_txt_current_page', '1', '1'),
(17, '2020_08_07_1596782146', 1, 'cookie_product_listview_m_orderby_clause', 'cproducts', '1'),
(18, '2020_08_07_1596782146', 1, 'cookie_product_listview_m_orderby_sort', 'asc', '1'),
(19, '2020_08_07_1596782146', 1, 'cookie_product_listview_m_current_page', '1', '1'),
(20, '2020_08_07_1596787421', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(21, '2020_08_07_1596787421', 748, 'cookie_banner_images_listview_m_orderby_clause', 'nid', '1'),
(22, '2020_08_07_1596787421', 748, 'cookie_banner_images_listview_m_orderby_sort', 'asc', '1'),
(23, '2020_08_07_1596787421', 748, 'cookie_banner_images_listview_txt_current_page', '1', '1'),
(24, '2020_08_07_1596787421', 748, 'cookie_city_listview_m_orderby_clause', 'nid', '1'),
(25, '2020_08_07_1596787421', 748, 'cookie_city_listview_m_orderby_sort', 'asc', '1'),
(26, '2020_08_07_1596787421', 748, 'cookie_city_listview_txt_current_page', '1', '1'),
(27, '2020_08_07_1596787421', 748, 'cookie_module_listview_m_orderby_clause', 'nid', '1'),
(28, '2020_08_07_1596787421', 748, 'cookie_module_listview_m_orderby_sort', 'asc', '1'),
(29, '2020_08_07_1596787421', 748, 'cookie_module_listview_txt_current_page', '1', '1'),
(30, '2020_08_07_1596788249', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(31, '2020_08_07_1596788427', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(32, '2020_08_07_1596788565', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(33, '2020_08_07_1596786807', 1, 'cookie_news_listview_m_orderby_clause', 'nid', '1'),
(34, '2020_08_07_1596786807', 1, 'cookie_news_listview_m_orderby_sort', 'asc', '1'),
(35, '2020_08_07_1596786807', 1, 'cookie_news_listview_txt_current_page', '1', '1'),
(36, '2020_08_07_1596794376', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(37, '2020_08_07_1596797216', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(38, '2020_08_08_1596848740', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(39, '2020_08_08_1596862484', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(40, '2020_08_08_1596863498', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(44, '2020_08_10_1597021833', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(41, '2020_08_08_1596873848', 0, 'cookie_popup_ip', '113.172.118.65', '1'),
(42, '2020_08_09_1596936447', 0, 'cookie_popup_ip', '113.172.118.65', '1'),
(43, '2020_08_10_1597021212', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(45, '2020_08_10_1597025750', 0, 'cookie_popup_ip', '123.20.146.125', '1'),
(46, '2020_08_10_1597027425', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(47, '2020_08_10_1597025750', 1, 'cookie_config_listview_m_orderby_clause', 'nid', '1'),
(48, '2020_08_10_1597025750', 1, 'cookie_config_listview_m_orderby_sort', 'asc', '1'),
(49, '2020_08_10_1597025750', 1, 'cookie_config_listview_txt_current_page', '1', '1'),
(50, '2020_08_10_1597030306', 0, 'cookie_popup_ip', '123.20.146.125', '1'),
(51, '2020_08_10_1597030538', 0, 'cookie_popup_ip', '123.20.146.125', '1'),
(52, '2020_08_10_1597030538', 1, 'cookie_employee_listview_m_orderby_clause', 'ccode', '1'),
(53, '2020_08_10_1597030538', 1, 'cookie_employee_listview_m_orderby_sort', 'asc', '1'),
(54, '2020_08_10_1597030538', 1, 'cookie_employee_listview_m_current_page', '1', '1'),
(55, '2020_08_10_1597030609', 0, 'cookie_popup_ip', '123.20.146.125', '1'),
(56, '2020_08_10_1597030609', 752, 'cookie_popup_ip', '123.20.146.125', '1'),
(57, '2020_08_10_1597030931', 0, 'cookie_popup_ip', '123.20.146.125', '1'),
(58, '2020_08_10_1597031725', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(59, '2020_08_10_1597032269', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(60, '2020_08_10_1597038279', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(61, '2020_08_10_1597043737', 0, 'cookie_popup_ip', '123.20.146.125', '1'),
(62, '2020_08_10_1597043737', 1, 'cookie_city_listview_m_orderby_clause', 'nid', '1'),
(63, '2020_08_10_1597043737', 1, 'cookie_city_listview_m_orderby_sort', 'asc', '1'),
(64, '2020_08_10_1597043737', 1, 'cookie_city_listview_txt_current_page', '1', '1'),
(65, '2020_08_10_1597043737', 1, 'cookie_banner_images_listview_m_orderby_clause', 'nid', '1'),
(66, '2020_08_10_1597043737', 1, 'cookie_banner_images_listview_m_orderby_sort', 'asc', '1'),
(67, '2020_08_10_1597043737', 1, 'cookie_banner_images_listview_txt_current_page', '1', '1'),
(68, '2020_08_10_1597045053', 0, 'cookie_popup_ip', '123.20.146.125', '1'),
(69, '2020_08_10_1597050202', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(70, '2020_08_10_1597051242', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(71, '2020_08_10_1597051339', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(72, '2020_08_10_1597054488', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(73, '2020_08_10_1597057010', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(74, '2020_08_10_1597076891', 0, 'cookie_popup_ip', '113.172.118.65', '1'),
(75, '2020_08_11_1597103551', 0, 'cookie_popup_ip', '113.161.72.94', '1'),
(76, '2020_09_16_1600225595', 1, 'cookie_cat_product_listview_m_orderby_clause', 'ccat_products', '1'),
(77, '2020_09_16_1600225595', 1, 'cookie_cat_product_listview_m_orderby_sort', 'asc', '1'),
(78, '2020_09_16_1600225595', 1, 'cookie_cat_product_listview_txt_current_page', '1', '1'),
(79, '2020_09_30_1601432790', 1, 'cookie_material_product_listview_m_orderby_clause', 'nid', '1'),
(80, '2020_09_30_1601432790', 1, 'cookie_material_product_listview_m_orderby_sort', 'asc', '1'),
(81, '2020_09_30_1601432790', 1, 'cookie_material_product_listview_txt_current_page', '1', '1'),
(82, '2020_09_30_1601432790', 1, 'nid_gallery_img', '55', '1'),
(83, '2020_09_30_1601432790', 1, 'cookie_cat_news_listview_m_orderby_clause', 'nid', '1'),
(84, '2020_09_30_1601432790', 1, 'cookie_cat_news_listview_m_orderby_sort', 'asc', '1'),
(85, '2020_09_30_1601432790', 1, 'cookie_cat_news_listview_txt_current_page', '1', '1'),
(86, '2022_08_25_1661400064', 1, 'cookie_register_listview_m_orderby_clause', 'nid', '1'),
(87, '2022_08_25_1661400064', 1, 'cookie_register_listview_m_orderby_sort', 'asc', '1'),
(88, '2022_08_25_1661400064', 1, 'cookie_register_listview_txt_current_page', '1', '1'),
(89, '2022_08_25_1661400064', 1, 'cookie_size_listview_m_orderby_clause', 'nid', '1'),
(90, '2022_08_25_1661400064', 1, 'cookie_size_listview_m_orderby_sort', 'asc', '1'),
(91, '2022_08_25_1661400064', 1, 'cookie_size_listview_txt_current_page', '1', '1'),
(92, '2022_09_06_1662428779', 1, 'cookie_order_listview_m_txtf_ccode', '', '1'),
(93, '2022_09_06_1662428779', 1, 'cookie_order_listview_m_txtf_caddress', '', '1'),
(94, '2022_09_06_1662428779', 1, 'cookie_order_listview_m_txtf_cemail', '', '1'),
(95, '2022_09_06_1662428779', 1, 'cookie_order_listview_m_txtf_cfullname', '', '1'),
(96, '2022_09_06_1662428779', 1, 'cookie_order_listview_m_txtf_nphone', '', '1'),
(97, '2022_09_06_1662428779', 1, 'cookie_order_listview_m_txtf_cnote', '', '1'),
(98, '2022_09_06_1662428779', 1, 'cookie_order_listview_m_txtf_ddate01', '', '1'),
(99, '2022_09_06_1662428779', 1, 'cookie_order_listview_m_cbof_order_status', '1', '1'),
(100, '2022_09_07_1662515399', 1, 'cookie_order_listview_cdate_from', '', '1'),
(101, '2022_09_07_1662515399', 1, 'cookie_order_listview_cdate_to', '', '1'),
(102, '2025_06_19_1750302248', 1, 'cookie_menu_listview_m_orderby_clause', 'nid', '1'),
(103, '2025_06_19_1750302248', 1, 'cookie_menu_listview_m_orderby_sort', 'asc', '1'),
(104, '2025_06_19_1750302248', 1, 'cookie_menu_listview_txt_current_page', '1', '1'),
(105, '2025_06_19_1750302248', 1, 'cookie_news_listview_m_cbof_nid_cat_news', '5', '1'),
(106, '2025_07_07_1751895104', 748, 'cookie_config_listview_m_orderby_clause', 'nid', '1'),
(107, '2025_07_07_1751895104', 748, 'cookie_config_listview_m_orderby_sort', 'asc', '1'),
(108, '2025_07_07_1751895104', 748, 'cookie_config_listview_txt_current_page', '2', '1'),
(109, '2025_07_07_1751895104', 748, 'nid_gallery_img', '35', '1'),
(110, '2025_07_07_1751895104', 748, 'cookie_material_product_listview_m_orderby_clause', 'nid', '1'),
(111, '2025_07_07_1751895104', 748, 'cookie_material_product_listview_m_orderby_sort', 'asc', '1'),
(112, '2025_07_07_1751895104', 748, 'cookie_material_product_listview_txt_current_page', '1', '1'),
(113, '2025_07_07_1751895104', 748, 'cookie_employee_listview_m_orderby_clause', 'ccode', '1'),
(114, '2025_07_07_1751895104', 748, 'cookie_employee_listview_m_orderby_sort', 'asc', '1'),
(115, '2025_07_07_1751895104', 748, 'cookie_employee_listview_m_current_page', '1', '1'),
(116, '2025_07_07_1751895104', 748, 'cookie_news_listview_m_cbof_nid_cat_news', '', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tfunction`
--

CREATE TABLE `maa_tfunction` (
  `nid` int(4) NOT NULL,
  `cfunction` varchar(150) DEFAULT NULL,
  `cnote` varchar(150) DEFAULT NULL,
  `cdel` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tfunction`
--

INSERT INTO `maa_tfunction` (`nid`, `cfunction`, `cnote`, `cdel`) VALUES
(2, 'do_employee_listview', '0', '0'),
(5, 'do_menu_permission', '0', '0'),
(8, 'do_change_password', '0', '0'),
(10, 'do_news_listview', '0', '0'),
(11, 'do_cat_news_listview', '0', '0'),
(40, 'do_cat_product_listview', '0', '0'),
(28, 'do_sponline_listview', '0', '0'),
(113, '', 'no delete', '0'),
(41, 'do_material_product_listview', '0', '0'),
(32, 'do_inform_news_listview', '0', '0'),
(46, 'do_help', '0', '0'),
(45, 'do_order_listview', '0', '0'),
(42, 'do_product_listview', '0', '0'),
(43, 'do_customer_listview', '0', '0'),
(38, 'do_config_listview', '0', '0'),
(44, 'do_order_status_listview', '0', '0'),
(47, 'do_site_map', '0', '0'),
(100, 'do_section_news_listview', '0', '0'),
(101, 'do_module_listview', '0', '0'),
(102, 'do_faq_listview', '0', '0'),
(103, 'do_recruit_listview', '0', '0'),
(104, 'do_weblink_listview', '0', '0'),
(105, 'do_banner_images_listview', '0', '0'),
(106, 'do_email_manager_listview', '0', '0'),
(107, 'do_comment_manager_listview', '0', '0'),
(108, 'do_work_listview', '0', '0'),
(109, 'do_cat_work_listview', '0', '0'),
(110, 'do_material_work_listview', '0', '0'),
(111, 'do_cat_faq_listview', '0', '0'),
(112, 'do_help_listview', '0', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tfunction_frontend`
--

CREATE TABLE `maa_tfunction_frontend` (
  `nid` int(11) NOT NULL,
  `cfunction` varchar(250) DEFAULT NULL,
  `clink` varchar(250) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tfunction_frontend`
--

INSERT INTO `maa_tfunction_frontend` (`nid`, `cfunction`, `clink`, `nstatus`) VALUES
(1, 'Trang chủ', 'index.php', 1),
(3, 'Tin tức', 'news', 1),
(9, 'Hỏi đáp', 'faq', 0),
(4, 'Liên hệ', 'contact', 1),
(13, 'Chi tiết sản phẩm', '/san_pham/chi_tiet_sp/', 0),
(6, 'Loại tin', 'news/sec/', 1),
(7, 'Nhóm tin', 'news/cat/', 1),
(8, 'Bài viết', 'news/detail/', 1),
(11, 'Loại sản phẩm', 'san_pham/dssp_theo_chat_lieu/', 0),
(12, 'Nhóm sản phẩm', 'san_pham/ds_san_pham/', 0),
(10, 'Sản phẩm', 'san_pham', 0),
(14, 'Gallery', 'Gallery', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tgallery`
--

CREATE TABLE `maa_tgallery` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `ctitle` varchar(250) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `nspecial` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tgallery`
--

INSERT INTO `maa_tgallery` (`nid`, `ccode`, `ctitle`, `cimage`, `cnote`, `nstatus`, `nspecial`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(35, 'canh-chua', 'Thư viện ảnh', 'g1_20220923045032.jpg', '', 1, NULL, '1', 748, 1, '2015-04-07', '2022-09-23'),
(53, 'le-hoi-duoc-su', 'Event & WorkShop ', 'g2_20220923045600.jpg', '', 1, NULL, '2', 748, 1, '2017-04-07', '2022-09-23'),
(54, 'le-phat-dan', 'Awards & Accreditations', 'g3_20220923045645.jpg', '', 1, NULL, '3', 1, 1, '2022-08-29', '2022-09-23'),
(55, 'le-vu-lan', 'Our Partners', 'g4_20220923050848.jpg', '', 1, NULL, '4', 1, 1, '2022-08-29', '2022-09-23'),
(56, 'le-hoi-quan-the-am-bo-tat', 'Academic Tours', 'g5_20220923050951.jpg', '', 1, NULL, '5', 1, 1, '2022-09-23', '2022-09-23'),
(57, 'hanh-huong-tu-thien', 'Hành hương & Từ thiện', 'g6_20220923051140.jpg', '', 1, NULL, '6', 1, 1, '2022-09-23', '2022-09-23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tgallery_detail`
--

CREATE TABLE `maa_tgallery_detail` (
  `nid` int(11) NOT NULL,
  `nid_product` int(11) DEFAULT NULL,
  `cgallery_detail` varchar(250) DEFAULT NULL,
  `cimage_full` varchar(250) DEFAULT NULL,
  `cimage_thumb` varchar(250) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` char(1) DEFAULT '1',
  `nindex` char(4) DEFAULT NULL,
  `ctag` varchar(200) DEFAULT NULL,
  `ddate01` datetime DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime DEFAULT '1977-01-01 00:00:00',
  `niduser01` int(30) DEFAULT NULL,
  `niduser02` int(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tgallery_detail`
--

INSERT INTO `maa_tgallery_detail` (`nid`, `nid_product`, `cgallery_detail`, `cimage_full`, `cimage_thumb`, `cnote`, `nstatus`, `nindex`, `ctag`, `ddate01`, `ddate02`, `niduser01`, `niduser02`) VALUES
(5, 462, 'footer_content.jpg', 'footer_content_20131107045013.jpg', 'thumb_footer_content_20131107045013.jpg', NULL, '1', NULL, NULL, '2013-11-07 00:00:00', '0000-00-00 00:00:00', 746, 746),
(6, 462, 'them link.png', 'them link_20131109075624.png', 'thumb_them link_20131109075624.png', NULL, '1', NULL, NULL, '2013-11-09 00:00:00', '0000-00-00 00:00:00', 748, 748),
(7, 463, '191.jpg', '191_20131114025358.jpg', 'thumb_191_20131114025358.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(8, 463, '192.jpg', '192_20131114025408.jpg', 'thumb_192_20131114025408.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(9, 463, '193.jpg', '193_20131114025417.jpg', 'thumb_193_20131114025417.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(10, 463, '194.jpg', '194_20131114025426.jpg', 'thumb_194_20131114025426.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(12, 463, '195.jpg', '195_20131114025449.jpg', 'thumb_195_20131114025449.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(13, 463, '196.jpg', '196_20131114025501.jpg', 'thumb_196_20131114025501.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(14, 463, '197.jpg', '197_20131114025509.jpg', 'thumb_197_20131114025509.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(15, 463, '198.jpg', '198_20131114025520.jpg', 'thumb_198_20131114025520.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(16, 463, '199.jpg', '199_20131114025531.jpg', 'thumb_199_20131114025531.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(17, 463, '200.jpg', '200_20131114025540.jpg', 'thumb_200_20131114025540.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(18, 463, '201.jpg', '201_20131114025549.jpg', 'thumb_201_20131114025549.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(19, 463, '202.jpg', '202_20131114025557.jpg', 'thumb_202_20131114025557.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(20, 463, '203.jpg', '203_20131114025606.jpg', 'thumb_203_20131114025606.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(21, 463, '204.jpg', '204_20131114025617.jpg', 'thumb_204_20131114025617.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(22, 463, '206.jpg', '206_20131114025628.jpg', 'thumb_206_20131114025628.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(23, 463, '207.jpg', '207_20131114025641.jpg', 'thumb_207_20131114025641.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(24, 464, '208.jpg', '208_20131114030407.jpg', 'thumb_208_20131114030407.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(25, 464, '209.jpg', '209_20131114030428.jpg', 'thumb_209_20131114030428.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(26, 464, '210.jpg', '210_20131114030439.jpg', 'thumb_210_20131114030439.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(27, 464, '211.jpg', '211_20131114030447.jpg', 'thumb_211_20131114030447.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(28, 464, '212.jpg', '212_20131114030456.jpg', 'thumb_212_20131114030456.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(29, 464, '213.jpg', '213_20131114030509.jpg', 'thumb_213_20131114030509.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(30, 464, '214.jpg', '214_20131114030523.jpg', 'thumb_214_20131114030523.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(31, 465, '215.jpg', '215_20131114031638.jpg', 'thumb_215_20131114031638.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(32, 465, '216.jpg', '216_20131114031652.jpg', 'thumb_216_20131114031652.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(33, 465, '217.jpg', '217_20131114031705.jpg', 'thumb_217_20131114031705.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(34, 465, '218.jpg', '218_20131114031715.jpg', 'thumb_218_20131114031715.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(35, 465, '219.jpg', '219_20131114031726.jpg', 'thumb_219_20131114031726.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(36, 465, '220.jpg', '220_20131114031737.jpg', 'thumb_220_20131114031737.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(37, 465, '221.jpg', '221_20131114031750.jpg', 'thumb_221_20131114031750.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(38, 465, '222.jpg', '222_20131114031805.jpg', 'thumb_222_20131114031805.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(39, 465, '223.jpg', '223_20131114031815.jpg', 'thumb_223_20131114031815.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(40, 465, '224.jpg', '224_20131114031831.jpg', 'thumb_224_20131114031831.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(41, 465, '225.jpg', '225_20131114031841.jpg', 'thumb_225_20131114031841.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(42, 465, '227.jpg', '227_20131114031854.jpg', 'thumb_227_20131114031854.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(43, 465, '229.jpg', '229_20131114031903.jpg', 'thumb_229_20131114031903.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(44, 465, '2266.jpg', '2266_20131114031913.jpg', 'thumb_2266_20131114031913.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(45, 466, '231.jpg', '231_20131114032550.jpg', 'thumb_231_20131114032550.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(46, 466, '232.jpg', '232_20131114032835.jpg', 'thumb_232_20131114032835.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(47, 466, '230.jpg', '230_20131114032854.jpg', 'thumb_230_20131114032854.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(48, 467, '233.jpg', '233_20131114033429.jpg', 'thumb_233_20131114033429.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(49, 467, '234.jpg', '234_20131114033441.jpg', 'thumb_234_20131114033441.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(50, 467, '235.jpg', '235_20131114033454.jpg', 'thumb_235_20131114033454.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(51, 467, '236.jpg', '236_20131114033512.jpg', 'thumb_236_20131114033512.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(52, 467, '237.jpg', '237_20131114033547.jpg', 'thumb_237_20131114033547.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(53, 467, '238.jpg', '238_20131114033556.jpg', 'thumb_238_20131114033556.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(54, 467, '239.jpg', '239_20131114033606.jpg', 'thumb_239_20131114033606.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(55, 467, '240.jpg', '240_20131114033622.jpg', 'thumb_240_20131114033622.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(56, 468, '242.jpg', '242_20131114034129.jpg', 'thumb_242_20131114034129.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(57, 468, '243.jpg', '243_20131114034140.jpg', 'thumb_243_20131114034140.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(58, 468, '244.jpg', '244_20131114034156.jpg', 'thumb_244_20131114034156.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(59, 468, '245.jpg', '245_20131114034208.jpg', 'thumb_245_20131114034208.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(60, 468, '246.jpg', '246_20131114034221.jpg', 'thumb_246_20131114034221.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(61, 468, '247.jpg', '247_20131114034236.jpg', 'thumb_247_20131114034236.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(62, 468, '248.jpg', '248_20131114034247.jpg', 'thumb_248_20131114034247.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(63, 468, '250.jpg', '250_20131114034258.jpg', 'thumb_250_20131114034258.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(64, 469, '251.jpg', '251_20131114042003.jpg', 'thumb_251_20131114042003.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(65, 469, '252.jpg', '252_20131114042016.jpg', 'thumb_252_20131114042016.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(66, 469, '253.jpg', '253_20131114042026.jpg', 'thumb_253_20131114042026.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(67, 469, '254.jpg', '254_20131114042038.jpg', 'thumb_254_20131114042038.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(68, 469, '255.jpg', '255_20131114042050.jpg', 'thumb_255_20131114042050.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(69, 469, '256.jpg', '256_20131114042101.jpg', 'thumb_256_20131114042101.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(70, 469, '257.jpg', '257_20131114042124.jpg', 'thumb_257_20131114042124.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(71, 469, '258.jpg', '258_20131114042135.jpg', 'thumb_258_20131114042135.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(72, 469, '259.jpg', '259_20131114042152.jpg', 'thumb_259_20131114042152.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(73, 469, '260.jpg', '260_20131114042204.jpg', 'thumb_260_20131114042204.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(74, 469, '261.jpg', '261_20131114042215.jpg', 'thumb_261_20131114042215.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(75, 469, '262.jpg', '262_20131114042227.jpg', 'thumb_262_20131114042227.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(76, 469, '263.jpg', '263_20131114042239.jpg', 'thumb_263_20131114042239.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(77, 469, '264.jpg', '264_20131114042251.jpg', 'thumb_264_20131114042251.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(78, 469, '266.jpg', '266_20131114042309.jpg', 'thumb_266_20131114042309.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(79, 469, '265.jpg', '265_20131114042321.jpg', 'thumb_265_20131114042321.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(80, 470, '267.jpg', '267_20131114043644.jpg', 'thumb_267_20131114043644.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(81, 470, '268.jpg', '268_20131114043712.jpg', 'thumb_268_20131114043712.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(82, 470, '269.jpg', '269_20131114043734.jpg', 'thumb_269_20131114043734.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(83, 470, '271.jpg', '271_20131114043747.jpg', 'thumb_271_20131114043747.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(84, 470, '272.jpg', '272_20131114043759.jpg', 'thumb_272_20131114043759.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(85, 470, '273.jpg', '273_20131114043813.jpg', 'thumb_273_20131114043813.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(86, 470, '275.jpg', '275_20131114043825.jpg', 'thumb_275_20131114043825.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(87, 470, '276.jpg', '276_20131114043840.jpg', 'thumb_276_20131114043840.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(88, 470, '277.jpg', '277_20131114043854.jpg', 'thumb_277_20131114043854.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748),
(89, 470, '278.jpg', '278_20131114043906.jpg', 'thumb_278_20131114043906.jpg', NULL, '1', NULL, NULL, '2013-11-14 00:00:00', '0000-00-00 00:00:00', 748, 748);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tgallery_img`
--

CREATE TABLE `maa_tgallery_img` (
  `nid` int(11) NOT NULL,
  `nid_product` int(11) DEFAULT NULL,
  `ctitle` varchar(250) DEFAULT NULL,
  `cimg` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tgallery_img`
--

INSERT INTO `maa_tgallery_img` (`nid`, `nid_product`, `ctitle`, `cimg`) VALUES
(1, 35, NULL, 'a3_20250619091621.jpg.webp'),
(2, 35, NULL, 'a1_20250619091621.jpg.webp'),
(3, 35, NULL, 'a2_20250619091621.jpg.webp'),
(4, 35, NULL, 'a4_20250619091621.jpg.webp'),
(12, 35, NULL, 'a12_20250619093114.jpg.webp'),
(6, 35, NULL, 'a7_20250619091630.jpg.webp'),
(40, 54, NULL, '1_20250717091354.jpg'),
(41, 54, NULL, '2_20250717091354.jpg'),
(9, 35, NULL, 'a8_20250619091630.jpg.webp'),
(11, 35, NULL, 'a11_20250619093112.jpg.webp'),
(13, 35, NULL, 'a13_20250619093116.jpg.webp'),
(14, 35, NULL, 'a14_20250619093119.jpg.webp'),
(17, 53, NULL, '1_20250620065219.jpg.webp'),
(28, 53, NULL, '5_20250620070243.jpg.webp'),
(29, 53, NULL, '4_20250620070244.jpg.webp'),
(30, 53, NULL, '3_20250620070244.jpg.webp'),
(32, 53, NULL, '6_20250620070250.jpg.webp'),
(33, 53, NULL, '11_20250620070250.jpg.webp'),
(34, 53, NULL, '10_20250620070250.jpg.webp'),
(35, 53, NULL, '7_20250620070251.jpg.webp'),
(37, 53, NULL, 'a9_20250625033138.jpg'),
(38, 53, NULL, 'a8_20250625033145.jpg'),
(42, 54, NULL, '4_20250717091354.jpg'),
(43, 54, NULL, '5_20250717091354.jpg'),
(44, 54, NULL, '3_20250717091355.jpg'),
(45, 54, NULL, '7_20250717091404.jpg'),
(46, 54, NULL, '10_20250717091405.jpg'),
(47, 54, NULL, '6_20250717091405.jpg'),
(48, 54, NULL, '8_20250717091405.jpg'),
(49, 54, NULL, '9_20250717091406.jpg'),
(50, 54, NULL, '11_20250717091413.jpg'),
(51, 54, NULL, '12_20250717091413.jpg'),
(52, 54, NULL, '14_20250717091435.jpg'),
(53, 54, NULL, '13_20250717091435.jpg'),
(59, 55, NULL, '3_20250717091529.jpg'),
(58, 55, NULL, '2_20250717091526.jpg'),
(57, 55, NULL, '1_20250717091522.jpeg'),
(60, 55, NULL, '4_20250717091533.jpg'),
(61, 55, NULL, '5_20250717091535.jpg'),
(62, 55, NULL, '6_20250717091540.png'),
(63, 55, NULL, '7_20250717091540.png'),
(64, 55, NULL, '9_20250717091545.jpg'),
(65, 55, NULL, '10_20250717091545.jpg'),
(66, 55, NULL, '8_20250717091556.jpeg'),
(67, 55, NULL, '11_20250717091603.jpg'),
(68, 55, NULL, '12_20250717091603.jpg'),
(69, 55, NULL, '13_20250717091608.png'),
(70, 55, NULL, '14_20250717091608.png'),
(71, 55, NULL, '16_20250717091613.jpeg'),
(72, 55, NULL, '15_20250717091613.jpg'),
(73, 55, NULL, '17_20250717091625.jpg'),
(74, 55, NULL, '18_20250717091625.jpg'),
(75, 55, NULL, '19_20250717091625.jpg'),
(76, 55, NULL, '20_20250717091631.webp'),
(77, 55, NULL, '21_20250717091638.jpg'),
(78, 55, NULL, '22_20250717091645.png'),
(79, 55, NULL, '23_20250717091645.jpg'),
(80, 55, NULL, '25_20250717091650.webp'),
(81, 55, NULL, '24_20250717091650.jpg'),
(84, 56, NULL, '1_20250717091729.jpg'),
(85, 56, NULL, '2_20250717091732.jpg'),
(86, 56, NULL, '3_20250717091735.jpg'),
(87, 56, NULL, '4_20250717091738.jpg'),
(88, 56, NULL, '6_20250717091743.jpg'),
(89, 56, NULL, '5_20250717091743.jpg'),
(90, 56, NULL, '7_20250717091747.jpg'),
(91, 56, NULL, '9_20250717091753.jpg'),
(92, 56, NULL, '8_20250717091753.jpg'),
(93, 56, NULL, '10_20250717091801.jpg'),
(94, 56, NULL, '11_20250717091802.jpg'),
(95, 56, NULL, '12_20250717091808.jpg'),
(96, 56, NULL, 'z6803183814840_a0c826a2ea8bba1557036cef1e98ea9f_20250717091813.jpg'),
(97, 56, NULL, 'z6803183866444_2473efeeee6044c0d954ac42df74aec2_20250717091813.jpg'),
(98, 56, NULL, 'z6803183968629_b54e06edd2837f22d64013dd2d2e9d07_20250717091821.jpg'),
(99, 56, NULL, 'z6803183872358_e251421b91553d35a238e698712f6870_20250717091822.jpg'),
(100, 56, NULL, 'z6803184018503_0735a1fd4a5837aed8e0b4967dc033e5_20250717091839.jpg'),
(101, 56, NULL, 'z6803184053525_b635a6e4d62c67880dbfeb404fed5d47_20250717091849.jpg'),
(102, 56, NULL, 'z6803184053772_52d87711d11b6a08e27489ee8468e03d_20250717091856.jpg'),
(103, 56, NULL, 'z6803184103050_e0f19869a02a0bf47e397e5126be760b_20250717091904.jpg'),
(104, 56, NULL, 'z6803184087880_0300abc001aae96f5a1b97cb43181d07_20250717091904.jpg'),
(105, 56, NULL, 'z6803197322819_7b452ced1efa6a2aea5d46c07fea648c_20250717091911.jpg'),
(106, 56, NULL, 'z6803184116774_50fbe7528b76510fb63dbd43adc2fe8d_20250717091919.jpg'),
(107, 56, NULL, 'z6803264956039_2f7e67560371e2a0147cc8e650f4a0c8_20250717091924.jpg'),
(108, 56, NULL, 'z6803265117832_cf22719595050022560e4d409fcd03af_20250717091928.jpg'),
(109, 56, NULL, '1_20250717091945.jpg'),
(110, 56, NULL, '3_20250717091956.jpg'),
(111, 56, NULL, '4_20250717091959.jpg'),
(112, 56, NULL, '6_20250717092007.jpg'),
(113, 56, NULL, '5_20250717092008.jpg'),
(114, 56, NULL, '7_20250717092016.jpg'),
(115, 56, NULL, '8_20250717092016.jpg'),
(116, 56, NULL, '9_20250717092022.jpg'),
(117, 56, NULL, '11_20250717092030.jpg'),
(118, 56, NULL, '10_20250717092030.jpg'),
(119, 56, NULL, '12_20250717092039.jpg'),
(121, 56, NULL, '13_20250717092205.jpg'),
(122, 56, NULL, '15_20250717092210.jpg'),
(123, 56, NULL, '16_20250717092215.jpg'),
(124, 56, NULL, '17_20250717092221.jpg'),
(125, 56, NULL, '18_20250717092221.jpg'),
(126, 56, NULL, '19_20250717092228.jpg'),
(127, 56, NULL, '20_20250717092229.jpg'),
(128, 56, NULL, '21_20250717092238.jpg'),
(129, 56, NULL, '22_20250717092238.jpg'),
(130, 56, NULL, '24_20250717092249.jpg'),
(131, 56, NULL, '26_20250717092257.jpg'),
(132, 56, NULL, '25_20250717092257.jpg'),
(133, 56, NULL, '27_20250717092307.jpg'),
(134, 56, NULL, '28_20250717092307.jpg'),
(135, 56, NULL, '29_20250717092317.jpg'),
(136, 56, NULL, '30_20250717092317.jpg'),
(137, 56, NULL, '31_20250717092324.jpg'),
(138, 56, NULL, '32_20250717092350.jpg'),
(139, 56, NULL, '34_20250717092357.jpg'),
(140, 56, NULL, '33_20250717092357.jpg'),
(141, 56, NULL, '36_20250717092406.jpg'),
(142, 56, NULL, '35_20250717092406.jpg'),
(143, 56, NULL, '38_20250717092413.jpg'),
(144, 56, NULL, '37_20250717092413.jpg'),
(145, 56, NULL, '40_20250717092422.jpg'),
(146, 56, NULL, '39_20250717092422.jpg'),
(147, 56, NULL, '333_20250717092432.jpg'),
(148, 56, NULL, 'IMG_8497_20250717092432.jpg'),
(149, 56, NULL, 'z5039758967518_ba79fd586fbad69d010067181d0e82d9_20250717092449.jpg'),
(150, 54, NULL, '15_20250721082006.jpg'),
(151, 55, NULL, 'p26_20260515120715.jpg'),
(152, 55, NULL, 'p27_20260515120900.jpg'),
(153, 55, NULL, 'p28_20260515013515.jpg'),
(154, 55, NULL, 'p29_20260515013523.jpg'),
(155, 55, NULL, 'p30_20260515034949.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tguest_online`
--

CREATE TABLE `maa_tguest_online` (
  `nid` int(4) NOT NULL,
  `csession_id` char(100) DEFAULT NULL,
  `ctime_log` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tguest_online`
--

INSERT INTO `maa_tguest_online` (`nid`, `csession_id`, `ctime_log`) VALUES
(199646, '5hdj4q8h3u1potenqrdo5kmh91', 1459742034);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tindex`
--

CREATE TABLE `maa_tindex` (
  `nid` int(11) NOT NULL,
  `nid_detail` int(11) DEFAULT NULL,
  `clink` varchar(200) NOT NULL,
  `ctable` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tindex`
--

INSERT INTO `maa_tindex` (`nid`, `nid_detail`, `clink`, `ctable`) VALUES
(1, 18, 'accessories', 'tmaterial_products'),
(2, 17, 'thiet-bi-luu-tru', 'tmaterial_products'),
(3, 16, 'laptop', 'tmaterial_products'),
(4, 15, 'projector', 'tmaterial_products'),
(5, 14, 'audio', 'tmaterial_products'),
(6, 13, 'hd-player', 'tmaterial_products'),
(7, 41, 'speaker', 'tcat_products'),
(8, 42, 'hd-projector', 'tcat_products'),
(9, 40, 'cd-player', 'tcat_products'),
(10, 39, 'flower--binh-duong', 'tcat_products'),
(11, 38, 'receiver', 'tcat_products'),
(12, 36, 'hd-media', 'tcat_products'),
(13, 37, 'flower--da-lat', 'tcat_products'),
(14, 43, 'flower-can-tho', 'tcat_products'),
(15, 44, 'asus-eee-pc', 'tcat_products'),
(16, 45, 'hp-lenovo-mini', 'tcat_products'),
(17, 46, 'hdd-gan-trong', 'tcat_products'),
(18, 47, 'hdd-gan-ngoai', 'tcat_products'),
(19, 48, 'box', 'tcat_products'),
(20, 49, 'dock', 'tcat_products'),
(21, 50, 'hdmi', 'tcat_products'),
(22, 51, 'opptical', 'tcat_products'),
(23, 52, 'miscellaneous', 'tcat_products'),
(24, 1, 'd.net', 'tbrand_products'),
(25, 36, 'dune-hd', 'tbrand_products'),
(26, 37, 'egreat', 'tbrand_products'),
(27, 39, 'hd-pro', 'tbrand_products'),
(28, 40, 'imaxhd', 'tbrand_products'),
(29, 41, 'mede8er', 'tbrand_products'),
(30, 42, 'popcon-hour', 'tbrand_products'),
(31, 43, 'powerzest-hd', 'tbrand_products'),
(32, 44, 'tvix', 'tbrand_products'),
(33, 45, 'optoma', 'tbrand_products'),
(34, 46, 'panasonic', 'tbrand_products'),
(35, 47, 'sony', 'tbrand_products'),
(36, 48, 'viewsonic', 'tbrand_products'),
(37, 49, 'wd', 'tbrand_products'),
(38, 50, 'hitachi', 'tbrand_products'),
(39, 51, 'western-digital', 'tbrand_products'),
(40, 46, 'nhan-cap-ware-alpha', 'tproduct'),
(41, 47, 'noi-that-nha-hang-thnh02', 'tproduct'),
(42, 48, 'tu-bep-thtb02', 'tproduct'),
(43, 49, 'nhan-cap-sharing', 'tproduct'),
(44, 53, 'asdasd', 'tcat_products'),
(45, 52, 'imax3d', 'tbrand_products'),
(46, 53, 'hd-life', 'tbrand_products'),
(47, 54, 'vaudi', 'tbrand_products'),
(48, 55, 'himedia', 'tbrand_products'),
(49, 56, 'mede8er', 'tbrand_products'),
(50, 57, 'tyco', 'tbrand_products'),
(51, 58, 'xtreamer-prodigy', 'tbrand_products'),
(52, 59, 'optoma', 'tbrand_products'),
(53, 60, 'panasonic', 'tbrand_products'),
(54, 61, 'jvc', 'tbrand_products'),
(55, 62, 'sony', 'tbrand_products'),
(56, 50, 'd.net-r-7300-plus', 'tproduct'),
(57, 51, 'nhan-cap-endless-love', 'tproduct'),
(58, 52, 'nhan-cap-love-story', 'tproduct'),
(59, 53, 'nhan-cap-love-story-1', 'tproduct'),
(60, 54, 'nhan-cap-infinity', 'tproduct'),
(61, 55, 'nhan-cap-love-forever', 'tproduct'),
(62, 56, 'nhan-cap-infinity-1', 'tproduct'),
(63, 57, 'nhan-cap-posato', 'tproduct'),
(64, 58, 'nhan-cap-one-you', 'tproduct'),
(65, 59, 'nhan-cap-deluxe', 'tproduct'),
(66, 60, 'nhan-cap-power-love', 'tproduct'),
(67, 61, 'nhan-cap-teana', 'tproduct'),
(68, 62, 'nhan-cap-love-story-2', 'tproduct'),
(69, 63, 'nhan-cap-colora', 'tproduct'),
(70, 64, 'nhan-cap-spark', 'tproduct'),
(71, 65, 'nhan-cap-stronger', 'tproduct'),
(72, 66, 'nhan-cap-deluxe-love', 'tproduct'),
(73, 67, 'nhan-cap-air-roman', 'tproduct'),
(74, 68, 'nhan-cap-king-love', 'tproduct'),
(75, 69, 'nhan-cap-my-love', 'tproduct'),
(76, 70, 'nhan-cap-love-couple-1', 'tproduct'),
(77, 71, 'nhan-cap-key-love', 'tproduct'),
(78, 72, 'nhan-cap-love-valley', 'tproduct'),
(79, 73, 'nhan-cap-nice-dream', 'tproduct'),
(80, 74, 'nhan-cap-eternal', 'tproduct'),
(81, 75, 'nhan-cap-ware-love', 'tproduct'),
(82, 76, 'nhan-cap-nice-couple', 'tproduct'),
(83, 77, 'nhan-cap-targa', 'tproduct'),
(84, 63, 'd.net', 'tbrand_products'),
(85, 64, 'dune-hd', 'tbrand_products'),
(86, 78, 'nhan-cap-true-love-3', 'tproduct'),
(87, 79, 'nhan-cap-loving', 'tproduct'),
(88, 80, 'nhan-cap-passo-2', 'tproduct'),
(89, 81, 'nhan-cap-future-3', 'tproduct'),
(90, 82, 'nhan-cap-loving-1', 'tproduct'),
(91, 83, 'nhan-cap-loving-2', 'tproduct'),
(92, 84, 'nhan-cap-ring-hearts-2', 'tproduct'),
(93, 85, 'nhan-cap-amor', 'tproduct'),
(94, 86, 'nhan-cap-true-love-1', 'tproduct'),
(95, 87, 'nhan-cap-heart-in-heart', 'tproduct'),
(96, 88, 'nhan-cap-fiesta', 'tproduct'),
(97, 54, 'bo-chua-o-cung', 'tcat_products'),
(98, 55, 'o-cung-mang', 'tcat_products'),
(99, 89, 'nhan-cap-infinidad', 'tproduct'),
(100, 90, 'nhan-cap-tiffany', 'tproduct'),
(101, 91, 'nhan-cap-funny', 'tproduct'),
(102, 92, 'nhan-cap-bravo', 'tproduct'),
(103, 93, 'nhan-cap-vesta', 'tproduct'),
(104, 94, 'nhan-cap-strong-couple', 'tproduct'),
(105, 95, 'nhan-cap-the-same', 'tproduct'),
(106, 96, 'nhan-cap-with-me-1', 'tproduct'),
(107, 97, 'nhan-cap-follow-me', 'tproduct'),
(108, 98, 'nhan-cap-future-1', 'tproduct'),
(109, 99, 'nhan-cap-romanco(chi-co-mau-trang)', 'tproduct'),
(110, 100, 'nhan-cap-orlando', 'tproduct'),
(111, 101, 'nhan-cap-pereja', 'tproduct'),
(112, 102, 'nhan-cap-king-and-queen', 'tproduct'),
(113, 103, 'nhan-cap-dream', 'tproduct'),
(114, 104, 'nhan-cap-future', 'tproduct'),
(115, 105, 'nhan-cap-nice-couple-2', 'tproduct'),
(116, 106, 'nhan-cap-with-me', 'tproduct'),
(117, 107, 'sdfdsfs', 'tproduct'),
(118, 108, 'nhan-cap-air-blade1', 'tproduct'),
(119, 109, 'test', 'tproduct'),
(120, 110, 'testes', 'tproduct'),
(121, 111, 'nhan-cap-love-days', 'tproduct'),
(122, 112, 'dune-hd-base-3d', 'tproduct'),
(123, 113, 'nhan-cap-manh-ghep', 'tproduct'),
(124, 114, 'nhan-cap-carrera', 'tproduct'),
(125, 115, 'nhan-cap-cadeza', 'tproduct'),
(126, 116, 'nhan-cap-air-couple', 'tproduct'),
(127, 117, 'nhan-cap-boda', 'tproduct'),
(128, 56, 'keyboard', 'tcat_products'),
(129, 118, 'nhan-cap-cupid', 'tproduct'),
(130, 119, 'nhan-cap-eternidad-1', 'tproduct'),
(131, 120, 'nhan-cap-delodo', 'tproduct'),
(132, 121, 'nhan-cap-casado-1', 'tproduct'),
(133, 122, 'nhan-cap-missing-you', 'tproduct'),
(134, 123, 'nhan-cap-missing-you-1', 'tproduct'),
(135, 124, 'nhan-cap-missing-you-2', 'tproduct'),
(136, 65, 'marantz', 'tbrand_products'),
(137, 66, 'denon', 'tbrand_products'),
(138, 67, 'primare', 'tbrand_products'),
(139, 125, 'nhan-cap-optima', 'tproduct'),
(140, 126, 'nhan-cap-ring-hearts-1', 'tproduct'),
(141, 127, 'nhan-cap-sharing-2', 'tproduct'),
(142, 128, 'nhan-cap-hamony', 'tproduct'),
(143, 129, 'nhan-cap-apple', 'tproduct'),
(144, 130, 'nhan-cap-hamony-1', 'tproduct'),
(145, 131, 'nhan-cap-with-love-2', 'tproduct'),
(146, 57, 'flower-sapa', 'tcat_products'),
(147, 68, 'denon', 'tbrand_products'),
(148, 132, 'nhan-cap-zara', 'tproduct'),
(149, 69, 'onkyo', 'tbrand_products'),
(150, 133, 'nhan-cap-missing-you-3', 'tproduct'),
(151, 134, 'nhan-cap-key-love-1', 'tproduct'),
(152, 135, 'nhan-cap-romantic', 'tproduct'),
(153, 136, 'nhan-cap-air-love', 'tproduct'),
(154, 137, 'nhan-cap-king-and-queen-1', 'tproduct'),
(155, 138, 'nhan-cap-king-and-queen-2', 'tproduct'),
(156, 70, 'western-digital', 'tbrand_products'),
(157, 1, 'perfetta-ultra-(blue)', 'tproduct'),
(158, 22, 'test', 'tproduct'),
(159, 1, 'perfetta-ultra-(blue)', 'tproduct'),
(160, 27, 'nhan-cap-nice-couple1', 'tproduct'),
(161, 28, 'phong-ngu-thpn03', 'tproduct'),
(162, 29, 'tu-ao-thta01', 'tproduct'),
(163, 30, 'tu-ao-thta02', 'tproduct'),
(164, 31, 'nhan-cap-air-love-1', 'tproduct'),
(165, 32, 'tu-ao-thta03', 'tproduct'),
(166, 33, 'ke-tivi-thtv01', 'tproduct'),
(167, 34, 'ke-tivi-thtv02', 'tproduct'),
(168, 35, 'ke-tivi-thtv03', 'tproduct'),
(169, 36, 'nhan-cap-love-u', 'tproduct'),
(170, 37, 'nhan-cap-air-blade', 'tproduct'),
(171, 38, 'noi-that-cafe-thcf01', 'tproduct'),
(172, 39, 'cafe-san-vuon-thcf02', 'tproduct'),
(173, 40, 'cafe-san-vuon-thcf03', 'tproduct'),
(174, 41, 'noi-that-nha-hang-thnh01', 'tproduct'),
(175, 42, 'tu-bep-thtb01', 'tproduct'),
(176, 43, 'noi-that-nha-hang-thnh03', 'tproduct'),
(177, 44, 'nhan-cap-harmony', 'tproduct'),
(178, 45, 'tu-bep-thtb08', 'tproduct'),
(179, 46, 'nhan-cap-ware-alpha', 'tproduct'),
(180, 47, 'noi-that-nha-hang-thnh02', 'tproduct'),
(181, 48, 'tu-bep-thtb02', 'tproduct'),
(182, 49, 'nhan-cap-sharing', 'tproduct'),
(183, 50, 'nhan-cap-couple-1', 'tproduct'),
(184, 51, 'nhan-cap-endless-love', 'tproduct'),
(185, 52, 'nhan-cap-love-story', 'tproduct'),
(186, 53, 'nhan-cap-love-story-1', 'tproduct'),
(187, 54, 'nhan-cap-infinity', 'tproduct'),
(188, 55, 'nhan-cap-love-forever', 'tproduct'),
(189, 56, 'nhan-cap-infinity-1', 'tproduct'),
(190, 57, 'nhan-cap-posato', 'tproduct'),
(191, 58, 'nhan-cap-one-you', 'tproduct'),
(192, 59, 'nhan-cap-deluxe', 'tproduct'),
(193, 60, 'nhan-cap-power-love', 'tproduct'),
(194, 61, 'nhan-cap-teana', 'tproduct'),
(195, 62, 'nhan-cap-love-story-2', 'tproduct'),
(196, 63, 'nhan-cap-colora', 'tproduct'),
(197, 64, 'nhan-cap-spark', 'tproduct'),
(198, 65, 'nhan-cap-stronger', 'tproduct'),
(199, 66, 'nhan-cap-deluxe-love', 'tproduct'),
(200, 67, 'nhan-cap-air-roman', 'tproduct'),
(201, 68, 'nhan-cap-king-love', 'tproduct'),
(202, 69, 'nhan-cap-my-love', 'tproduct'),
(203, 70, 'nhan-cap-love-couple-1', 'tproduct'),
(204, 71, 'nhan-cap-key-love', 'tproduct'),
(205, 72, 'nhan-cap-love-valley', 'tproduct'),
(206, 73, 'nhan-cap-nice-dream', 'tproduct'),
(207, 74, 'nhan-cap-eternal', 'tproduct'),
(208, 75, 'nhan-cap-ware-love', 'tproduct'),
(209, 76, 'nhan-cap-nice-couple', 'tproduct'),
(210, 77, 'nhan-cap-targa', 'tproduct'),
(211, 78, 'nhan-cap-true-love-3', 'tproduct'),
(212, 79, 'nhan-cap-loving', 'tproduct'),
(213, 80, 'nhan-cap-passo-2', 'tproduct'),
(214, 81, 'nhan-cap-future-3', 'tproduct'),
(215, 82, 'nhan-cap-loving-1', 'tproduct'),
(216, 83, 'nhan-cap-loving-2', 'tproduct'),
(217, 84, 'nhan-cap-ring-hearts-2', 'tproduct'),
(218, 85, 'nhan-cap-amor', 'tproduct'),
(219, 86, 'nhan-cap-true-love-1', 'tproduct'),
(220, 87, 'nhan-cap-heart-in-heart', 'tproduct'),
(221, 88, 'nhan-cap-fiesta', 'tproduct'),
(222, 89, 'nhan-cap-infinidad', 'tproduct'),
(223, 90, 'nhan-cap-tiffany', 'tproduct'),
(224, 91, 'nhan-cap-funny', 'tproduct'),
(225, 92, 'nhan-cap-bravo', 'tproduct'),
(226, 93, 'nhan-cap-vesta', 'tproduct'),
(227, 94, 'nhan-cap-strong-couple', 'tproduct'),
(228, 95, 'nhan-cap-the-same', 'tproduct'),
(229, 96, 'nhan-cap-with-me-1', 'tproduct'),
(230, 97, 'nhan-cap-follow-me', 'tproduct'),
(231, 98, 'nhan-cap-future-1', 'tproduct'),
(232, 99, 'nhan-cap-romanco(chi-co-mau-trang)', 'tproduct'),
(233, 100, 'nhan-cap-orlando', 'tproduct'),
(234, 101, 'nhan-cap-pereja', 'tproduct'),
(235, 102, 'nhan-cap-king-and-queen', 'tproduct'),
(236, 103, 'nhan-cap-dream', 'tproduct'),
(237, 104, 'nhan-cap-future', 'tproduct'),
(238, 105, 'nhan-cap-nice-couple-2', 'tproduct'),
(239, 106, 'nhan-cap-with-me', 'tproduct'),
(240, 107, 'sdfdsfs', 'tproduct'),
(241, 108, 'nhan-cap-air-blade1', 'tproduct'),
(242, 109, 'nhan-cap-air-blade2', 'tproduct'),
(243, 110, 'nhan-cap-amor-dia', 'tproduct'),
(244, 111, 'nhan-cap-love-days', 'tproduct'),
(245, 112, 'nhan-cap-love-days-days', 'tproduct'),
(246, 113, 'nhan-cap-manh-ghep', 'tproduct'),
(247, 114, 'nhan-cap-carrera', 'tproduct'),
(248, 115, 'nhan-cap-cadeza', 'tproduct'),
(249, 116, 'nhan-cap-air-couple', 'tproduct'),
(250, 117, 'nhan-cap-boda', 'tproduct'),
(251, 118, 'nhan-cap-cupid', 'tproduct'),
(252, 119, 'nhan-cap-eternidad-1', 'tproduct'),
(253, 120, 'nhan-cap-delodo', 'tproduct'),
(254, 121, 'nhan-cap-casado-1', 'tproduct'),
(255, 122, 'nhan-cap-missing-you', 'tproduct'),
(256, 123, 'nhan-cap-missing-you-1', 'tproduct'),
(257, 124, 'nhan-cap-missing-you-2', 'tproduct'),
(258, 125, 'nhan-cap-optima', 'tproduct'),
(259, 126, 'nhan-cap-ring-hearts-1', 'tproduct'),
(260, 127, 'nhan-cap-sharing-2', 'tproduct'),
(261, 128, 'nhan-cap-hamony', 'tproduct'),
(262, 129, 'nhan-cap-apple', 'tproduct'),
(263, 130, 'nhan-cap-hamony-1', 'tproduct'),
(264, 131, 'nhan-cap-with-love-2', 'tproduct'),
(265, 132, 'nhan-cap-zara', 'tproduct'),
(266, 133, 'nhan-cap-missing-you-3', 'tproduct'),
(267, 134, 'nhan-cap-key-love-1', 'tproduct'),
(268, 135, 'nhan-cap-romantic', 'tproduct'),
(269, 136, 'nhan-cap-air-love', 'tproduct'),
(270, 137, 'nhan-cap-king-and-queen-1', 'tproduct'),
(271, 138, 'nhan-cap-king-and-queen-2', 'tproduct'),
(272, 139, 'nhan-cap-happy', 'tproduct'),
(273, 140, 'nhan-cap-hayate', 'tproduct'),
(274, 141, 'nhan-cap-la-ma', 'tproduct'),
(275, 142, 'nhan-cap-lighting', 'tproduct'),
(276, 143, 'nhan-cap-vero', 'tproduct'),
(277, 144, 'nhan-cap-only-you', 'tproduct'),
(278, 145, 'nhan-cap-rope', 'tproduct'),
(279, 146, 'nhan-cap-fame', 'tproduct'),
(280, 147, 'nhan-cap-nice-couple1', 'tproduct'),
(281, 148, 'nhan-cap-endless-love1', 'tproduct'),
(282, 149, 'nhan-cap-tiffany-1', 'tproduct'),
(283, 150, 'nhan-cap-cartier', 'tproduct'),
(284, 151, 'nhan-cap-nice-couple-3', 'tproduct'),
(285, 152, 'nhan-cap-perfect-love-1', 'tproduct'),
(286, 153, 'nhan-cap-hayate-1', 'tproduct'),
(287, 154, 'may-tinh-9', 'tproduct'),
(288, 155, 'giuong-ngu-thgn01', 'tproduct'),
(289, 156, 'giuong-ngu-thgn02', 'tproduct'),
(290, 157, 'giuong-ngu-thgn03', 'tproduct'),
(291, 158, 'tủ-bép-thtb04', 'tproduct'),
(292, 159, 'tủ-bép-thtb05', 'tproduct'),
(293, 160, 'phong-khach-thpk04', 'tproduct'),
(294, 161, 'phong-khach-thpk05', 'tproduct'),
(295, 162, 'tu-ao-thta04', 'tproduct'),
(296, 163, 'tu-ao-thta05', 'tproduct'),
(297, 164, 'ke-tivi-thtv04', 'tproduct'),
(298, 165, 'ke-tivi-thtv05', 'tproduct'),
(299, 166, 'tủ-bép-thtb05', 'tproduct'),
(300, 167, 'phong-ngu-thpn04', 'tproduct'),
(301, 168, 'may-tinh-33', 'tproduct'),
(302, 169, 'giuong-ngu-thgn04', 'tproduct'),
(303, 170, 'giuong-ngu-thgn13', 'tproduct'),
(304, 171, 'tu-ruou-phong-khach-thpk06', 'tproduct'),
(305, 172, 'tu-ruou-phong-khach-thpk07', 'tproduct'),
(306, 173, 'tu-ao-thta06', 'tproduct'),
(307, 174, 'tu-ao-thta07', 'tproduct'),
(308, 175, 'ke-tivi-thtv14', 'tproduct'),
(309, 176, 'ke-tivi-thtv07', 'tproduct'),
(310, 177, 'tu-bep-thtb06', 'tproduct'),
(311, 178, 'tu-bep-thtb14', 'tproduct'),
(312, 179, 'phong-ngu-thpn12', 'tproduct'),
(313, 180, 'phong-ngu-thpn07', 'tproduct'),
(314, 181, 'giuong-ngu-thgn06', 'tproduct'),
(315, 182, 'giuong-ngu-thgn07', 'tproduct'),
(316, 183, 'tu-ao-thta08', 'tproduct'),
(317, 184, 'tu-ao-thta09', 'tproduct'),
(318, 185, 'tu-ao-thta10', 'tproduct'),
(319, 186, 'ke-tivi-thtv08', 'tproduct'),
(320, 187, 'ke-tivi-thtv09', 'tproduct'),
(321, 188, 'ke-tivi-thtv10', 'tproduct'),
(322, 189, 'tu-bep-thtb14', 'tproduct'),
(323, 190, 'tu-bep-thtb12', 'tproduct'),
(324, 191, 'tu-bep-thtb13', 'tproduct'),
(325, 192, 'phong-ngu-thpn08', 'tproduct'),
(326, 193, 'phong-ngu-thpn06', 'tproduct'),
(327, 194, 'phong-ngu-thpn15', 'tproduct'),
(328, 195, 'giuong-ngu-thgn08', 'tproduct'),
(329, 196, 'giuong-ngu-thgn05', 'tproduct'),
(330, 197, 'giuong-ngu-thgn10', 'tproduct'),
(331, 198, 'phong-khach-thpk08', 'tproduct'),
(332, 199, 'phong-khach-thpk14', 'tproduct'),
(333, 200, 'phong-khach-thpk10', 'tproduct'),
(334, 201, 'phong-khach-thpk11', 'tproduct'),
(335, 202, 'phong-khach-thpk12', 'tproduct'),
(336, 203, 'phong-khach-thpk13', 'tproduct'),
(337, 204, 'tu-ao-thta11', 'tproduct'),
(338, 205, 'tu-ao-thta12', 'tproduct'),
(339, 206, 'tu-ao-thta13', 'tproduct'),
(340, 207, 'ke-tivi-thtv11', 'tproduct'),
(341, 208, 'ke-tivi-thtv12', 'tproduct'),
(342, 209, 'ke-tivi-thtv13', 'tproduct'),
(343, 210, 'tu-bep-thtb08', 'tproduct'),
(344, 211, 'tu-bep-thtb09', 'tproduct'),
(345, 212, 'tu-bep-thtb10', 'tproduct'),
(346, 213, 'phong-ngu-thpn11', 'tproduct'),
(347, 214, 'phong-ngu-thpn09', 'tproduct'),
(348, 215, 'phong-ngu-thpn13', 'tproduct'),
(349, 216, 'giuong-ngu-thgn11', 'tproduct'),
(350, 217, 'phong-ngu-thpn59', 'tproduct'),
(351, 218, 'giuong-ngu-thgn09', 'tproduct'),
(352, 219, 'phong-ngu-thpn07', 'tproduct'),
(353, 220, 'phong-ngu-thpn04', 'tproduct'),
(354, 221, 'phong-ngu-thpn14', 'tproduct'),
(355, 222, 'phong-ngu-thpn11', 'tproduct'),
(356, 223, 'phong-ngu-thpn10', 'tproduct'),
(357, 224, 'tu-bep-thtb07', 'tproduct'),
(358, 225, 'ke-tivi-thtv06', 'tproduct'),
(359, 226, 'phong-khach-thpk12', 'tproduct'),
(360, 227, 'phong-khach-thpk09', 'tproduct'),
(361, 228, 'phong-khach-thpk15', 'tproduct'),
(362, 229, 'phong-khach-thpk13', 'tproduct'),
(363, 230, 'tu-bep-thtb03', 'tproduct'),
(364, 231, 'tu-bep-thtb06', 'tproduct'),
(365, 232, 'ke-tivi-thtv15', 'tproduct'),
(366, 233, 'ke-tivi-thtv16', 'tproduct'),
(367, 234, 'ke-tivi-thtv17', 'tproduct'),
(368, 235, 'ke-tivi-thtv18', 'tproduct'),
(369, 236, 'ke-tivi-thtv19', 'tproduct'),
(370, 237, 'ke-tivi-thtv20', 'tproduct'),
(371, 238, 'ke-tivi-thtv21', 'tproduct'),
(372, 239, 'ke-tivi-thtv22', 'tproduct'),
(373, 240, 'ke-tivi-thtv23', 'tproduct'),
(374, 241, 'ke-tivi-thtv24', 'tproduct'),
(375, 242, 'ke-tivi-thtv25', 'tproduct'),
(376, 243, 'ke-tivi-thtv26', 'tproduct'),
(377, 244, 'ke-tivi-thtv27', 'tproduct'),
(378, 245, 'ke-tivi-thtv28', 'tproduct'),
(379, 246, 'ke-tivi-thtv29', 'tproduct'),
(380, 247, 'ke-tivi-thtv30', 'tproduct'),
(381, 248, 'ke-tivi-thtv31', 'tproduct'),
(382, 249, 'ke-tivi-thtv32', 'tproduct'),
(383, 250, 'ke-tivi-thtv33', 'tproduct'),
(384, 251, 'ke-tivi-thtv34', 'tproduct'),
(385, 252, 'ke-tivi-thtv35', 'tproduct'),
(386, 253, 'ke-tivi-thtv36', 'tproduct'),
(387, 254, 'ke-tivi-thtv37', 'tproduct'),
(388, 255, 'ke-tivi-thtv38', 'tproduct'),
(389, 256, 'ke-tivi-thtv39', 'tproduct'),
(390, 257, 'ke-tivi-thtv40', 'tproduct'),
(391, 258, 'ke-tivi-thtv41', 'tproduct'),
(392, 259, 'ke-tivi-thtv42', 'tproduct'),
(393, 260, 'ke-tivi-thtv43', 'tproduct'),
(394, 261, 'ke-tivi-thtv44', 'tproduct'),
(395, 262, 'ke-tivi-thtv45', 'tproduct'),
(396, 263, 'ke-tivi-thtv46', 'tproduct'),
(397, 264, 'ke-tivi-thtv47', 'tproduct'),
(398, 265, 'ke-tivi-thtv48', 'tproduct'),
(399, 266, 'ke-tivi-thtv49', 'tproduct'),
(400, 267, 'ke-tivi-thtv50', 'tproduct'),
(401, 268, 'ke-tivi-thtv51', 'tproduct'),
(402, 269, 'ke-tivi-thtv52', 'tproduct'),
(403, 270, 'ke-tivi-thtv53', 'tproduct'),
(404, 271, 'ke-tivi-thtv54', 'tproduct'),
(405, 272, 'ke-tivi-thtv55', 'tproduct'),
(406, 273, 'ke-tivi-thtv56', 'tproduct'),
(407, 274, 'ke-tivi-thtv57', 'tproduct'),
(408, 275, 'ke-tivi-thtv58', 'tproduct'),
(409, 276, 'tu-bep-thtb15', 'tproduct'),
(410, 277, 'tu-bep-thtb16', 'tproduct'),
(411, 278, 'tu-bep-thtb17', 'tproduct'),
(412, 279, 'tu-bep-thtb19', 'tproduct'),
(413, 280, 'tu-bep-thtb18', 'tproduct'),
(414, 281, 'tu-bep-thtb20', 'tproduct'),
(415, 282, 'tu-bep-thtb16', 'tproduct'),
(416, 283, 'tu-bep-thtb15', 'tproduct'),
(417, 284, 'tu-bep-thtb12', 'tproduct'),
(418, 285, 'tu-bep-thtb24', 'tproduct'),
(419, 286, 'tu-bep-thtb22', 'tproduct'),
(420, 287, 'tu-bep-thtb26', 'tproduct'),
(421, 288, 'tu-bep-thtb27', 'tproduct'),
(422, 289, 'tu-bep-thtb28', 'tproduct'),
(423, 290, 'tu-bep-thtb29', 'tproduct'),
(424, 291, 'tu-bep-thtb30', 'tproduct'),
(425, 292, 'tu-bep-thtb31', 'tproduct'),
(426, 293, 'tu-bep-thtb32', 'tproduct'),
(427, 294, 'tu-bep-thtb33', 'tproduct'),
(428, 295, 'tu-bep-thtb34', 'tproduct'),
(429, 296, 'tu-bep-thtb35', 'tproduct'),
(430, 297, 'tu-bep-thtb36', 'tproduct'),
(431, 298, 'tu-bep-thtb37', 'tproduct'),
(432, 299, 'tu-bep-thtb38', 'tproduct'),
(433, 300, 'tu-bep-thtb39', 'tproduct'),
(434, 301, 'tu-bep-thtb40', 'tproduct'),
(435, 302, 'tu-bep-thtb41', 'tproduct'),
(436, 303, 'tu-bep-thtb42', 'tproduct'),
(437, 304, 'tu-bep-thtb43', 'tproduct'),
(438, 305, 'tu-bep-thtb44', 'tproduct'),
(439, 306, 'tu-bep-thtb11', 'tproduct'),
(440, 307, 'tu-bep-thtb46', 'tproduct'),
(441, 308, 'tu-bep-thtb47', 'tproduct'),
(442, 309, 'tu-bep-thtb48', 'tproduct'),
(443, 310, 'tu-bep-thtb49', 'tproduct'),
(444, 311, 'tu-bep-thtb21', 'tproduct'),
(445, 312, 'tu-bep-thtb51', 'tproduct'),
(446, 313, 'tu-bep-thtb52', 'tproduct'),
(447, 314, 'tu-bep-thtb53', 'tproduct'),
(448, 315, 'tu-bep-thtb54', 'tproduct'),
(449, 316, 'tu-bep-thtb55', 'tproduct'),
(450, 317, 'tu-bep-thtb54', 'tproduct'),
(451, 318, 'tu-bep-thtb56', 'tproduct'),
(452, 319, 'tu-bep-thtb20', 'tproduct'),
(453, 320, 'tu-bep-thtb45', 'tproduct'),
(454, 321, 'phong-khach-thpk14', 'tproduct'),
(455, 322, 'phong-khach-thpk15', 'tproduct'),
(456, 323, 'phong-khach-thpk16', 'tproduct'),
(457, 324, 'phong-khach-thpk17', 'tproduct'),
(458, 325, 'phong-khach-thpk18', 'tproduct'),
(459, 326, 'phong-khach-thpk19', 'tproduct'),
(460, 327, 'phong-khach-thpk20', 'tproduct'),
(461, 328, 'phong-khach-thpk21', 'tproduct'),
(462, 329, 'phong-khach-thpk22', 'tproduct'),
(463, 330, 'phong-khach-thpk23', 'tproduct'),
(464, 331, 'phong-khach-thpk24', 'tproduct'),
(465, 332, 'phong-khach-thpk25', 'tproduct'),
(466, 333, 'phong-khach-thpk26', 'tproduct'),
(467, 334, 'phong-khach-thpk27', 'tproduct'),
(468, 335, 'phong-khach-thpk28', 'tproduct'),
(469, 336, 'phong-khach-thpk29', 'tproduct'),
(470, 337, 'phong-khach-thpk30', 'tproduct'),
(471, 338, 'phong-khach-thpk31', 'tproduct'),
(472, 339, 'phong-khach-thpk32', 'tproduct'),
(473, 340, 'phong-khach-thpk33', 'tproduct'),
(474, 341, 'phong-khach-thpk34', 'tproduct'),
(475, 342, 'phong-khach-thpk35', 'tproduct'),
(476, 343, 'phong-khach-thpk36', 'tproduct'),
(477, 344, 'phong-khach-thpk37', 'tproduct'),
(478, 345, 'phong-khach-thpk38', 'tproduct'),
(479, 346, 'phong-khach-thpk39', 'tproduct'),
(480, 347, 'phong-ngu-thpn16', 'tproduct'),
(481, 348, 'phong-ngu-thpn17', 'tproduct'),
(482, 349, 'phong-ngu-thpn18', 'tproduct'),
(483, 350, 'phong-ngu-thpn20', 'tproduct'),
(484, 351, 'phong-ngu-thpn21', 'tproduct'),
(485, 352, 'phong-ngu-thpn22', 'tproduct'),
(486, 353, 'phong-ngu-thpn23', 'tproduct'),
(487, 354, 'phong-ngu-thpn24', 'tproduct'),
(488, 355, 'phong-ngu-thpn25', 'tproduct'),
(489, 356, 'phong-ngu-thpn26', 'tproduct'),
(490, 357, 'phong-ngu-thpn27', 'tproduct'),
(491, 358, 'phong-ngu-thpn28', 'tproduct'),
(492, 359, 'phong-ngu-thpn29', 'tproduct'),
(493, 360, 'phong-ngu-thpn30', 'tproduct'),
(494, 361, 'phong-ngu-thpn31', 'tproduct'),
(495, 362, 'phong-ngu-thpn32', 'tproduct'),
(496, 363, 'phong-ngu-thpn33', 'tproduct'),
(497, 364, 'phong-ngu-thpn34', 'tproduct'),
(498, 365, 'phong-ngu-thpn35', 'tproduct'),
(499, 366, 'phong-ngu-thpn36', 'tproduct'),
(500, 367, 'phong-ngu-thpn37', 'tproduct'),
(501, 368, 'phong-ngu-thpn38', 'tproduct'),
(502, 369, 'phong-ngu-thpn39', 'tproduct'),
(503, 370, 'phong-ngu-thpn40', 'tproduct'),
(504, 371, 'phong-ngu-thpn41', 'tproduct'),
(505, 372, 'phong-ngu-thpn42', 'tproduct'),
(506, 373, 'phong-ngu-thpn43', 'tproduct'),
(507, 374, 'phong-ngu-thpn44', 'tproduct'),
(508, 375, 'giuong-ngu-thgn14', 'tproduct'),
(509, 376, 'phong-ngu-thpn60', 'tproduct'),
(510, 377, 'phong-ngu-thpn61', 'tproduct'),
(511, 378, 'giuong-ngu-thgn17', 'tproduct'),
(512, 379, 'giuong-ngu-thgn18', 'tproduct'),
(513, 380, 'giuong-ngu-thgn19', 'tproduct'),
(514, 381, 'giuong-ngu-thgn20', 'tproduct'),
(515, 382, 'giuong-ngu-thgn21', 'tproduct'),
(516, 383, 'giuong-ngu-thgn22', 'tproduct'),
(517, 384, 'giuong-ngu-thgn23', 'tproduct'),
(518, 385, 'giuong-ngu-thgn24', 'tproduct'),
(519, 386, 'giuong-ngu-thgn25', 'tproduct'),
(520, 387, 'giuong-ngu-thgn26', 'tproduct'),
(521, 388, 'giuong-ngu-thgn27', 'tproduct'),
(522, 389, 'giuong-ngu-thgn28', 'tproduct'),
(523, 390, 'giuong-ngu-thgn29', 'tproduct'),
(524, 391, 'giuong-ngu-thgn30', 'tproduct'),
(525, 392, 'giuong-ngu-thgn31', 'tproduct'),
(526, 393, 'giuong-ngu-thgn32', 'tproduct'),
(527, 394, 'giuong-ngu-thgn33', 'tproduct'),
(528, 395, 'giuong-ngu-thgn34', 'tproduct'),
(529, 396, 'giuong-ngu-thgn35', 'tproduct'),
(530, 397, 'giuong-ngu-thgn36', 'tproduct'),
(531, 398, 'giuong-ngu-thgn37', 'tproduct'),
(532, 399, 'giuong-ngu-thgn38', 'tproduct'),
(533, 400, 'giuong-ngu-thgn39', 'tproduct'),
(534, 401, 'giuong-ngu-thgn40', 'tproduct'),
(535, 402, 'giuong-ngu-thgn41', 'tproduct'),
(536, 403, 'giuong-ngu-thgn42', 'tproduct'),
(537, 404, 'giuong-ngu-thgn43', 'tproduct'),
(538, 405, 'giuong-ngu-thgn44', 'tproduct'),
(539, 406, 'giuong-ngu-thgn45', 'tproduct'),
(540, 407, 'giuong-ngu-thgn46', 'tproduct'),
(541, 408, 'giuong-ngu-thgn47', 'tproduct'),
(542, 409, 'giuong-ngu-thgn48', 'tproduct'),
(543, 410, 'giuong-ngu-thgn49', 'tproduct'),
(544, 411, 'giuong-ngu-thgn50', 'tproduct'),
(545, 412, 'giuong-ngu-thgn51', 'tproduct'),
(546, 413, 'giuong-ngu-thgn52', 'tproduct'),
(547, 414, 'giuong-ngu-thgn53', 'tproduct'),
(548, 415, 'giuong-ngu-thgn54', 'tproduct'),
(549, 416, 'giuong-ngu-thgn55', 'tproduct'),
(550, 417, 'giuong-ngu-thgn56', 'tproduct'),
(551, 418, 'giuong-ngu-thgn57', 'tproduct'),
(552, 419, 'giuong-ngu-thgn58', 'tproduct'),
(553, 420, 'giuong-ngu-thgn59', 'tproduct'),
(554, 421, 'giuong-ngu-thgn60', 'tproduct'),
(555, 422, 'giuong-ngu-thgn61', 'tproduct'),
(556, 423, 'giuong-ngu-thgn62', 'tproduct'),
(557, 424, 'tu-ao-thta14', 'tproduct'),
(558, 425, 'tu-ao-thta15', 'tproduct'),
(559, 426, 'tu-ao-thta16', 'tproduct'),
(560, 427, 'tu-ao-thta17', 'tproduct'),
(561, 428, 'tu-ao-thta18', 'tproduct'),
(562, 429, 'tu-ao-thta19', 'tproduct'),
(563, 430, 'tu-ao-thta20', 'tproduct'),
(564, 431, 'tu-ao-thta21', 'tproduct'),
(565, 432, 'tu-ao-thta22', 'tproduct'),
(566, 433, 'tu-ao-thta23', 'tproduct'),
(567, 434, 'tu-ao-thta24', 'tproduct'),
(568, 435, 'tu-ao-thta25', 'tproduct'),
(569, 436, 'tu-ao-thta26', 'tproduct'),
(570, 437, 'tu-ao-thta27', 'tproduct'),
(571, 438, 'tu-ao-thta28', 'tproduct'),
(572, 439, 'tu-ao-thta29', 'tproduct'),
(573, 440, 'tu-ao-thta30', 'tproduct'),
(574, 441, 'tu-ao-thta31', 'tproduct'),
(575, 442, 'tu-ao-thta32', 'tproduct'),
(576, 443, 'tu-ao-thta33', 'tproduct'),
(577, 444, 'tu-ao-thta34', 'tproduct'),
(578, 445, 'tu-ao-thta35', 'tproduct'),
(579, 446, 'tu-ao-thta36', 'tproduct'),
(580, 447, 'tu-ao-thta37', 'tproduct'),
(581, 448, 'tu-ao-thta38', 'tproduct'),
(582, 449, 'tu-ao-thta39', 'tproduct'),
(583, 450, 'tu-ao-thta40', 'tproduct'),
(584, 451, 'tu-ao-thta38', 'tproduct'),
(585, 452, 'tu-ao-thta40', 'tproduct'),
(586, 453, 'tu-ao-thta41', 'tproduct'),
(587, 454, 'tu-ao-thta42', 'tproduct'),
(588, 455, 'tu-ao-thta36', 'tproduct'),
(589, 456, 'tu-ao-thta46', 'tproduct'),
(590, 457, 'tu-ao-thta25', 'tproduct'),
(591, 458, 'tu-ao-thta15', 'tproduct'),
(592, 459, 'tu-ao-thta11', 'tproduct'),
(593, 460, 'tu-ao-thta11', 'tproduct'),
(594, 461, 'tu-ao-thta511', 'tproduct'),
(595, 462, 'tu-ao-thta36', 'tproduct'),
(596, 463, 'tu-ao-thta53', 'tproduct'),
(597, 464, 'tu-ao-thta32', 'tproduct'),
(598, 465, 'tu-ao-thta55', 'tproduct'),
(599, 466, 'tu-ao-thta27', 'tproduct'),
(600, 467, 'tu-bep-thtb50', 'tproduct'),
(601, 468, 'tu-bep-thtb42', 'tproduct'),
(602, 469, 'phong-khach-thpk40', 'tproduct'),
(603, 470, 'phong-khach-thpk35', 'tproduct'),
(604, 471, 'phong-khach-thpk20', 'tproduct'),
(605, 472, 'giuong-ngu-thgn63', 'tproduct'),
(606, 473, 'phong-ngu-thpn67', 'tproduct'),
(607, 474, 'ke-tivi-thtv52', 'tproduct'),
(608, 475, 'ke-tivi-thtv16', 'tproduct'),
(609, 476, 'ke-tivi-thtv61', 'tproduct'),
(610, 477, 'phong-ngu-thpn45', 'tproduct'),
(611, 478, 'phong-ngu-thpn46', 'tproduct'),
(612, 479, 'tu-bep-thtb57', 'tproduct'),
(613, 480, 'ke-tivi-thtv61', 'tproduct'),
(614, 481, 'tu-bep-thtb55', 'tproduct'),
(615, 482, 'tu-bep-thtb51', 'tproduct'),
(616, 483, 'tu-bep-thtb29', 'tproduct'),
(617, 484, 'tu-bep-thtb61', 'tproduct'),
(618, 485, 'tu-bep-thtb15', 'tproduct'),
(619, 486, 'tu-bep-thtb14', 'tproduct'),
(620, 487, 'phong-khach-thpk41', 'tproduct'),
(621, 488, 'phong-ngu-thpn07', 'tproduct'),
(622, 489, 'phong-khach-thpk42', 'tproduct'),
(623, 490, 'phong-khach-thpk43', 'tproduct'),
(624, 491, 'phong-khach-thpk44', 'tproduct'),
(625, 492, 'phong-khach-thpk45', 'tproduct'),
(626, 493, 'phong-khach-thpk46', 'tproduct'),
(627, 494, 'phong-khach-thpk47', 'tproduct'),
(628, 495, 'phong-khach-thpk45', 'tproduct'),
(629, 496, 'phong-khach-thpk49', 'tproduct'),
(630, 497, 'phong-khach-thpk42', 'tproduct'),
(631, 498, 'phong-khach-thpk47', 'tproduct'),
(632, 499, 'phong-khach-thpk44', 'tproduct'),
(633, 500, 'phong-khach-thpk43', 'tproduct'),
(634, 501, 'tu-bep-thtb19', 'tproduct'),
(635, 502, 'tu-bep-thtb37', 'tproduct'),
(636, 503, 'tu-bep-thtb66', 'tproduct'),
(637, 504, 'tu-bep-thtb16', 'tproduct'),
(638, 505, 'tu-bep-thtb68', 'tproduct'),
(639, 506, 'tu-bep-thtb69', 'tproduct'),
(640, 507, 'tu-bep-thtb70', 'tproduct'),
(641, 508, 'tu-bep-thtb71', 'tproduct'),
(642, 509, 'tu-bep-thtb56', 'tproduct'),
(643, 510, 'tu-bep-thtb43', 'tproduct'),
(644, 511, 'tu-bep-thtb42', 'tproduct'),
(645, 512, 'tu-bep-thtb38', 'tproduct'),
(646, 513, 'tu-bep-thtb76', 'tproduct'),
(647, 514, 'tu-bep-thtb77', 'tproduct'),
(648, 515, 'tu-bep-thtb78', 'tproduct'),
(649, 516, 'tu-bep-thtb79', 'tproduct'),
(650, 517, 'tu-bep-thtb80', 'tproduct'),
(651, 518, 'tu-bep-thtb45', 'tproduct'),
(652, 519, 'tu-bep-thtb41', 'tproduct'),
(653, 520, 'tu-bep-thtb80', 'tproduct'),
(654, 521, 'tu-bep-thtb84', 'tproduct'),
(655, 522, 'tu-bep-thtb27', 'tproduct'),
(656, 523, 'tu-bep-thtb28', 'tproduct'),
(657, 524, 'tu-bep-thtb37', 'tproduct'),
(658, 525, 'tu-bep-thtb31', 'tproduct'),
(659, 526, 'tu-bep-thtb25', 'tproduct'),
(660, 527, 'phong-ngu-thpn47', 'tproduct'),
(661, 528, 'phong-ngu-thpn48', 'tproduct'),
(662, 529, 'phong-ngu-thpn49', 'tproduct'),
(663, 530, 'phong-ngu-thpn50', 'tproduct'),
(664, 531, 'phong-ngu-thpn51', 'tproduct'),
(665, 532, 'phong-ngu-thpn52', 'tproduct'),
(666, 533, 'phong-ngu-thpn53', 'tproduct'),
(667, 534, 'phong-ngu-thpn54', 'tproduct'),
(668, 535, 'phong-ngu-thpn55', 'tproduct'),
(669, 536, 'phong-ngu-thpn56', 'tproduct'),
(670, 537, 'phong-ngu-thpn57', 'tproduct'),
(671, 538, 'phong-ngu-thpn58', 'tproduct'),
(672, 539, 'phong-ngu-thpn52', 'tproduct'),
(673, 540, 'phong-ngu-thpn37', 'tproduct'),
(674, 541, 'phong-ngu-thpn34', 'tproduct'),
(675, 542, 'phong-ngu-thpn31', 'tproduct'),
(676, 543, 'giuong-ngu-thgn65', 'tproduct'),
(677, 544, 'giuong-ngu-thgn58', 'tproduct'),
(678, 545, 'giuong-ngu-thgn62', 'tproduct'),
(679, 546, 'giuong-ngu-thgn57', 'tproduct'),
(680, 547, 'giuong-ngu-thgn57', 'tproduct'),
(681, 548, 'giuong-ngu-thgn57', 'tproduct'),
(682, 549, 'giuong-ngu-thgn42', 'tproduct'),
(683, 550, 'giuong-ngu-thgn56', 'tproduct'),
(684, 551, 'giuong-ngu-thgn44', 'tproduct'),
(685, 552, 'giuong-ngu-thgn32', 'tproduct'),
(686, 553, 'giuong-ngu-thgn30', 'tproduct'),
(687, 554, 'giuong-ngu-thgn20', 'tproduct'),
(688, 555, 'phong-ngu-thpn62', 'tproduct'),
(689, 556, 'giuong-ngu-thgn17', 'tproduct'),
(690, 557, 'giuong-ngu-thgn16', 'tproduct'),
(691, 558, 'giuong-ngu-thgn15', 'tproduct'),
(692, 559, 'giuong-ngu-thgn12', 'tproduct'),
(693, 560, 'giuong-ngu-thgn58', 'tproduct'),
(694, 561, 'giuong-ngu-thgn61', 'tproduct'),
(695, 562, 'tu-bep-thtb28', 'tproduct'),
(696, 563, 'phong-ngu-thpn64', 'tproduct'),
(697, 564, 'phong-ngu-thpn65', 'tproduct'),
(698, 565, 'phong-ngu-thpn66', 'tproduct'),
(699, 566, 'tu-bep-thtb26', 'tproduct'),
(700, 567, 'phong-khach-thpk49', 'tproduct'),
(701, 568, 'ke-tivi-thtv59', 'tproduct'),
(702, 569, 'tu-bep-thtb34', 'tproduct'),
(703, 570, 'phong-ngu-thpn68', 'tproduct'),
(704, 571, 'phong-ngu-thpn34', 'tproduct'),
(705, 572, 'giuong-ngu-thgn63', 'tproduct'),
(706, 573, 'giuong-ngu-thgn64', 'tproduct'),
(707, 574, 'giuong-ngu-thgn65', 'tproduct'),
(708, 575, 'giuong-ngu-thgn66', 'tproduct'),
(709, 576, 'giuong-ngu-thgn67', 'tproduct'),
(710, 577, 'giuong-ngu-thgn68', 'tproduct'),
(711, 578, 'giuong-ngu-thgn69', 'tproduct'),
(712, 579, 'giuong-ngu-thgn70', 'tproduct'),
(713, 580, 'giuong-ngu-thgn71', 'tproduct'),
(714, 581, 'ke-tivi-thtv60', 'tproduct'),
(715, 582, 'phong-khach-thpk48', 'tproduct'),
(716, 583, 'phong-khach-thpk49', 'tproduct'),
(717, 584, 'phong-khach-thpk50', 'tproduct'),
(718, 585, 'phong-khach-thpk51', 'tproduct'),
(719, 586, 'phong-khach-thpk52', 'tproduct'),
(720, 587, 'phong-khach-thpk53', 'tproduct'),
(721, 588, 'phong-khach-thpk54', 'tproduct'),
(722, 589, 'phong-khach-thpk55', 'tproduct'),
(723, 590, 'phong-khach-thpk56', 'tproduct'),
(724, 591, 'phong-khach-thpk57', 'tproduct'),
(725, 592, 'phong-khach-thpk58', 'tproduct'),
(726, 593, 'phong-khach-thpk59', 'tproduct'),
(727, 594, 'phong-khach-thpk52', 'tproduct'),
(728, 595, 'tu-ao-thta43', 'tproduct'),
(729, 596, 'tu-ao-thta44', 'tproduct'),
(730, 597, 'tu-ao-thta45', 'tproduct'),
(731, 598, 'tu-ao-thta46', 'tproduct'),
(732, 599, 'tu-ao-thta47', 'tproduct'),
(733, 600, 'tu-ao-thta48', 'tproduct'),
(734, 601, 'tu-ao-thta49', 'tproduct'),
(735, 602, 'tu-ao-thta50', 'tproduct'),
(736, 603, 'tu-ao-thta51', 'tproduct'),
(737, 604, 'tu-ao-thta52', 'tproduct'),
(738, 605, 'tu-ao-thta53', 'tproduct'),
(739, 606, 'tu-ao-thta54', 'tproduct'),
(740, 607, 'tu-ao-thta55', 'tproduct'),
(741, 608, 'tu-ao-thta56', 'tproduct'),
(742, 609, 'tu-ao-thta57', 'tproduct'),
(743, 610, 'tu-ao-thta58', 'tproduct'),
(744, 611, 'tu-ao-thta59', 'tproduct'),
(745, 612, 'tu-ao-thta60', 'tproduct'),
(746, 613, 'tu-ao-thta61', 'tproduct'),
(747, 614, 'tu-ao-thta58', 'tproduct'),
(748, 615, 'tu-ao-thta58', 'tproduct'),
(749, 616, 'phong-ngu-thpn69', 'tproduct'),
(750, 617, 'phong-ngu-thpn70', 'tproduct'),
(751, 618, 'ke-tivi-thtv61', 'tproduct'),
(752, 619, 'giuong-ngu-thgn21', 'tproduct'),
(753, 620, 'ke-tivi-thtv62', 'tproduct'),
(754, 621, 'phong-khach-thpk60', 'tproduct'),
(755, 622, 'phong-khach-thpk61', 'tproduct'),
(756, 623, 'phong-khach-thpk62', 'tproduct'),
(757, 624, 'phong-khach-thpk63', 'tproduct'),
(758, 625, 'phong-khach-thpk64', 'tproduct'),
(759, 626, 'phong-khach-thpk46', 'tproduct'),
(760, 627, 'phong-khach-thpk62', 'tproduct'),
(761, 628, 'phong-khach-thpk62', 'tproduct'),
(762, 629, 'phong-khach-thpk61', 'tproduct'),
(763, 630, 'phong-khach-thpk57', 'tproduct'),
(764, 631, 'giuong-ngu-thgn12', 'tproduct'),
(765, 632, 'phong-ngu-thpn71', 'tproduct'),
(766, 633, 'phong-ngu-thpn72', 'tproduct'),
(767, 634, 'phong-ngu-thpn73', 'tproduct'),
(768, 635, 'giuong-ngu-thgn70', 'tproduct'),
(769, 636, 'giuong-ngu-thgn70', 'tproduct'),
(770, 637, 'giuong-ngu-thgn67', 'tproduct'),
(771, 638, 'giuong-ngu-thgn65', 'tproduct'),
(772, 639, 'ke-tivi-thtv63', 'tproduct'),
(773, 640, 'phong-khach-thpk62', 'tproduct'),
(774, 641, 'phong-khach-thpk63', 'tproduct'),
(775, 642, 'phong-khach-thpk64', 'tproduct'),
(776, 643, 'phong-khach-thpk65', 'tproduct'),
(777, 644, 'phong-khach-thpk66', 'tproduct'),
(778, 645, 'phong-khach-thpk67', 'tproduct'),
(779, 646, 'tu-bep-thtb02', 'tproduct'),
(780, 647, 'phong-ngu-thpn74', 'tproduct'),
(781, 648, 'phong-ngu-thpn75', 'tproduct'),
(782, 649, 'phong-ngu-thpn76', 'tproduct'),
(783, 650, 'phong-ngu-thpn77', 'tproduct'),
(784, 651, 'phong-ngu-thpn78', 'tproduct'),
(785, 652, 'ke-tivi-thtv64', 'tproduct'),
(786, 653, 'ke-tivi-thtv65', 'tproduct'),
(787, 654, 'ke-tivi-thtv66', 'tproduct'),
(788, 655, 'ke-tivi-thtv67', 'tproduct'),
(789, 656, 'ke-tivi-thtv68', 'tproduct'),
(790, 657, 'ke-tivi-thtv69', 'tproduct'),
(791, 658, 'ke-tivi-thtv70', 'tproduct'),
(792, 659, 'giuong-ngu-thgn72', 'tproduct'),
(793, 660, 'giuong-ngu-thgn73', 'tproduct'),
(794, 661, 'giuong-ngu-thgn74', 'tproduct'),
(795, 662, 'giuong-ngu-thgn75', 'tproduct'),
(796, 663, 'giuong-ngu-thgn75', 'tproduct'),
(797, 664, 'tu-bep-thtb24', 'tproduct'),
(798, 665, 'tu-bep-thtb83', 'tproduct'),
(799, 666, 'phong-khach-thpk68', 'tproduct'),
(800, 667, 'phong-ngu-thpn79', 'tproduct'),
(801, 668, 'phong-ngu-thpn63', 'tproduct'),
(802, 669, 'phong-ngu-thpn79', 'tproduct'),
(803, 670, 'ke-tivi-thtv71', 'tproduct'),
(804, 671, 'ke-tivi-thtv72', 'tproduct'),
(805, 672, 'ke-tivi-thtv73', 'tproduct'),
(806, 673, 'phong-khach-thpk69', 'tproduct'),
(807, 674, 'phong-khach-thpk26', 'tproduct'),
(808, 675, 'phong-khach-thpk21', 'tproduct'),
(809, 676, 'phong-khach-thpk72', 'tproduct'),
(810, 677, 'phong-khach-thpk66', 'tproduct'),
(811, 678, 'phong-khach-thpk23', 'tproduct'),
(812, 679, 'tu-ao-thta32', 'tproduct'),
(813, 680, 'phong-ngu-thpn77', 'tproduct'),
(814, 681, 'ke-tivi-thtv74', 'tproduct'),
(815, 682, 'ke-tivi-thtv75', 'tproduct'),
(816, 683, 'ke-tivi-thtv76', 'tproduct'),
(817, 684, 'ke-tivi-thtv77', 'tproduct'),
(818, 685, 'ke-tivi-thtv78', 'tproduct'),
(819, 686, 'ke-tivi-thtv79', 'tproduct'),
(820, 687, 'ke-tivi-thtv80', 'tproduct'),
(821, 688, 'ke-tivi-thtv81', 'tproduct'),
(822, 689, 'ke-tivi-thtv82', 'tproduct'),
(823, 690, 'ke-tivi-thtv83', 'tproduct'),
(824, 691, 'ke-tivi-thtv84', 'tproduct'),
(825, 692, 'ke-tivi-thtv85', 'tproduct'),
(826, 693, 'ke-tivi-thtv86', 'tproduct'),
(827, 694, 'ke-tivi-thtv87', 'tproduct'),
(828, 695, 'ke-tivi-thtv88', 'tproduct'),
(829, 696, 'ke-tivi-thtv89', 'tproduct'),
(830, 697, 'ke-tivi-thtv90', 'tproduct'),
(831, 698, 'ke-tivi-thtv91', 'tproduct'),
(832, 699, 'ke-tivi-thtv92', 'tproduct'),
(833, 700, 'ke-tivi-thtv93', 'tproduct'),
(834, 701, 'ke-tivi-thtv94', 'tproduct'),
(835, 702, 'ke-tivi-thtv95', 'tproduct'),
(836, 703, 'ke-tivi-thtv96', 'tproduct'),
(837, 704, 'ke-tivi-thtv97', 'tproduct'),
(838, 705, 'ke-tivi-thtv98', 'tproduct'),
(839, 706, 'ke-tivi-thtv99', 'tproduct'),
(840, 707, 'ghj', 'tproduct'),
(841, 708, 'ke-tivi-thtv100', 'tproduct'),
(842, 709, 'ke-tivi-thtv101', 'tproduct'),
(843, 710, 'ke-tivi-thtv102', 'tproduct'),
(844, 711, 'ke-tivi-thtv103', 'tproduct'),
(845, 712, 'ke-tivi-thtv97', 'tproduct'),
(846, 713, 'ke-tivi-thtv94', 'tproduct'),
(847, 714, 'ke-tivi-thtv88', 'tproduct'),
(848, 715, 'ke-tivi-thtv84', 'tproduct'),
(849, 716, 'ke-tivi-thtv83', 'tproduct'),
(850, 717, 'ke-tivi-thtv81', 'tproduct'),
(851, 718, 'ke-tivi-thtv72', 'tproduct'),
(852, 719, 'tu-bep-thtb23', 'tproduct'),
(853, 720, 'phong-ngu-thpn15', 'tproduct'),
(854, 721, 'ke-tivi-thtv99', 'tproduct'),
(855, 722, 'phong-ngu-thpn80', 'tproduct'),
(856, 723, 'tu-bep-thtb54', 'tproduct'),
(857, 724, 'tu-bep-thtb11', 'tproduct'),
(858, 725, 'noi-that-co-dien-thcd01', 'tproduct'),
(859, 726, 'noi-that-co-dien-thcd02', 'tproduct'),
(860, 727, 'noi-that-co-dien-thcd03', 'tproduct'),
(861, 728, 'noi-that-co-dien-thcd04', 'tproduct'),
(862, 729, 'noi-that-co-dien-thcd05', 'tproduct'),
(863, 730, 'noi-that-co-dien-thcd06', 'tproduct'),
(864, 731, 'noi-that-co-dien-thcd07', 'tproduct'),
(865, 732, 'noi-that-co-dien-thcd08', 'tproduct'),
(866, 733, 'noi-that-co-dien-thcd09', 'tproduct'),
(867, 734, 'noi-that-co-dien-thcd10', 'tproduct'),
(868, 735, 'noi-that-co-dien-thcd11', 'tproduct'),
(869, 736, 'noi-that-co-dien-thcd09', 'tproduct'),
(870, 737, 'noi-that-co-dien-thcd13', 'tproduct'),
(871, 738, 'noi-that-co-dien-thcd12', 'tproduct'),
(872, 739, 'noi-that-co-dien-thcd13', 'tproduct'),
(873, 740, 'noi-that-co-dien-thcd14', 'tproduct'),
(874, 741, 'noi-that-co-dien-thcd15', 'tproduct'),
(875, 742, 'noi-that-co-dien-thcd16', 'tproduct'),
(876, 743, 'noi-that-co-dien-thcd17', 'tproduct'),
(877, 744, 'noi-that-co-dien-thcd18', 'tproduct'),
(878, 745, 'noi-that-co-dien-thcd19', 'tproduct'),
(879, 746, 'noi-that-co-dien-thcd20', 'tproduct'),
(880, 747, 'noi-that-co-dien-thcd21', 'tproduct'),
(881, 748, 'noi-that-co-dien-thcd22', 'tproduct'),
(882, 749, 'noi-that-co-dien-thcd23', 'tproduct'),
(883, 750, 'noi-that-co-dien-thcd24', 'tproduct'),
(884, 751, 'noi-that-co-dien-thcd25', 'tproduct'),
(885, 752, 'noi-that-co-dien-thcd26', 'tproduct'),
(886, 753, 'noi-that-co-dien-thcd20', 'tproduct'),
(887, 754, 'noi-that-co-dien-thcd20', 'tproduct'),
(888, 755, 'phong-ngu-thpn81', 'tproduct'),
(889, 756, 'phong-ngu-thpn82', 'tproduct'),
(890, 757, 'phong-ngu-thpn83', 'tproduct'),
(891, 758, 'phong-ngu-thpn84', 'tproduct'),
(892, 759, 'ke-tivi-thtv104', 'tproduct'),
(893, 760, 'ke-tivi-thtv105', 'tproduct'),
(894, 761, 'giuong-ngu-thgn76', 'tproduct'),
(895, 762, 'giuong-ngu-thgn77', 'tproduct'),
(896, 763, 'giuong-ngu-thgn78', 'tproduct'),
(897, 764, 'phong-ngu-thpn85', 'tproduct'),
(898, 765, 'phong-khach-thpk69', 'tproduct'),
(899, 766, 'phong-khach-thpk70', 'tproduct'),
(900, 767, 'ke-tivi-thtv106', 'tproduct'),
(901, 768, 'giuong-ngu-thgn79', 'tproduct'),
(902, 769, 'tu-bep-thtb10', 'tproduct'),
(903, 770, 'phong-ngu-thpn86', 'tproduct'),
(904, 771, 'phong-ngu-thpn87', 'tproduct'),
(905, 772, 'tu-bep-thtb18', 'tproduct'),
(906, 773, 'giuong-ngu-thgn80', 'tproduct'),
(907, 774, 'giuong-ngu-thgn81', 'tproduct'),
(908, 775, 'phong-ngu-thpn88', 'tproduct'),
(909, 776, 'giuong-ngu-thgn82', 'tproduct'),
(910, 777, 'ke-tivi-thtv107', 'tproduct'),
(911, 778, 'phong-khach-thpk56', 'tproduct'),
(912, 779, 'tu-bep-thtb12', 'tproduct'),
(913, 780, 'phong-ngu-thpn66', 'tproduct'),
(914, 781, 'phong-ngu-thpn63', 'tproduct'),
(915, 782, 'tu-bep-thtb06', 'tproduct'),
(916, 783, 'tu-bep-thtb54', 'tproduct'),
(917, 784, 'phong-khach-thpk40', 'tproduct'),
(918, 785, 'phong-ngu-thpn89', 'tproduct'),
(919, 786, 'phong-ngu-thpn90', 'tproduct'),
(920, 787, 'phong-ngu-thpn91', 'tproduct'),
(921, 1, 'perfetta-ultra-(blue)', 'tproduct'),
(922, 2, 'perfetta-activation-carbon', 'tproduct'),
(923, 3, 'perfetta-premium', 'tproduct'),
(924, 4, 'famliex-3-plies-facemask-(pink-box)', 'tproduct'),
(925, 5, 'familex-plus-4-plies-facemask', 'tproduct'),
(926, 6, 'perfetta-2-plies-face-mask-for-children-(white-box)', 'tproduct'),
(927, 7, 'perfetta-2-plies-face-mask-for-children-(blue-box)', 'tproduct'),
(928, 8, 'ciao-02-plies', 'tproduct'),
(929, 9, 'ciao-activation-carbon', 'tproduct'),
(930, 10, 'perfetta-nitrile-gloves', 'tproduct'),
(931, 11, 'familex-latex-gloves', 'tproduct'),
(932, 12, 'perfetta-ultra-(white)', 'tproduct'),
(933, 13, 'perfetta-3-plies-face-mask-(green-box)', 'tproduct'),
(934, 14, 'perfetta-3-plies-face-mask-(pink-box)', 'tproduct'),
(935, 15, 'perfetta-3-plies-face-mask-(yellow-box)', 'tproduct'),
(936, 16, 'perfetta-3-plies-face-mask-(blue-box)', 'tproduct');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tlink`
--

CREATE TABLE `maa_tlink` (
  `nid` int(11) NOT NULL,
  `nid_member` int(11) DEFAULT NULL,
  `ctitle` varchar(100) DEFAULT NULL,
  `calias` varchar(100) DEFAULT NULL,
  `clink` varchar(200) NOT NULL,
  `curl_long` varchar(200) DEFAULT NULL,
  `cnote` varchar(500) DEFAULT NULL,
  `cimage` varchar(200) DEFAULT NULL,
  `ctime` varchar(50) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `ctype` char(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tlink`
--

INSERT INTO `maa_tlink` (`nid`, `nid_member`, `ctitle`, `calias`, `clink`, `curl_long`, `cnote`, `cimage`, `ctime`, `nstatus`, `ctype`) VALUES
(1, 2, 'tuanbio 1', 'tuanbio', 'https://atplink.com/tuanbio 1', NULL, 'test 1', '5f9b75d2562dfcea836234d16d0f9e77.jpg', '1658379099', 1, '0'),
(2, 2, 'tuanbio1', 'tuanbio1', 'https://atplink.com/tuanbio1', NULL, 'test', 'e85ed94fa2af47e92aca029ed6f5b6fc.png', '1658379099', 1, '0'),
(4, 2, 'tuanbio2', 'tuanbio2', 'https://atplink.com/tuanbio2', NULL, 'test', '577dfc8399bc25ee117ee0feafe33f04.jpg', '1658379099', 0, '0'),
(6, 2, 'tuanbio3', 'tuanbio3', 'https://atplink.com/tuanbio3', 'https://domain.com/example', 'test 3', '39ad9a6c667aab06d215a6caf423bcc0.png', '1658474791', 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tlocation_banner`
--

CREATE TABLE `maa_tlocation_banner` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(250) DEFAULT NULL,
  `cname` varchar(250) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tlocation_banner`
--

INSERT INTO `maa_tlocation_banner` (`nid`, `ccode`, `cname`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, 'main', 'Main', 1, '1', NULL, NULL, NULL, NULL),
(2, 'product', 'Product', 1, '2', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tmaterial_products`
--

CREATE TABLE `maa_tmaterial_products` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cmaterial_products` varchar(250) DEFAULT NULL,
  `eng_cmaterial_products` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cicon` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `nspecial` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `ctype` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tmaterial_products`
--

INSERT INTO `maa_tmaterial_products` (`nid`, `ccode`, `cmaterial_products`, `eng_cmaterial_products`, `ctag`, `cimage`, `cicon`, `cnote`, `nstatus`, `nspecial`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `ctype`) VALUES
(1, 'san-pham', 'Sản phẩm', '', '', '', '', '', 1, 0, '', 1, NULL, '2020-06-26', NULL, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tmember`
--

CREATE TABLE `maa_tmember` (
  `nid` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `ccode` varchar(100) DEFAULT NULL,
  `cid` varchar(100) DEFAULT NULL,
  `cemail` varchar(200) DEFAULT NULL,
  `cphone` varchar(100) DEFAULT NULL,
  `cbirthday` varchar(200) DEFAULT NULL,
  `cgender` varchar(50) DEFAULT NULL,
  `caddress` varchar(500) DEFAULT NULL,
  `cnote` varchar(500) DEFAULT NULL,
  `nstatus` int(11) NOT NULL DEFAULT 1,
  `ddate01` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `nid_department` int(4) DEFAULT NULL,
  `nid_package` int(11) DEFAULT NULL,
  `cpurchase_date` varchar(100) DEFAULT NULL,
  `cpurchase_time` varchar(100) DEFAULT NULL,
  `cfirst_date_use` varchar(100) DEFAULT NULL,
  `cfirst_time_use` varchar(100) DEFAULT NULL,
  `cend_date_use` varchar(100) DEFAULT NULL,
  `cend_time_use` varchar(100) DEFAULT NULL,
  `csuspend` char(1) DEFAULT '1',
  `cuserid` varchar(30) DEFAULT NULL,
  `cpassword` varchar(100) DEFAULT NULL,
  `cisadmin` varchar(11) DEFAULT '0',
  `niduser01` int(30) DEFAULT NULL,
  `niduser02` int(30) DEFAULT NULL,
  `cstatus` char(1) DEFAULT '1',
  `cimage` varchar(500) DEFAULT NULL,
  `ctime` varchar(100) DEFAULT NULL,
  `calias` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tmember`
--

INSERT INTO `maa_tmember` (`nid`, `cname`, `ccode`, `cid`, `cemail`, `cphone`, `cbirthday`, `cgender`, `caddress`, `cnote`, `nstatus`, `ddate01`, `ddate02`, `nid_department`, `nid_package`, `cpurchase_date`, `cpurchase_time`, `cfirst_date_use`, `cfirst_time_use`, `cend_date_use`, `cend_time_use`, `csuspend`, `cuserid`, `cpassword`, `cisadmin`, `niduser01`, `niduser02`, `cstatus`, `cimage`, `ctime`, `calias`) VALUES
(1, 'Tuan Nguyen', NULL, '111111111', 'tuan250990@gmail.com', '(123) 456-7890', '25-9-1990', 'Nam', '291, Lê Văn Quới, P.Bình Trị Đông', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '96e79218965eb72c92a549dd5a330112', '0', NULL, NULL, '1', NULL, NULL, NULL),
(2, 'An Mỹ', NULL, '0918003971', 'info@nhapchuot.net', '0909409286', '08/07/1989', 'Nữ', '55/107a/17thành mỹ phường 8 quan Tân bình', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '96e79218965eb72c92a549dd5a330112', '0', NULL, NULL, '1', NULL, NULL, NULL),
(3, 'Mộc Trà', NULL, '02839142980', NULL, NULL, '11/07/1979', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'c16b462cee26602c9c4ba917276ec258', '0', NULL, NULL, '1', NULL, NULL, NULL),
(4, 'Mộc Trà', NULL, '0916715359', NULL, '02839142980', '13/07/1989', 'Nữ', '41 Nguyễn Thị Minh Khai, Quận 1', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '9bdeba20e1c40e9183f391739120c6a4', '0', NULL, NULL, '1', NULL, NULL, NULL),
(5, 'Mộc Trà', NULL, '0902123456', NULL, '123123213', '16/07/2020', 'Nam', '1289/5b Vuon Lai, An Phu Dong, Quan 12, HCM', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4297f44b13955235245b2497399d7a93', '0', NULL, NULL, '1', NULL, NULL, NULL),
(17, 'Phạm Thị Diễm Hồng', NULL, '0909141081', 'ptdhong@sg.cmc.com.vn', '0909141081', '14', 'Nữ', '111-121 Ngô Gia Tự, Phường 2, Quận 10 (Tòa nhà Vietinbank)', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '7b8cd9c8fffaead6c230dd53d1d7880c', '0', NULL, NULL, '1', NULL, NULL, NULL),
(16, 'Mộc Trà', NULL, '0974539285', NULL, NULL, '05/12/1997', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '08d397371731c80d1ac10cf099f89008', '0', NULL, NULL, '1', NULL, NULL, NULL),
(11, 'Trang Lê', NULL, NULL, 'tranglemi@gmail.com', '02839142980', NULL, NULL, '41 Nguyễn Thị Minh Khai, Quận 1', 'Pass là TTiiJQUv', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '536aa0cdff81d8b2313e39717d045fe3', '0', NULL, NULL, '1', NULL, NULL, NULL),
(12, 'Trịnh Hạnh', NULL, NULL, 'nguyenthiyen10011969@gmail.com', '0908665592', NULL, NULL, '226 Minh Phụng, phường 6, quận 6', 'Pass là EjUXzVio', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '6daf554f85cca9a97ca8199cdcd89bb0', '0', NULL, NULL, '1', NULL, NULL, NULL),
(13, 'Sheldon Fowler', NULL, NULL, 'geogatedproject78@gmail.com', NULL, NULL, NULL, NULL, 'Pass là 72bll07O', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'f00e8495505aa09271005ec4d41ad808', '0', NULL, NULL, '1', NULL, NULL, NULL),
(14, 'Đức Vinh', NULL, NULL, 'ducvinh0610@gmail.com', NULL, NULL, NULL, NULL, 'Pass là Kh9Gbqnh', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '38daab2038dd84382c3453da69aa88df', '0', NULL, NULL, '1', NULL, NULL, NULL),
(15, 'Dương Hằng Anh', NULL, '0987801518', 'hanganhd@gmail.com', '0928646289', '27/08/2020', 'Nam', '41 nguyen thi minh khai', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2d85e4dca714dd72af649981648ea702', '0', NULL, NULL, '1', NULL, NULL, NULL),
(18, 'Mộc Trà', NULL, '0976853458', NULL, NULL, '11/04/1988', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'b3567a2441d1a8da3aa4ff19fcbfbcbc', '0', NULL, NULL, '1', NULL, NULL, NULL),
(19, 'Mộc Trà', NULL, '0938913888', NULL, NULL, '', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'f783050faa4fe1ed89ec20e63c0e1ef2', '0', NULL, NULL, '1', NULL, NULL, NULL),
(20, 'Mộc Trà', NULL, '0945911481', NULL, NULL, '26/03/1975', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2d9ec3f11d9562c10c6d99fe7bc511c9', '0', NULL, NULL, '1', NULL, NULL, NULL),
(21, 'Mộc Trà', NULL, '0937609689', NULL, NULL, '05/09/1987', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2046e8369748058211bcef4bc9abb9d6', '0', NULL, NULL, '1', NULL, NULL, NULL),
(22, 'An My', NULL, '0907023628', 'phu2212@gmail.com', '0938615437', '05/08/2020', 'Nữ', '1289/5b Vuon Lai, An Phu Dong, Quan 12, HCM', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4297f44b13955235245b2497399d7a93', '0', NULL, NULL, '1', NULL, NULL, NULL),
(23, 'Mộc Trà', NULL, '0988609088', NULL, NULL, '02/08/2020', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'f8a74b6e7a9a97a4daf2f4ae573d0e3e', '0', NULL, NULL, '1', NULL, NULL, NULL),
(24, 'TRẦN HOÀNG PHƯƠNG KHÁNH', NULL, '0901310773', 'thpkhanh@gmail.com', '0901310773', '18/07/1973', 'Nữ', 'Unlock B4, Chung cư Đức Khải, Nguyễn Lương Bằng nối dài, Phường Phú Mỹ, Q77', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2d7e70dacfcc96b384f4457f8a7f9142', '0', NULL, NULL, '1', NULL, NULL, NULL),
(25, 'Jasmine', NULL, '0918097575', 'thaihalinks@yahoo.com', '0918097575', '', 'Nữ', '41 nguyen thi minh khai', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'd61c3c823f2f1e4f6a1598268901646e', '0', NULL, NULL, '1', NULL, NULL, NULL),
(26, 'Mộc Trà', NULL, '0912413077 ', NULL, NULL, '09/02/2000', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '134674c2bf3c7d5914a0e07cb24c6b8d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(27, 'Mộc Trà', NULL, '0979018169', NULL, NULL, '', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1fdc29765127fc3bd4d847f03ae039dc', '0', NULL, NULL, '1', NULL, NULL, NULL),
(28, 'Đỗ Thùy Hương', NULL, '0938338068', 'dothuyhuong@gmail.com', '0938338068', '08/03/2020', 'Nữ', 'Chung cư Hoàng Anh Gia Lai 1, số 357 Lê Văn Lương, phường Tân Quy, quận 7', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '61a0f08255ddcc7f1d75f378afd5e86c', '0', NULL, NULL, '1', NULL, NULL, NULL),
(29, 'Mộc Trà', NULL, '0336514919', NULL, NULL, '1/4/1989', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'fe322061f0aba9fdaeefc21dc0f290a8', '0', NULL, NULL, '1', NULL, NULL, NULL),
(30, 'Mộc Trà', NULL, '0908663830', 'binhnguyet1006@yahoo.com.vn', '0914828349', '26/02/1983', 'Nữ', '13 Đường 12B, P.Bình Trị Đông B, Q.Bình Tân', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '65621afd7b722bf600fb281a1b04fee9', '0', NULL, NULL, '1', NULL, NULL, NULL),
(31, 'Mộc Trà', NULL, '0975.212.020 ', NULL, NULL, '', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '9fc2b8d6a74f2caf32c3cf7bf4430128', '0', NULL, NULL, '1', NULL, NULL, NULL),
(32, 'Mộc Trà', NULL, '0944961510', NULL, NULL, '15/10/1996', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8052a0fa66feb254954a2b6b2bf1b4aa', '0', NULL, NULL, '1', NULL, NULL, NULL),
(51, 'Nguyễn Ngọc Anh Tuấn', NULL, '123456789', 'tuan.nguyen90@nhapchuot.net', '123456789', '', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '96e79218965eb72c92a549dd5a330112', '0', NULL, NULL, '1', NULL, NULL, NULL),
(34, 'Mộc Trà', NULL, '0916920045', NULL, NULL, '12/6/1989', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'c0760bc3b9c9e8afa3a295993ef0041d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(35, 'Mộc Trà', NULL, '0936880679', NULL, NULL, '20/02/1993', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '990560269082162363ce8ec7bd111da2', '0', NULL, NULL, '1', NULL, NULL, NULL),
(36, 'Trương Nhạn', NULL, '0908255493', 'truongthinhan27@gmail.com', '098255493', '27/09/1963', 'Nữ', 'Saigon mia, đường 9a KDC Trung Sơn, Bình Hưng, Bình chánh', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'ec698a2b92ae8a4419ce83bae83e9ef1', '0', NULL, NULL, '1', NULL, NULL, NULL),
(37, 'Tuyen Nguyen Black', NULL, '0938580177', 'maiphuong.tranthi92@gmail.com', '0938580177', '06/01/1992', 'Nữ', '3C Tôn Đức Thắng, P. Bến Nghé, Quận 1', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '14bcbe7d9c720e1bb4e52ab10b447fde', '0', NULL, NULL, '1', NULL, NULL, NULL),
(38, 'Bắp Thảo', NULL, '0359080998', 'huynhhuynhchi11@gmail.com', '0359080998', '20/02/1993', 'Nữ', '335 nam ky khoi nghia, P.7, Q.3', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '88a9445db49ffac8bfa33c7ad3441a2d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(39, 'Thao Pham', NULL, NULL, 'thaodoan.pham2015@gmail.com', '0773123668', NULL, NULL, '194 PAstuer p6 q3', 'Pass là ecK3FdcW', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1e3efb76ae09d1e23a3b0389e0ae9fde', '0', NULL, NULL, '1', NULL, NULL, NULL),
(40, 'Mộc Trà', NULL, '0905901211', NULL, NULL, '01/11/1992', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '40ca79303550b37d8c9442c7a7baa384', '0', NULL, NULL, '1', NULL, NULL, NULL),
(41, 'Mộc Trà', NULL, '0908938234', NULL, NULL, '13/12/1988', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8bca5595924928177031c3e210cb61d4', '0', NULL, NULL, '1', NULL, NULL, NULL),
(42, 'Xu DeXuong', NULL, NULL, 'xudangyeu@gmail.com', '1234567890', NULL, NULL, '41, NTMK,Q.1', 'Pass là cmyZmYIW', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '477d10a9fd6f27178a6b3a17f45070a8', '0', NULL, NULL, '1', NULL, NULL, NULL),
(43, 'Oanh Kieu', NULL, NULL, 'oanhkieu1990k@gmail.com', NULL, NULL, NULL, NULL, 'Pass là V2SwC2GJ', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'e50e6e1f2dad5bc695849e68316d3b9a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(44, 'Thị Tuyết Nhung Trương', NULL, NULL, 'tuyetnhung8585@gmail.com', '0346967130', NULL, NULL, 'Tòa nhà Pico Plaza, Số 20 Cộng Hòa Phường 12 Quận Tân Bình', 'Pass là MonxsInj', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '382246f28b1195747aedcf2dbfd57b19', '0', NULL, NULL, '1', NULL, NULL, NULL),
(45, 'TÂM NGUYỄN', NULL, NULL, 'ngtam.skd@gmail.com', '0362828323', NULL, NULL, '213/14 Đường nguyễn gia trí, phường 25, quận bình thạnh', 'Pass là 7T4279NX', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'e914c9ada78f6eb0bdf51ae3b61f187c', '0', NULL, NULL, '1', NULL, NULL, NULL),
(46, 'Nguyễn Thị Oanh', NULL, '0937978023', 'thioanh89@gmai.com', '0937978023', '22/09/1989', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4bd920021fcd700632a0e1b2760dcc17', '0', NULL, NULL, '1', NULL, NULL, NULL),
(47, 'Giang Nguyễn', NULL, NULL, 'huonggiangsctv@gmail.com', '0795391879', NULL, NULL, '933/14 Lò Gốm, Phường 8, Quận 6', 'Pass là mf6sOTKZ', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '430c7536777e1b7b6c7975706f52ab6a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(48, 'Lương Nguyễn Vân Anh', NULL, '0939666447', 'vananh.ecko@gmail.com', '0939666447', '23/10/1993', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4b0d9a3b42ee298130b2a89ddde7bcb0', '0', NULL, NULL, '1', NULL, NULL, NULL),
(49, 'Thái Tuyết Quyên', NULL, '0909721416', 'tuyetquyen.thai@gmail.com', '0909721416', '09/08/2020', 'Nữ', '778k/2 Nguyễn Kiệm, Phường 4, Quận Phú Nhuận, HCM', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '761db2f5cec832e5397ac9eee72c9e51', '0', NULL, NULL, '1', NULL, NULL, NULL),
(77, 'Nguyen Ngoc Thinh', NULL, '0964373778', 'nnthinh92@gmail.com', '0964373778', '13/09/1992', 'Nam', '171 Nguyen Ba Tong F11 QTB', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '10880618b37c359fdd7133aaf517a924', '0', NULL, NULL, '1', NULL, NULL, NULL),
(50, 'Van Than', NULL, '0912930590', 'vanbk31@gmail.com', '0912930590', '24/04/1990', 'Nữ', '6D Trường Sa, Phường 17, Quận Bình Thanh', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '40c5928e6552e56dbf8f2c3027ff2619', '0', NULL, NULL, '1', NULL, NULL, NULL),
(52, 'Nguyen Ngan', NULL, NULL, 'bina151184@gmail.com', '0938300501', NULL, NULL, 'so 41 Nguyen Thi Minh Khai P Ben Nghe Q1', 'Pass là uK5xJUrP', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'cb0c70cf8d1a8b1952061a552a2d6653', '0', NULL, NULL, '1', NULL, NULL, NULL),
(53, 'Yve tte', NULL, NULL, 'frozenyaourt@gmail.com', NULL, NULL, NULL, NULL, 'Pass là Q0boq5st', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3d340c445e7a0364125014e8bfcaea9d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(54, 'Nhung Huynh', NULL, NULL, 'huynh1188@gmail.com', '0918864008', NULL, NULL, '169a đường 23 tháng 8', 'Pass là hRitFRgq', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '0c4bae53c2371cd2487918a4673f3e0b', '0', NULL, NULL, '1', NULL, NULL, NULL),
(55, 'Dương Quỳnh Thanh Trúc', NULL, NULL, 'nh0klunbr@gmail.com', NULL, NULL, NULL, NULL, 'Pass là fin77AyM', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'd5cf8859ad5ec7d2e0647fcad80c1ccb', '0', NULL, NULL, '1', NULL, NULL, NULL),
(56, 'Mai Đặng', NULL, NULL, 'maidang.lx@gmail.com', NULL, NULL, NULL, NULL, 'Pass là JZNbQkLM', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'bbf1f99bfeb8803a9c148873057f9e19', '0', NULL, NULL, '1', NULL, NULL, NULL),
(59, 'Châu', NULL, '0904802080', 'chau.ntq@gmail.com', '0904802080', '', 'Nữ', '23/6A Nơ Trang Long, phường 7, quận Bình Thạnh', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2eaeff5df121366afa87cd24d1b3c4c7', '0', NULL, NULL, '1', NULL, NULL, NULL),
(58, 'Nguyễn T. Ngọc Tuyền', NULL, NULL, 'thienthan_tihon373@yahoo.com', NULL, NULL, NULL, NULL, 'Pass là 7orYLHn0', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'c1e50726b249a6638196cbca7f6e5b09', '0', NULL, NULL, '1', NULL, NULL, NULL),
(60, 'Lê Thu Hằng', NULL, '0903019013', 'lethuhang170185@gmail.com', '0903019013', '17/01/1985', 'Nữ', '3/6/10 Đường 49, Phường Hiệp Bình Chánh, Quận Thủ Đức', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'cd4a49aa268c09d22f3f11c9680552c0', '0', NULL, NULL, '1', NULL, NULL, NULL),
(61, 'Lê Thị Ngọc Trâm', NULL, '0907681995', 'chamm0608@gmail.com', '0907681995', '06/08/2020', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '7874825b25269c7e24980edc82befe76', '0', NULL, NULL, '1', NULL, NULL, NULL),
(62, 'Nguyễn Hữu Trí', NULL, '0979184567', 'huutribds@gmail.com', '0979184567', '', 'Nam', '13 Đặng Tất, F Tân Định, Q 1', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '906786ba87ff8cfa6d370be47d81c414', '0', NULL, NULL, '1', NULL, NULL, NULL),
(63, 'Nguyễn Thị Thuỷ Tiên ', NULL, '0942519729', 'thuytien.vanus@yahoo.com', '0942519729', '03/05/2020', 'Nữ', 'Văn phòng khai thác a1a2, công ty tnhh tỷ xuân khu công nghiệp hoà phú, long hồ, vĩnh long', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '0b3b04cc0b2a8aea7f174cb89d0c3d62', '0', NULL, NULL, '1', NULL, NULL, NULL),
(64, 'Diệp Cẩm Toàn', NULL, '0939442723', 'toandiep456@gmail.com', '0939442723', '25/11/2020', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '404eef298135aeda93d1a934a43acf15', '0', NULL, NULL, '1', NULL, NULL, NULL),
(65, 'Hoàng thuỳ Vân', NULL, '0901464937', 'hoangthuyvan201091@gmail.com', '0901464937', '20/10/1991', 'Nữ', 'dãy nhà N9, hẻm 40, đường Lê Hồng Phong, phường Trà An, quận Bình Thuỷ, Tp Cần Thơ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'e6ce099f0a32c6f659f50df54abd5a5d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(66, 'Lien Nguyen', NULL, NULL, 'dieulien.nguyen2301@gmail.com', NULL, NULL, NULL, NULL, 'Pass là vxizEQ0Q', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '93132964ceb0f1894af392382d315107', '0', NULL, NULL, '1', NULL, NULL, NULL),
(67, 'Nguyễn Lê Kim Trúc', NULL, '0906804230', 'kimtruc6411@gmail.com', '0906804230', '21/11/2003', 'Nữ', 'C14A cư xá Phú Lâm B phường 13 quận 6', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '121ed7a92c1159678017882ca7527062', '0', NULL, NULL, '1', NULL, NULL, NULL),
(68, 'Nguyễn Văn Hoạt', NULL, '0889777796', 'ngvanhoat@gmail.com', '0889777796', '11/10/1988', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'd5257415f87ede9a97002a7ee27fcc5d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(69, 'Huỳnh Nhung', NULL, NULL, 'huynhdoantuyetnhung@gmail.com', '0906043232', NULL, NULL, '41 Nguyễn Thị Minh Khai, Phường Bến Nghé, Quận 1', 'Pass là 8YjO9Vq3', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3112e6661ae77b3d5fb2bf1e5d2cd14e', '0', NULL, NULL, '1', NULL, NULL, NULL),
(70, 'Đàm Thị Hương', NULL, '0905493667', 'huongdam1235@gmail.com', '0905493667', '19/05/1986', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'c2fdc30185b4bbf480873515c40236c1', '0', NULL, NULL, '1', NULL, NULL, NULL),
(71, 'Vũ Thư', NULL, '0933863939', 'minhthukgiang@yahoo.com', '0933863939', '', 'Nam', '100 Đông Thành, Thạnh Đông A, Tân Hiệp', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'd636292eeba865708ff9b63b9d2aa641', '0', NULL, NULL, '1', NULL, NULL, NULL),
(72, 'Nhi Huynh', NULL, NULL, 'nhihuynh2007@gmail.com', '0852058888', NULL, NULL, '130 đường 23/8, phường 7', 'Pass là 3y7O2owg', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '70c66df9e69d05b90bf704fa96a20425', '0', NULL, NULL, '1', NULL, NULL, NULL),
(73, 'Khanh Trần', NULL, NULL, 'pkhanh1309@gmail.com', '0868093106', NULL, NULL, '231/64/10 bình tiên f8 quận 6 tphcm', 'Pass là icMg6ZBI', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '82f929c4f697e20c65e757d29944e350', '0', NULL, NULL, '1', NULL, NULL, NULL),
(74, 'Nguyễn Như Thảo', NULL, '0937944722', 'cindy14081408@gmail.com', '0937944722', '08/06/1983', 'Nữ', 'Số 1 cống lở p15 tân bình ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '37b0c10dbfba129d621d3ffa199cd153', '0', NULL, NULL, '1', NULL, NULL, NULL),
(75, 'Hồ Thị Mỹ Lệ', NULL, '0905106110', 'lemmyht@gmail.com', '0905106110', '25', 'Nam', '212B/D40 ( Quán Cafe khói)  Nguyễn Trãi- Phường Nguyễn cư trinh - Quận 1 ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '61a54a0b74ea5807621bfe1dad1ea1e0', '0', NULL, NULL, '1', NULL, NULL, NULL),
(76, 'Thuỷ Huỳnh', NULL, NULL, 'hdtt83@yahoo.com', '0911887755', NULL, NULL, '7 Đồng Khởi, Phường Bến Nghé, Quận 1', 'Pass là W50ANJq8', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'f90aa800cab1f3a780d2d8b4d61f8dd4', '0', NULL, NULL, '1', NULL, NULL, NULL),
(78, 'Hoang Hương Quỳnh', NULL, '0912735678', 'vuhoangnhatminh@gmail.com', '0912735678', '27/06/1982', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '0b5a1bf80fad499d0dd25d476d354d26', '0', NULL, NULL, '1', NULL, NULL, NULL),
(79, 'Lý hoà ', NULL, '0918929252', 'gia_hoa_ly@yahoo.com.vn', '0918929252', '03/05/1986', 'Nam', '68 ly chiêu hoàng f10 q6', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'dd3fe3467409e6f745b0eaa4b6e27efd', '0', NULL, NULL, '1', NULL, NULL, NULL),
(80, 'Hồ Thị Tường Vi', NULL, '0909566330', 'tuongvitcnh@gmail.com', '0909566330', '11/12/1988', 'Nữ', '39 Lê Duẩn, Phường Bến Nghé, Quận 1', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4da9ff97aca82e32a6693f3da01dbdf2', '0', NULL, NULL, '1', NULL, NULL, NULL),
(81, 'Khải Yến', NULL, '0938612634', 'yyen5525@gmail.com.vn', '0938612634', '26/10/1995', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '37abcf5d9774c44368069bdd0705016e', '0', NULL, NULL, '1', NULL, NULL, NULL),
(82, 'Lê Thùy Dương', NULL, '0907329741', 'thuyduongle24@gmail.com', '0907329741', '08/08/1982', 'Nữ', 'Công ty TNHH Giày Fuluh', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '6dc0bd72cac11c94e699574f9ae3c25b', '0', NULL, NULL, '1', NULL, NULL, NULL),
(83, 'Trần Thị Thuý Phượng', NULL, '0986689683', 'thuyphuongsnvt@gmai.com', '0986689683', '25/01/2020', 'Nữ', '33, đường 30/4, phường 9, thành Phố Vũng Tàu', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'f9ac4ec2540c74f83504f2b14d3eaeb9', '0', NULL, NULL, '1', NULL, NULL, NULL),
(84, 'Nguyễn Thái Phương Trà', NULL, NULL, 'phuongtra176@gmail.com', '0911748027', NULL, NULL, 'quoc lo 80, mong tho, chau thanh', 'Pass là C7BNIcdE', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '63e0410cab49b20babc15e9a45e101ad', '0', NULL, NULL, '1', NULL, NULL, NULL),
(85, 'Mai hiền', NULL, '0359031942', 'maithithuhien.9x@gmail.com', '0359031942', '25/01/1993', 'Nữ', '55/27 lê thị hồng gấm phường nguyễn thái bình', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3af780d7231fd6aa32bf0df920d05e72', '0', NULL, NULL, '1', NULL, NULL, NULL),
(86, 'HỒ NGỌC BẢO ANH', NULL, NULL, 'anhthu230996@gmail.com', '0394414006', NULL, NULL, '334 dương bá trạc p1 quận 8', 'Pass là U6Zv1o3j', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'c78030bbf591c593c08b1f71d0501a59', '0', NULL, NULL, '1', NULL, NULL, NULL),
(87, 'Hân', NULL, NULL, 'co_be_1992@yahoo.com', NULL, NULL, NULL, NULL, 'Pass là eIya1ifk', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'fc17691da563ee06b00426e6649db205', '0', NULL, NULL, '1', NULL, NULL, NULL),
(88, 'Phùng Thanh Thủy', NULL, '0915735282', 'thuypt229@gmail.com', '0915735282', '22/09/1976', 'Nữ', '86 Lê Văn Sỹ, P.11, Phú Nhuận,', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '645ac3bc4c41bf806de3048200bcc3db', '0', NULL, NULL, '1', NULL, NULL, NULL),
(89, 'Tô Châu ', NULL, '0908353711', 'tokieuchau89@gmail.com', '0908353711', '15/07/1989', 'Nam', 'Số 26 đường 8 phường Tân Quy, Quận 7, Tp HCM ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '70a78e606bc28d98f217525dafe74da3', '0', NULL, NULL, '1', NULL, NULL, NULL),
(90, 'Nguyễn minh lâm', NULL, '0918419453', 'minhlam234@gmail.com', '0918419453', '', 'Nam', '47/92 Bùi Đình Túy P24 Q Bình Thạnh', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '513c31e81c8c5cb9947dc892db1e6271', '0', NULL, NULL, '1', NULL, NULL, NULL),
(91, 'Ngoc Nguyen', NULL, NULL, 'ntkngoc.it@gmail.com', '0944623639', NULL, NULL, 'Tòa nhà STS, 11B đại lộ Hòa Bình, Phường Tân An, Quận Ninh Kiều, TP. Cần Thơ', 'Pass là Wp2Fg6vN', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'd9d74817ec69d278fc77e96247495750', '0', NULL, NULL, '1', NULL, NULL, NULL),
(92, 'kieudiem nguyenthi', NULL, NULL, 'ngthikieudiem@gmail.com', '0909740944', NULL, NULL, 'Chung cư Jamila Khang Điền, đường Song Hành, P.Phú Hữu, Quận 9, Tp.HCM', 'Pass là rLFHg6T7', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'c4d5f7cc6bb63c126715c2271bd60c93', '0', NULL, NULL, '1', NULL, NULL, NULL),
(93, 'Ngoc Nguyen', NULL, '0914543548', 'nhienngoc0511@gmail.com', '0914543548', '05/08/2020', 'Nữ', 'Chung cư bàu cát 2,Lô M,Ni Sư Huỳnh Liên,phường 10,quận Tân Bình.', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1b7a105d8a795ba807d6b43ead743480', '0', NULL, NULL, '1', NULL, NULL, NULL),
(94, 'Phòng Kinh Doanh', NULL, NULL, 'kinhdoanh.hoangvuonggia@gmail.com', '0366906285', NULL, NULL, '90 út tịch phường 04 tân bình tphcm', 'Pass là sxMVris5', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'ba3b9dc29895b62f8a1bd8153d7e1a95', '0', NULL, NULL, '1', NULL, NULL, NULL),
(95, 'Ngọc Phương', NULL, '0914919848', 'ttruc362@gmail.com', '0914919848', '11/08/2000', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'e10adc3949ba59abbe56e057f20f883e', '0', NULL, NULL, '1', NULL, NULL, NULL),
(96, 'Vo Thi Thanh Loan', NULL, '0818170380', 'giaphuct@yahoo.com', '0818170380', '07/08/1987', 'Nữ', 'Block B chung cu Nam Phuc, duong C, Tan Phu, Q7', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '0fdded2e594a1545900b05c4c6bf0a4a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(97, 'Ta Vy', NULL, '0828315298', 'tahoangthaovy@gmail.com', '0828315298', '15/02/1997', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'e91c780ba6b69c1a3e7e0632e015a021', '0', NULL, NULL, '1', NULL, NULL, NULL),
(98, 'sam sam', NULL, NULL, 'lactranh91@gmail.com', NULL, NULL, NULL, NULL, 'Pass là TUtkfpJO', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '829507f6141cb26e07ccf409a88e4f86', '0', NULL, NULL, '1', NULL, NULL, NULL),
(99, 'Vu duc ', NULL, '0983569999', 'ducvu3585@gmail.com', '0983569999', '', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '20ab32bf2eb659902f1aeb934da49df6', '0', NULL, NULL, '1', NULL, NULL, NULL),
(100, 'Nguyễn Thị Thuý Hằng', NULL, '0909390150', 'hangbiu83@yahoo.com', '0909390150', '08/01/1984', 'Nữ', '37 nguyễn mạnh Hùng, phường Long Toàn, tp bà rịa', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'b43ce67c7299636a7983eb04440da0af', '0', NULL, NULL, '1', NULL, NULL, NULL),
(101, 'Thach Toan An', NULL, '0903509668', 'shian9668@molgroup.com', '0903509668', '14/04/1973', 'Nam', '115 Nguyễn Huệ, quận 1', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '06c7402d41ddfff3495e02a7c7eff684', '0', NULL, NULL, '1', NULL, NULL, NULL),
(102, 'Tuan Viet Tran', NULL, NULL, 'tuanviettran@gmail.com', '0989050284', NULL, NULL, 'Tòa nhà VCCI, 9 Đào Duy Anh, Đống Đa', 'Pass là Ba8GtAA9', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4b557b13e6913432be5432e685606c39', '0', NULL, NULL, '1', NULL, NULL, NULL),
(103, 'Huỳnh Đinh', NULL, NULL, 'dinhhuynh06100@gmail.com', '0707447676', NULL, NULL, 'q1', 'Pass là qmzbK89w', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '030f4f5609301f022a7b0cbfe275c884', '0', NULL, NULL, '1', NULL, NULL, NULL),
(104, 'Trần Phú Quí', NULL, '0977805837', 'quitran260994@gmail.com', '0977805837', '26/09/1994', 'Nam', '10a34 Đào Trinh Nhất, Linh Tây, Thủ Đức', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '275faa19aa9a44daf9ffb40d4bc0fa4a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(105, 'Thao Nguyen Huynh', NULL, NULL, 'tnguyen.h2tn@gmail.com', '0938352263', NULL, NULL, '15/28 Đoàn Như Hài, phường 12, quận 4', 'Pass là RWewRTHH', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '9eb48547e25fd7352526ffaed7fb9124', '0', NULL, NULL, '1', NULL, NULL, NULL),
(106, 'mạnh hoàng', NULL, NULL, 'manhmin1812@gmail.com', NULL, NULL, NULL, NULL, 'Pass là ceJshPvB', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '78f918658569e915d4445705cad6f84b', '0', NULL, NULL, '1', NULL, NULL, NULL),
(107, 'Phan Thị Hà', NULL, '0902766590', 'phanha09071989@gmail.com', '0902766590', '', 'Nam', '510 Kinh Dương Vương', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '55bd27414a41ba3e070b9e399321f330', '0', NULL, NULL, '1', NULL, NULL, NULL),
(108, 'TU', NULL, '0918033821', 'lvientu@yahoo.com', '0918033821', '20/11/1985', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'ef86c30b7d297c698aab61b4e710c8a3', '0', NULL, NULL, '1', NULL, NULL, NULL),
(109, 'Dung Ngo Hoang', NULL, NULL, 'hoangdung81189@gmail.com', '0988291595', NULL, NULL, '625B đường CMT8 P15 Q10', 'Pass là 97oFxmBQ', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '5082aaefcbbe933ca4fa60e940afa9cc', '0', NULL, NULL, '1', NULL, NULL, NULL),
(110, 'Lê Thị Minh Hải', NULL, NULL, 'hai.ltm1988@gmail.com', '0902479500', NULL, NULL, '41 Nguyễn Thị Minh Khai, Q1', 'Pass là cwGjE00X', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '658f22c47b66a3f2970a082cf8b9e410', '0', NULL, NULL, '1', NULL, NULL, NULL),
(111, 'Bùi Minh Mai Phương', NULL, '0909653536', 'maiphuong984@gmail.com', '0909653536', '17/12/1984', 'Nữ', 'Chung cư Ehome 3, Block A4, 103 Hồ Học Lãm, Q. Bình Tân', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '62602cbda2762f47df287a2ac430a2bd', '0', NULL, NULL, '1', NULL, NULL, NULL),
(112, 'Huỳnh thị liễu', NULL, '0988868055', 'lieuqtkd@gmail.com', '0988868055', '', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8acaae0d35db4e93ce1988bcf6aa3d6b', '0', NULL, NULL, '1', NULL, NULL, NULL),
(113, 'Trần Minh Trí', NULL, '0902347999', 'baottran75@gmail.com', '0902347999', '08/05/2020', 'Nam', '59 Ngô Tất Tố, F21, Binh Thạnh, ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'ff83e677cc4d64fef4e1bbc1a5aa390b', '0', NULL, NULL, '1', NULL, NULL, NULL),
(114, 'Jady Le', NULL, '0903392999', 'ngocnice75@yahoo.com', '0903392999', '', 'Nữ', '15C dang dung quan 1', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4a829b214bf8b90622043893268000af', '0', NULL, NULL, '1', NULL, NULL, NULL),
(115, 'Phạm Chí THanh', NULL, '0902673435', 'phamchithanh289@gmail.com', '0902673435', '24/09/2020', 'Nam', 'Tòa nhà Trung Nam, 7A/68 Thành Thái, P.14, Q.10', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'c8197c78625368d4c4c62c516c82e533', '0', NULL, NULL, '1', NULL, NULL, NULL),
(116, 'Lê Trường An', NULL, '0394648415', 'minhdat30110606@gmail.com', '0394648415', '24/09/1993', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8cf4d5381c64e1715a3e6d1ee3b00d41', '0', NULL, NULL, '1', NULL, NULL, NULL),
(117, 'Trần Hồng Nhật', NULL, '0914156250', 'tran.hongnhat@gmail.com', '0914156250', '17/07/1950', 'Nam', '606/38/18 Quốc Lộ 13, Phường Hiệp Bình Phước, Quận Thủ Đức', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'f6f843167374b40108d6141a02145ce6', '0', NULL, NULL, '1', NULL, NULL, NULL),
(118, 'NGUYEN THI LOAN', NULL, '0972405651', 'nguyenloanld@gmail.com', '0972405651', '12/03/1987', 'Nữ', '46D/7 Gò Cát, Phú Hữu, Q9', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '375f6102438a4fd69ab4800a6e2274d1', '0', NULL, NULL, '1', NULL, NULL, NULL),
(119, 'Khuong Le', NULL, NULL, 'ngohuudat@gmail.com', NULL, NULL, NULL, NULL, 'Pass là SwQonTS7', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3046ec6d0b6a17fe3ce2dd5021a48f08', '0', NULL, NULL, '1', NULL, NULL, NULL),
(120, 'Dũng Đỗ', NULL, NULL, 'dung23993@gmail.com', NULL, NULL, NULL, NULL, 'Pass là KdB2lUWC', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8436d566299c4bc2d91ce1eb473ba58e', '0', NULL, NULL, '1', NULL, NULL, NULL),
(121, 'Trang Lê Thị Quỳnh', NULL, NULL, 'trangltq@acbs.com.vn', '0918121424', NULL, NULL, '107N Trương Định P6 Q3 TPHCM', 'Pass là EbhJrQn0', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'f3b7661c6d9c2d8e4b100325c7a9e9d0', '0', NULL, NULL, '1', NULL, NULL, NULL),
(122, 'Chau van thao', NULL, '0931019895', 'chau van thao2019@gamail.com', '0931019895', '09/08/2020', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '84017fb8fe6278fa1d442923f6ec0e05', '0', NULL, NULL, '1', NULL, NULL, NULL),
(123, 'Jena Tran', NULL, NULL, 'tapcanbinhyolo@yahoo.com', '0589216501', NULL, NULL, '72/10 QL22, Xã Tân Thới Nhì, Huyện Hóc Môn, TP. Hồ Chí Minh.', 'Pass là Csvkc3Sf', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3f76b618fb93aaa0550b32853d25a78a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(124, 'Doan pham thao lan', NULL, '0989006662', 'thaoland@yahoo.com', '0989006662', '', 'Nam', '6 đường 6b khu dân cư trung sơn xã bình hưng huyện bình chánh', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '795b45968966caa69f16449acc63dca5', '0', NULL, NULL, '1', NULL, NULL, NULL),
(125, 'Trang', NULL, '0914300567', 'doantrang0567@gmail.com', '0914300567', '', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '59701ec43c6d0a7ea9c25971205c540f', '0', NULL, NULL, '1', NULL, NULL, NULL),
(126, 'An Thuỳ Trần', NULL, NULL, 'anthytt@gmail.com', '0986782828', NULL, NULL, '69D Hùng Vương, phường 5, thành phố Bến Tre', 'Pass là q2wfR0by', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'd3de74567fae9446b936f882fbfbaa46', '0', NULL, NULL, '1', NULL, NULL, NULL),
(127, 'ĐỖ THỊ MINH YẾN', NULL, '0917881735', 'dominhyen85@gmail.com', '0917881735', '04/09/2020', 'Nữ', 'Số 20, đại lộ Độc Lập khu công nghiệp Visip 1, Thuận An, Bình Dương', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8c94fabc38f7833cc67bf197255a5a4f', '0', NULL, NULL, '1', NULL, NULL, NULL),
(128, 'Mạc Nhi', NULL, '0848585983', 'Trivo366@gmail.com', '0848585983', '01/01/1999', 'Nữ', '35 Đỗ Thị Tâm p. Tân Quý q. Tân Phú', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '6e7d0a265c31d21b2e903ccaeaa5bb9b', '0', NULL, NULL, '1', NULL, NULL, NULL),
(129, 'Như Quỳnh Đoàn Ngọc', NULL, NULL, 'nhuquynh2105@gmail.com', '0705751507', NULL, NULL, 'số 21 đường 65 phương tân phong quận 7', 'Pass là 1xqZxs0k', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '296850098e6dc2db5e1ef3d68b4d2add', '0', NULL, NULL, '1', NULL, NULL, NULL),
(130, 'Nguyen Thi Le Duyen', NULL, '0903345151', 'ntleduyen@yahoo.com', '0903345151', '', 'Nam', '112 Xóm Chiếu Phường 14 Quận 4', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3c1898b390750bb41466f5e3c47e8d77', '0', NULL, NULL, '1', NULL, NULL, NULL),
(131, 'Nguyễn Thị Hồng', NULL, '0933391005', 'hongnguyen1310@gmail.com', '0933391005', '13/10/1985', 'Nữ', '41 Lê Duẩn , Phường Bến Nghé, Quận 1', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '35b8ac8f98039d6d383a135bc91d5a95', '0', NULL, NULL, '1', NULL, NULL, NULL),
(132, 'Lam ngoc bich thao', NULL, '0916430879', 'lamngocbichthao@gmail.com', '0916430879', '01/08/1981', 'Nữ', 'X1 Sunrise city. 27 Nguyễn Hữu Thọ. Q7. ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2d64527c287a02f5bd1bd841f55df7c5', '0', NULL, NULL, '1', NULL, NULL, NULL),
(133, 'TRẦN ĐÌNH THỨC', NULL, '0906761005', 'dinhthuctravel@gmail.com', '0906761005', '', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '786878f9297691ea3ee6b81e432b6bbc', '0', NULL, NULL, '1', NULL, NULL, NULL),
(134, 'Gia Linh Nguyễn Tấn', NULL, NULL, 'nguyentangialinh@gmail.com', '0938178043', NULL, NULL, '5-7 Nguyễn Thị Thập P Tân Hưng Q7', 'Pass là 3nHJr2Wb', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8d0ae0aabea656edb342d1870e413987', '0', NULL, NULL, '1', NULL, NULL, NULL),
(135, 'Trần Lê Hoàng Thảo', NULL, '0777912324', 'hoangthaoh2@gmail.com', '0777912324', '21/08/1994', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '520203ce3de1c40aa3bd49feed03837a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(136, 'Nguyetphung Trantrang', NULL, NULL, 'trantrangnguyetphung@gmail.com', '0383065703', NULL, NULL, '198 nguyễn thị minh khai phường 6 quận 3 ', 'Pass là 8snyhZD0', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '9a06b315136f1f1d4720a5f5c0e977c1', '0', NULL, NULL, '1', NULL, NULL, NULL),
(137, 'Trần Minh Khoa', NULL, NULL, 'minhkhoa96.bt@gmail.com', '0948311276', NULL, NULL, '41 Nguyễn Thị Minh Khai, Phường Bến Nghé, Quận 1', 'Pass là 4oVHBBXQ', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'bc0924323ab878f841c9a3bfcbce0bda', '0', NULL, NULL, '1', NULL, NULL, NULL),
(138, 'Nguyen Hoai Anh', NULL, '0938715479', 'nghoangan15@gmail.com', '0938715479', '', 'Nam', '76/7A Ấp Thống Nhất 2, Xã Tân Thới Nhì, Hóc Môn', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'ab10ce35ebe880bf5cba42244640f449', '0', NULL, NULL, '1', NULL, NULL, NULL),
(139, 'DiemThai', NULL, '0913203397', 'Thaidiem1805@gmail.com', '0913203397', '26/08/2020', 'Nữ', 'Block E2 chung cư Riverside,176 nguyễn lương bằng,phường tân phú,quận 7', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '08f0eabdcb77e5a6f640656bd144da72', '0', NULL, NULL, '1', NULL, NULL, NULL),
(140, 'Vũ Thị Hải Lý ', NULL, '0983876972', 'ly_vuhai@yahoo.com', '0983876972', '10/06/1971', 'Nữ', 'TK33/16-17 Nguyễn cảnh Chân, P.Cầu Kho, Q1.', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'c34f0ed35e066ab934068d6ea88c35ed', '0', NULL, NULL, '1', NULL, NULL, NULL),
(141, 'Đặng Liên', NULL, '0989253855', 'sohma.chan@gmail.com', '0989253855', '', 'Nam', '380/25 Lê Trọng Tấn, phường Tây Thạnh, quận Tân Phú, TP HCM', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3bfcf6fb1b4bdccdb472cf97d6e798de', '0', NULL, NULL, '1', NULL, NULL, NULL),
(142, 'June Nguyen ', NULL, '0918003544', 'junenguyen381989@gmail.com', '0918003544', '03/08/1989', 'Nữ', '41 Nguyen Thi Minh Khai, Ben Nghe Quan 1 ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '42a751ab42d6000e336aa0e7996d7456', '0', NULL, NULL, '1', NULL, NULL, NULL),
(143, 'Thiều Thị Thưởng', NULL, '0386893066', 'vanghaoquang_88@yahoo.com', '0386893066', '20/04/1988', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3f99720812d6b69a3c73de468f71caae', '0', NULL, NULL, '1', NULL, NULL, NULL),
(144, 'Thuỳ Linh', NULL, '0364978231', 'mirrorsanford@gmail.com', '0364978231', '', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '5eca70191a691beeb90c7f5752ef7a9d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(145, 'Thái Hồ', NULL, NULL, 'htl1910@gmail.com', NULL, NULL, NULL, NULL, 'Pass là S7JYyhIS', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '168accb2e759cc834d3095cbddaa9bf3', '0', NULL, NULL, '1', NULL, NULL, NULL),
(146, 'Lau Sally', NULL, NULL, 'wenyu88@hotmail.com', '0902809570', NULL, NULL, 'LockC Tòa nhà Hưng Phúc,Đường Nguyễn Lương Bằng,Phường Tân Phú. Quận 7.TP.HCM  C', 'Pass là NpuHCtkB', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '0d9a36d02fe88bc7261f600f12ba3fcf', '0', NULL, NULL, '1', NULL, NULL, NULL),
(147, 'Nguyễn Thị Tường An', NULL, '0903113962', 'tuongan4772@gmail.com', '0903113962', '04/07/1984', 'Nữ', 'Chung cư 1050, Số 4 Phan Chu Trinh, phường 12, quận Bình Thạnh ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'f7668cab65409cd357548748f2b9f618', '0', NULL, NULL, '1', NULL, NULL, NULL),
(148, 'Huê Đỗ', NULL, NULL, 'dongochue90@gmail.com', '0939276277', NULL, NULL, '196 NGUYỄN TRUNG TRỰC, DƯƠNG ĐÔNG, PHÚ QUỐC, KIÊN GIANG', 'Pass là 3v1qI3FK', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'ae2f61d2ead98c27cdbc4f8fe0d8f808', '0', NULL, NULL, '1', NULL, NULL, NULL),
(149, 'Tran Hélène', NULL, NULL, 'bisous246@gmail.com', NULL, NULL, NULL, NULL, 'Pass là Vyz72JDg', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '713e5992fdbe458d4fa8516d4c829b0f', '0', NULL, NULL, '1', NULL, NULL, NULL),
(150, 'Chi Trương Mỹ', NULL, NULL, 'truongmychi02@gmail.com', '0944026479 - Chi (0919606692 - Anh Thư)', NULL, NULL, 'Ấp 15, xã Nguyễn Phích, huyện U Minh, tỉnh Cà Mau (Công ty TNHH MTV Lâm Nghiệp U Minh Hạ - ngang cây xăng 21)', 'Pass là aSfGaE9p', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '293d094c5d1e631cb6174a87adcdb397', '0', NULL, NULL, '1', NULL, NULL, NULL),
(151, '123123', NULL, '1231231230', 'info@nhapchuot.net', '1231231230', '26/08/2020', 'Nam', '1123123123', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4297f44b13955235245b2497399d7a93', '0', NULL, NULL, '1', NULL, NULL, NULL),
(152, 'thi ngoc thanh nguyen', NULL, NULL, 'ngocthanh223@gmail.com', NULL, NULL, NULL, NULL, 'Pass là cRmJYoLt', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'b33e58a0234f9b09bf9841e2b26dcea0', '0', NULL, NULL, '1', NULL, NULL, NULL),
(153, 'Dương thị Thuý hằng', NULL, '0907623338', 'hangduong411@gmail.com', '0907623338', '04/02/1988', 'Nữ', '21,thị trấn kinh cùng phụng hiệp hậu Giang ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'a5f2dfe3ff0199750f89c3a2484667cb', '0', NULL, NULL, '1', NULL, NULL, NULL),
(154, 'ha phuong loan', NULL, '0912042017', 'loankg90@gmail.com', '0912042017', '18/09/1989', 'Nữ', '196 nguyễn trung trực thị trấn dương đông phú quốc kiên giang ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '910bb990bb4c8956817a6f87d940ca3a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(155, 'Quynh Nguyễn', NULL, NULL, 'phai56@yahoo.com', NULL, NULL, NULL, NULL, 'Pass là YWjOMvg9', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'bde1b372c126bb1cf5f8521c12a441e2', '0', NULL, NULL, '1', NULL, NULL, NULL),
(156, 'NGUYEN THI THAO QUYEN', NULL, '0937526584', 'nguyenthaoquyen311@gmail.com', '0937526584', '03/11/1993', 'Nữ', 'CENTEC TOWER 72-74 NGUYEN THI MINH KHAI F.6 Q.3', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'a2bae84d1f4af6e5e1dbf200924911ce', '0', NULL, NULL, '1', NULL, NULL, NULL),
(157, 'Anh Phuc', NULL, '0908585081', 'phuclhd@gmail.com', '0908585081', '22/12/1980', 'Nam', 'Toa nha ITD , SO 1, DUONG SANG TAO, PHUONG TAN THUAN DONG, Q7', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8c5014118677198fa0f66bf17ebf8c61', '0', NULL, NULL, '1', NULL, NULL, NULL),
(158, 'Võ Duy Bảo', NULL, 'Nhokcan3do', 'baovox555@gmail.com', '0855550123', '01/06/92', 'Nam', '262C Lê Văn Sỹ, Q3', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3e01827cd996d9624163231eab863ef5', '0', NULL, NULL, '1', NULL, NULL, NULL),
(159, 'Ng Hien', NULL, NULL, 'hiennguyenle2903@gmail.com', NULL, NULL, NULL, NULL, 'Pass là 7tDS4kGO', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '59317e055632cd9ed407b94edac32101', '0', NULL, NULL, '1', NULL, NULL, NULL),
(160, 'PHAN GIA HÂN', NULL, '0774086586', 'giahanpgh@gmail.com', '0774086586', '15/01/1994', 'Nữ', 'Cà phê Trúc Linh, đường Tôn Đức Thắng, phường Châu Văn Liêm, quận Ô Môn', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'b7d5246f650ed74a34b3d61c894c6b6a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(161, 'Trang Huynh', NULL, NULL, 'janehuynh679@gmail.com', NULL, NULL, NULL, NULL, 'Pass là zjrlnZFI', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'a0f57c5197abbb709f40c24bbf2030e0', '0', NULL, NULL, '1', NULL, NULL, NULL),
(162, 'Phương Thanh', NULL, NULL, 'tranthanhphuong303@gmail.com', NULL, NULL, NULL, NULL, 'Pass là xAu2AKIt', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '32a1c56f0b6d73fded650cde896cdc30', '0', NULL, NULL, '1', NULL, NULL, NULL),
(163, 'Phạm Thị Phượng', NULL, '0909309185', 'phamthiphuong1996@gmail.com', '0909309185', '25/09/1996', 'Nam', '592/48 Hồ Học Lãm Bình Trị Đông B Bình Tân ', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '9047dc241bc884a49feca2d0d1537959', '0', NULL, NULL, '1', NULL, NULL, NULL);
INSERT INTO `maa_tmember` (`nid`, `cname`, `ccode`, `cid`, `cemail`, `cphone`, `cbirthday`, `cgender`, `caddress`, `cnote`, `nstatus`, `ddate01`, `ddate02`, `nid_department`, `nid_package`, `cpurchase_date`, `cpurchase_time`, `cfirst_date_use`, `cfirst_time_use`, `cend_date_use`, `cend_time_use`, `csuspend`, `cuserid`, `cpassword`, `cisadmin`, `niduser01`, `niduser02`, `cstatus`, `cimage`, `ctime`, `calias`) VALUES
(164, 'Duyen Ly', NULL, '0906746006', 'duyenly3001@yahoo.com', '0906746006', '30/01/1990', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '6a2f24b745b07ac61cd802e68133e70c', '0', NULL, NULL, '1', NULL, NULL, NULL),
(165, 'Duy', NULL, '0396936597', 'vocadr@gmail.com', '0396936597', '02/01/1987', 'Nam', '238 Lê Duẩn, Trà Bá, Pleiku', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '760a8dea89df6735e38038ede5dee3f2', '0', NULL, NULL, '1', NULL, NULL, NULL),
(166, 'Van anh', NULL, '0908219002', 'trinhvananh@hotmail.com', '0908219002', '', 'Nữ', '290/1 Nam Kỳ Khởi Nghĩa phường 8 quận 3', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '5db3e2198e2c416b36bf47b1d13c0b92', '0', NULL, NULL, '1', NULL, NULL, NULL),
(167, 'Hồ Vũ', NULL, '0973517448', 'hqanhvu@gmail.com', '0973517448', '', 'Nam', 'TT Hien Mau Nhân Đạo 106 Thiên Phước Q Tân Bình', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'b01f7e5ce4b5194145705e396705cc8b', '0', NULL, NULL, '1', NULL, NULL, NULL),
(168, 'NGAN HA', NULL, '0911901699', 'nganha87.vnpt@gmail.com', '0911901699', '06/02/1987', 'Nữ', '998 Quang Trung P8 Quận Gò Vấp TP.HCM', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'a7de9a6f7cfd24651c0764c5c81f8487', '0', NULL, NULL, '1', NULL, NULL, NULL),
(169, 'Nguyễn Trần Thiên Kim', NULL, '0908524040', 'nguyen_tranthienkim@yahoo.com', '0908524040', '03/01/1999', 'Nữ', 'Số 1 Tổ 1 Khu Phố Khánh Hội, Phường Tân Phước Khánh Thị xã Tân Uyên', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2c7878d83020ab19b9ab95840d91ac21', '0', NULL, NULL, '1', NULL, NULL, NULL),
(170, 'Hau Tran', NULL, NULL, 'bin.sonic10@gmail.com', '0842896443', NULL, NULL, 'M4 - M5 Khu Công Nghiệp Kizuna 3', 'Pass là l4QsiuLk', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '3711bcbef0ddf37c31c15665c1dc206a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(171, 'Xuân Thơ Trần Thị', NULL, NULL, 'tranthixuantho@gmail.com', '0948202586', NULL, NULL, '90 Trần Hầu, Thành phố Hà Tiên', 'Pass là 1gSSQi80', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '5b18f6976a167beb731feed855c644d9', '0', NULL, NULL, '1', NULL, NULL, NULL),
(172, 'Nguyen ngoc quy', NULL, '0908951276', 'nguyenngocquy994994@gmail.com', '0908951276', '23/05/1994', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'd65f66a2649547deae37bf93a761276a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(173, 'NGUYEN NGOC ANH', NULL, '0908880835', 'anh.nguyen@anhnotes.com', '0908880835', '08/04/1983', 'Nam', '97 Võ Văn Tần, Phường 6, Quận 3', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '5d75ae6d221b349526d5ec8ffd04c76d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(174, 'le diem nhu', NULL, '0908066066', 'dn_v@hotmail.com', '0908066066', '22/07/1980', 'Nữ', '30 khu Chateau 2, duong so 22, phuong Tan phu quan 7', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '7d481e77823f38ddf6fd1886462e251b', '0', NULL, NULL, '1', NULL, NULL, NULL),
(175, 'Trần Hoàn Chương', NULL, '0915549433', 'chuongtranhoan@gmail.com', '0915549433', '09/08/1992', 'Nam', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'be66eddc9c42709673e619936f6db5e8', '0', NULL, NULL, '1', NULL, NULL, NULL),
(176, 'Co Hau', NULL, '0933485947', 'hautuanco@gmail.com', '0933485947', '', 'Nam', 'B52-53, Đường D6, Xã Phước Kiển, H.Nhà Bè', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'cae924a37f960aa3baf4bc14b13c79ea', '0', NULL, NULL, '1', NULL, NULL, NULL),
(177, 'Candy Loan', NULL, NULL, 'candyloan84@gmail.com', '0938646455', NULL, NULL, 'Lô TH 1A Khu chế xuất tân thuận , đường số 7 , quận 7', 'Pass là JiD1MMoZ', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4368190320df1165d27e0de93c9224b4', '0', NULL, NULL, '1', NULL, NULL, NULL),
(178, 'Trương Quỳnh Anh', NULL, '0985531135', 'mykienanh@yahoo.com.vn', '0985531135', '07/12/1985', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '194321d93b852e0217475ef6b9c64f79', '0', NULL, NULL, '1', NULL, NULL, NULL),
(179, 'Nguyen Hoa Binh', NULL, '0908015955', 'binhnguyen@yersinclinic.com', '0908015955', '', 'Nữ', '10 Trương Định, Phường 6, Quận 3', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'a5389fbdece6b4ebb83728d528c9b371', '0', NULL, NULL, '1', NULL, NULL, NULL),
(180, 'Chau', NULL, '0919965328', 'chaumanivuong@gmail.com', '0919965328', '', 'Nữ', NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1d98c2c77ad7b50af12eeca7f4733b04', '0', NULL, NULL, '1', NULL, NULL, NULL),
(181, 'UYEN LUONG', NULL, NULL, 'luonguyen461994@gmail.com', NULL, NULL, NULL, NULL, 'Pass là VkMjzdKp', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'ca811252f66bd13bd5e0ac3c89fe7867', '0', NULL, NULL, '1', NULL, NULL, NULL),
(182, 'Linh Nguyen', NULL, '0918989058', 'hoanglinh111314@gmail.com', '0918989058', '', 'Nam', 'Nhà 2b, Ngõ 314 Lạc Long Quân, P.Xuân La, Q.Tây Hồ, TP.Hà Nội', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'e2f613b7df0097c26bab4ee99089e07d', '0', NULL, NULL, '1', NULL, NULL, NULL),
(183, 'Lê Linh', NULL, NULL, 'letdieulinh@gmail.com', '0913806027', NULL, NULL, 'Thiên sơn plaza, 800 nguyễn văn linh, p tân phú, q7, tphcm', 'Pass là OLKNqrzO', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'd695efe388f9a8a4fda15404ec9b440a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(184, 'Phạm Đan', NULL, NULL, 'phamdannhu90@gmail.com', NULL, NULL, NULL, NULL, 'Pass là KBNDWuWF', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '4d6802ef97dcbe2ffc556a504e7bb5d4', '0', NULL, NULL, '1', NULL, NULL, NULL),
(185, 'Giang Đào', NULL, NULL, 'ginadao1512@gmail.com', NULL, NULL, NULL, NULL, 'Pass là UmdRAhIO', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'b83a93c695bc0294eab1f07cda7ced8e', '0', NULL, NULL, '1', NULL, NULL, NULL),
(186, 'Nguyễn Lan Anh', NULL, NULL, 'nguyen.lan.anh19@gmail.com', '0937099458', NULL, NULL, '2 cao thắng', 'Pass là ls53Arut', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '86e8e3d9d52db0fcfab0985249531a70', '0', NULL, NULL, '1', NULL, NULL, NULL),
(187, 'Kanex Thuy', NULL, NULL, 'nguyenthuydn88@gmail.com', NULL, NULL, NULL, NULL, 'Pass là iHV5919F', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'b427b6af8366f5266f0b698c16bed2a2', '0', NULL, NULL, '1', NULL, NULL, NULL),
(188, 'Faye Yang', NULL, NULL, 'fang82812@gmail.com', '0349706576', NULL, NULL, 'Công ty Bảo Thư D6, KDC Tân An Huy, Phước Kiển, Nhà Bè', 'Pass là tubp78tM', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '61ac4b81bc91614e3c0299a820cb68d3', '0', NULL, NULL, '1', NULL, NULL, NULL),
(189, '', NULL, NULL, '', NULL, NULL, NULL, NULL, 'Pass là aZs82vdV', 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '8a1e6a984063a09169fa50cb6b94d49a', '0', NULL, NULL, '1', NULL, NULL, NULL),
(190, NULL, NULL, NULL, 'tuan2509901@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'e10adc3949ba59abbe56e057f20f883e', '0', NULL, NULL, '1', NULL, '1658484309', NULL),
(191, NULL, NULL, NULL, 'tuan2509902@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'e10adc3949ba59abbe56e057f20f883e', '0', NULL, NULL, '1', NULL, '1658485600', 'tuanbio');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tmenu`
--

CREATE TABLE `maa_tmenu` (
  `nid` int(11) NOT NULL,
  `nid_parent` int(11) NOT NULL,
  `cmenu` varchar(50) NOT NULL,
  `cicon_name` varchar(100) DEFAULT NULL,
  `cnode` char(1) DEFAULT NULL,
  `csystem` char(1) DEFAULT '1',
  `nid_function` int(11) DEFAULT NULL,
  `cindex` varchar(50) NOT NULL DEFAULT '999',
  `cbasic` char(1) NOT NULL DEFAULT '1',
  `cnote` varchar(150) DEFAULT NULL,
  `cstatus` char(1) NOT NULL DEFAULT '1',
  `cdel` char(1) NOT NULL DEFAULT '0',
  `ddate01` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `niduser01` int(30) NOT NULL DEFAULT 1,
  `niduser02` int(30) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tmenu`
--

INSERT INTO `maa_tmenu` (`nid`, `nid_parent`, `cmenu`, `cicon_name`, `cnode`, `csystem`, `nid_function`, `cindex`, `cbasic`, `cnote`, `cstatus`, `cdel`, `ddate01`, `ddate02`, `niduser01`, `niduser02`) VALUES
(6, 2, 'mnu.DMNhanVien', 'class=\"icon-16-user_list\"', NULL, '1', 2, '0001.0001.0009.', '0', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(7, 4, 'mnu.PhanQUyenChucNang', 'class=\"icon-16-default\"', NULL, '1', 5, '0001.0005.0001.', '0', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(10, 1, 'mnu.DoiMatKhau', 'class=\"icon-16-user\"', NULL, '1', 8, '0001.0009.', '1', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(1, 1, 'mnu.HeThong', '', '', '1', 0, '0001.', '1', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(2, 1, 'mnu.DMHeThong', 'class=\"icon-16-config\"', '0', '1', 0, '0001.0001.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(8, 1, '', '', '', '1', 0, '0001.0008.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(4, 1, 'mnu.PhanQuyen', 'class=\"icon-16-user\"', '0', '1', 2, '0001.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(9, 1, 'mnu.DMConFig', 'class=\"icon-16-config\"', '', '1', 0, '0001.0008.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(11, 11, 'mnu.TinTuc', 'class=\"icon-16-notebook\"', '', '1', 0, '0002.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(12, 11, 'mnu.DMNhomTin', 'class=\"icon-16-notebook\"', '', '1', 11, '0002.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(13, 11, 'mnu.DMTintuc', 'class=\"icon-16-notebook\"', '', '1', 10, '0002.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(14, 14, 'mnu.SanPham', 'class=\"icon-16-default\"', '', '1', 0, '0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(15, 14, 'mnu.DMNhomChatLieu', 'class=\"icon-16-default\"', '', '1', 41, '0005.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(16, 14, 'mnu.DMNhomSanPham', 'class=\"icon-16-default\"', '', '1', 40, '0005.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(17, 14, 'mnu.DMSanPham', 'class=\"icon-16-default\"', '', '1', 42, '0005.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(18, 18, 'mnu.Order', 'class=\"icon-16-menu\"', '', '1', 0, '0010.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(19, 18, 'mnu.DMKhachHang', 'class=\"icon-16-menu\"', '', '1', 43, '0010.0005.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(20, 18, 'mnu.DMTrangThaiHoaDon', 'class=\"icon-16-menu\"', '', '1', 44, '0010.0010.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(21, 18, 'mnu.QLOrder', 'class=\"icon-16-menu\"', '', '1', 45, '0010.0015.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(22, 22, 'mnu.ChucNang', 'class=\"icon-16-config\"', '', '1', 0, '0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(23, 22, 'mnu.DMSupportOnline', 'class=\"icon-16-system\"', '', '1', 28, '0015.0001.', '0', '', '0', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(24, 24, 'mnu.TroGiup', 'class=\"icon-16-help\"', '', '1', 0, '0020.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(25, 24, 'mnu.HuongDanSuDung', 'class=\"icon-16-help\"', '', '1', 46, '0020.0001.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(26, 24, 'mnu.CauTrucWebsite', 'class=\"icon-16-help\"', '', '1', 47, '0020.0005.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(27, 11, 'mnu.DMLoaiTin', 'class=\"icon-16-notebook\"', '', '1', 100, '0002.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(29, 22, 'mnu.DMModule', 'class=\"icon-16-system\"', '', '1', 101, '0015.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(30, 22, 'mnu.DMFaq', 'class=\"icon-16-system\"', '', '1', 102, '0008.0010.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(31, 22, 'mnu.DMRecruit', 'class=\"icon-16-system\"', '', '1', 103, '0015.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(32, 22, 'mnu.DMWeblink', 'class=\"icon-16-system\"', '', '1', 104, '0015.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(33, 22, 'mnu.DMbanner_images', 'class=\"icon-16-system\"', '', '1', 105, '0015.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(34, 22, 'mnu.DMemail_manager', 'class=\"icon-16-system\"', '', '1', 106, '0015.0035.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(35, 22, 'mnu.DMcomment_manager', 'class=\"icon-16-system\"', '', '1', 107, '0015.0030.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(36, 14, 'mnu.NganhNghe', 'class=\"icon-16-default\"', '', '1', 0, '0004.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(37, 14, 'mnu.DMNhomChatLieuNganhNghe', 'class=\"icon-16-default\"', '', '1', 110, '0004.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(38, 14, 'mnu.DMNhomNganhNghe', 'class=\"icon-16-default\"', '', '1', 109, '0004.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(39, 14, 'mnu.DMNganhNghe', 'class=\"icon-16-default\"', '', '1', 108, '0004.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(40, 14, 'mnu.FAQ', 'class=\"icon-16-default\"', '', '1', 0, '0008.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(41, 22, 'mnu.DMCatFaq', 'class=\"icon-16-system\"', '', '1', 111, '0008.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(42, 22, 'Image manage', 'class=\"icon-16-system\"', '', '1', 112, '0015.0006.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tmenu_frontend`
--

CREATE TABLE `maa_tmenu_frontend` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cmenu` varchar(250) DEFAULT NULL,
  `nid_function_frontend` int(11) DEFAULT NULL,
  `id_item` varchar(250) DEFAULT NULL,
  `cwidth` varchar(200) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `nindex` int(4) DEFAULT NULL,
  `nid_parent` int(11) DEFAULT NULL,
  `ccat_index` varchar(50) DEFAULT NULL,
  `nbasic` int(1) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tmenu_frontend`
--

INSERT INTO `maa_tmenu_frontend` (`nid`, `ccode`, `cmenu`, `nid_function_frontend`, `id_item`, `cwidth`, `cnote`, `nstatus`, `nindex`, `nid_parent`, `ccat_index`, `nbasic`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, '001', 'Trang chủ', 8, '', '110', 'khong co con', 1, 1, 0, '0001.', 0, 746, 2, '2011-06-01', '0000-00-00'),
(4, NULL, 'Liên hệ', 4, '', '110', '', 1, 20, 0, '0005.', 0, 746, NULL, '2011-06-02', NULL),
(5, NULL, 'Hỏi đáp', 9, '', '110', '2', 1, 9, 4, '0005.0005.', NULL, 1, NULL, '2010-12-24', NULL),
(6, NULL, 'Tin tức-Sự kiện', 7, '6', '150', '', 1, 1, 5, '0015.0005.0005.', NULL, 746, NULL, '2011-06-02', NULL),
(15, NULL, 'Giới thiệu', 7, '7', '110', '', 1, 2, 6, '0015.0005.0005.', NULL, 746, NULL, '2011-06-01', NULL),
(16, NULL, 'Tuyển Dụng', 8, '38', '110', '', 1, 7, 0, '0025.', NULL, 1, NULL, '2010-12-24', NULL),
(17, NULL, 'Thư viện ảnh', 14, '', '134', '', 1, 8, 0, '0030.', NULL, 1, NULL, '2010-12-23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tmodule`
--

CREATE TABLE `maa_tmodule` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cmodule` varchar(250) DEFAULT NULL,
  `eng_cmodule` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `eng_cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `clink` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tmodule`
--

INSERT INTO `maa_tmodule` (`nid`, `ccode`, `cmodule`, `eng_cmodule`, `ctag`, `cimage`, `cnote`, `eng_cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `clink`) VALUES
(1, '', 'Giới thiệu', NULL, NULL, '', '\r\n<div class=\"bt_bb_headline_subheadline\">Là đơn vị tiên phong trong lĩnh vực thiết kế và triển khai các chương trình ECAs (Extracurricular Activities) và các khoá học định hướng nghề nghiệp tương lai trong các lĩnh vực: Nghệ thuật thị giác, Thiết kế, Kiến trúc, Nội thất, Nghệ thuật số và Thiết kế sản phẩm dành cho nhiều cấp độ học sinh.<br>\r\nTại MAA, chúng tôi cam kết <b>nuôi dưỡng tư duy sáng tạo, khả năng phản biện và kỹ năng tương lai</b> thông qua lộ trình học tập được xây dựng một cách khoa học – kết nối giữa đam mê nghệ thuật với mục tiêu nghề nghiệp lâu dài. Các chương trình của chúng tôi không chỉ cung cấp nền tảng kiến thức vững chắc, mà còn đồng hành cùng học viên trên hành trình chinh phục các cơ hội học tập và nghề nghiệp trong nước và quốc tế.<br>\r\nChúng tôi cung cấp:\r\n<ul>\r\n	<li>Các chương trình ECA toàn diện, được thiết kế theo tiêu chuẩn giáo dục quốc tế.</li>\r\n	<li>Các khoá học định hướng ngành nghề trong lĩnh vực Nghệ thuật &amp; Thiết kế dành cho học sinh từ 5 đến 18 tuổi.</li>\r\n	<li><b>Chương trình chuẩn bị Portfolio</b> chuyên sâu dành cho học sinh</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1752913106362\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<div class=\"bt_bb_headline_subheadline\">\r\n<p>Magic Arts &amp; Architecture (MAA) is the pioneer unit in designing and launching extra-curricular activities (ECAs) and career orientation courses in the fields of: Visual Arts, Designs, Architecture, Interior Design, Digital Art and&nbsp;Interior Design for students from different age groups. At MAA, we guarantee to nurture creative mindset, critical thinking and future skills through our scientifically-constructed learning plan – connecting passions for art with long-term career objectives. Our programs not only provide strong knowledge foundation, but we also accompany with the students on a journey of conquering domestic and international learning and career opportunities</p>\r\n</div>\r\n<script data-ts=\"1752913106360\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', 1, NULL, 1, 1, '2025-06-19', '2025-07-19', ''),
(2, '', 'Slogan', NULL, NULL, '', '<p>Ch&uacute;ng t&ocirc;i cam kết nu&ocirc;i dưỡng tư duy s&aacute;ng tạo,<br />\r\nkhả năng phản biện v&agrave; kỹ năng tương lai.</p>\r\n', '<p>We are committed to nurturing creative thinking,<br />\r\ncritical thinking and future skills.</p>\r\n', 1, NULL, 1, NULL, '2025-06-19', '2025-06-19', ''),
(3, '', 'CORE VALUE', NULL, NULL, '', '\r\n<ul>\r\n	<li><strong>Granting Rights of creativity</strong>: Encourage self-expression and confidence in performing art</li>\r\n	<li><strong>Interdisciplinary thinking</strong>: Connect Arts – Design – Technology with practical applications.</li>\r\n	<li><strong>Global thinking</strong>: expand perspectives through learning experience and international cultures</li>\r\n	<li><strong>Personalized orientation</strong>: Accompany and assist students to recognize personal strengths and identify clear career objectives.</li>\r\n</ul>\r\n<script data-ts=\"1750834054418\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li><strong>Granting Rights of creativity</strong>: Encourage self-expression and confidence in performing art</li>\r\n	<li><strong>Interdisciplinary thinking</strong>: Connect Arts – Design – Technology with practical applications.</li>\r\n	<li><strong>Global thinking</strong>: expand perspectives through learning experience and international cultures</li>\r\n	<li><strong>Personalized orientation</strong>: Accompany and assist students to recognize personal strengths and identify clear career objectives.</li>\r\n</ul>\r\n<script data-ts=\"1750834054416\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', 1, NULL, 1, 1, '2025-06-19', '2025-06-25', ''),
(4, '', 'OUR VISION', NULL, NULL, '', '\r\n<p>To lead in designing exceptional art, design, and architecture programs for international schools, fostering comprehensive student development.</p>\r\n\r\n<p>Empowering students in communication, visual connections, and shaping future career pathways aligned with individual strengths and passions.</p>\r\n<script data-ts=\"1750833880788\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>To lead in designing exceptional art, design, and architecture programs for international schools, fostering comprehensive student development.</p>\r\n\r\n<p>Empowering students in communication, visual connections, and shaping future career pathways aligned with individual strengths and passions.</p>\r\n<script data-ts=\"1750833880786\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', 1, NULL, 1, 1, '2025-06-19', '2025-06-25', ''),
(5, '', 'OUR MISSION', NULL, NULL, '', '\r\n<p>We believe that education in art, design, and architecture is a transformative journey that empowers learners with creative thinking, personal confidence, and the ability to contribute meaningfully to the global creative industries. MAA serves as a creative companion, guiding each student to explore their identity, cultivate their talents, and make informed decisions about their academic and professional future.</p>\r\n<script data-ts=\"1752135395832\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>We believe that education in art, design, and architecture is a transformative journey that empowers learners with creative thinking, personal confidence, and the ability to contribute meaningfully to the global creative industries. MAA serves as a creative companion, guiding each student to explore their identity, cultivate their talents, and make informed decisions about their academic and professional future.</p>\r\n<script data-ts=\"1752135395831\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', 1, NULL, 1, 1, '2025-06-19', '2025-07-10', ''),
(6, '', 'Giới thiệu footer', NULL, NULL, '', '\r\n<p>Tại MAA, chúng tôi cam kết&nbsp;<b>nuôi dưỡng tư duy sáng tạo, khả năng phản biện và kỹ năng tương lai</b>&nbsp;thông qua lộ trình học tập được xây dựng một cách khoa học – kết nối giữa đam mê nghệ thuật với mục tiêu nghề nghiệp lâu dài. Các chương trình của chúng tôi không chỉ cung cấp nền tảng kiến thức vững chắc, mà còn đồng hành cùng học viên trên hành trình chinh phục các cơ hội học tập và nghề nghiệp trong nước và quốc tế.</p>\r\n<script data-ts=\"1750412258811\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>At <strong>MAA</strong>, we guarantee to nurture creative mindset, critical thinking and future skills through our scientifically-constructed learning plan – connecting passions for art with long-term career objectives. Our programs not only provide strong knowledge foundation, but we also accompany with the students on a journey of conquering domestic and international learning and career opportunities.</p>\r\n<script data-ts=\"1750412258810\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', 1, NULL, 1, 1, '2025-06-20', '2025-06-20', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tnews`
--

CREATE TABLE `maa_tnews` (
  `nid` int(11) NOT NULL,
  `nid_section_news` int(11) DEFAULT NULL,
  `nid_cat_news` int(11) NOT NULL,
  `ccode` varchar(250) DEFAULT NULL,
  `ctitle` varchar(250) DEFAULT NULL,
  `cauthor` varchar(300) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `nhit` int(10) DEFAULT NULL,
  `nimg` char(1) DEFAULT NULL,
  `alwcmt` char(1) DEFAULT NULL,
  `cshort_content` text DEFAULT NULL,
  `ccontent` text DEFAULT NULL,
  `cimage_height` varchar(200) DEFAULT NULL,
  `cimage_thumb` varchar(200) DEFAULT NULL,
  `cimage_fb` varchar(200) DEFAULT NULL,
  `cimage_iphone` varchar(200) DEFAULT NULL,
  `nspecial` int(1) DEFAULT NULL,
  `nhome` int(1) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `ckeword_tag` varchar(500) DEFAULT NULL,
  `cdescription_tag` varchar(500) DEFAULT NULL,
  `eng_ctitle` varchar(250) DEFAULT NULL,
  `eng_cshort_content` text DEFAULT NULL,
  `eng_ccontent` text DEFAULT NULL,
  `clink` varchar(500) DEFAULT NULL,
  `chome` char(1) DEFAULT '0',
  `cnote` varchar(500) DEFAULT NULL,
  `cdate` varchar(50) DEFAULT NULL,
  `ctime` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tnews`
--

INSERT INTO `maa_tnews` (`nid`, `nid_section_news`, `nid_cat_news`, `ccode`, `ctitle`, `cauthor`, `ctag`, `nhit`, `nimg`, `alwcmt`, `cshort_content`, `ccontent`, `cimage_height`, `cimage_thumb`, `cimage_fb`, `cimage_iphone`, `nspecial`, `nhome`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `ckeword_tag`, `cdescription_tag`, `eng_ctitle`, `eng_cshort_content`, `eng_ccontent`, `clink`, `chome`, `cnote`, `cdate`, `ctime`) VALUES
(1, 6, 3, 'nghe-thuat-thi-giac', 'Nghệ thuật thị giác', '', '', NULL, NULL, '0', '\r\n<h6>Độ tuổi: 5–7 tuổi <span class=\"lo_trinh_label\">Lộ trình: 3 năm – 6 cấp độ</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\" id=\"content_1\">\r\n<p><b>Mục tiêu khoá học:</b></p>\r\n\r\n<ul>\r\n	<li>Phát triển khả năng quan sát, cảm thụ và biểu đạt thế giới xung quanh thông qua ngôn ngữ của nghệ thuật thị giác.</li>\r\n	<li>Khơi gợi tư duy sáng tạo, khả năng cảm nhận thẩm mỹ về màu sắc, hình khối và nuôi dưỡng sự tự tin trong việc thể hiện ý tưởng cá nhân ngay từ giai đoạn đầu đời.</li>\r\n</ul>\r\n\r\n<p><b>Kết quả học tập:</b></p>\r\n\r\n<ul>\r\n	<li>Học viên nắm được kiến thức nền tảng về các yếu tố tạo hình cơ bản như đường nét, màu sắc, hình dạng và chất liệu bề mặt (texture).</li>\r\n	<li>Thể hiện khả năng làm việc với đa dạng chất liệu: giấy mỹ thuật chuyên dụng, màu acrylic, đất nặn, màu nước, và mô hình 3D đơn giản.</li>\r\n	<li>Bắt đầu hình thành tư duy kể chuyện bằng hình ảnh thông qua các tác phẩm mang nội dung đơn giản.</li>\r\n	<li>Dần xây dựng sự tự tin trong việc chia sẻ và trình bày ý tưởng sáng tạo cá nhân.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778743326581\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778743326580\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, 'c1_20250619064127.jpg.webp', '', '', 0, 0, 0, '1', 1, 1, '2023-01-11', '2026-05-14', '', '', 'Visual Art', '\r\n<h6>Ages: 5–7 <span class=\"lo_trinh_label\">3-Year Program – 6 Levels</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\" id=\"content_1\">\r\n<p><b>Course Objectives:</b></p>\r\n\r\n<ul>\r\n	<li>Develop observation skills, sensory perception, and the ability to express the surrounding world through the language of visual arts.</li>\r\n	<li>Foster creative thinking, aesthetic appreciation of color and form, and nurture self-confidence in personal expression from an early age.</li>\r\n</ul>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<ul>\r\n	<li>Understand foundational visual elements: line, color, shape, and texture.</li>\r\n	<li>Work with diverse materials: fine art paper, acrylics, clay, watercolor, and basic 3D models.</li>\r\n	<li>Begin storytelling through visual imagery with simple thematic content.</li>\r\n	<li>Build confidence in sharing and presenting creative ideas.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778743326584\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778743326583\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', '0', '', '', '1778743326'),
(2, 6, 3, 'co-ban-ve-nghe-thuat-thiet-ke', 'Cơ bản về Nghệ thuật & Thiết kế', '', '', NULL, NULL, '0', '\r\n<h6>Độ tuổi: 12–14 tuổi <span class=\"lo_trinh_label\">Chương trình 3 năm</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Mục tiêu khoá học:</b></p>\r\n\r\n<ul>\r\n	<li>Xây dựng nền tảng kiến thức về mỹ thuật thị giác</li>\r\n	<li>Khám phá nhiều loại chất liệu, kỹ thuật và quy trình sáng tạo</li>\r\n	<li>Khuyến khích quan sát, tưởng tượng và tư duy thiết kế cơ bản</li>\r\n</ul>\r\n\r\n<p><b>Kết quả học tập:</b></p>\r\n\r\n<ul>\r\n	<li>Hiểu các nguyên lý cơ bản về đường nét, hình dạng, màu sắc, chất liệu, không gian</li>\r\n	<li>Tự tin thể hiện ý tưởng qua các phương tiện nghệ thuật thị giác</li>\r\n	<li>Hình thành hồ sơ cá nhân gồm sổ phác thảo và sản phẩm cuối khóa.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778819270699\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778819270698\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, 'IntroductiontoArtDesign_20260514084616.jpg', '', '', 0, 1, 1, '1.2', 1, 1, '2023-01-11', '2026-05-15', '', '', 'Introduction to Art & Design', '\r\n<h6>Ages 12–14 <span class=\"lo_trinh_label\">3-Year Program</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Course Objectives:</b></p>\r\n\r\n<ul>\r\n	<li>Establish foundational knowledge in visual arts.</li>\r\n	<li>Explore a variety of materials, techniques, and creative processes.</li>\r\n	<li>Encourage observation, imagination, and basic design thinking.</li>\r\n</ul>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<ul>\r\n	<li>Understand basic visual principles: line, shape, color, texture, and space.</li>\r\n	<li>Confidently express ideas through visual art media.</li>\r\n	<li>Develop a personal portfolio, including a sketchbook and a final project.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778819270702\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778819270701\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', NULL, '', '', '1778819271'),
(3, 6, 3, 'thiet-ke-do-hoa', 'Thiết kế đồ họa', '', '', NULL, NULL, '0', '\r\n<h6>Độ tuổi: 12-14 tuổi <span class=\"lo_trinh_label\">Chương trình 3 năm</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Mục tiêu khoá học:</b></p>\r\n\r\n<ul>\r\n	<li>Học các nguyên lý giao tiếp thị giác</li>\r\n	<li>Sử dụng chữ, bố cục và nguyên lý thiết kế</li>\r\n	<li>Khám phá thiết kế thương hiệu, poster và bao bì</li>\r\n</ul>\r\n\r\n<p><b>Kết quả học tập:</b></p>\r\n\r\n<ul>\r\n	<li>Thiết kế logo và thương hiệu cá nhân</li>\r\n	<li>Tạo poster hoặc bao bì bằng công cụ kỹ thuật số</li>\r\n	<li>Trình bày hồ sơ thiết kế để chuẩn bị vào trường nghệ thuật</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778744530881\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778744530880\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, 'GraphicDesign_20260514084706.jpg', '', '', 0, 1, 1, '2', 1, 1, '2023-01-11', '2026-05-14', '', '', 'Graphic Design', '\r\n<h6>Ages 12–14 <span class=\"lo_trinh_label\">3-Year Program</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Course Objectives:</b></p>\r\n\r\n<ul>\r\n	<li>Learn principles of visual communication.</li>\r\n	<li>Understand typography, layout, and design fundamentals.</li>\r\n	<li>Explore branding, poster, and packaging design.</li>\r\n</ul>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<ul>\r\n	<li>Design personal logos and brand identities.</li>\r\n	<li>Create posters or packaging using digital tools.</li>\r\n	<li>Present a design portfolio for admission to art schools.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778744530883\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778744530882\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', NULL, '', '', '1778744531'),
(4, 6, 3, 'thiet-ke-kien-truc', 'Thiết kế Kiến trúc', '', '', NULL, NULL, '0', '\r\n<h6>Độ tuổi: 12–14 tuổi <span class=\"lo_trinh_label\">Chương trình 3 năm</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Mục tiêu khoá học:</b></p>\r\n\r\n<ul>\r\n	<li>Phát triển tư duy về không gian, thiết kế kiến trúc cơ bản; hiểu về kiến trúc trong mối tương quan với bối cảnh, ứng dụng hình khối - cấu trúc &amp; tỷ lệ vào trong tổ chức không gian sống và làm việc.</li>\r\n</ul>\r\n\r\n<p><b>Kết quả học tập:</b></p>\r\n\r\n<ul>\r\n	<li>Học viên biết cách phân tích &amp; tổ chức một số hình thức không gian đơn giản.</li>\r\n	<li>Sử dụng được các công cụ vẽ tay và làm mô hình 3D.</li>\r\n	<li>Đối với lứa tuổi 13+, học sinh được giới thiệu phần mềm như SketchUp, hoặc một số các phần mềm khác để trực quan hóa sản phẩm thiết kế</li>\r\n	<li>Tạo ra mô hình kiến trúc từ các Project cá nhân.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778744578712\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778744578711\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, 'Architecture_20260514084753.jpg', '', '', 0, 1, 1, '3', 1, 1, '2023-01-11', '2026-05-14', '', '', 'Architecture', '\r\n<h6>Ages 12–14 <span class=\"lo_trinh_label\">3-Year Program</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Course Objectives: :</b></p>\r\n\r\n<ul>\r\n	<li>Develop spatial thinking and foundational knowledge of architectural design.</li>\r\n	<li>Understand architecture in relation to context and apply form, structure, and proportion to organizing living and working spaces.</li>\r\n</ul>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<ul>\r\n	<li>Analyze and organize simple spatial forms.</li>\r\n	<li>Use hand-drawing tools and construct 3D models.</li>\r\n	<li>For students aged 13+, get introduced to design software such as SketchUp or similar tools.</li>\r\n	<li>Create architectural models from personal design projects.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778744578714\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778744578714\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '#', NULL, '', '', '1778744578'),
(32, 6, 5, 'partnership-signed-“drones-for-kids-teens”-in-berlin-summer-trip-2026-2027', 'Partnership signed: “Drones for Kids & Teens” in Berlin (Summer Trip 2026-2027)', '', '', NULL, '0', '0', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778837027831\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>We’re happy to announce our collaboration with Magic Arts &amp; Architecture (MAA) for a new hands-on program that combines drone technology, creativity, and real-world STEAM learning—right here in Berlin.</p>\r\n\r\n<p style=\"text-align:center;\"><img alt=\"\" src=\"/fileman/Uploads/Partnership1.jpg\" style=\"max-width:100%; margin:10px 0;\"></p>\r\n\r\n<p><strong>What participants can expect (at a glance):</strong></p>\r\n\r\n<ul>\r\n	<li>Fly &amp; Safety Basics – responsible, structured first steps in drone operation.</li>\r\n	<li>Build &amp; Create – projects that connect technology with creative thinking.</li>\r\n	<li>Explore STEAM Paths – skills that translate into many future fields.</li>\r\n</ul>\r\n\r\n<div style=\"display:flex; gap:10px; justify-content:center; flex-wrap:wrap; margin-top:15px;\"><img alt=\"\" src=\"/fileman/Uploads/Partnership1_1.jpg\" style=\"width:48%; max-width:100%;\"> <img alt=\"\" src=\"/fileman/Uploads/Partnership1_2.jpg\" style=\"width:48%; max-width:100%;\"></div>\r\n<script data-ts=\"1778837027829\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'Partnership1_20260515041658.jpg', '', '', NULL, 1, 1, '1', 1, 1, '2026-05-15', '2026-05-15', NULL, NULL, 'Partnership signed: “Drones for Kids & Teens” in Berlin (Summer Trip 2026-2027)', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778837027834\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>We’re happy to announce our collaboration with Magic Arts &amp; Architecture (MAA) for a new hands-on program that combines drone technology, creativity, and real-world STEAM learning—right here in Berlin.</p>\r\n\r\n<p style=\"text-align:center;\"><img alt=\"\" src=\"/fileman/Uploads/Partnership1.jpg\" style=\"max-width:100%; margin:10px 0;\"></p>\r\n\r\n<p><strong>What participants can expect (at a glance):</strong></p>\r\n\r\n<ul>\r\n	<li>Fly &amp; Safety Basics – responsible, structured first steps in drone operation.</li>\r\n	<li>Build &amp; Create – projects that connect technology with creative thinking.</li>\r\n	<li>Explore STEAM Paths – skills that translate into many future fields.</li>\r\n</ul>\r\n\r\n<div style=\"display:flex; gap:10px; justify-content:center; flex-wrap:wrap; margin-top:15px;\"><img alt=\"\" src=\"/fileman/Uploads/Partnership1_1.jpg\" style=\"width:48%; max-width:100%;\"> <img alt=\"\" src=\"/fileman/Uploads/Partnership1_2.jpg\" style=\"width:48%; max-width:100%;\"></div>\r\n<script data-ts=\"1778837027833\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1778837029'),
(5, 6, 3, 'thiet-ke-noi-that', 'Thiết kế Nội thất', '', '', NULL, NULL, '0', '\r\n<h6>Độ tuổi: 12–14 tuổi <span class=\"lo_trinh_label\">Chương trình 3 năm</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Mục tiêu khoá học:</b></p>\r\n\r\n<ul>\r\n	<li>Giúp học viên hiểu được mối quan hệ giữa chức năng, hình thức và cảm xúc trong thiết kế không gian sống.</li>\r\n	<li>Học viên phân tích &amp; đánh giá được trải nghiệm người dùng trong không gian sống.</li>\r\n</ul>\r\n\r\n<p><b>Kết quả học tập:</b></p>\r\n\r\n<ul>\r\n	<li>Học viên nắm được các yếu tố thiết kế nội thất: ánh sáng, màu sắc, vật liệu, công năng.</li>\r\n	<li>Thực hành sáng tạo không gian sống trong gia đình và mô hình 3D bằng giấy.</li>\r\n	<li>Biết cách xây dựng bảng ý tưởng (moodboard) và phối màu cho không gian.</li>\r\n	<li>Xây dựng portfolio cá nhân với các thiết kế không gian sống mô phỏng.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778744699097\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778744699096\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, 'InteriorDesign_20260514024432.jpg', '', '', 0, 1, 1, '4', 1, 1, '2023-01-11', '2026-05-14', '', '', 'Interior Design', '\r\n<h6>Ages 12–14 <span class=\"lo_trinh_label\">3-Year Program</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Course Objectives:</b></p>\r\n\r\n<ul>\r\n	<li>Understand the relationship between function, form, and emotion in living spaces.</li>\r\n	<li>Analyze and assess user experience within residential environments.</li>\r\n</ul>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<ul>\r\n	<li>Master core elements of interior design: lighting, color, materials, and functionality.</li>\r\n	<li>Practice creating home living spaces and 3D paper models.</li>\r\n	<li>Learn how to build moodboards and color palettes.</li>\r\n	<li>Develop a personal portfolio with conceptual interior space designs.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778744699099\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778744699098\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '#', NULL, '', '', '1778744699'),
(29, 6, 3, 'academic-tour', 'Academic Tour', '', '', NULL, '0', '0', '\r\n<h6>Khám phá. Học hỏi. Truyền cảm hứng.</h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p>Academic Tour là chương trình trải nghiệm học thuật quốc tế tại Đức, Châu Âu và Châu Á dành cho các học sinh có định hướng theo học các ngành Nghệ thuật, Thiết kế, Kiến trúc, Digital Art và Công nghệ (STEAM).</p>\r\n\r\n<p><b>Chương trình được xây dựng theo tiêu chuẩn giáo dục châu Âu, kết hợp giữa:</b></p>\r\n\r\n<ul>\r\n	<li>Tham quan học thuật</li>\r\n	<li>Trải nghiệm thực tế</li>\r\n	<li>Giao lưu văn hoá quốc tế</li>\r\n	<li>Và cơ hội khám phá các trường đại học cùng các doanh nghiệp sáng tạo tại Đức, Châu Âu và Châu Á</li>\r\n</ul>\r\n\r\n<h6 style=\"font-size: 20px;\">KHÁM PHÁ NHỮNG CƠ HỘI SÁNG TẠO</h6>\r\n\r\n<p><b>Thông qua chương trình Academic Tour, học viên sẽ có cơ hội:</b></p>\r\n\r\n<ul>\r\n	<li>Khám phá môi trường học tập quốc tế</li>\r\n	<li>Tiếp cận các ngành học sáng tạo theo tiêu chuẩn châu Âu</li>\r\n	<li>Và nhận được định hướng rõ ràng trong quá trình chuẩn bị và phát triển portfolio cá nhân cho các hồ sơ ứng tuyển học thuật trong tương lai.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778819276285\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778819276283\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'AcademicTour_20260514035555.jpg', '', '', NULL, 1, 1, '1', 1, 1, '2026-05-14', '2026-05-15', NULL, NULL, 'Academic Tour', '\r\n<h6>Explore. Learn. Inspire.</h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p>Academic Tour is an international academic experience program in Germany, Europe, and Asia designed for students who aspire to pursue studies in Art &amp; Design, Architecture, Industrial Design, Digital Art, Technology (STEAM), and related fields.</p>\r\n\r\n<p><b>The program is developed based on European educational standards, combining:</b></p>\r\n\r\n<ul>\r\n	<li>Academic visits.</li>\r\n	<li>Real-world experiences.</li>\r\n	<li>International cultural exchange, and opportunities to explore universities and creative industries across Germany, Europe, and Asia.</li>\r\n</ul>\r\n\r\n<h6 style=\"font-size: 20px;\">DISCOVER CREATIVE POSSIBILITIES</h6>\r\n\r\n<p><b>Through the Academic Tour program, students will have the opportunity to:</b></p>\r\n\r\n<ul>\r\n	<li>Explore international learning environments.</li>\r\n	<li>Gain exposure to creative disciplines based on European standards, and receive clear guidance in preparing and developing their personal portfolios for future academic applications.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778819276287\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778819276286\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1778819276'),
(6, 6, 3, 'thiet-ke-canh-quan', 'Thiết kế Cảnh quan', '', '', NULL, NULL, '0', '\r\n<h6>Độ tuổi: 12–14 tuổi <span class=\"lo_trinh_label\">Chương trình 3 năm</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Mục tiêu khoá học:</b></p>\r\n\r\n<ul>\r\n	<li>Giúp học viên nhận thức được vai trò quan trọng của thiên nhiên trong thiết kế không gian, tư duy sinh thái và ứng dụng thẩm mỹ môi trường trong đời sống.</li>\r\n	<li>Tìm hiểu và ứng dụng năng lượng xanh vào thiết kế cảnh quan và không gian sống.</li>\r\n</ul>\r\n\r\n<p><b>Kết quả học tập:</b></p>\r\n\r\n<ul>\r\n	<li>Học viên hiểu quy trình thiết kế vườn, công viên, không gian sống và không gian xanh đô thị.</li>\r\n	<li>Thực hành mô hình vườn hoặc cảnh quan, thiết kế cảnh quan từ vật liệu tái chế.</li>\r\n	<li>Phát triển tư duy thiết kế bền vững và kiến tạo tương lai xanh.</li>\r\n	<li>Tổ chức triển lãm “Designing Nature – Designing Future”.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778745014290\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778745014288\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, 'LandscapeDesign_20260514084842.jpg', '', '', 0, 1, 1, '5', 1, 1, '2023-01-13', '2026-05-14', '', '', 'Landscape Design', '\r\n<h6>Ages 12–14 <span class=\"lo_trinh_label\">3-Year Program</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Course Objectives:</b></p>\r\n\r\n<ul>\r\n	<li>Recognize the vital role of nature in spatial design and develop ecological thinking.</li>\r\n	<li>Explore and apply green energy concepts in landscape and environmental design.</li>\r\n</ul>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<ul>\r\n	<li>Understand design processes for gardens, parks, and urban green spaces.</li>\r\n	<li>Practice creating garden/landscape models and use recycled materials in design.</li>\r\n	<li>Develop sustainable design thinking and envision a greener future.</li>\r\n	<li>Organize an exhibition titled \"Designing Nature – Designing Future.\"</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778745014292\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778745014291\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '#', NULL, '', '', '1778745014'),
(31, 6, 1, 'workshop-study-in-zwickau', 'WORKSHOP: STUDY IN ZWICKAU', '', '', NULL, '0', '0', '\r\n<p>The International Office of the University of Applied Sciences at Zwickau is pleased to invite you to an online information event, <strong>“Study in hashtag#Zwickau\".</strong></p>\r\n\r\n<p>Join the staff of the International Office for a comprehensive session designed to answer questions about the application process and the possibilities of studying in Zwickau.</p>\r\n<script data-ts=\"1778911538459\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>The International Office of the University of Applied Sciences at Zwickau is pleased to invite you to an online information event, <strong>“Study in hashtag#Zwickau\"</strong>.</p>\r\n\r\n<p>Join the staff of the International Office for a comprehensive session designed to answer questions about the application process and the possibilities of studying in Zwickau.</p>\r\n\r\n<ul>\r\n	<li><strong>Date:</strong> March 28th, 2026</li>\r\n	<li><strong>Time:</strong> 10:00 a.m. CET</li>\r\n	<li><strong>Platform:</strong> BigBlueButton</li>\r\n	<li><strong>Link:</strong> https://lnkd.in/g3PCEuNk</li>\r\n</ul>\r\n\r\n<p>The event will be hosted via BigBlueButton for accessibility.</p>\r\n\r\n<p>The University of Applied Sciences Zwickau (hashtag#WHZ) offers more than 60 degree programs in the fields of Technology, Economics, Language, Healthcare and Applied Arts. Bachelor\'s, Master\'s or German Diploma Degrees can be obtained.</p>\r\n\r\n<p>The WHZ has different campuses in Zwickau, which have their own cafeterias and dormitories. Zwickau is one of the smaller cities in hashtag#Saxony. Because of its size, Zwickau has affordable rents. But come and see for yourself!</p>\r\n<script data-ts=\"1778911538458\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n10_20260515040319.jpg', '', '', NULL, 1, 1, '0.2', 1, 1, '2026-05-15', '2026-05-18', NULL, NULL, 'WORKSHOP: STUDY IN ZWICKAU', '\r\n<p>The International Office of the University of Applied Sciences at Zwickau is pleased to invite you to an online information event, <strong>“Study in hashtag#Zwickau\".</strong></p>\r\n\r\n<p>Join the staff of the International Office for a comprehensive session designed to answer questions about the application process and the possibilities of studying in Zwickau.</p>\r\n\r\n<ul>\r\n</ul>\r\n<script data-ts=\"1778911538461\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>The International Office of the University of Applied Sciences at Zwickau is pleased to invite you to an online information event, <strong>“Study in hashtag#Zwickau\"</strong>.</p>\r\n\r\n<p>Join the staff of the International Office for a comprehensive session designed to answer questions about the application process and the possibilities of studying in Zwickau.</p>\r\n\r\n<ul>\r\n	<li><strong>Date:</strong> March 28th, 2026</li>\r\n	<li><strong>Time:</strong> 10:00 a.m. CET</li>\r\n	<li><strong>Platform:</strong> BigBlueButton</li>\r\n	<li><strong>Link:</strong> https://lnkd.in/g3PCEuNk</li>\r\n</ul>\r\n\r\n<p>The event will be hosted via BigBlueButton for accessibility.</p>\r\n\r\n<p>The University of Applied Sciences Zwickau (hashtag#WHZ) offers more than 60 degree programs in the fields of Technology, Economics, Language, Healthcare and Applied Arts. Bachelor\'s, Master\'s or German Diploma Degrees can be obtained.</p>\r\n\r\n<p>The WHZ has different campuses in Zwickau, which have their own cafeterias and dormitories. Zwickau is one of the smaller cities in hashtag#Saxony. Because of its size, Zwickau has affordable rents. But come and see for yourself!</p>\r\n<script data-ts=\"1778911538460\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1779068152'),
(7, 6, 3, 'my-thuat-so', 'Mỹ thuật số', '', '', NULL, NULL, '0', '\r\n<h6>Độ tuổi: 13–15 tuổi <span class=\"lo_trinh_label\">Chương trình 3 năm</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Mục tiêu khoá học:</b></p>\r\n\r\n<ul>\r\n	<li>Kết hợp kỹ năng vẽ tay với công cụ kỹ thuật số</li>\r\n	<li>Phát triển kể chuyện bằng hình ảnh và bố cục thiết kế</li>\r\n	<li>Làm quen với bảng vẽ Wacom và quy trình kỹ thuật số</li>\r\n</ul>\r\n\r\n<p><b>Kết quả học tập:</b></p>\r\n\r\n<ul>\r\n	<li>Thành thạo kỹ thuật phác thảo cơ bản</li>\r\n	<li>Sử dụng bảng vẽ và phần mềm kỹ thuật số</li>\r\n	<li>Tạo bảng nhân vật và truyện tranh kỹ thuật số.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778745104529\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778745104528\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, 'DigitalArt_20260514085028.jpg', '', '', 0, 1, 1, '7', 1, 1, '2023-01-13', '2026-05-14', '', '', 'Digital Art', '\r\n<h6>Ages 13–15 <span class=\"lo_trinh_label\">3-Year Program</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Course Objectives:</b></p>\r\n\r\n<p>The <strong>Digital Art Program</strong> is a comprehensive three-year curriculum designed for students aged 10 to 16. It provides a structured progression from foundational knowledge to advanced application, integrating traditional drawing techniques with digital tools such as Wacom tablets and graphic software.</p>\r\n\r\n<p>This program focuses on developing <strong>visual thinking, creative expression, and digital fluency</strong>, enabling students to create original artworks in areas such as illustration, character design, animation, visual storytelling, and digital composition. It serves as a strong foundation for students interested in pursuing careers in <strong>digital art, game design, animation, and graphic communication</strong>.</p>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<ul>\r\n	<li>Demonstrate confident use of both <strong>traditional drawing techniques and digital art tools</strong></li>\r\n	<li>Understand the complete process of digital image creation: from concept sketch to final rendering</li>\r\n	<li>Create original characters, backgrounds, and visual narratives in digital formats</li>\r\n	<li>Collaborate in team-based creative projects and participate in peer critiques</li>\r\n	<li>Build a <strong>personal digital art portfolio</strong> aligned with international art school standards and youth competitions</li>\r\n	<li>Explore potential future pathways in <strong>Digital Illustration – Animation – Game Design – Concept Art – Graphic Design</strong></li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778745104530\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778745104530\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '#', NULL, '', '', '1778745104'),
(30, 6, 1, 'workshop-sslo-online-info-session', 'WORKSHOP : SSLO ONLINE INFO SESSION', '', '', NULL, '0', '0', '\r\n<p><strong>SSLO Scholarship Information for Vietnamese University Students – Study Exchange in Saxony, Germany</strong><br>\r\nThe SSLO Office is pleased to share scholarship opportunities for Bachelor’s and Master’s students currently studying at universities in Vietnam who wish to participate in a free-mover exchange program in the State of Saxony, Germany.</p>\r\n<script data-ts=\"1778911530453\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><strong>SSLO Scholarship Information for Vietnamese University Students – Study Exchange in Saxony, Germany</strong><br>\r\nThe SSLO Office is pleased to share scholarship opportunities for Bachelor’s and Master’s students currently studying at universities in Vietnam who wish to participate in a free-mover exchange program in the State of Saxony, Germany.</p>\r\n\r\n<p><strong>Details about the scholarship, eligibility criteria, and application deadlines</strong> are included in the PDF file attached below. Please take some time to review the full information.</p>\r\n\r\n<p><strong>Online Info Session</strong><br>\r\nTo support students further, SSLO has invited the program coordinator to join an online sharing session:</p>\r\n\r\n<ul>\r\n	<li><strong>Date:</strong> Friday, 28 November 2025</li>\r\n	<li><strong>Time:</strong> 18:00–19:00 (Vietnam time)</li>\r\n	<li><strong>Platform:</strong> Link provided in the poster below</li>\r\n</ul>\r\n\r\n<p>This session will help you better understand the scholarship program and the application process.</p>\r\n\r\n<p><strong>Have questions? Send them in advance:</strong><br>\r\nhttps://lnkd.in/gYJpZVpk</p>\r\n\r\n<p>SSLO encourages students to participate or share this opportunity with friends who are interested in experiencing 1–6 months of studying in Germany.</p>\r\n\r\n<p>We look forward to seeing you at the online session on 28/11/2025!</p>\r\n<script data-ts=\"1778911530450\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n9_20260515040034.jpg', '', '', NULL, 1, 1, '0.1', 1, 1, '2026-05-15', '2026-05-18', NULL, NULL, 'WORKSHOP : SSLO ONLINE INFO SESSION', '\r\n<p><strong>SSLO Scholarship Information for Vietnamese University Students – Study Exchange in Saxony, Germany</strong><br>\r\nThe SSLO Office is pleased to share scholarship opportunities for Bachelor’s and Master’s students currently studying at universities in Vietnam who wish to participate in a free-mover exchange program in the State of Saxony, Germany.</p>\r\n<script data-ts=\"1778911530455\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><strong>SSLO Scholarship Information for Vietnamese University Students – Study Exchange in Saxony, Germany</strong><br>\r\nThe SSLO Office is pleased to share scholarship opportunities for Bachelor’s and Master’s students currently studying at universities in Vietnam who wish to participate in a free-mover exchange program in the State of Saxony, Germany.</p>\r\n\r\n<p><strong>Details about the scholarship, eligibility criteria, and application deadlines</strong> are included in the PDF file attached below. Please take some time to review the full information.</p>\r\n\r\n<p><strong>Online Info Session</strong><br>\r\nTo support students further, SSLO has invited the program coordinator to join an online sharing session:</p>\r\n\r\n<ul>\r\n	<li><strong>Date:</strong> Friday, 28 November 2025</li>\r\n	<li><strong>Time:</strong> 18:00–19:00 (Vietnam time)</li>\r\n	<li><strong>Platform:</strong> Link provided in the poster below</li>\r\n</ul>\r\n\r\n<p>This session will help you better understand the scholarship program and the application process.</p>\r\n\r\n<p><strong>Have questions? Send them in advance:</strong><br>\r\nhttps://lnkd.in/gYJpZVpk</p>\r\n\r\n<p>SSLO encourages students to participate or share this opportunity with friends who are interested in experiencing 1–6 months of studying in Germany.</p>\r\n\r\n<p>We look forward to seeing you at the online session on 28/11/2025!</p>\r\n<script data-ts=\"1778911530453\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1779068144'),
(8, 6, 2, 'mrs-hau-ngo', 'Mrs. Hau Ngo', 'Founder/CEO', '', NULL, NULL, '0', '\r\n<p>Founder of MAA.<br>\r\nCo-Founder of PIG Creative Digital Art Academy.<br>\r\nFounder of LUEUR DOUCE.</p>\r\n<script data-ts=\"1767750247985\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>GIZ Alumni – Partnering in Business with Germany 2025.</li>\r\n	<li>Educational Partner of the Saxony State Science Liaison Office (SSLO) in Vietnam, supported by the Ministry of Science, Culture, and Tourism of the State of Saxony, promotes educational and research cooperation between Saxony and Vietnam.</li>\r\n	<li>Team Leader of the Winning Team at International Innovator (Leipzig University, Germany).</li>\r\n	<li>Alumni of the Entrepreneurship Bootcamp with IVEY Business School (Canada). - Education Sponsor for Science without Borders Challenge 2023 (USA).</li>\r\n	<li>Team Leader Top 20 Projects of National Entrepreneur Development Program 2021 Selected Project for the Exhibition of The Asian Smart City Conference At Malaysia (Sidec, Malaysia) 2022.</li>\r\n	<li>Art Expert at Faber Castell Germany in Vietnam.</li>\r\n</ul>\r\n<script data-ts=\"1767750247983\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, 't1_20250619082749.jpg.webp', '', '', 0, 1, 1, '1', 1, 1, '2023-01-13', '2026-01-07', '', '', 'Mrs. Hau Ngo', '\r\n<p>Founder of MAA.<br>\r\nCo-Founder of PIG Creative Digital Art Academy.<br>\r\nFounder of LUEUR DOUCE.</p>\r\n<script data-ts=\"1767750247987\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>GIZ Alumni – Partnering in Business with Germany 2025.</li>\r\n	<li>Educational Partner of the Saxony State Science Liaison Office (SSLO) in Vietnam, supported by the Ministry of Science, Culture, and Tourism of the State of Saxony, promotes educational and research cooperation between Saxony and Vietnam.</li>\r\n	<li>Team Leader of the Winning Team at International Innovator (Leipzig University, Germany).</li>\r\n	<li>Alumni of the Entrepreneurship Bootcamp with IVEY Business School (Canada). - Education Sponsor for Science without Borders Challenge 2023 (USA).</li>\r\n	<li>Team Leader Top 20 Projects of National Entrepreneur Development Program 2021 Selected Project for the Exhibition of The Asian Smart City Conference At Malaysia (Sidec, Malaysia) 2022.</li>\r\n	<li>Art Expert at Faber Castell Germany in Vietnam.</li>\r\n</ul>\r\n<script data-ts=\"1767750247986\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '#', NULL, '', '', '1767750248'),
(26, 6, 2, 'mr-nathan-nguyen', 'Mr. Nathan Nguyen', 'Project Manager', '', NULL, '0', '0', '\r\n<ul>\r\n	<li>Alumni of the Entrepreneurship Bootcamp with IVEY Business School (Canada) - Bachelor of Arts in English Study at HUFLIT (2022) - 8 years of teaching experience in Arts &amp; ESL</li>\r\n	<li>Executive of External Arts &amp; Design Extracurricular Club Activities (ECA) at Vietnam Australia International School (2019 - present)</li>\r\n	<li>Team Leader of Summer Arts &amp; Design Summer Extracurricular Club Activities at Lac Hong Bilingual School (2023 - present)</li>\r\n	<li>Academic Assistant at Magic Arts &amp; Architecture (MAA) (2018 - 2024)</li>\r\n</ul>\r\n<script data-ts=\"1767750387067\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>Alumni of the Entrepreneurship Bootcamp with IVEY Business School (Canada) - Bachelor of Arts in English Study at HUFLIT (2022) - 8 years of teaching experience in Arts &amp; ESL</li>\r\n	<li>Executive of External Arts &amp; Design Extracurricular Club Activities (ECA) at Vietnam Australia International School (2019 - present)</li>\r\n	<li>Team Leader of Summer Arts &amp; Design Summer Extracurricular Club Activities at Lac Hong Bilingual School (2023 - present)</li>\r\n	<li>Academic Assistant at Magic Arts &amp; Architecture (MAA) (2018 - 2024)</li>\r\n</ul>\r\n<script data-ts=\"1767750387066\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 't4_20260107084615.jpg', '', '', NULL, 1, 1, '4', 1, 1, '2026-01-07', '2026-01-07', NULL, NULL, 'Mr. Nathan Nguyen', '\r\n<ul>\r\n	<li>Alumni of the Entrepreneurship Bootcamp with IVEY Business School (Canada) - Bachelor of Arts in English Study at HUFLIT (2022) - 8 years of teaching experience in Arts &amp; ESL</li>\r\n	<li>Executive of External Arts &amp; Design Extracurricular Club Activities (ECA) at Vietnam Australia International School (2019 - present)</li>\r\n	<li>Team Leader of Summer Arts &amp; Design Summer Extracurricular Club Activities at Lac Hong Bilingual School (2023 - present)</li>\r\n	<li>Academic Assistant at Magic Arts &amp; Architecture (MAA) (2018 - 2024)</li>\r\n</ul>\r\n<script data-ts=\"1767750387068\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>Alumni of the Entrepreneurship Bootcamp with IVEY Business School (Canada) - Bachelor of Arts in English Study at HUFLIT (2022) - 8 years of teaching experience in Arts &amp; ESL</li>\r\n	<li>Executive of External Arts &amp; Design Extracurricular Club Activities (ECA) at Vietnam Australia International School (2019 - present)</li>\r\n	<li>Team Leader of Summer Arts &amp; Design Summer Extracurricular Club Activities at Lac Hong Bilingual School (2023 - present)</li>\r\n	<li>Academic Assistant at Magic Arts &amp; Architecture (MAA) (2018 - 2024)</li>\r\n</ul>\r\n<script data-ts=\"1767750387068\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1767750387'),
(9, 6, 2, 'mr-duy-pham', 'Mr. Duy Pham', 'Co-Founder', '', NULL, '0', '0', '\r\n<p>Founder of PIG Creative Digital Art<br>\r\nSenior 3D Artist at PIG Creative Digital Art Academy.<br>\r\nCreative/ Art Director at FarmMe (Canada)<br>\r\nThe One Academy Diploma of Digital Animation.<br>\r\n5 years of Digital Arts teaching experience 8 years of work experience in 3D Visual Effect Industry, 2D&amp;3D Game Arts and 3D Digital, Animation...<br>\r\nMaster of Game Art and Design.<br>\r\nWinner ASIAGRAPH Japan 2017.<br>\r\nWinner ASIAGRAPH Japan 2011. Choice Artwork CG society 2012.</p>\r\n<script data-ts=\"1750652080148\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>Founder of PIG Creative Digital Art</li>\r\n	<li>Senior 3D Artist at PIG Creative Digital Art Academy.</li>\r\n	<li>Creative/ Art Director at FarmMe (Canada)</li>\r\n	<li>The One Academy Diploma of Digital Animation.</li>\r\n	<li>5 years of Digital Arts teaching experience 8 years of work experience in 3D Visual Effect Industry, 2D&amp;3D Game Arts and 3D Digital, Animation...</li>\r\n	<li>Master of Game Art and Design.</li>\r\n	<li>Winner ASIAGRAPH Japan 2017.</li>\r\n	<li>Winner ASIAGRAPH Japan 2011. Choice Artwork CG society 2012.</li>\r\n</ul>\r\n<script data-ts=\"1750652080147\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 't2_20250623111441.jpg', '', '', NULL, 1, 1, '2', 1, 1, '2025-06-19', '2025-06-23', NULL, NULL, 'Mr. Duy Pham', '\r\n<p>Founder of PIG Creative Digital Art<br>\r\nSenior 3D Artist at PIG Creative Digital Art Academy.<br>\r\nCreative/ Art Director at FarmMe (Canada)<br>\r\nThe One Academy Diploma of Digital Animation.<br>\r\n5 years of Digital Arts teaching experience 8 years of work experience in 3D Visual Effect Industry, 2D&amp;3D Game Arts and 3D Digital, Animation...<br>\r\nMaster of Game Art and Design.<br>\r\nWinner ASIAGRAPH Japan 2017.<br>\r\nWinner ASIAGRAPH Japan 2011. Choice Artwork CG society 2012.</p>\r\n<script data-ts=\"1750652080150\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>Founder of PIG Creative Digital Art</li>\r\n	<li>Senior 3D Artist at PIG Creative Digital Art Academy.</li>\r\n	<li>Creative/ Art Director at FarmMe (Canada)</li>\r\n	<li>The One Academy Diploma of Digital Animation.</li>\r\n	<li>5 years of Digital Arts teaching experience 8 years of work experience in 3D Visual Effect Industry, 2D&amp;3D Game Arts and 3D Digital, Animation...</li>\r\n	<li>Master of Game Art and Design.</li>\r\n	<li>Winner ASIAGRAPH Japan 2017.</li>\r\n	<li>Winner ASIAGRAPH Japan 2011. Choice Artwork CG society 2012.</li>\r\n</ul>\r\n<script data-ts=\"1750652080149\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1750652081'),
(10, 6, 2, 'mr-thuong-nguyen', 'Mr. Thuong Nguyen', 'Architect', '', NULL, '0', '0', '\r\n<p>Architecture Programmer at MAA<br>\r\nIntern at MIA Design Studio.<br>\r\nProject Collaborator Maru Ichi Floating House - Symbiotic floating village project adapting to climate change in the Mekong Delta.<br>\r\nConcept Architect at MIA Design Studio.<br>\r\nTeaching Architecture at MAA..</p>\r\n<script data-ts=\"1750403215369\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>Architecture Programmer at MAA</li>\r\n	<li>Intern at MIA Design Studio.</li>\r\n	<li>Project Collaborator Maru Ichi Floating House - Symbiotic floating village project adapting to climate change in the Mekong Delta.</li>\r\n	<li>Concept Architect at MIA Design Studio.</li>\r\n	<li>Teaching Architecture at MAA..</li>\r\n</ul>\r\n<script data-ts=\"1750403215368\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 't3_20250619085814.jpg.webp', '', '', NULL, 0, 0, '3', 1, 1, '2025-06-19', '2025-06-20', NULL, NULL, 'Mr. Thuong Nguyen', '\r\n<p>Architecture Programmer at MAA<br>\r\nIntern at MIA Design Studio.<br>\r\nProject Collaborator Maru Ichi Floating House - Symbiotic floating village project adapting to climate change in the Mekong Delta.<br>\r\nConcept Architect at MIA Design Studio.<br>\r\nTeaching Architecture at MAA..</p>\r\n<script data-ts=\"1750403215371\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>Architecture Programmer at MAA</li>\r\n	<li>Intern at MIA Design Studio.</li>\r\n	<li>Project Collaborator Maru Ichi Floating House - Symbiotic floating village project adapting to climate change in the Mekong Delta.</li>\r\n	<li>Concept Architect at MIA Design Studio.</li>\r\n	<li>Teaching Architecture at MAA..</li>\r\n</ul>\r\n<script data-ts=\"1750403215370\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1750403215'),
(11, 6, 4, 'academic-tour-to-the-one-academy-malaysia', 'ACADEMIC TOUR TO THE ONE ACADEMY - MALAYSIA', '', '', NULL, '0', '0', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">August, 2023 – The high school students of MAA had an amazing and educational field trip to one of the world’s top academy for Arts &amp; Design, The One Academy. During the tour, our students experienced what was like to be a student at The One Academy and had opportunity to have more insights about the fields of Arts &amp; Design. Moreover, this trip was also a wonderful chance for our young artists to observe and learn more about Malaysian culture and country. We would love to send our sincerest thanks to our dearest partner, The One Academy.</span></span></span></span></span></p>\r\n<script data-ts=\"1751896387864\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">August, 2023 – The high school students of MAA had an amazing and educational field trip to one of the world’s top academy for Arts &amp; Design, The One Academy. During the tour, our students experienced what was like to be a student at The One Academy and had opportunity to have more insights about the fields of Arts &amp; Design. Moreover, this trip was also a wonderful chance for our young artists to observe and learn more about Malaysian culture and country. We would love to send our sincerest thanks to our dearest partner, The One Academy.</span></span></span></span></span></p>\r\n<script data-ts=\"1751896387858\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'rsz_z6760114435206_33b77fa59a787c6b356d88e684f66741_20250707085114.jpg', '', '', NULL, 1, 1, '1', 1, 748, '2025-06-20', '2025-07-07', NULL, NULL, 'ACADEMIC TOUR TO THE ONE ACADEMY - MALAYSIA', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">August, 2023 – The high school students of MAA had an amazing and educational field trip to one of the world’s top academy for Arts &amp; Design, The One Academy. During the tour, our students experienced what was like to be a student at The One Academy and had opportunity to have more insights about the fields of Arts &amp; Design. Moreover, this trip was also a wonderful chance for our young artists to observe and learn more about Malaysian culture and country. We would love to send our sincerest thanks to our dearest partner, The One Academy.</span></span></span></span></span></p>\r\n<script data-ts=\"1751896387870\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">August, 2023 – The high school students of MAA had an amazing and educational field trip to one of the world’s top academy for Arts &amp; Design, The One Academy. During the tour, our students experienced what was like to be a student at The One Academy and had opportunity to have more insights about the fields of Arts &amp; Design. Moreover, this trip was also a wonderful chance for our young artists to observe and learn more about Malaysian culture and country. We would love to send our sincerest thanks to our dearest partner, The One Academy.</span></span></span></span></span></p>\r\n<script data-ts=\"1751896387867\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1751896274'),
(12, 6, 4, 'mural-art-–-well-being', 'MURAL ART – WELL-BEING', '', '', NULL, '0', '0', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">2023 - This mural is the fruitful result of many of our students and teachers’ effort and hard work over two weeks. The message behind the mural is to encourage our beloved young generation with love, care and compassion. This mural is placed at the largest campus of our partner, Vietnam Australia International School.</span></span></span></span></span></p>\r\n<script data-ts=\"1751896495984\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">2023 - This mural is the fruitful result of many of our students and teachers’ effort and hard work over two weeks. The message behind the mural is to encourage our beloved young generation with love, care and compassion. This mural is placed at the largest campus of our partner, Vietnam Australia International School.</span></span></span></span></span></p>\r\n<script data-ts=\"1751896495977\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'rsz_z6760114651557_7e0aab831107ef02b63c908dc52e956f_20250707085302.jpg', '', '', NULL, 1, 1, '2', 1, 748, '2025-06-20', '2025-07-07', NULL, NULL, 'MURAL ART – WELL-BEING', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">2023 - This mural is the fruitful result of many of our students and teachers’ effort and hard work over two weeks. The message behind the mural is to encourage our beloved young generation with love, care and compassion. This mural is placed at the largest campus of our partner, Vietnam Australia International School.</span></span></span></span></span></p>\r\n<script data-ts=\"1751896495992\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><span style=\"language:en-US\"><span style=\"text-justify:inter-ideograph\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"punctuation-wrap:hanging\"><span style=\"font-size:12.0pt\"><span style=\"font-family:Calibri\"><span style=\"color:black\"><span style=\"language:en-US\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">2023 - This mural is the fruitful result of many of our students and teachers’ effort and hard work over two weeks. The message behind the mural is to encourage our beloved young generation with love, care and compassion. This mural is placed at the largest campus of our partner, Vietnam Australia International School.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n<script data-ts=\"1751896495987\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1751896382');
INSERT INTO `maa_tnews` (`nid`, `nid_section_news`, `nid_cat_news`, `ccode`, `ctitle`, `cauthor`, `ctag`, `nhit`, `nimg`, `alwcmt`, `cshort_content`, `ccontent`, `cimage_height`, `cimage_thumb`, `cimage_fb`, `cimage_iphone`, `nspecial`, `nhome`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `ckeword_tag`, `cdescription_tag`, `eng_ctitle`, `eng_cshort_content`, `eng_ccontent`, `clink`, `chome`, `cnote`, `cdate`, `ctime`) VALUES
(13, 6, 4, 'community-halloween-party-at-vinhomes-central-park', 'COMMUNITY HALLOWEEN PARTY AT VINHOMES CENTRAL PARK', '', '', NULL, '0', '0', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">“Trick or Treat! Trick or Treat!” – Halloween arrived at </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Vinhomes</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Central Park with loads of laughter and sweetness among the children. Prepared and decorated by MAA, the party was a joyful event when every child within the residential area could have fun and dive in the imaginary world where monsters, princesses and superheroes play and share moments together.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897291143\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">“Trick or Treat! Trick or Treat!” – Halloween arrived at </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Vinhomes</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Central Park with loads of laughter and sweetness among the children. Prepared and decorated by MAA, the party was a joyful event when every child within the residential area could have fun and dive in the imaginary world where monsters, princesses and superheroes play and share moments together.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897291134\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'rsz_z6760113659197_11faf88b41c2d88cd8a81fac04c89054_20250707090617.jpg', '', '', NULL, 1, 1, '3', 1, 748, '2025-06-20', '2025-07-07', NULL, NULL, 'COMMUNITY HALLOWEEN PARTY AT VINHOMES CENTRAL PARK', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">“Trick or Treat! Trick or Treat!” – Halloween arrived at </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Vinhomes</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Central Park with loads of laughter and sweetness among the children. Prepared and decorated by MAA, the party was a joyful event when every child within the residential area could have fun and dive in the imaginary world where monsters, princesses and superheroes play and share moments together.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897291150\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">“Trick or Treat! Trick or Treat!” – Halloween arrived at </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Vinhomes</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Central Park with loads of laughter and sweetness among the children. Prepared and decorated by MAA, the party was a joyful event when every child within the residential area could have fun and dive in the imaginary world where monsters, princesses and superheroes play and share moments together.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897291146\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1751897177'),
(14, 6, 4, 'new-year-display-window-at-sonatus', 'NEW YEAR DISPLAY WINDOW AT SONATUS', '', '', NULL, '0', '0', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">It was such a great honor for us to have an opportunity to pull off this wonderous display window at one of the most prestige building in District 1, </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Sonatus</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Building. Carefully designed with hard work and efforts, the display window was expected to bring great fortune and development as well as good health for all leaders and staffs in celebration of this Lunar New Year.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897373049\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">It was such a great honor for us to have an opportunity to pull off this wonderous display window at one of the most prestige building in District 1, </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Sonatus</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Building. Carefully designed with hard work and efforts, the display window was expected to bring great fortune and development as well as good health for all leaders and staffs in celebration of this Lunar New Year.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897373042\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'rsz_z6760113570096_66530993568fc23f491cf5bf325b093f_20250707090739.jpg', '', '', NULL, 1, 1, '4', 1, 748, '2025-06-20', '2025-07-07', NULL, NULL, 'NEW YEAR DISPLAY WINDOW AT SONATUS', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">It was such a great honor for us to have an opportunity to pull off this wonderous display window at one of the most prestige building in District 1, </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Sonatus</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Building. Carefully designed with hard work and efforts, the display window was expected to bring great fortune and development as well as good health for all leaders and staffs in celebration of this Lunar New Year.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897373059\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">It was such a great honor for us to have an opportunity to pull off this wonderous display window at one of the most prestige building in District 1, </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Sonatus</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Building. Carefully designed with hard work and efforts, the display window was expected to bring great fortune and development as well as good health for all leaders and staffs in celebration of this Lunar New Year.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897373054\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1751897259'),
(17, 6, 1, 'workshop-vietnamese-calligraphy-and-dong-ho-painting', 'WORKSHOP: VIETNAMESE CALLIGRAPHY AND DONG HO PAINTING ', '', '', NULL, '0', '0', '\r\n<p style=\"margin-top:0pt; margin-bottom:0pt; margin-left:0in; text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">In honoring and celebrating this 2025 Lunar New Year, MAA established a series of Vietnamese Calligraphy and Dong Ho Painting Workshops for children from 6 to 17 years old at </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Vinhomes</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Central Park.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:0pt; margin-bottom:0pt; margin-left:0in; text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">At MAA workshops, participants learned about the history and cultural value of Dong Ho Painting as well as their interesting yet lasting printing technique. Participants also had a chance to practice traditional calligraphy on Vietnamese traditional paper and ink. This was a wonderful opportunity for participants to travel back in time to absorb and savor the core values of cultures and traditions.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897587806\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p style=\"margin-top:0pt; margin-bottom:0pt; margin-left:0in; text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">In honoring and celebrating this 2025 Lunar New Year, MAA established a series of Vietnamese Calligraphy and Dong Ho Painting Workshops for children from 6 to 17 years old at </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Vinhomes</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Central Park.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:0pt; margin-bottom:0pt; margin-left:0in; text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">At MAA workshops, participants learned about the history and cultural value of Dong Ho Painting as well as their interesting yet lasting printing technique. Participants also had a chance to practice traditional calligraphy on Vietnamese traditional paper and ink. This was a wonderful opportunity for participants to travel back in time to absorb and savor the core values of cultures and traditions.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897587800\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'rsz_686bd5683c55d_20250707091114.png', '', '', NULL, 1, 1, '2', 748, 748, '2025-07-07', '2025-07-07', NULL, NULL, 'WORKSHOP: VIETNAMESE CALLIGRAPHY AND DONG HO PAINTING ', '\r\n<p style=\"margin-top:0pt; margin-bottom:0pt; margin-left:0in; text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">In honoring and celebrating this 2025 Lunar New Year, MAA established a series of Vietnamese Calligraphy and Dong Ho Painting Workshops for children from 6 to 17 years old at </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Vinhomes</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Central Park.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:0pt; margin-bottom:0pt; margin-left:0in; text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">At MAA workshops, participants learned about the history and cultural value of Dong Ho Painting as well as their interesting yet lasting printing technique. Participants also had a chance to practice traditional calligraphy on Vietnamese traditional paper and ink. This was a wonderful opportunity for participants to travel back in time to absorb and savor the core values of cultures and traditions.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897587816\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p style=\"margin-top:0pt; margin-bottom:0pt; margin-left:0in; text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">In honoring and celebrating this 2025 Lunar New Year, MAA established a series of Vietnamese Calligraphy and Dong Ho Painting Workshops for children from 6 to 17 years old at </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">Vinhomes</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> Central Park.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:0pt; margin-bottom:0pt; margin-left:0in; text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"unicode-bidi:embed\"><span style=\"word-break:normal\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">At MAA workshops, participants learned about the history and cultural value of Dong Ho Painting as well as their interesting yet lasting printing technique. Participants also had a chance to practice traditional calligraphy on Vietnamese traditional paper and ink. This was a wonderful opportunity for participants to travel back in time to absorb and savor the core values of cultures and traditions.</span></span></span></span></span></p>\r\n<script data-ts=\"1751897587811\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1751897474'),
(15, 6, 1, 'intro-to-digital-art', 'INTRO TO DIGITAL ART', '', '', NULL, '0', '0', '\r\n<p>On Sunday, July 6th 2025, PIGCreative and MAA organized an amazing workshop introducing the world of Digital Art along with first-hand experience for the young artists who wish to explore more about the field at Landmark 1, Vinhomes Central Park, HCMC.</p>\r\n<script data-ts=\"1751364533089\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>On Sunday, July 6th 2025, PIGCreative and MAA organized an amazing workshop introducing the world of Digital Art along with first-hand experience for the young artists who wish to explore more about the field at Landmark 1, Vinhomes Central Park, HCMC.</p>\r\n\r\n<p>During the workshop, the young artists learned about how a digital artwork is made from scratch, the differences between illustrating artworks on iPad and on Wacom tablets and the variety of majors related to Digital Arts.<br>\r\nPIGCreative and MAA aim to establish more of these workshops in the future in order to support more Vietnamese young artist on the search for a future career in the field of Arts &amp; Design.</p>\r\n<script data-ts=\"1751364533088\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n1_20250701050440.png', '', '', NULL, 1, 1, '1', 1, 1, '2025-07-01', '2025-07-01', NULL, NULL, 'INTRO TO DIGITAL ART', '\r\n<p>On Sunday, July 6th 2025, PIGCreative and MAA organized an amazing workshop introducing the world of Digital Art along with first-hand experience for the young artists who wish to explore more about the field at Landmark 1, Vinhomes Central Park, HCMC.</p>\r\n<script data-ts=\"1751364533090\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>On Sunday, July 6th 2025, PIGCreative and MAA organized an amazing workshop introducing the world of Digital Art along with first-hand experience for the young artists who wish to explore more about the field at Landmark 1, Vinhomes Central Park, HCMC.</p>\r\n\r\n<p>During the workshop, the young artists learned about how a digital artwork is made from scratch, the differences between illustrating artworks on iPad and on Wacom tablets and the variety of majors related to Digital Arts.<br>\r\nPIGCreative and MAA aim to establish more of these workshops in the future in order to support more Vietnamese young artist on the search for a future career in the field of Arts &amp; Design.</p>\r\n<script data-ts=\"1751364533089\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1751364534'),
(18, 6, 1, 'play-my-math-fraction-fun-through-music-workshop', 'PLAY MY MATH: FRACTION FUN THROUGH MUSIC WORKSHOP', '', '', NULL, '0', '0', '\r\n<p>This December 2024, MAA would thank Mr. Eric Roldan Roa and Ms. Doris Kristina Raave for collaborating with us in this successful and informative workshop of Play My Math.</p>\r\n\r\n<p>At the workshop, students learned how to cope with basic numbers and fractions to write, read and create music without using musical notes. From this perspective, the workshop helped students to gain more interest in Math as well as use Math as a form to create songs and musical pieces. Additionally, students also had an opportunity to share their thoughts and experience in learning and dealing with Maths.</p>\r\n<script data-ts=\"1751957732625\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>This December 2024, MAA would thank Mr. Eric Roldan Roa and Ms. Doris Kristina Raave for collaborating with us in this successful and informative workshop of Play My Math.</p>\r\n\r\n<p>At the workshop, students learned how to cope with basic numbers and fractions to write, read and create music without using musical notes. From this perspective, the workshop helped students to gain more interest in Math as well as use Math as a form to create songs and musical pieces. Additionally, students also had an opportunity to share their thoughts and experience in learning and dealing with Maths.</p>\r\n<script data-ts=\"1751957732624\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n2_20250708015517.jpg', '', '', NULL, 1, 1, '3', 1, 1, '2025-07-08', '2025-07-08', NULL, NULL, 'PLAY MY MATH: FRACTION FUN THROUGH MUSIC WORKSHOP', '\r\n<p>This December 2024, MAA would thank Mr. Eric Roldan Roa and Ms. Doris Kristina Raave for collaborating with us in this successful and informative workshop of Play My Math.</p>\r\n\r\n<p>At the workshop, students learned how to cope with basic numbers and fractions to write, read and create music without using musical notes. From this perspective, the workshop helped students to gain more interest in Math as well as use Math as a form to create songs and musical pieces. Additionally, students also had an opportunity to share their thoughts and experience in learning and dealing with Maths.</p>\r\n<script data-ts=\"1751957732626\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>This December 2024, MAA would thank Mr. Eric Roldan Roa and Ms. Doris Kristina Raave for collaborating with us in this successful and informative workshop of Play My Math.</p>\r\n\r\n<p>At the workshop, students learned how to cope with basic numbers and fractions to write, read and create music without using musical notes. From this perspective, the workshop helped students to gain more interest in Math as well as use Math as a form to create songs and musical pieces. Additionally, students also had an opportunity to share their thoughts and experience in learning and dealing with Maths.</p>\r\n<script data-ts=\"1751957732625\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1751957733'),
(19, 6, 1, 'workshop-character-design-with-“flow”', 'WORKSHOP: CHARACTER DESIGN WITH “FLOW”', '', '', NULL, '0', '0', '\r\n<p>This March, MAA organized an educational field trip to the movie theatre under Landmark 81 where our little angels enjoys the Oscar-winner movie: Flow.</p>\r\n\r\n<p>The objectives of this workshop are to introduce the participants to a unique type of movie which no dialogue is presented and to inspire them with ideas. After the movie experience, each participant had to illustrate their favourite characters from the movie and presented the artwork under the form of fanart.</p>\r\n<script data-ts=\"1751957811785\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>This March, MAA organized an educational field trip to the movie theatre under Landmark 81 where our little angels enjoys the Oscar-winner movie: Flow.</p>\r\n\r\n<p>The objectives of this workshop are to introduce the participants to a unique type of movie which no dialogue is presented and to inspire them with ideas. After the movie experience, each participant had to illustrate their favourite characters from the movie and presented the artwork under the form of fanart.</p>\r\n<script data-ts=\"1751957811784\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n4_20250708015652.jpg', '', '', NULL, 1, 1, '4', 1, 1, '2025-07-08', '2025-07-08', NULL, NULL, 'WORKSHOP: CHARACTER DESIGN WITH “FLOW”', '\r\n<p>This March, MAA organized an educational field trip to the movie theatre under Landmark 81 where our little angels enjoys the Oscar-winner movie: Flow.</p>\r\n\r\n<p>The objectives of this workshop are to introduce the participants to a unique type of movie which no dialogue is presented and to inspire them with ideas. After the movie experience, each participant had to illustrate their favourite characters from the movie and presented the artwork under the form of fanart.</p>\r\n<script data-ts=\"1751957811786\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>This March, MAA organized an educational field trip to the movie theatre under Landmark 81 where our little angels enjoys the Oscar-winner movie: Flow.</p>\r\n\r\n<p>The objectives of this workshop are to introduce the participants to a unique type of movie which no dialogue is presented and to inspire them with ideas. After the movie experience, each participant had to illustrate their favourite characters from the movie and presented the artwork under the form of fanart.</p>\r\n<script data-ts=\"1751957811786\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', NULL),
(20, 6, 1, 'workshop-women’s-day-fragrance-at-ila', 'WORKSHOP: WOMEN’S DAY FRAGRANCE AT ILA', '', '', NULL, '0', '0', '\r\n<p>Celebrating this year Women’s Day, MAA &amp; Lueur Douce – Eau da Parfum held a meaningful fragrance workshop with our partner, ILA.</p>\r\n\r\n<p>Joining our workshops, participants had a chance to experience various kinds of fragrance before mixing them to create their very own personal perfume. The final products can be used as a meaningful gift to participants’ love ones or women that they admire the most in the family.</p>\r\n<script data-ts=\"1751958059429\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>Celebrating this year Women’s Day, MAA &amp; Lueur Douce – Eau da Parfum held a meaningful fragrance workshop with our partner, ILA.</p>\r\n\r\n<p>Joining our workshops, participants had a chance to experience various kinds of fragrance before mixing them to create their very own personal perfume. The final products can be used as a meaningful gift to participants’ love ones or women that they admire the most in the family.</p>\r\n<script data-ts=\"1751958059428\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n5_20250708020100.jpg', '', '', NULL, 1, 1, '5', 1, 1, '2025-07-08', '2025-07-08', NULL, NULL, 'WORKSHOP: WOMEN’S DAY FRAGRANCE AT ILA', '\r\n<p>Celebrating this year Women’s Day, MAA &amp; Lueur Douce – Eau da Parfum held a meaningful fragrance workshop with our partner, ILA.</p>\r\n\r\n<p>Joining our workshops, participants had a chance to experience various kinds of fragrance before mixing them to create their very own personal perfume. The final products can be used as a meaningful gift to participants’ love ones or women that they admire the most in the family.</p>\r\n<script data-ts=\"1751958059431\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>Celebrating this year Women’s Day, MAA &amp; Lueur Douce – Eau da Parfum held a meaningful fragrance workshop with our partner, ILA.</p>\r\n\r\n<p>Joining our workshops, participants had a chance to experience various kinds of fragrance before mixing them to create their very own personal perfume. The final products can be used as a meaningful gift to participants’ love ones or women that they admire the most in the family.</p>\r\n<script data-ts=\"1751958059430\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', NULL),
(21, 6, 1, 'career-talk-with-dr-buhmann-schule-akademie-edubao', 'CAREER TALK WITH DR. BUHMANN SCHULE AKADEMIE & EDUBAO', '', '', NULL, '0', '0', '\r\n<p>We would love to send our dearest thank to the Principal of Dr. Buhmann Schule &amp; Akademie and EDUBAO for this informative career talk at MAA. This meeting provide a lot of important information to the parents and students about the opportunity of studying, working and immigrating in Germany.</p>\r\n\r\n<p>This sharing session has opened up many chances and clearer paths for the students and parents who are interested in studying and working in Germany.</p>\r\n<script data-ts=\"1752809444824\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>We would love to send our dearest thank to the Principal of Dr. Buhmann Schule &amp; Akademie and EDUBAO for this informative career talk at MAA. This meeting provide a lot of important information to the parents and students about the opportunity of studying, working and immigrating in Germany.</p>\r\n\r\n<p>This sharing session has opened up many chances and clearer paths for the students and parents who are interested in studying and working in Germany.</p>\r\n<script data-ts=\"1752809444823\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n6_20250708020155.jpg', '', '', NULL, 1, 1, '6', 1, 1, '2025-07-08', '2025-07-18', NULL, NULL, 'CAREER TALK WITH DR. BUHMANN SCHULE AKADEMIE & EDUBAO', '\r\n<p>We would love to send our dearest thank to the Principal of Dr. Buhmann Schule &amp; Akademie and EDUBAO for this informative career talk at MAA. This meeting provide a lot of important information to the parents and students about the opportunity of studying, working and immigrating in Germany.</p>\r\n\r\n<p>This sharing session has opened up many chances and clearer paths for the students and parents who are interested in studying and working in Germany.</p>\r\n<script data-ts=\"1752809444825\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>We would love to send our dearest thank to the Principal of Dr. Buhmann Schule &amp; Akademie and EDUBAO for this informative career talk at MAA. This meeting provide a lot of important information to the parents and students about the opportunity of studying, working and immigrating in Germany.</p>\r\n\r\n<p>This sharing session has opened up many chances and clearer paths for the students and parents who are interested in studying and working in Germany.</p>\r\n<script data-ts=\"1752809444825\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1752809445'),
(22, 6, 1, 'workshop-artistic-journey-of-discover-at-vincom-plaza-3-2', 'WORKSHOP: ARTISTIC JOURNEY OF DISCOVER AT VINCOM PLAZA 3/2', '', '', NULL, '0', '0', '\r\n<p>On June 26, 2024, MAA welcomed customers to the grand opening of Vincom Plaza 3/2, a fresh and vibrant destination in the heart of Ho Chi Minh City. To mark this special occasion, Vincom Plaza 3/2, in collaboration with MAA (Magic Arts &amp; Architecture) organized a series of exciting workshop experiences for 5-15 year-old participants.</p>\r\n\r\n<p>We promised our participants with exciting promotions and special gifts in the grand opening event and a lively and inspiring space with unforgettable moments.</p>\r\n<script data-ts=\"1751958163661\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>On June 26, 2024, MAA welcomed customers to the grand opening of Vincom Plaza 3/2, a fresh and vibrant destination in the heart of Ho Chi Minh City. To mark this special occasion, Vincom Plaza 3/2, in collaboration with MAA (Magic Arts &amp; Architecture) organized a series of exciting workshop experiences for 5-15 year-old participants.</p>\r\n\r\n<p>We promised our participants with exciting promotions and special gifts in the grand opening event and a lively and inspiring space with unforgettable moments.</p>\r\n<script data-ts=\"1751958163659\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n7_20250708020245.jpg', '', '', NULL, 1, 1, '7', 1, 1, '2025-07-08', '2025-07-08', NULL, NULL, 'WORKSHOP: ARTISTIC JOURNEY OF DISCOVER AT VINCOM PLAZA 3/2', '\r\n<p>On June 26, 2024, MAA welcomed customers to the grand opening of Vincom Plaza 3/2, a fresh and vibrant destination in the heart of Ho Chi Minh City. To mark this special occasion, Vincom Plaza 3/2, in collaboration with MAA (Magic Arts &amp; Architecture) organized a series of exciting workshop experiences for 5-15 year-old participants.</p>\r\n\r\n<p>We promised our participants with exciting promotions and special gifts in the grand opening event and a lively and inspiring space with unforgettable moments.</p>\r\n<script data-ts=\"1751958163662\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>On June 26, 2024, MAA welcomed customers to the grand opening of Vincom Plaza 3/2, a fresh and vibrant destination in the heart of Ho Chi Minh City. To mark this special occasion, Vincom Plaza 3/2, in collaboration with MAA (Magic Arts &amp; Architecture) organized a series of exciting workshop experiences for 5-15 year-old participants.</p>\r\n\r\n<p>We promised our participants with exciting promotions and special gifts in the grand opening event and a lively and inspiring space with unforgettable moments.</p>\r\n<script data-ts=\"1751958163661\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', NULL),
(23, 6, 1, 'field-trip-hcmc-architecture', 'FIELD TRIP: HCMC ARCHITECTURE', '', '', NULL, '0', '0', '\r\n<p>What can be a better way to experience and study architecture than having a field trip, sitting down by the street and sketching out all the details and lively atmosphere around the buildings. This summer of 2024, MAA led many of the students from the age of 10 and above to district 1 of HCMC where most of the 19th century French architecture remains.</p>\r\n<script data-ts=\"1751958196176\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>What can be a better way to experience and study architecture than having a field trip, sitting down by the street and sketching out all the details and lively atmosphere around the buildings. This summer of 2024, MAA led many of the students from the age of 10 and above to district 1 of HCMC where most of the 19th century French architecture remains.</p>\r\n<script data-ts=\"1751958196175\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'n8_20250708020317.jpg', '', '', NULL, 1, 1, '8', 1, 1, '2025-07-08', '2025-07-08', NULL, NULL, 'FIELD TRIP: HCMC ARCHITECTURE', '\r\n<p>What can be a better way to experience and study architecture than having a field trip, sitting down by the street and sketching out all the details and lively atmosphere around the buildings. This summer of 2024, MAA led many of the students from the age of 10 and above to district 1 of HCMC where most of the 19th century French architecture remains.</p>\r\n<script data-ts=\"1751958196177\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>What can be a better way to experience and study architecture than having a field trip, sitting down by the street and sketching out all the details and lively atmosphere around the buildings. This summer of 2024, MAA led many of the students from the age of 10 and above to district 1 of HCMC where most of the 19th century French architecture remains.</p>\r\n<script data-ts=\"1751958196177\" src=\"//cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', NULL),
(24, 6, 3, 'product-design', 'Product Design', '', '', NULL, '0', '0', '\r\n<h6>Độ tuổi: 12–14 tuổi <span class=\"lo_trinh_label\">Chương trình 3 năm</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Mục tiêu khóa học:</b></p>\r\n\r\n<ul>\r\n	<li>Hiểu quy trình thiết kế lấy con người làm trung tâm</li>\r\n	<li>Phân tích nhu cầu người dùng và xu hướng thị trường</li>\r\n	<li>Phát triển ý tưởng bằng phác thảo 2D và hình ảnh 3D</li>\r\n	<li>Thử nghiệm với vật liệu, hình khối và kết cấu</li>\r\n	<li>Học cách đánh giá, tinh chỉnh và trình bày ý tưởng sản phẩm một cách chuyên nghiệp</li>\r\n</ul>\r\n\r\n<p><b>Kết quả học tập:</b></p>\r\n\r\n<ul>\r\n	<li>Thiết kế và tạo mẫu sản phẩm chức năng</li>\r\n	<li>Hiểu về công thái học, hành vi người dùng và tính bền vững</li>\r\n	<li>Truyền đạt ý tưởng thiết kế rõ ràng thông qua hình ảnh và lời nói</li>\r\n	<li>Tạo sổ tay quy trình hoặc hồ sơ nhỏ ghi lại quá trình phát triển dự án</li>\r\n	<li>Nắm vững kiến thức nền tảng cho các nghiên cứu sâu hơn về thiết kế công nghiệp và sản phẩm.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778745155386\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778745155385\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'ProductDesign_20260514084914.jpg', '', '', NULL, 1, 1, '6', 1, 1, '2025-07-18', '2026-05-14', NULL, NULL, 'Product Design', '\r\n<h6>Ages: 12–14 <span class=\"lo_trinh_label\">3-Year Program</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Course Objectives:</b></p>\r\n\r\n<ul>\r\n	<li>Understand the human-centered design process</li>\r\n	<li>Analyze user needs and market trends</li>\r\n	<li>Develop concepts using 2D sketching and 3D visualization</li>\r\n	<li>Experiment with materials, forms, and textures</li>\r\n	<li>Learn to evaluate, refine, and present product ideas professionally</li>\r\n</ul>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<ul>\r\n	<li>Design and prototype a functional product</li>\r\n	<li>Understand ergonomics, user behavior, and sustainability</li>\r\n	<li>Communicate design ideas clearly through visual and verbal presentation</li>\r\n	<li>Create a process book or mini-portfolio documenting their project development</li>\r\n	<li>Gain foundational knowledge for further studies in industrial and product design.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1778745155388\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1778745155387\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1778745155'),
(27, 6, 2, 'mr-tom-nguyen', 'Mr Tom Nguyen', 'Project Management', '', NULL, '0', '0', '\r\n<p>MSC in Construction and Project Management Queen’s University Belfast, United Kingdom Team Leader of Architecture Programme at International Schools 4 years of teaching Arts &amp; Design at Magic Arts &amp; Architecture (MAA)</p>\r\n<script data-ts=\"1778745989868\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>MSC in Construction and Project Management</li>\r\n	<li>Queen’s University Belfast, United Kingdom</li>\r\n	<li>Team Leader of Architecture Programme at International Schools</li>\r\n	<li>4 years of teaching Arts &amp; Design at Magic Arts &amp; Architecture (MAA)</li>\r\n</ul>\r\n<script data-ts=\"1778745989867\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'tom_20260514030630.jpg', '', '', NULL, 1, 1, '5', 1, 1, '2026-01-07', '2026-05-14', NULL, NULL, 'Mr Tom Nguyen', '\r\n<p>MSC in Construction and Project Management Queen’s University Belfast, United Kingdom Team Leader of Architecture Programme at International Schools 4 years of teaching Arts &amp; Design at Magic Arts &amp; Architecture (MAA)</p>\r\n<script data-ts=\"1778745989869\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<ul>\r\n	<li>MSC in Construction and Project Management</li>\r\n	<li>Queen’s University Belfast, United Kingdom</li>\r\n	<li>Team Leader of Architecture Programme at International Schools</li>\r\n	<li>4 years of teaching Arts &amp; Design at Magic Arts &amp; Architecture (MAA)</li>\r\n</ul>\r\n<script data-ts=\"1778745989869\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1778745990'),
(33, 6, 1, 'online-workshop-“building-future-careers-in-robotics-drones-stem”', 'Online Workshop: “BUILDING FUTURE CAREERS IN ROBOTICS, DRONES & STEM”', '', '', NULL, '0', '0', '\r\n<p>Join the “BUILDING FUTURE CAREERS IN ROBOTICS, DRONES &amp; STEM” Online Workshop to explore emerging trends, career opportunities, essential skills, and future pathways in Robotics, Drones, AI, and Automation with leading experts from Germany and Singapore.</p>\r\n<script data-ts=\"1786525477501\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><i class=\"fa fa-graduation-cap\"></i> <strong>Online Workshop: “BUILDING FUTURE CAREERS IN ROBOTICS, DRONES &amp; STEM”</strong></p>\r\n\r\n<p><strong>Is your child ready for the careers of the future?</strong></p>\r\n\r\n<p>As digital transformation continues to reshape the world at an unprecedented pace, it is fundamentally changing how we learn, work, and build our careers. Fields such as Robotics, Drones (UAVs), Artificial Intelligence (AI), and Automation are becoming increasingly important drivers of the global economy and will play a significant role in shaping Vietnam’s future.</p>\r\n\r\n<p><i class=\"fa fa-map-marker\"></i> At this Online Workshop, hosted together with experts from DroneMasters Academy (Berlin, Germany) — a partner of MAA (Magic Arts &amp; Architecture Education) — students and parents will have the opportunity to explore:</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Emerging trends in Robotics, Drones, AI, and Automation in the digital era.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Why these fields will play an increasingly important role in Vietnam’s future economic development and workforce.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Career opportunities in Robotics, Drones, AI, and Automation in Vietnam and international markets.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> The skills that leading global technology companies are looking for in the future workforce.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Employment prospects across regional and international markets, as well as opportunities for sustainable career development.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Opportunities for entrepreneurship, innovation, and growth within the technology ecosystem.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Real-world examples of companies and technology projects applying Robotics, Drones, and AI around the world.</p>\r\n\r\n<p>One of the highlights of the workshop will be the opportunity to meet and interact directly with leading experts from DroneMasters Academy in Berlin, Germany. Participants will also hear from distinguished guest speakers from Germany and Singapore, who are partners of Magic Arts &amp; Architecture Haus in potential international education collaboration projects currently under development.</p>\r\n\r\n<h3><i class=\"fa fa-bullseye\"></i> Guest Speakers</h3>\r\n\r\n<p><i class=\"fa fa-microphone\"></i> <strong>Expert from DroneMasters Academy | Berlin, Germany</strong></p>\r\n\r\n<p><i class=\"fa fa-microphone\"></i> <strong>Mr. Harshal – AI Analyst | Apple Singapore</strong><br>\r\nFormer Engineering Team Lead | Meta &amp; Google Pixel<br>\r\nFormer Senior Application Analyst | Singapore Airlines<br>\r\n14+ years of experience in AI, Automation &amp; Engineering Leadership</p>\r\n\r\n<p>Drawing on his extensive industry experience, Mr. Harshal will share practical insights into future career trends, essential skills, and development pathways in Robotics, Drones, AI &amp; STEM for students, university students, and young people passionate about technology.</p>\r\n\r\n<p><i class=\"fa fa-microphone\"></i> <strong>Mr. Vương Hồng Trí – Master’s Degree in Information Technology | CEO, VIEX Consulting GmbH (Germany)</strong></p>\r\n\r\n<p>Mr. Vương Hồng Trí is an expert in connecting technology and business between Germany and Vietnam. With extensive hands-on experience in the European market, he brings a global perspective on how technology is transforming industries and reshaping the labor market.</p>\r\n\r\n<p>During the workshop, he will provide students and parents with practical insights into “Future Career Trends in the Technology Era,” helping young people develop a clearer career orientation and prepare the knowledge, mindset, and skills needed for their future.</p>\r\n\r\n<p><i class=\"fa fa-globe\"></i> If you are a student, university student, parent, or young person passionate about technology, this workshop is an excellent opportunity to gain a deeper understanding of the industries shaping our future and to prepare for your learning and career journey in the age of AI.</p>\r\n\r\n<p><i class=\"fa fa-map-marker\"></i> <strong>ONLINE WORKSHOP</strong><br>\r\n<strong>“BUILDING FUTURE CAREERS IN ROBOTICS, DRONES &amp; STEM”</strong><br>\r\nWith DroneMasters Academy, Germany</p>\r\n\r\n<p><i class=\"fa fa-calendar\"></i> <strong>Time: 4:00 PM (Vietnam Time)</strong><br>\r\nSunday, August 23, 2026</p>\r\n\r\n<p><i class=\"fa fa-laptop\"></i> <strong>Format:</strong> Online via Zoom / Google Meet</p>\r\n\r\n<p><i class=\"fa fa-link\"></i> <strong>Workshop Registration:</strong> <a href=\"https://forms.gle/owVvex7eavA6BG5a7\" rel=\"noopener noreferrer\" target=\"_blank\">https://forms.gle/owVvex7eavA6BG5a7</a></p>\r\n\r\n<p>The workshop access link will be sent directly to registered parents and participants using the contact information provided during registration.</p>\r\n\r\n<p>We warmly welcome parents and students to join us. Together, let’s explore the future, discover emerging career opportunities, and prepare the next generation for the world of tomorrow!</p>\r\n<script data-ts=\"1786525477498\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'OnlineWorkshop_20260812040438.jpg', '', '', NULL, 1, 1, '', 1, 1, '2026-08-12', '2026-08-12', NULL, NULL, 'Online Workshop: “BUILDING FUTURE CAREERS IN ROBOTICS, DRONES & STEM”', '\r\n<p>Join the “BUILDING FUTURE CAREERS IN ROBOTICS, DRONES &amp; STEM” Online Workshop to explore emerging trends, career opportunities, essential skills, and future pathways in Robotics, Drones, AI, and Automation with leading experts from Germany and Singapore.</p>\r\n<script data-ts=\"1786525477504\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p><i class=\"fa fa-graduation-cap\"></i> <strong>Online Workshop: “BUILDING FUTURE CAREERS IN ROBOTICS, DRONES &amp; STEM”</strong></p>\r\n\r\n<p><strong>Is your child ready for the careers of the future?</strong></p>\r\n\r\n<p>As digital transformation continues to reshape the world at an unprecedented pace, it is fundamentally changing how we learn, work, and build our careers. Fields such as Robotics, Drones (UAVs), Artificial Intelligence (AI), and Automation are becoming increasingly important drivers of the global economy and will play a significant role in shaping Vietnam’s future.</p>\r\n\r\n<p><i class=\"fa fa-map-marker\"></i> At this Online Workshop, hosted together with experts from DroneMasters Academy (Berlin, Germany) — a partner of MAA (Magic Arts &amp; Architecture Education) — students and parents will have the opportunity to explore:</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Emerging trends in Robotics, Drones, AI, and Automation in the digital era.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Why these fields will play an increasingly important role in Vietnam’s future economic development and workforce.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Career opportunities in Robotics, Drones, AI, and Automation in Vietnam and international markets.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> The skills that leading global technology companies are looking for in the future workforce.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Employment prospects across regional and international markets, as well as opportunities for sustainable career development.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Opportunities for entrepreneurship, innovation, and growth within the technology ecosystem.</p>\r\n\r\n<p><i class=\"fa fa-star\"></i> Real-world examples of companies and technology projects applying Robotics, Drones, and AI around the world.</p>\r\n\r\n<p>One of the highlights of the workshop will be the opportunity to meet and interact directly with leading experts from DroneMasters Academy in Berlin, Germany. Participants will also hear from distinguished guest speakers from Germany and Singapore, who are partners of Magic Arts &amp; Architecture Haus in potential international education collaboration projects currently under development.</p>\r\n\r\n<h3><i class=\"fa fa-bullseye\"></i> Guest Speakers</h3>\r\n\r\n<p><i class=\"fa fa-microphone\"></i> <strong>Expert from DroneMasters Academy | Berlin, Germany</strong></p>\r\n\r\n<p><i class=\"fa fa-microphone\"></i> <strong>Mr. Harshal – AI Analyst | Apple Singapore</strong><br>\r\nFormer Engineering Team Lead | Meta &amp; Google Pixel<br>\r\nFormer Senior Application Analyst | Singapore Airlines<br>\r\n14+ years of experience in AI, Automation &amp; Engineering Leadership</p>\r\n\r\n<p>Drawing on his extensive industry experience, Mr. Harshal will share practical insights into future career trends, essential skills, and development pathways in Robotics, Drones, AI &amp; STEM for students, university students, and young people passionate about technology.</p>\r\n\r\n<p><i class=\"fa fa-microphone\"></i> <strong>Mr. Vương Hồng Trí – Master’s Degree in Information Technology | CEO, VIEX Consulting GmbH (Germany)</strong></p>\r\n\r\n<p>Mr. Vương Hồng Trí is an expert in connecting technology and business between Germany and Vietnam. With extensive hands-on experience in the European market, he brings a global perspective on how technology is transforming industries and reshaping the labor market.</p>\r\n\r\n<p>During the workshop, he will provide students and parents with practical insights into “Future Career Trends in the Technology Era,” helping young people develop a clearer career orientation and prepare the knowledge, mindset, and skills needed for their future.</p>\r\n\r\n<p><i class=\"fa fa-globe\"></i> If you are a student, university student, parent, or young person passionate about technology, this workshop is an excellent opportunity to gain a deeper understanding of the industries shaping our future and to prepare for your learning and career journey in the age of AI.</p>\r\n\r\n<p><i class=\"fa fa-map-marker\"></i> <strong>ONLINE WORKSHOP</strong><br>\r\n<strong>“BUILDING FUTURE CAREERS IN ROBOTICS, DRONES &amp; STEM”</strong><br>\r\nWith DroneMasters Academy, Germany</p>\r\n\r\n<p><i class=\"fa fa-calendar\"></i> <strong>Time: 4:00 PM (Vietnam Time)</strong><br>\r\nSunday, August 23, 2026</p>\r\n\r\n<p><i class=\"fa fa-laptop\"></i> <strong>Format:</strong> Online via Zoom / Google Meet</p>\r\n\r\n<p><i class=\"fa fa-link\"></i> <strong>Workshop Registration:</strong> <a href=\"https://forms.gle/owVvex7eavA6BG5a7\" rel=\"noopener noreferrer\" target=\"_blank\">https://forms.gle/owVvex7eavA6BG5a7</a></p>\r\n\r\n<p>The workshop access link will be sent directly to registered parents and participants using the contact information provided during registration.</p>\r\n\r\n<p>We warmly welcome parents and students to join us. Together, let’s explore the future, discover emerging career opportunities, and prepare the next generation for the world of tomorrow!</p>\r\n<script data-ts=\"1786525477502\" src=\"https://cdn.flmngr.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', NULL);
INSERT INTO `maa_tnews` (`nid`, `nid_section_news`, `nid_cat_news`, `ccode`, `ctitle`, `cauthor`, `ctag`, `nhit`, `nimg`, `alwcmt`, `cshort_content`, `ccontent`, `cimage_height`, `cimage_thumb`, `cimage_fb`, `cimage_iphone`, `nspecial`, `nhome`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `ckeword_tag`, `cdescription_tag`, `eng_ctitle`, `eng_cshort_content`, `eng_ccontent`, `clink`, `chome`, `cnote`, `cdate`, `ctime`) VALUES
(28, 6, 3, 'phat-trien-portfolio-nghe-thuat', 'Phát Triển Portfolio Nghệ Thuật', '', '', NULL, '0', '0', '\r\n<h6>Độ tuổi 15–17 <span class=\"lo_trinh_label\">Chương trình 2 năm</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Mục tiêu khóa học:</b></p>\r\n\r\n<ul>\r\n	<li>Portfolio Pathway Program là chương trình phát triển sáng tạo dài hạn dành cho học sinh từ 15–17 tuổi có định hướng theo đuổi các lĩnh vực sáng tạo như: Mỹ thuật &amp; Thiết kế (Art &amp; Design), Kiến trúc (Architecture), Thiết kế Công nghiệp (Industrial Design), Digital Art, STEAM và các ngành học liên quan.</li>\r\n	<li>Chương trình được xây dựng theo định hướng giáo dục sáng tạo châu Âu, tập trung vào việc phát triển tư duy sáng tạo, kỹ năng giao tiếp thị giác và trải nghiệm học tập theo dự án (Project-Based Learning), đồng thời hỗ trợ học sinh từng bước xây dựng portfolio cá nhân một cách bài bản và có định hướng.</li>\r\n	<li>Thông qua các trải nghiệm học tập chuyên sâu và các dự án thực hành sáng tạo, học sinh được khuyến khích khám phá thế mạnh cá nhân, phát triển bản sắc sáng tạo riêng và hiểu rõ hơn về định hướng học thuật cũng như con đường nghề nghiệp trong tương lai.</li>\r\n	<li>Chương trình kéo dài 2 năm, với 3 học phần mỗi năm học, giúp học sinh có đủ thời gian để phát triển kỹ năng, chiều sâu sáng tạo và portfolio theo tiêu chuẩn quốc tế.</li>\r\n</ul>\r\n\r\n<p><b>Kết quả đạt được:</b></p>\r\n\r\n<p>Sau khi hoàn thành chương trình, học viên sẽ có thể:</p>\r\n\r\n<ul>\r\n	<li>Phát triển và trình bày các dự án sáng tạo mang dấu ấn cá nhân.</li>\r\n	<li>Khám phá định hướng học tập trong các lĩnh vực Art &amp; Design, Architecture, Digital Art, STEAM và các ngành sáng tạo liên quan.</li>\r\n	<li>Xây dựng portfolio cá nhân theo định hướng và tiêu chuẩn học thuật châu Âu.</li>\r\n	<li>Phát triển sự tự tin, tư duy độc lập và định hướng sáng tạo cá nhân thông qua quá trình thực hành sáng tạo dài hạn.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1790558825537\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1790558825535\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'PortfolioDevelopment_20260514020221.jpg', '', '', NULL, 1, 1, '1.1', 1, 1, '2026-05-14', '2026-09-28', NULL, NULL, 'Portfolio Development', '\r\n<h6>Ages: 15–17 <span class=\"lo_trinh_label\">2-Year Program</span></h6>\r\n\r\n<div class=\"bt_bb_inner_step_text\">\r\n<p><b>Course Objectives:</b></p>\r\n\r\n<ul>\r\n	<li>The Portfolio Pathway Program is a long-term creative development program designed for students aged 15-17 who aspire to pursue creative disciplines such as Art &amp; Design, Architecture, Industrial Design, Digital Art, STEAM, and related fields.</li>\r\n	<li>The program is developed based on European creative education approaches, focusing on the development of creative thinking, visual communication skills, and project-based learning experiences, while supporting students in progressively building a structured personal portfolio over time.</li>\r\n	<li>Through immersive learning experiences and hands-on creative projects, students are encouraged to explore their individual strengths, develop their creative identity, and gain a clearer understanding of future academic and creative pathways.</li>\r\n	<li>The program spans 2 years, with 3 learning sessions per academic year, allowing students sufficient time to develop their skills, creative depth, and portfolio according to international standards.</li>\r\n</ul>\r\n\r\n<p><b>Learning Outcomes:</b></p>\r\n\r\n<p>Upon completing the program, students will be able to:</p>\r\n\r\n<ul>\r\n	<li>Develop and present original creative projects that reflect their individual identity.</li>\r\n	<li>Explore academic pathways in Art &amp; Design, Architecture, Digital Art, STEAM, and related creative disciplines.</li>\r\n	<li>Build a personal portfolio aligned with European academic standards.</li>\r\n	<li>Develop confidence, independent thinking, and a strong personal creative direction through long-term creative practice.</li>\r\n</ul>\r\n</div>\r\n<script data-ts=\"1790558825539\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1790558825539\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1790558825'),
(34, 6, 5, 'summer-2027-|-maa-academic-tour-at-folkwang-university-of-the-arts-|-germany', 'SUMMER 2027 | MAA ACADEMIC TOUR AT FOLKWANG UNIVERSITY OF THE ARTS | GERMANY', '', '', NULL, '0', '0', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1790756493130\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<article class=\"post-content\">\r\n<section class=\"post-body\">\r\n<h2>FOLKWANG UNIVERSITY OF THE ARTS | GERMANY</h2>\r\n\r\n<p>Founded in 1927, Folkwang University of the Arts (Folkwang Universität der Künste) is renowned not only for its scale and academic legacy, but also for its distinctive and pioneering educational philosophy. For nearly a century, the university has established itself as an influential cultural institution whose impact extends far beyond Germany.</p>\r\n\r\n<p>Students at Magic Arts &amp; Architecture Haus (MAA) are currently preparing for their future applications to this prestigious university. Among the key admission requirements, two essential areas require particular attention: outstanding artistic ability, demonstrated through the university’s artistic aptitude assessment, and the required level of German-language proficiency, which may be as high as C1 depending on the degree programme.</p>\r\n\r\n<h2>SUMMER 2027 | MAA ACADEMIC TOUR</h2>\r\n\r\n<p>As part of the MAA Portfolio Development Programme, our students will have the opportunity to visit the Folkwang campus during the Summer 2027 Academic Tour.</p>\r\n\r\n<p>One of the most inspiring aspects of this destination is the location of Folkwang’s Department of Design (Fachbereich Gestaltung) at the Zollverein Coal Mine Industrial Complex (Zeche Zollverein) in Essen.</p>\r\n\r\n<p>Once one of the world’s most significant coal-mining and industrial sites, Zollverein has since become an internationally recognised landmark of architecture, design, culture, and industrial heritage. The complex was inscribed on the UNESCO World Heritage List in 2001, making it an extraordinary environment in which students can experience the intersection of art, design, architecture, history, and contemporary creative practice.</p>\r\n\r\n<p>For MAA students pursuing pathways in Art, Design, Architecture, and Portfolio Development, this Academic Tour will offer more than a campus visit. It will be an opportunity to experience an international creative environment firsthand, explore future study pathways, and gain a deeper understanding of the expectations of leading European art and design universities.</p>\r\n\r\n<p>MAA will be sharing further information about Academic Tour 2027 with our students and parents soon. Stay tuned!</p>\r\n\r\n<p>Contact us to learn more about the Academic Tour 2027 Programme: academic@maa.edu.vn</p>\r\n</section>\r\n<!-- Gallery 7 ảnh: 2 ảnh / dòng, ảnh thứ 7 căn giữa -->\r\n\r\n<section class=\"image-gallery\">\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 1\" src=\"/fileman/Uploads/SUMMER2027/1.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 2\" src=\"/fileman/Uploads/SUMMER2027/2.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 3\" src=\"/fileman/Uploads/SUMMER2027/3.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 4\" src=\"/fileman/Uploads/SUMMER2027/4.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 5\" src=\"/fileman/Uploads/SUMMER2027/5.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 6\" src=\"/fileman/Uploads/SUMMER2027/6.jpg\"></div>\r\n\r\n<div class=\"gallery-item item-centered\"><img alt=\"Folkwang University &amp; Zollverein 7\" src=\"/fileman/Uploads/SUMMER2027/7.jpg\"></div>\r\n</section>\r\n</article>\r\n<script data-ts=\"1790756493126\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', '1_20260930031613.jpg', '', '', NULL, 1, 1, '2', 1, 1, '2026-09-30', '2026-09-30', NULL, NULL, 'SUMMER 2027 | MAA ACADEMIC TOUR AT FOLKWANG UNIVERSITY OF THE ARTS | GERMANY', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1790756493133\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<article class=\"post-content\">\r\n<section class=\"post-body\">\r\n<h2>FOLKWANG UNIVERSITY OF THE ARTS | GERMANY</h2>\r\n\r\n<p>Founded in 1927, Folkwang University of the Arts (Folkwang Universität der Künste) is renowned not only for its scale and academic legacy, but also for its distinctive and pioneering educational philosophy. For nearly a century, the university has established itself as an influential cultural institution whose impact extends far beyond Germany.</p>\r\n\r\n<p>Students at Magic Arts &amp; Architecture Haus (MAA) are currently preparing for their future applications to this prestigious university. Among the key admission requirements, two essential areas require particular attention: outstanding artistic ability, demonstrated through the university’s artistic aptitude assessment, and the required level of German-language proficiency, which may be as high as C1 depending on the degree programme.</p>\r\n\r\n<h2>SUMMER 2027 | MAA ACADEMIC TOUR</h2>\r\n\r\n<p>As part of the MAA Portfolio Development Programme, our students will have the opportunity to visit the Folkwang campus during the Summer 2027 Academic Tour.</p>\r\n\r\n<p>One of the most inspiring aspects of this destination is the location of Folkwang’s Department of Design (Fachbereich Gestaltung) at the Zollverein Coal Mine Industrial Complex (Zeche Zollverein) in Essen.</p>\r\n\r\n<p>Once one of the world’s most significant coal-mining and industrial sites, Zollverein has since become an internationally recognised landmark of architecture, design, culture, and industrial heritage. The complex was inscribed on the UNESCO World Heritage List in 2001, making it an extraordinary environment in which students can experience the intersection of art, design, architecture, history, and contemporary creative practice.</p>\r\n\r\n<p>For MAA students pursuing pathways in Art, Design, Architecture, and Portfolio Development, this Academic Tour will offer more than a campus visit. It will be an opportunity to experience an international creative environment firsthand, explore future study pathways, and gain a deeper understanding of the expectations of leading European art and design universities.</p>\r\n\r\n<p>MAA will be sharing further information about Academic Tour 2027 with our students and parents soon. Stay tuned!</p>\r\n\r\n<p>Contact us to learn more about the Academic Tour 2027 Programme: academic@maa.edu.vn</p>\r\n</section>\r\n<!-- Gallery 7 ảnh: 2 ảnh / dòng, ảnh thứ 7 căn giữa -->\r\n\r\n<section class=\"image-gallery\">\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 1\" src=\"/fileman/Uploads/SUMMER2027/1.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 2\" src=\"/fileman/Uploads/SUMMER2027/2.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 3\" src=\"/fileman/Uploads/SUMMER2027/3.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 4\" src=\"/fileman/Uploads/SUMMER2027/4.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 5\" src=\"/fileman/Uploads/SUMMER2027/5.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Folkwang University &amp; Zollverein 6\" src=\"/fileman/Uploads/SUMMER2027/6.jpg\"></div>\r\n\r\n<div class=\"gallery-item item-centered\"><img alt=\"Folkwang University &amp; Zollverein 7\" src=\"/fileman/Uploads/SUMMER2027/7.jpg\"></div>\r\n</section>\r\n</article>\r\n<script data-ts=\"1790756493131\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1790756493'),
(35, 6, 5, 'portfolio-development-programme-grades-10–12-academic-tour', 'PORTFOLIO DEVELOPMENT PROGRAMME (GRADES 10–12) & ACADEMIC TOUR', '', '', NULL, '0', '0', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1790931258103\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<article class=\"post-content\">\r\n<section class=\"post-body\">\r\n<h3><strong>Portfolio Development Programme – From Portfolio to International Academic Experience</strong></h3>\r\n\r\n<p>During its recent visit to Germany, MAA met with a professional partner to explore potential collaboration for the Portfolio Development Programme &amp; Academic Tour 2027.</p>\r\n\r\n<p>Developed for students interested in pursuing Art, Design, Architecture, and related creative fields, the programme aims to take portfolio development beyond the traditional classroom environment.</p>\r\n\r\n<p>Rather than focusing solely on final outcomes, MAA encourages students to develop the creative thinking, observation, research, concept development, and individual project skills that form an essential part of the portfolio development process through practice-based academic experiences.</p>\r\n\r\n<p>Academic Tour 2027 forms part of MAA’s long-term vision to connect Portfolio Development with international academic experiences and preparation for future university pathways.</p>\r\n\r\n<p>This meeting in Germany marks another step forward in MAA’s ongoing efforts to strengthen its international professional network and develop practice-based learning opportunities exclusively for MAA students.</p>\r\n\r\n<p>Further information about the Portfolio Development Programme &amp; Academic Tour 2027 will be announced in due course.</p>\r\n</section>\r\n\r\n<section class=\"image-gallery\">\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 1\" src=\"/fileman/Uploads/Partnerships5/1.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 2\" src=\"/fileman/Uploads/Partnerships5/2.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 3\" src=\"/fileman/Uploads/Partnerships5/3.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 4\" src=\"/fileman/Uploads/Partnerships5/4.jpg\"></div>\r\n</section>\r\n</article>\r\n<script data-ts=\"1790931258102\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', 'mgb2_20260930032056.jpg', '', '', NULL, 1, 1, '3', 1, 1, '2026-09-30', '2026-10-02', NULL, NULL, 'PORTFOLIO DEVELOPMENT PROGRAMME (GRADES 10–12) & ACADEMIC TOUR', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1790931258104\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<article class=\"post-content\">\r\n<section class=\"post-body\">\r\n<h3><strong>Portfolio Development Programme – From Portfolio to International Academic Experience</strong></h3>\r\n\r\n<p>During its recent visit to Germany, MAA met with a professional partner to explore potential collaboration for the Portfolio Development Programme &amp; Academic Tour 2027.</p>\r\n\r\n<p>Developed for students interested in pursuing Art, Design, Architecture, and related creative fields, the programme aims to take portfolio development beyond the traditional classroom environment.</p>\r\n\r\n<p>Rather than focusing solely on final outcomes, MAA encourages students to develop the creative thinking, observation, research, concept development, and individual project skills that form an essential part of the portfolio development process through practice-based academic experiences.</p>\r\n\r\n<p>Academic Tour 2027 forms part of MAA’s long-term vision to connect Portfolio Development with international academic experiences and preparation for future university pathways.</p>\r\n\r\n<p>This meeting in Germany marks another step forward in MAA’s ongoing efforts to strengthen its international professional network and develop practice-based learning opportunities exclusively for MAA students.</p>\r\n\r\n<p>Further information about the Portfolio Development Programme &amp; Academic Tour 2027 will be announced in due course.</p>\r\n</section>\r\n\r\n<section class=\"image-gallery\">\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 1\" src=\"/fileman/Uploads/Partnerships5/1.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 2\" src=\"/fileman/Uploads/Partnerships5/2.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 3\" src=\"/fileman/Uploads/Partnerships5/3.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 4\" src=\"/fileman/Uploads/Partnerships5/4.jpg\"></div>\r\n</section>\r\n</article>\r\n<script data-ts=\"1790931258103\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1790931258'),
(36, 6, 5, 'strategic-partnerships-academic–professional-pathways-in-germany', 'STRATEGIC PARTNERSHIPS & ACADEMIC–PROFESSIONAL PATHWAYS IN GERMANY', '', '', NULL, '0', '0', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1790931127655\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<article class=\"post-content\">\r\n<section class=\"post-body\">\r\n<p><strong>Building Strategic Partnerships – Expanding International Career Pathways.</strong></p>\r\n\r\n<p>A new step forward in the development of the Portfolio Development Programme at MAA.</p>\r\n\r\n<p>During our recent visit to Essen, Germany, MAA had the opportunity to meet and exchange ideas with our Strategic Partner in the field of Industrial Design. Through this collaboration, MAA is gradually expanding an international ecosystem of learning and career orientation for our students — creating stronger connections between Portfolio, University, and Industry.</p>\r\n\r\n<p>With more than 20 years of professional experience and a strong background in delivering projects across Germany and Europe, MAA’s Strategic Partner will bring valuable real-world industry perspectives to the programme. Students participating in the Portfolio Development Programme will have opportunities to engage with and learn from experienced professionals working within an international design environment.</p>\r\n\r\n<p>More importantly, this partnership is intended to go beyond preparing a strong portfolio for applications to international universities.</p>\r\n\r\n<p>MAA is progressively expanding its professional network to create further opportunities for Vietnamese students studying Industrial Design and related fields to gain exposure to potential internship environments at companies in Germany. Through these connections, students can develop a clearer understanding of professional expectations, workplace environments, and the skills and competencies they need to prepare for their future careers after university.</p>\r\n</section>\r\n<!-- Gallery 4 ảnh: 2 ảnh / dòng -->\r\n\r\n<section class=\"image-gallery\">\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 1\" src=\"/fileman/Uploads/Partnerships4/1.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 2\" src=\"/fileman/Uploads/Partnerships4/2.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 3\" src=\"/fileman/Uploads/Partnerships4/3.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 4\" src=\"/fileman/Uploads/Partnerships4/4.jpg\"></div>\r\n</section>\r\n</article>\r\n<script data-ts=\"1790931127654\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', '1_20260930032735.jpg', '', '', NULL, 1, 1, '4', 1, 1, '2026-09-30', '2026-10-02', NULL, NULL, 'STRATEGIC PARTNERSHIPS & ACADEMIC–PROFESSIONAL PATHWAYS IN GERMANY', '\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1790931127657\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '\r\n<article class=\"post-content\">\r\n<section class=\"post-body\">\r\n<p><strong>Building Strategic Partnerships – Expanding International Career Pathways.</strong></p>\r\n\r\n<p>A new step forward in the development of the Portfolio Development Programme at MAA.</p>\r\n\r\n<p>During our recent visit to Essen, Germany, MAA had the opportunity to meet and exchange ideas with our Strategic Partner in the field of Industrial Design. Through this collaboration, MAA is gradually expanding an international ecosystem of learning and career orientation for our students — creating stronger connections between Portfolio, University, and Industry.</p>\r\n\r\n<p>With more than 20 years of professional experience and a strong background in delivering projects across Germany and Europe, MAA’s Strategic Partner will bring valuable real-world industry perspectives to the programme. Students participating in the Portfolio Development Programme will have opportunities to engage with and learn from experienced professionals working within an international design environment.</p>\r\n\r\n<p>More importantly, this partnership is intended to go beyond preparing a strong portfolio for applications to international universities.</p>\r\n\r\n<p>MAA is progressively expanding its professional network to create further opportunities for Vietnamese students studying Industrial Design and related fields to gain exposure to potential internship environments at companies in Germany. Through these connections, students can develop a clearer understanding of professional expectations, workplace environments, and the skills and competencies they need to prepare for their future careers after university.</p>\r\n</section>\r\n<!-- Gallery 4 ảnh: 2 ảnh / dòng -->\r\n\r\n<section class=\"image-gallery\">\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 1\" src=\"/fileman/Uploads/Partnerships4/1.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 2\" src=\"/fileman/Uploads/Partnerships4/2.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 3\" src=\"/fileman/Uploads/Partnerships4/3.jpg\"></div>\r\n\r\n<div class=\"gallery-item\"><img alt=\"Strategic Partnerships 4\" src=\"/fileman/Uploads/Partnerships4/4.jpg\"></div>\r\n</section>\r\n</article>\r\n<script data-ts=\"1790931127656\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', NULL, '0', '', '', '1790931127');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_torder`
--

CREATE TABLE `maa_torder` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `nid_customer` int(11) DEFAULT NULL,
  `nid_order_status` int(11) DEFAULT NULL,
  `cfullname` varchar(250) DEFAULT NULL,
  `caddress` varchar(250) DEFAULT NULL,
  `nphone` varchar(15) DEFAULT NULL,
  `cemail` varchar(100) DEFAULT NULL,
  `ddate_delivery` date DEFAULT NULL,
  `cnote` varchar(500) DEFAULT NULL,
  `cadmin_note` varchar(500) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `ntotal` varchar(20) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` varchar(50) DEFAULT NULL,
  `ctime01` varchar(50) DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `ccost` varchar(100) DEFAULT NULL,
  `nid_province` int(11) DEFAULT NULL,
  `cmethod` varchar(200) DEFAULT NULL,
  `cgiam_gia` varchar(100) DEFAULT NULL,
  `ctime` varchar(100) DEFAULT NULL,
  `ctime_search` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_torder`
--

INSERT INTO `maa_torder` (`nid`, `ccode`, `nid_customer`, `nid_order_status`, `cfullname`, `caddress`, `nphone`, `cemail`, `ddate_delivery`, `cnote`, `cadmin_note`, `nstatus`, `ntotal`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ctime01`, `ddate02`, `ccost`, `nid_province`, `cmethod`, `cgiam_gia`, `ctime`, `ctime_search`) VALUES
(1, 'DH1662460530', NULL, 1, 'admin test', '', '1234567899', '', NULL, NULL, NULL, NULL, '132545', NULL, NULL, NULL, '2022-09-06', '17:35:30', NULL, '', NULL, '', '0', '1662460530', '1662397200'),
(2, 'DH1662460968', NULL, 1, 'admin test', '', '1234567899', '', NULL, NULL, NULL, NULL, '44182', NULL, NULL, NULL, '2022-09-06', '17:42:48', NULL, '', NULL, '', '0', '1662460968', '1662397200'),
(3, 'DH1662519819', NULL, 1, 'admin test', '', '1234567899', '', NULL, NULL, NULL, NULL, '49091', NULL, NULL, NULL, '2022-09-07', '10:03:39', NULL, '', NULL, '', '0', '1662519819', '1662483600'),
(4, 'DH1662522062', NULL, 1, 'admin test', '', '1234567899', '', NULL, NULL, NULL, NULL, '154363', NULL, NULL, NULL, '2022-09-07', '10:41:02', NULL, '', NULL, '', '0', '1662522062', '1662483600');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_torder_detail`
--

CREATE TABLE `maa_torder_detail` (
  `nid_product` int(11) NOT NULL,
  `nid_order` int(11) NOT NULL,
  `nquantity` int(4) DEFAULT NULL,
  `cprice` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_torder_detail`
--

INSERT INTO `maa_torder_detail` (`nid_product`, `nid_order`, `nquantity`, `cprice`) VALUES
(1, 1, 2, '49091'),
(7, 1, 1, '34363'),
(2, 2, 1, '44182'),
(1, 3, 1, '49091'),
(12, 4, 1, '120000'),
(7, 4, 1, '34363');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_torder_status`
--

CREATE TABLE `maa_torder_status` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `corder_status` varchar(250) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_torder_status`
--

INSERT INTO `maa_torder_status` (`nid`, `ccode`, `corder_status`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, '001', 'Mới nhận', 'chua co tien thanh toan', 1, '1', 2, NULL, '2010-07-23', NULL),
(2, '002', 'Đã thanh toán', '', 1, '2', 2, NULL, '2010-07-23', NULL),
(3, '003', 'Đang giao hàng', 'Đang giao hàng', 1, '003', 2, NULL, '2010-07-23', NULL),
(4, '004', 'Đã hủy', 'Đã hủy đơn hàng', 1, '003', 2, NULL, '2010-07-23', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_total_visit`
--

CREATE TABLE `maa_total_visit` (
  `nid` int(4) NOT NULL,
  `ninit` int(8) DEFAULT NULL,
  `ntotal` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_total_visit`
--

INSERT INTO `maa_total_visit` (`nid`, `ninit`, `ntotal`) VALUES
(1, 1000, 200448);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tpermission`
--

CREATE TABLE `maa_tpermission` (
  `nid` int(11) NOT NULL,
  `nid_user_type` int(11) DEFAULT NULL,
  `nid_access` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tpermission`
--

INSERT INTO `maa_tpermission` (`nid`, `nid_user_type`, `nid_access`) VALUES
(503, 6, 44),
(615, 4, 32),
(547, 3, 43),
(546, 3, 42),
(545, 3, 41),
(544, 3, 45),
(543, 3, 40),
(542, 3, 39),
(541, 3, 38),
(540, 3, 46),
(539, 3, 37),
(538, 3, 36),
(537, 3, 35),
(536, 3, 33),
(535, 3, 32),
(534, 3, 31),
(533, 3, 24),
(532, 3, 23),
(531, 3, 22),
(530, 3, 30),
(529, 3, 21),
(528, 3, 20),
(527, 3, 19),
(526, 3, 29),
(525, 3, 18),
(524, 3, 17),
(166, 1, 16),
(165, 1, 7),
(614, 4, 18),
(613, 4, 17),
(612, 4, 16),
(611, 4, 15),
(610, 4, 14),
(609, 4, 13),
(52, 2, 19),
(53, 2, 20),
(54, 2, 21),
(55, 2, 22),
(56, 2, 23),
(57, 2, 24),
(523, 3, 16),
(522, 3, 28),
(521, 3, 15),
(520, 3, 14),
(519, 3, 13),
(518, 3, 27),
(517, 3, 12),
(516, 3, 11),
(515, 3, 10),
(514, 3, 26),
(513, 3, 9),
(512, 3, 8),
(511, 3, 7),
(510, 3, 25),
(509, 3, 6),
(508, 3, 5),
(507, 3, 4),
(506, 3, 3),
(505, 3, 2),
(504, 3, 1),
(608, 4, 9),
(607, 4, 8),
(548, 3, 44),
(602, 7, 40),
(601, 7, 39),
(600, 7, 38),
(599, 7, 36),
(598, 7, 35),
(597, 7, 31),
(596, 7, 24),
(595, 7, 23),
(594, 7, 22),
(593, 7, 20),
(592, 7, 19),
(560, 8, 19),
(561, 8, 20),
(562, 8, 22),
(563, 8, 23),
(564, 8, 35),
(565, 8, 36),
(566, 9, 19),
(567, 9, 20),
(568, 9, 22),
(569, 9, 23),
(570, 9, 35),
(606, 4, 7),
(603, 7, 45),
(604, 7, 41),
(605, 7, 42);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tproducts`
--

CREATE TABLE `maa_tproducts` (
  `nid` int(11) NOT NULL,
  `nid_material_products` int(11) DEFAULT NULL,
  `nid_cat_products` int(11) DEFAULT NULL,
  `nid_brand_products` int(11) DEFAULT NULL,
  `nid_weight` int(11) DEFAULT NULL,
  `ctype` int(11) DEFAULT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cproducts` varchar(250) DEFAULT NULL,
  `eng_cproducts` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `nview` int(11) DEFAULT NULL,
  `fprice` float(12,0) DEFAULT NULL,
  `fprice_sale` float(12,0) DEFAULT NULL,
  `nquantity` varchar(255) DEFAULT NULL,
  `cdescription` text DEFAULT NULL,
  `eng_cdescription` text DEFAULT NULL,
  `cmodel` varchar(255) DEFAULT NULL,
  `clink` varchar(255) DEFAULT NULL,
  `clink2` varchar(500) DEFAULT NULL,
  `clink3` varchar(500) DEFAULT NULL,
  `clink4` varchar(500) DEFAULT NULL,
  `eng_cdetail` text DEFAULT NULL,
  `cdetail` text DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cimage_resize` varchar(100) DEFAULT NULL,
  `nspecial_products` int(1) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `eng_cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `ncheck` int(1) DEFAULT 1,
  `nkm` int(1) DEFAULT 1,
  `npb` int(1) DEFAULT 1,
  `cindex` int(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `ntype` int(1) DEFAULT NULL,
  `clink_name` varchar(200) DEFAULT NULL,
  `clink_name2` varchar(200) DEFAULT NULL,
  `clink_name3` varchar(200) DEFAULT NULL,
  `clink_name4` varchar(200) DEFAULT NULL,
  `cimage_cer` varchar(500) DEFAULT NULL,
  `cimage_gift` varchar(200) DEFAULT NULL,
  `cgift` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tproducts`
--

INSERT INTO `maa_tproducts` (`nid`, `nid_material_products`, `nid_cat_products`, `nid_brand_products`, `nid_weight`, `ctype`, `ccode`, `cproducts`, `eng_cproducts`, `ctag`, `nview`, `fprice`, `fprice_sale`, `nquantity`, `cdescription`, `eng_cdescription`, `cmodel`, `clink`, `clink2`, `clink3`, `clink4`, `eng_cdetail`, `cdetail`, `cimage`, `cimage_resize`, `nspecial_products`, `cnote`, `eng_cnote`, `nstatus`, `ncheck`, `nkm`, `npb`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `ntype`, `clink_name`, `clink_name2`, `clink_name3`, `clink_name4`, `cimage_cer`, `cimage_gift`, `cgift`) VALUES
(1, 1, 1, NULL, 0, 0, 'thuc-pham-chuc-nang-1', 'Thực phẩm chức năng 1', '', '', NULL, 49091, 49091, NULL, '<p>Với c&aacute;c th&agrave;nh phần đặc biệt,&nbsp;<strong>tr&agrave; tăng cường năng lượng N-R-G</strong>&nbsp;vốn l&agrave; loại tr&agrave; được người d&acirc;n Nam Mỹ sử dụng như một loại thức uống tăng năng lượng tuyệt vời c&ugrave;ng rất nhiều c&ocirc;ng dụng kh&aacute;c.</p>\n', '', NULL, '', '', '', '', '', '', 'p1_20230111050243.png', 'resize_p1_20230111050243.png', 0, '', NULL, 1, 1, 0, 1, 0, 1, 1, '2023-01-11', '2023-01-11', 0, '', '', '', NULL, '', '', NULL),
(2, 1, 1, NULL, 0, 0, 'thuc-pham-chuc-nang-2', 'Thực phẩm chức năng 2', '', '', NULL, 44182, 44182, NULL, '<p>Với c&aacute;c th&agrave;nh phần đặc biệt,&nbsp;<strong>tr&agrave; tăng cường năng lượng N-R-G</strong>&nbsp;vốn l&agrave; loại tr&agrave; được người d&acirc;n Nam Mỹ sử dụng như một loại thức uống tăng năng lượng tuyệt vời c&ugrave;ng rất nhiều c&ocirc;ng dụng kh&aacute;c.</p>\n', '', NULL, '', '', '', '', '', '', 'p2_20230111050322.png', 'resize_p2_20230111050322.png', 0, '', NULL, 1, 1, 0, 0, 0, 1, 1, '2023-01-11', '2023-01-11', 0, '', '', '', NULL, '', '', NULL),
(3, 1, 1, NULL, 0, 0, 'thuc-pham-chuc-nang-3', 'Thực phẩm chức năng 3', '', '', NULL, 44182, 44182, NULL, '<p>Với c&aacute;c th&agrave;nh phần đặc biệt,&nbsp;<strong>tr&agrave; tăng cường năng lượng N-R-G</strong>&nbsp;vốn l&agrave; loại tr&agrave; được người d&acirc;n Nam Mỹ sử dụng như một loại thức uống tăng năng lượng tuyệt vời c&ugrave;ng rất nhiều c&ocirc;ng dụng kh&aacute;c.</p>\n', '', NULL, '', '', '', '', '', '', 'p3_20230111050415.webp', 'resize_p3_20230111050415.webp', 0, '', NULL, 1, 1, 0, 0, 0, 1, 1, '2023-01-11', '2023-01-11', 0, '', '', '', NULL, '', '', NULL),
(4, 1, 1, NULL, 0, 0, 'thuc-pham-chuc-nang-4', 'Thực phẩm chức năng 4', '', '', NULL, 44182, 44182, NULL, '<p>Với c&aacute;c th&agrave;nh phần đặc biệt,&nbsp;<strong>tr&agrave; tăng cường năng lượng N-R-G</strong>&nbsp;vốn l&agrave; loại tr&agrave; được người d&acirc;n Nam Mỹ sử dụng như một loại thức uống tăng năng lượng tuyệt vời c&ugrave;ng rất nhiều c&ocirc;ng dụng kh&aacute;c.</p>\n', '', NULL, '', '', '', '', '', '', 'p4_20230111050428.webp', 'resize_p4_20230111050428.webp', 0, '', NULL, 1, 1, 0, 0, 0, 1, 1, '2023-01-11', '2023-01-11', 0, '', '', '', NULL, '', '', NULL),
(5, 1, 1, NULL, 0, 0, 'thuc-pham-chuc-nang-5', 'Thực phẩm chức năng 5', '', '', NULL, 44182, 44182, NULL, '<p>Với c&aacute;c th&agrave;nh phần đặc biệt,&nbsp;<strong>tr&agrave; tăng cường năng lượng N-R-G</strong>&nbsp;vốn l&agrave; loại tr&agrave; được người d&acirc;n Nam Mỹ sử dụng như một loại thức uống tăng năng lượng tuyệt vời c&ugrave;ng rất nhiều c&ocirc;ng dụng kh&aacute;c.</p>\n', '', NULL, '', '', '', '', '', '', 'p5_20230111050438.webp', 'resize_p5_20230111050438.webp', 0, '', NULL, 1, 1, 0, 0, 0, 1, 1, '2023-01-11', '2023-01-11', 0, '', '', '', NULL, '', '', NULL),
(6, 1, 1, NULL, 0, 0, 'phin-sua-da-nang-luong', 'Phin Sữa Đá - Năng Lượng', '', '', NULL, 34363, 34363, NULL, '', '', NULL, '', '', '', '', '', '', 'p6_20220831101730.png', 'resize_p6_20220831101730.png', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(7, 1, 1, NULL, 0, 0, 'phin-den-da-dam-da', 'Phin Đen Đá - Đậm Đà', '', '', NULL, 34363, 34363, NULL, '', '', NULL, '', '', '', '', '', '', 'p7_20220831103310.png', 'resize_p7_20220831103310.png', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(8, 1, 2, NULL, 0, 0, 'tra-nhan-sen', 'Trà Nhãn - Sen', '', '', NULL, 49091, 49091, NULL, '', '', NULL, '', '', '', '', '', '', 'p21_20220831110035.png', 'resize_p21_20220831110035.png', 0, '', NULL, 1, 0, 0, 1, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(9, 1, 2, NULL, 0, 0, 'tra-nhan-lai', 'Trà Nhãn - Lài', '', '', NULL, 49091, 49091, NULL, '', '', NULL, '', '', '', '', '', '', 'p22_20220831110104.png', 'resize_p22_20220831110104.png', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(10, 1, 2, NULL, 0, 0, 'tra-vai-lai', 'Trà Vải - Lài', '', '', NULL, 49091, 49091, NULL, '', '', NULL, '', '', '', '', '', '', 'p23_20220831110138.png', 'resize_p23_20220831110138.png', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(11, 1, 3, NULL, 0, 0, 'banh-thap-cam-ga-quay', 'Bánh Thập Cẩm Gà Quay', '', '', NULL, 130000, 130000, NULL, '', '', NULL, '', '', '', '', '', '', 'p31_20220831111000.png', 'resize_p31_20220831111000.png', 0, '', NULL, 1, 0, 0, 1, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(12, 1, 3, NULL, 0, 0, 'banh-hat-sen-tra-xanh', 'Bánh Hạt Sen Trà Xanh', '', '', NULL, 120000, 120000, NULL, '', '', NULL, '', '', '', '', '', '', 'p32_20220831110814.png', 'resize_p32_20220831110814.png', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(13, 1, 3, NULL, 0, 0, 'banh-ca-phe-dua', 'Bánh Cà Phê Dừa', '', '', NULL, 110000, 110000, NULL, '', '', NULL, '', '', '', '', '', '', 'p33_20220831110846.png', 'resize_p33_20220831110846.png', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(14, 1, 4, NULL, 0, 0, 'green-tea-choco-cake', 'Green Tea Choco Cake', '', '', NULL, 34363, 34363, NULL, '', '', NULL, '', '', '', '', '', '', 'p41_20220831111136.png', 'resize_p41_20220831111136.png', 0, '', NULL, 1, 0, 0, 1, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(15, 1, 4, NULL, 0, 0, 'passion-panna-cotta', 'Passion Panna Cotta', '', '', NULL, 34363, 34363, NULL, '', '', NULL, '', '', '', '', '', '', 'p42_20220831111204.png', 'resize_p42_20220831111204.png', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(16, 1, 4, NULL, 0, 0, 'tiramisu-mini', 'Tiramisu Mini', '', '', NULL, 34363, 34363, NULL, '', '', NULL, '', '', '', '', '', '', 'p43_20220831111229.png', 'resize_p43_20220831111229.png', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-08-31', '2022-08-31', 0, '', '', '', NULL, '', '', ''),
(17, 1, 4, NULL, 0, 0, 'butter-chocolate-croissant-30g', 'Butter Chocolate Croissant 30g', '', '', NULL, 22000, 22000, NULL, '', '', NULL, '', '', '', '', '', '', 'av2_20220905094910.jpg', 'resize_av2_20220905094910.jpg', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-09-05', '2022-09-05', 0, '', '', '', NULL, '', '', ''),
(18, 1, 4, NULL, 0, 0, 'pure-butter-croissant-30g', 'Pure Butter Croissant 30g', '', '', NULL, 19637, 19637, NULL, '', '', NULL, '', '', '', '', '', '', 'av3_20220905094937.jpg', 'resize_av3_20220905094937.jpg', 0, '', NULL, 1, 0, 0, 0, 0, 1, 1, '2022-09-05', '2022-09-05', 0, '', '', '', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tproduct_images`
--

CREATE TABLE `maa_tproduct_images` (
  `nid` int(11) NOT NULL,
  `nid_product` int(11) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cimage_resize` varchar(100) DEFAULT NULL,
  `cindex` varchar(500) DEFAULT NULL,
  `cnote` varchar(25) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` datetime DEFAULT NULL,
  `ddate02` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tproduct_images`
--

INSERT INTO `maa_tproduct_images` (`nid`, `nid_product`, `cimage`, `cimage_resize`, `cindex`, `cnote`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, 1, 'Ultra-trang-1_20200721104122.png', NULL, NULL, NULL, NULL, NULL, '2020-07-21 00:00:00', NULL),
(2, 1, 'Ultra-trang-2_20200721111520.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-21 00:00:00', NULL),
(3, 1, 'Ultra-trang-3_20200721014043.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-21 00:00:00', NULL),
(4, 1, 'Ultra-trang-4_20200721015317.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-21 00:00:00', NULL),
(5, 2, 'Ultra-XANH-2_20200721024215.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-21 00:00:00', NULL),
(6, 2, 'Ultra-XANH-3_20200721025200.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-21 00:00:00', NULL),
(7, 2, 'Ultra-XANH-4_20200721030403.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-21 00:00:00', NULL),
(8, 2, 'Ultra-XANH-5_20200721031418.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-21 00:00:00', NULL),
(9, 13, 'kid-trang-1_20200804094434.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-04 00:00:00', NULL),
(10, 13, 'kid-trang-2_20200804095409.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-04 00:00:00', NULL),
(12, 13, 'kid-trang-3_20200804101046.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-04 00:00:00', NULL),
(13, 13, 'kid-4_20200804102405.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-04 00:00:00', NULL),
(14, 5, 'kid-xanh-1_20200804104757.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-04 00:00:00', NULL),
(15, 5, 'kid-xanh-2_20200804104804.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-04 00:00:00', NULL),
(16, 5, 'kid-xanh-3_20200804104811.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-04 00:00:00', NULL),
(17, 5, 'kid-xanh-4_20200804104817.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-04 00:00:00', NULL),
(18, 14, 'Mod-trang-2_20200805121438.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(19, 14, 'Mod-trang-3_20200805122301.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(25, 15, 'Mod-trang-3_20200805122745.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(21, 15, 'Mod-xanh-4_20200805122614.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(22, 15, 'Mod-xanh-3_20200805122614.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(23, 15, 'Mod-xanh-2_20200805122614.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(26, 3, 'carbon-3_20200805124222.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(27, 3, 'Carbon-1_20200805124222.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(28, 3, 'Carbon-2_20200805124222.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(29, 4, 'Ladies-3_20200805125904.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(30, 4, 'Ladies-2_20200805125905.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL),
(31, 4, 'Ladies-1_20200805125905.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-05 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tprovince`
--

CREATE TABLE `maa_tprovince` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(250) DEFAULT NULL,
  `cname` varchar(250) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `ccost` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tprovince`
--

INSERT INTO `maa_tprovince` (`nid`, `ccode`, `cname`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `ccost`) VALUES
(1, NULL, 'An Giang', 1, NULL, NULL, 1, NULL, '2020-08-06', '45000'),
(2, NULL, 'Bà Rịa - Vũng Tàu', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(3, NULL, 'Bắc Giang', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(4, NULL, 'Bắc Kạn', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(5, NULL, 'Bạc Liêu', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(6, NULL, 'Bắc Ninh', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(7, NULL, 'Bến Tre', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(8, NULL, 'Bình Định', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(9, NULL, 'Bình Dương', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(10, NULL, 'Bình Phước', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(11, NULL, 'Bình Thuận', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(12, NULL, 'Cà Mau', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(13, NULL, 'Cao Bằng', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(14, NULL, 'Đắk Lắk', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(15, NULL, 'Đắk Nông', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(16, NULL, 'Điện Biên', 1, NULL, NULL, 748, NULL, '2020-08-07', '80000'),
(17, NULL, 'Đồng Nai', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(18, NULL, 'Đồng Tháp', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(19, NULL, 'Gia Lai', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(20, NULL, 'Hà Giang', 1, NULL, NULL, 748, NULL, '2020-08-07', '80000'),
(21, NULL, 'Hà Nam', 1, NULL, NULL, 748, NULL, '2020-08-07', '80000'),
(22, NULL, 'Hà Tĩnh', 1, NULL, NULL, 748, NULL, '2020-08-07', '70000'),
(23, NULL, 'Hải Dương', 1, NULL, NULL, 748, NULL, '2020-08-07', '65000'),
(24, NULL, 'Hậu Giang', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(25, NULL, 'Hòa Bình', 1, NULL, NULL, 748, NULL, '2020-08-07', '80000'),
(26, NULL, 'Hưng Yên', 1, NULL, NULL, 748, NULL, '2020-08-07', '80000'),
(27, NULL, 'Khánh Hòa', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(28, NULL, 'Kiên Giang', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(29, NULL, 'Kon Tum', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(30, NULL, 'Lai Châu', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(31, NULL, 'Lâm Đồng', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(32, NULL, 'Lạng Sơn', 1, NULL, NULL, 748, NULL, '2020-08-07', '70000'),
(33, NULL, 'Lào Cai', 1, NULL, NULL, 748, NULL, '2020-08-07', '80000'),
(34, NULL, 'Long An', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(35, NULL, 'Nam Định', 1, NULL, NULL, 748, NULL, '2020-08-07', '70000'),
(36, NULL, 'Nghệ An', 1, NULL, NULL, 748, NULL, '2020-08-07', '70000'),
(37, NULL, 'Ninh Bình', 1, NULL, NULL, 748, NULL, '2020-08-07', '80000'),
(38, NULL, 'Ninh Thuận', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(39, NULL, 'Phú Thọ', 1, NULL, NULL, 748, NULL, '2020-08-07', '80000'),
(40, NULL, 'Quảng Bình', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(41, NULL, 'Quảng Nam', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(42, NULL, 'Quảng Ngãi', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(43, NULL, 'Quảng Ninh', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(44, NULL, 'Quảng Trị', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(45, NULL, 'Sóc Trăng', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(46, NULL, 'Sơn La', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(47, NULL, 'Tây Ninh', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(48, NULL, 'Thái Bình', 1, NULL, NULL, 748, NULL, '2020-08-07', '70000'),
(49, NULL, 'Thái Nguyên', 1, NULL, NULL, 748, NULL, '2020-08-07', '70000'),
(50, NULL, 'Thanh Hóa', 1, NULL, NULL, 748, NULL, '2020-08-07', '70000'),
(51, NULL, 'Thừa Thiên Huế', 1, NULL, NULL, 748, NULL, '2020-08-07', '50000'),
(52, NULL, 'Tiền Giang', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(53, NULL, 'Trà Vinh', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(54, NULL, 'Tuyên Quang', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(55, NULL, 'Vĩnh Long', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(56, NULL, 'Vĩnh Phúc', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(57, NULL, 'Yên Bái', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(58, NULL, 'Phú Yên', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(59, NULL, 'Cần Thơ', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(60, NULL, 'Đà Nẵng', 1, NULL, NULL, NULL, NULL, NULL, '45000'),
(61, NULL, 'Hải Phòng', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(62, NULL, 'Hà Nội', 1, NULL, NULL, 748, NULL, '2020-08-07', '60000'),
(63, NULL, 'TP HCM', 1, NULL, NULL, NULL, NULL, NULL, '30000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tregister`
--

CREATE TABLE `maa_tregister` (
  `nid` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `clast_name` varchar(100) DEFAULT NULL,
  `cgiven_name` varchar(100) DEFAULT NULL,
  `ccompany` varchar(100) DEFAULT NULL,
  `ctitle` varchar(100) DEFAULT NULL,
  `cmobile` varchar(100) DEFAULT NULL,
  `cemail` varchar(100) DEFAULT NULL,
  `cdietary` varchar(100) DEFAULT NULL,
  `csize` varchar(100) DEFAULT NULL,
  `ccovid` varchar(100) DEFAULT NULL,
  `cteam` char(1) DEFAULT NULL,
  `ctime` varchar(100) DEFAULT NULL,
  `cnote` varchar(500) DEFAULT NULL,
  `nstatus` int(11) NOT NULL DEFAULT 1,
  `ddate01` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `niduser01` int(30) DEFAULT NULL,
  `niduser02` int(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tregister`
--

INSERT INTO `maa_tregister` (`nid`, `cname`, `clast_name`, `cgiven_name`, `ccompany`, `ctitle`, `cmobile`, `cemail`, `cdietary`, `csize`, `ccovid`, `cteam`, `ctime`, `cnote`, `nstatus`, `ddate01`, `ddate02`, `niduser01`, `niduser02`) VALUES
(7, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '0', 'No / Chưa tiêm', NULL, '1661479187', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL),
(3, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '1', 'Yes / Đã tiêm', NULL, '1661410237', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL),
(4, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '2', 'No / Chưa tiêm', NULL, '1661411359', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL),
(5, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '3', 'Yes / Đã tiêm', NULL, '1661411542', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL),
(6, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '4', 'Yes / Đã tiêm', NULL, '1661412378', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL),
(8, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '2', 'No / Chưa tiêm', '2', '1661481508', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL),
(9, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '3', 'Yes / Đã tiêm', '', '1661482736', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL),
(10, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '2', 'Yes / Đã tiêm', '', '1661483285', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL),
(11, NULL, 'a', 'b', 'c', 'd', 'e', 'f@gmail.com', 'g', '2', 'Yes / Đã tiêm', '', '1661483378', NULL, 1, '1977-01-01 00:00:00', '1977-01-01 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tschedule`
--

CREATE TABLE `maa_tschedule` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(80) DEFAULT NULL,
  `cname` varchar(80) DEFAULT NULL,
  `cgender` char(1) DEFAULT NULL,
  `cdate_of_birth` varchar(80) DEFAULT NULL,
  `caddress` varchar(200) DEFAULT NULL,
  `cphone` varchar(50) DEFAULT NULL,
  `cemail` varchar(150) DEFAULT NULL,
  `creason` varchar(1000) DEFAULT NULL,
  `csick` varchar(1000) DEFAULT NULL,
  `cnote` varchar(500) DEFAULT NULL,
  `cadmin_note` varchar(500) DEFAULT NULL,
  `nid_schedule_status` int(1) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `ccreatedate` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tschedule`
--

INSERT INTO `maa_tschedule` (`nid`, `ccode`, `cname`, `cgender`, `cdate_of_birth`, `caddress`, `cphone`, `cemail`, `creason`, `csick`, `cnote`, `cadmin_note`, `nid_schedule_status`, `nstatus`, `ccreatedate`) VALUES
(1, NULL, 'Nguyễn Văn A', 'M', '14/04/2001', 'abc', '', '', 'Đau họng', '', NULL, 'Đã khám xong', 2, NULL, '1459998898'),
(2, NULL, 'Nguyễn Thị B', 'F', '20/04/2016', 'xyz', '12345', 'nthib@gmail.com', 'Đau dạ dày', 'nhức đầu', NULL, NULL, 1, NULL, '1459998898'),
(3, NULL, 'Trần Thị C', 'F', '21/02/2000', 'bnm', '987654123', 'ttc@gmail.com', 'đau bụng', '', NULL, '', 1, 0, '1459998898'),
(4, NULL, 'Trần Văn D', 'M', '10/1/1990', 'lk', '', '', 'nhức đầu', '', NULL, '', 2, NULL, '1459998898'),
(5, NULL, 'Lê Thị Bưởi', 'F', '1/2/2003', 'ben tre', '', 'ltb@gmail.com', 'sổ mũi', '', NULL, NULL, 1, NULL, '1459998898'),
(6, NULL, 'abc', 'M', '01/10/1989', 'sdfdsaf', '', '', 'az', '', NULL, 'Hủy lịch khám', 3, NULL, '1459998898'),
(9, NULL, 'Trần M', 'M', '20/1/1988', 'abc xyz', '', '', 'Cảm lạnh', '', NULL, NULL, 1, NULL, '1460084406'),
(8, NULL, 'Lê Văn Giàu', 'M', '11/2/1988', '101 Nguyễn Đình Chiểu, TPHCM', '123456789', 'lvgiau@gmail.com', 'Đau dạ dày', 'Nôn mửa', NULL, NULL, 1, NULL, '1460020146'),
(10, NULL, 'Nguyễn Văn C', 'M', '1/3/1985', 'Phan Đình Phùng TPHCM', '', '', 'Đau đầu', '', NULL, NULL, 1, NULL, '1460101016');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tschedule_status`
--

CREATE TABLE `maa_tschedule_status` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cschedule_status` varchar(250) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tschedule_status`
--

INSERT INTO `maa_tschedule_status` (`nid`, `ccode`, `cschedule_status`, `cnote`, `nstatus`, `cindex`) VALUES
(1, '001', 'Mới nhận', '', 1, '1'),
(2, '002', 'Đã xong', '', 1, '2'),
(3, '003', 'Đã hủy', '', 1, '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tsection_news`
--

CREATE TABLE `maa_tsection_news` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `csection_news` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cicon` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tsection_news`
--

INSERT INTO `maa_tsection_news` (`nid`, `ccode`, `csection_news`, `ctag`, `cimage`, `cicon`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(6, 'orient', 'orient', '', '', '', '', 1, '6', 746, 748, '2011-05-10', '2016-07-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tsession`
--

CREATE TABLE `maa_tsession` (
  `cid_session` varchar(50) NOT NULL,
  `nid_user` int(11) DEFAULT 0,
  `dsession_date` datetime DEFAULT '0000-00-00 00:00:00',
  `cstatus` char(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tsize`
--

CREATE TABLE `maa_tsize` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(250) DEFAULT NULL,
  `cname` varchar(250) DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `cquantity` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tsize`
--

INSERT INTO `maa_tsize` (`nid`, `ccode`, `cname`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `cquantity`) VALUES
(1, NULL, 'S', 1, NULL, 1, 1, '2022-08-25', '2022-08-25', '0'),
(2, NULL, 'M', 1, NULL, 1, 1, '2022-08-25', '2022-08-25', '48'),
(3, NULL, 'L', 1, NULL, 1, 1, '2022-08-25', '2022-08-25', '49'),
(4, NULL, 'XL', 1, NULL, 1, 1, '2022-08-25', '2022-08-25', '49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tsponline`
--

CREATE TABLE `maa_tsponline` (
  `nid` int(11) NOT NULL,
  `cindex` char(4) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `ccontact_nick` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cnote` varchar(250) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` datetime DEFAULT NULL,
  `ddate02` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tsponline`
--

INSERT INTO `maa_tsponline` (`nid`, `cindex`, `cname`, `ccontact_nick`, `nstatus`, `cnote`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(27, '1', 'Phòng thiết kế', 'nv_maa_1', 1, 'Nhân viên hỗ trợ 1', 748, NULL, '2013-08-28 00:00:00', NULL),
(28, '2', 'Phòng tư vấn KH', 'nv_maa_2', 1, 'Nhân viên hỗ trợ 2', 748, NULL, '2013-08-28 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tstatus`
--

CREATE TABLE `maa_tstatus` (
  `nid` int(11) NOT NULL,
  `vni` varchar(50) DEFAULT NULL,
  `eng` varchar(50) DEFAULT NULL,
  `cgroup` varchar(50) DEFAULT NULL,
  `cnote` varchar(250) DEFAULT NULL,
  `cdel` char(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tstatus`
--

INSERT INTO `maa_tstatus` (`nid`, `vni`, `eng`, `cgroup`, `cnote`, `cdel`) VALUES
(1, 'Đang dùng', 'Is use', '1', NULL, '0'),
(2, 'Không dùng', 'Not use', '1', NULL, '0'),
(3, 'Đang thực hiện', 'Processing', '2', NULL, '0'),
(4, 'Hết hạn', 'End time', '2', NULL, '0'),
(5, 'Hoàn thành', 'Finished', '2', NULL, '0'),
(6, 'Mở', 'Unlocked', '3', NULL, '0'),
(7, 'Khóa', 'Locked', '3', NULL, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_ttopmenu`
--

CREATE TABLE `maa_ttopmenu` (
  `nid` int(11) NOT NULL,
  `ctopmenu` varchar(250) DEFAULT NULL,
  `clink` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(1) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_ttopmenu`
--

INSERT INTO `maa_ttopmenu` (`nid`, `ctopmenu`, `clink`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(43, 'Vé máy bay nội địa', 'http://localhost/maa/tin-tuc/ve-may-bay-di-da-lat', '', '', '', 1, '5', 748, 748, '2014-11-24', '0000-00-00'),
(44, 'Liên hệ book vé', '#', '', '', '', 1, '8', 748, 748, '2014-11-24', '0000-00-00'),
(42, 'Vé bay đoàn', 'http://localhost/maa/tin-tuc/ve-may-bay-di-tphcm', '', '', '', 1, '2', 748, 748, '2014-11-24', '0000-00-00'),
(41, 'Vé máy bay khuyến mãi', 'http://localhost/maa/tin-tuc/ve-may-bay-di-da-nang', '', '', '', 1, '3', 748, 748, '2014-11-24', '0000-00-00'),
(40, 'Vé quốc tế', 'http://localhost/maa/tin-tuc/ve-may-bay-di-nhat-ban', '', '', '', 1, '3', 748, 748, '2014-11-24', '0000-00-00'),
(39, 'Vé máy bay', 'http://localhost/maa/tin-tuc/ve-may-bay-di-hue', '', '', '', 1, '1', 748, 748, '2014-11-24', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tuser`
--

CREATE TABLE `maa_tuser` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(30) DEFAULT NULL,
  `cuserid` varchar(30) DEFAULT NULL,
  `cpassword` varchar(100) DEFAULT NULL,
  `cemail` varchar(100) DEFAULT NULL,
  `chandphone` varchar(50) DEFAULT NULL,
  `cfirstname` varchar(30) DEFAULT NULL,
  `cmiddlename` varchar(30) DEFAULT NULL,
  `clastname` varchar(50) DEFAULT NULL,
  `cisadmin` char(1) DEFAULT '0',
  `nid_language` int(11) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `cstatus` char(1) DEFAULT '1',
  `cdel` char(1) DEFAULT '0',
  `ddate01` datetime DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime DEFAULT '1977-01-01 00:00:00',
  `niduser01` int(30) DEFAULT NULL,
  `niduser02` int(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tuser`
--

INSERT INTO `maa_tuser` (`nid`, `ccode`, `cuserid`, `cpassword`, `cemail`, `chandphone`, `cfirstname`, `cmiddlename`, `clastname`, `cisadmin`, `nid_language`, `cnote`, `cstatus`, `cdel`, `ddate01`, `ddate02`, `niduser01`, `niduser02`) VALUES
(1, 'aspoon', 'aspoon', '858fc9840b60a5eaea85b7e1c9a4b77c', 'tieulong4000@yahoo.com', NULL, 'aspoon', 'aspoon', 'aspoon', '3', 1, 'khong huy duoc', '1', '0', '1977-01-01 00:00:00', '2009-12-07 00:00:00', 0, 2),
(748, '', 'admin_maa', '725c3e6a89d4d9d9bada2fb3920398df', 'admin@maa.edu.vn', NULL, 'Admin', '_', 'maa', '3', NULL, '', '1', '0', '2013-08-03 00:00:00', '2025-07-02 00:00:00', 746, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tuser_function`
--

CREATE TABLE `maa_tuser_function` (
  `nid` int(11) NOT NULL,
  `nid_function` int(11) DEFAULT NULL,
  `nid_user` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tuser_menu`
--

CREATE TABLE `maa_tuser_menu` (
  `nid` int(11) NOT NULL,
  `nid_menu` int(11) DEFAULT NULL,
  `nid_user` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tuser_menu`
--

INSERT INTO `maa_tuser_menu` (`nid`, `nid_menu`, `nid_user`) VALUES
(1631, 12, 747),
(1630, 27, 747),
(1629, 11, 747),
(1616, 15, 746),
(1615, 14, 746),
(1614, 13, 746),
(1613, 12, 746),
(1612, 11, 746),
(1611, 10, 746),
(1610, 8, 746),
(1617, 16, 746),
(1618, 17, 746),
(1619, 18, 746),
(1620, 19, 746),
(1621, 20, 746),
(1622, 21, 746),
(1623, 22, 746),
(1624, 23, 746),
(1625, 24, 746),
(1626, 25, 746),
(1627, 26, 746),
(1628, 27, 746),
(1632, 13, 747);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maa_tuser_type`
--

CREATE TABLE `maa_tuser_type` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(30) DEFAULT NULL,
  `cuser_type` varchar(30) DEFAULT NULL,
  `cdel` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maa_tuser_type`
--

INSERT INTO `maa_tuser_type` (`nid`, `ccode`, `cuser_type`, `cdel`) VALUES
(3, '1', 'Administrator', '0'),
(1, '2', 'Editor', '0'),
(2, '3', 'Manager', '0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `maa_tarticle`
--
ALTER TABLE `maa_tarticle`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tbackground`
--
ALTER TABLE `maa_tbackground`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tbanner_images`
--
ALTER TABLE `maa_tbanner_images`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tbrand_products`
--
ALTER TABLE `maa_tbrand_products`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tcat_news`
--
ALTER TABLE `maa_tcat_news`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tcat_products`
--
ALTER TABLE `maa_tcat_products`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tconfig`
--
ALTER TABLE `maa_tconfig`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tcookie`
--
ALTER TABLE `maa_tcookie`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tfunction`
--
ALTER TABLE `maa_tfunction`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tfunction_frontend`
--
ALTER TABLE `maa_tfunction_frontend`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tgallery`
--
ALTER TABLE `maa_tgallery`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tgallery_detail`
--
ALTER TABLE `maa_tgallery_detail`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tgallery_img`
--
ALTER TABLE `maa_tgallery_img`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tguest_online`
--
ALTER TABLE `maa_tguest_online`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tindex`
--
ALTER TABLE `maa_tindex`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tlink`
--
ALTER TABLE `maa_tlink`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tlocation_banner`
--
ALTER TABLE `maa_tlocation_banner`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tmaterial_products`
--
ALTER TABLE `maa_tmaterial_products`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tmember`
--
ALTER TABLE `maa_tmember`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tmenu`
--
ALTER TABLE `maa_tmenu`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tmenu_frontend`
--
ALTER TABLE `maa_tmenu_frontend`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tmodule`
--
ALTER TABLE `maa_tmodule`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tnews`
--
ALTER TABLE `maa_tnews`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_torder`
--
ALTER TABLE `maa_torder`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_torder_detail`
--
ALTER TABLE `maa_torder_detail`
  ADD PRIMARY KEY (`nid_product`,`nid_order`);

--
-- Chỉ mục cho bảng `maa_torder_status`
--
ALTER TABLE `maa_torder_status`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_total_visit`
--
ALTER TABLE `maa_total_visit`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tpermission`
--
ALTER TABLE `maa_tpermission`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tproducts`
--
ALTER TABLE `maa_tproducts`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tproduct_images`
--
ALTER TABLE `maa_tproduct_images`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `nid` (`nid`,`nid_product`,`cimage`,`ddate01`,`ddate02`);

--
-- Chỉ mục cho bảng `maa_tprovince`
--
ALTER TABLE `maa_tprovince`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tregister`
--
ALTER TABLE `maa_tregister`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tschedule`
--
ALTER TABLE `maa_tschedule`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `nid` (`nid`);

--
-- Chỉ mục cho bảng `maa_tschedule_status`
--
ALTER TABLE `maa_tschedule_status`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tsection_news`
--
ALTER TABLE `maa_tsection_news`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tsession`
--
ALTER TABLE `maa_tsession`
  ADD PRIMARY KEY (`cid_session`);

--
-- Chỉ mục cho bảng `maa_tsize`
--
ALTER TABLE `maa_tsize`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tsponline`
--
ALTER TABLE `maa_tsponline`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tstatus`
--
ALTER TABLE `maa_tstatus`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_ttopmenu`
--
ALTER TABLE `maa_ttopmenu`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tuser`
--
ALTER TABLE `maa_tuser`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tuser_function`
--
ALTER TABLE `maa_tuser_function`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tuser_menu`
--
ALTER TABLE `maa_tuser_menu`
  ADD PRIMARY KEY (`nid`);

--
-- Chỉ mục cho bảng `maa_tuser_type`
--
ALTER TABLE `maa_tuser_type`
  ADD PRIMARY KEY (`nid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `maa_tarticle`
--
ALTER TABLE `maa_tarticle`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `maa_tbackground`
--
ALTER TABLE `maa_tbackground`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `maa_tbanner_images`
--
ALTER TABLE `maa_tbanner_images`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `maa_tbrand_products`
--
ALTER TABLE `maa_tbrand_products`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `maa_tcat_news`
--
ALTER TABLE `maa_tcat_news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `maa_tcat_products`
--
ALTER TABLE `maa_tcat_products`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `maa_tconfig`
--
ALTER TABLE `maa_tconfig`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `maa_tcookie`
--
ALTER TABLE `maa_tcookie`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `maa_tfunction`
--
ALTER TABLE `maa_tfunction`
  MODIFY `nid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `maa_tfunction_frontend`
--
ALTER TABLE `maa_tfunction_frontend`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `maa_tgallery`
--
ALTER TABLE `maa_tgallery`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `maa_tgallery_detail`
--
ALTER TABLE `maa_tgallery_detail`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `maa_tgallery_img`
--
ALTER TABLE `maa_tgallery_img`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT cho bảng `maa_tguest_online`
--
ALTER TABLE `maa_tguest_online`
  MODIFY `nid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199647;

--
-- AUTO_INCREMENT cho bảng `maa_tindex`
--
ALTER TABLE `maa_tindex`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=937;

--
-- AUTO_INCREMENT cho bảng `maa_tlink`
--
ALTER TABLE `maa_tlink`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `maa_tlocation_banner`
--
ALTER TABLE `maa_tlocation_banner`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `maa_tmaterial_products`
--
ALTER TABLE `maa_tmaterial_products`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `maa_tmember`
--
ALTER TABLE `maa_tmember`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT cho bảng `maa_tmenu`
--
ALTER TABLE `maa_tmenu`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `maa_tmenu_frontend`
--
ALTER TABLE `maa_tmenu_frontend`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `maa_tmodule`
--
ALTER TABLE `maa_tmodule`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `maa_tnews`
--
ALTER TABLE `maa_tnews`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `maa_torder`
--
ALTER TABLE `maa_torder`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `maa_torder_detail`
--
ALTER TABLE `maa_torder_detail`
  MODIFY `nid_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `maa_torder_status`
--
ALTER TABLE `maa_torder_status`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `maa_total_visit`
--
ALTER TABLE `maa_total_visit`
  MODIFY `nid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `maa_tpermission`
--
ALTER TABLE `maa_tpermission`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT cho bảng `maa_tproducts`
--
ALTER TABLE `maa_tproducts`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `maa_tproduct_images`
--
ALTER TABLE `maa_tproduct_images`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `maa_tprovince`
--
ALTER TABLE `maa_tprovince`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `maa_tregister`
--
ALTER TABLE `maa_tregister`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `maa_tschedule`
--
ALTER TABLE `maa_tschedule`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `maa_tschedule_status`
--
ALTER TABLE `maa_tschedule_status`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `maa_tsection_news`
--
ALTER TABLE `maa_tsection_news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `maa_tsize`
--
ALTER TABLE `maa_tsize`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `maa_tsponline`
--
ALTER TABLE `maa_tsponline`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `maa_tstatus`
--
ALTER TABLE `maa_tstatus`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `maa_ttopmenu`
--
ALTER TABLE `maa_ttopmenu`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `maa_tuser`
--
ALTER TABLE `maa_tuser`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=753;

--
-- AUTO_INCREMENT cho bảng `maa_tuser_function`
--
ALTER TABLE `maa_tuser_function`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `maa_tuser_menu`
--
ALTER TABLE `maa_tuser_menu`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1633;

--
-- AUTO_INCREMENT cho bảng `maa_tuser_type`
--
ALTER TABLE `maa_tuser_type`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
