-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2010 at 08:54 AM
-- Server version: 5.0.91
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yusk3366_lieuminh`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, '', 'OSM 1', 'osm-1', 0, 348, 1, 'adv1.png', 'http://www.opensourcematters.org', '2010-07-16 02:47:54', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 0, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 2755, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 0, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 2755, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 0, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 2750, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 0, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 2750, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 0, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 2100, 4, 'adv1.jpg', 'http://shop.joomla.org', '2009-02-28 09:16:11', 0, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 2168, 3, 'adv1.jpg', 'http://shop.joomla.org/amazoncom-bookstores.html', '2009-02-28 09:16:18', 0, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bannertrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Free and Open Source Software', '', 'free-and-open-source-software', '', 'com_newsfeeds', 'left', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(49, 0, 'BẠN CÓ BIẾT', '', 'bn-co-bit', '', '6', 'left', '<table width="100%" border="0" align="left">\r\n  <tr>\r\n<td width="140" height="105" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/hoaqua1.jpg" alt="" width="135" height="103" /></td>\r\n    <td width="74%" align="left" valign="top"><strong>C&aacute;c lo&#7841;i th&#7921;c ph&#7849;m c&oacute; t&aacute;c d&#7909;ng gi&#7843;i &#273;&#7897;c cho c&#417; th&#7875; </strong><br />\r\n    C&#7911; &#273;&#7853;u   ch&#7913;a nhi&#7873;u ch&#7845;t x&#417; n&ecirc;n r&#7845;t t&#7889;t cho ti&ecirc;u h&oacute;a....<br />\r\n\r\n</td>\r\n  </tr>\r\n  <tr>\r\n    <td height="25" colspan="2"> <p align="right"><span ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_content&view=article&id=130:cac-loi-thc-phm-&catid=49:bn-co-bit&Itemid=105">Chi tiết</a> <img src="images/stories/muiten.jpg" /></span></p> </td>\r\n  </tr>\r\n</table>', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(45, 0, 'KHÁCH HÀNG NÓI GÌ', '', 'khach-hang-noi', '', '6', 'left', '<table width="100%" border="0" align="left">\r\n  <tr>\r\n<td width="122" height="101" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/buacom.jpg" alt="" width="120" height="100" /></td>\r\n<td width="122" height="101" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/giadinh.jpg" alt="" width="120" height="100" /></td>\r\n<td width="122" height="101" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/gia-dinh.jpg" alt="" width="120" height="100" /></td>\r\n<td width="122" height="101" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/hanhphuc.jpg" alt="" width="120" height="100" /></td>\r\n  </tr>\r\n  <tr align="left" valign="top">\r\n    <td colspan="4"><strong>Hạnh phúc tràn đầy trong bữa ăn và những cuộc dã ngoại của gia đình!</strong><br />\r\n    Nhờ có sự phục vụ nhiệt tình của Liễu Minh Food mà gia đình chúng tôi đã có ....<br /></td>\r\n  </tr>\r\n  <tr>\r\n<td colspan="4">\r\n<p align="right"><span ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_content&view=article&id=133&Itemid=87">Chi tiết</a> <img src="images/stories/muiten.jpg" /></span></p></td>\r\n  </tr>\r\n</table>', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(46, 0, 'BẠN CÓ THỂ', '', 'bn-co-th', '', '6', 'left', '<table width="100%" border="0" align="left">\r\n  <tr>\r\n<td width="140" height="105" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/thitbachi.jpg" alt="" width="135" height="103" /></td>\r\n    <td width="74%" align="left" valign="top"><strong>Thịt Dọi Rang Hành, Thịt ba chỉ, Thái \r\n</strong><br />\r\n    Nguyên liệu: Thịt ba chỉ tươi, thái mỏng vừa phải, dày cỡ 1.0mm-1.5mmHành hoa thái nhỏ - nhiều hay ít tuỳ người ănNước mắm ngon, bột ngọt, đường kính tuỳ khẩu vị\r\n...<br /></td>\r\n  </tr>\r\n  <tr>\r\n    <td height="25" colspan="2"> <p align="right"><span ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_k2&view=itemlist&layout=category&Itemid=85">Chi tiết</a> <img src="images/stories/muiten.jpg" /></span></p></td>\r\n  </tr>\r\n</table>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(34, 'JA Extensions Manager', 'option=com_jaextmanager', 0, 0, 'option=com_jaextmanager', 'JA Extensions Manager', 'com_jaextmanager', 0, 'components/com_jaextmanager/assets/images/jauc.png', 0, '\nMYSQL_PATH=D:\\wamp\\bin\\mysql\\mysql5.0.51b\\bin\\mysql\nMYSQLDUMP_PATH=D:\\wamp\\bin\\mysql\\mysql5.0.51b\\bin\\mysqldump\nDATA_FOLDER=jaextmanager_data', 1),
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\nfilter_groups=29|18|19|20|21|30|23|24\nfilter_type=BL\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(35, 'K2', 'option=com_k2', 0, 0, 'option=com_k2', 'K2', 'com_k2', 0, 'components/com_k2/images/system/k2-icon.png', 0, 'enable_css=0\nimagesQuality=100\nitemImageXS=100\nitemImageS=164\nitemImageM=164\nitemImageL=164\nitemImageXL=164\nitemImageGeneric=164\ncatImageWidth=125\ncatImageDefault=0\nuserImageWidth=100\nuserImageDefault=0\ncommenterImgWidth=48\nuserName=0\nuserImage=0\nuserDescription=0\nuserURL=0\nuserEmail=0\nuserFeed=0\nuserItemCount=10\nuserItemTitle=0\nuserItemTitleLinked=0\nuserItemDateCreated=0\nuserItemImage=0\nuserItemIntroText=1\nuserItemCategory=1\nuserItemTags=0\nuserItemCommentsAnchor=0\nuserItemReadMore=1\nuserItemK2Plugins=0\ngenericItemCount=10\ngenericItemTitle=0\ngenericItemTitleLinked=0\ngenericItemDateCreated=0\ngenericItemImage=0\ngenericItemIntroText=1\ngenericItemCategory=1\ngenericItemReadMore=1\ngenericItemExtraFields=0\ntagOrdering=\ncomments=1\ncommentsOrdering=DESC\ncommentsLimit=10\ncommentsFormPosition=below\ncommentsPublishing=0\ngravatar=0\nrecaptcha=0\nrecaptcha_public_key=\nrecaptcha_private_key=\nrecaptcha_theme=clean\ncommentsFormNotes=0\ncommentsFormNotesText=Make sure you enter the (*) required information where indicated.\\nBasic HTML code is allowed.\nsocialButtonCode=\ntwitterUsername=\ntinyURL=0\nfeedLimit=10\nfeedItemImage=0\nfeedImgSize=S\nfeedItemIntroText=0\nfeedTextWordLimit=\nfeedItemFullText=0\nintroTextCleanup=0\nintroTextCleanupExcludeTags=\nintroTextCleanupTagAttr=\nfullTextCleanup=0\nfullTextCleanupExcludeTags=\nfullTextCleanupTagAttr=\nlinkPopupWidth=900\nlinkPopupHeight=600\nfrontendEditing=0\nshowImageTab=0\nshowImageGalleryTab=0\nshowVideoTab=0\nshowExtraFieldsTab=0\nshowAttachmentsTab=0\nshowK2Plugins=0\nsideBarDisplayFrontend=0\nmergeEditors=1\nsideBarDisplay=1\nattachmentsFolder=\nhideImportButton=0\ntaggingSystem=1\nlockTags=0\ngoogleSearch=0\ngoogleSearchContainer=k2Container\nK2UserProfile=0\nK2UserGroup=1\nredirect=\nadminSearch=simple\nshowItemsCounterAdmin=0\nshowChildCatItems=0\ndisableCompactOrdering=0\nSEFReplacements=Array\nmetaDescLimit=150\nsh404SefLabelCat=\nsh404SefLabelUser=blog\n\n', 1),
(36, 'Vinaora Visitors Counter', 'option=com_vvisit_counter', 0, 0, 'option=com_vvisit_counter', 'Vinaora Visitors Counter', 'com_vvisit_counter', 0, 'js/ThemeOffice/component.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(128, 'Tuyệt vời chả cá', 'tuyt-vi-ch-ca', '', '<table width="100%" border="0" align="left">\r\n  <tr>\r\n<td width="14%" height="110" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/tacdungchaca.jpg" alt="" width="140" height="108" /></td>\r\n    <td width="84%" align="left" valign="top"><strong>Tuyệt vời chả cá\r\n</strong><br />\r\n    Chân giò, món ăn, thúc đẩy, quá trình, mộc nhĩ, chữa bệnh, măng, ninh, năng, chống, sức... \r\n<br /></td>\r\n  </tr>\r\n  <tr>\r\n    <td height="25" colspan="2"><hr color="#9fbe18" /></td>\r\n  </tr>\r\n</table>\r\n', '\r\n<h1><strong>Tuyệt vời chả cá</strong></h1> <br />\r\n<img src="images/stories/tacdungchaca.jpg" alt="" width="500" height="350" /> </br></br>\r\n\r\nCó vài loại cá được dùng làm nên món chả nổi tiếng này như cá trê phi, cá nheo, cá quả nhưng phổ biến nhất là chả làm từ cá lăng, một loại cá nước ngọt lớn, ít xương, thịt ngọt và thơm. </br></br>\r\n\r\n \r\nỞ nước ta, cá lăng  có mặt ở vài con sông vùng miền núi và chỉ có ở những đoạn nhiều ghềnh thác, dòng chảy mạnh, gặp nhiều nhất là ở sông Đà, sông Lô (vùng tỉnh Phú Thọ), sông Sê Rê Pốk (ở tỉnh Đắk Lắk). </br></br>\r\n \r\nMón chả cá lăng không chỉ ngon miệng  mà còn rất tốt cho sức khỏe, bởi thịt loài cá này chứa tới  18,43% protein; 4,93% chất béo; ngoài ra còn có một tỉ lệ khá cao các vitamin, can-xi, phốt-pho, sodium, kali, ma-giê, kẽm và đồng. Nghiên cứu của các nhà khoa học Thái Lan cũng cho thấy cá lăng có giá trị dinh dưỡng cao. Đáng chú ý là các loại axít béo như omega – 3, bao gồm EPA và DHA. </br></br>\r\nSo với cá biển, các loại axít béo như omega – 3 ở cá lăng chiếm tỉ lệ cao hơn. Các axít béo nói trên có tác dụng tích cực trong phòng ngừa các bệnh tim mạch như tắc mạch, nghẽn mạch, tăng huyết áp do có tác dụng chống hình thành cục máu đông trong lòng mạch máu. \r\n </br></br>\r\nOmega - 3 có tác dụng điều trị tích cực trong các bệnh tim mạch và làm giảm nguy cơ phát triển bệnh tim mạch, làm giảm chất béo trong máu, huyết áp thấp hơn, tăng sức bền của động mạch và giảm số lượng mảng bám động mạch (hẹp động mạch là nguyên nhân gây bệnh tim mạch). </br></br>\r\n \r\nCác loại rau ăn cùng món chả cá lăng như thì là, hành tăm, húng láng, ớt tươi... đều là các dược liệu, cùng với mắm tôm tạo nên một hương vị riêng của món chả cá. Bạn có thể khai vị cùng vang đỏ là một loại  thức uống có tác dụng phòng ngừa bệnh lý tim mạch.', 1, 6, 0, 49, '2010-07-23 03:46:45', 62, '', '2010-07-31 08:54:55', 62, 0, '0000-00-00 00:00:00', '2010-07-23 03:46:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 5, '', '', 0, 12, 'robots=\nauthor='),
(129, 'Test articles', '9-thc-phm-giup-tieu-hoa-d-dang', '', 'Bạn có thể đặt ở đây', '', 1, 6, 0, 46, '2010-07-23 03:46:45', 62, '', '2010-07-29 05:23:41', 62, 0, '0000-00-00 00:00:00', '2010-07-23 03:46:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(130, 'Các loại thực phẩm ', 'cac-loi-thc-phm-', '', '<table width="100%" border="0" align="left">\r\n  <tr>\r\n<td width="140" height="105" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/hoaqua1.jpg" alt="" width="135" height="103" /></td>\r\n    <td width="74%" align="left" valign="top"><strong>C&aacute;c lo&#7841;i th&#7921;c ph&#7849;m c&oacute; t&aacute;c d&#7909;ng gi&#7843;i &#273;&#7897;c cho c&#417; th&#7875; </strong><br />\r\n    C&#7911; &#273;&#7853;u   ch&#7913;a nhi&#7873;u ch&#7845;t x&#417; n&ecirc;n r&#7845;t t&#7889;t cho ti&ecirc;u h&oacute;a....<br /></td>\r\n  </tr>\r\n  <tr>\r\n    <td height="25" colspan="2"><hr color="#9fbe18" /></td>\r\n  </tr>\r\n</table>\r\n', '\r\n<h1><strong>Các loại thực phẩm có tác dụng giải độc cho cơ thể</strong></h1> <br />\r\n<img src="images/stories/hoaqua1.jpg" alt="" width="500" height="350" /> </br></br>\r\n\r\n<b>Củ đậu chứa nhiều chất xơ nên rất tốt cho tiêu hóa, giúp cho dạ dầy co bóp tốt, có lợi cho đại tiện. Bình thường thì mọi người hay ăn sống, nhưng bạn có thể chế biến thành xào, nấu hoặc là nướng. Nướng thì giữ nguyên cả vỏ, khi ăn sẽ thấy ngọt và rất mát. </b>\r\n</br></br>\r\n\r\nCách ăn uống không đúng, môi trường ô nhiễm, cuộc sống nhiều áp lực khiến cho cơ thể của chúng ta bị tích tụ rất nhiều độc chất. Những thực phẩm nào có thể hóa giải điều đó.</br></br>\r\n<b> 1. Củ đậu: </b> Củ đậu chứa nhiều chất xơ nên rất tốt cho tiêu hóa, giúp cho dạ dầy co bóp tốt, có lợi cho đại tiện. Bình thường thì mọi người hay ăn sống, nhưng bạn có thể chế biến thành xào, nấu hoặc là nướng. Nướng thì giữ nguyên cả vỏ, khi ăn sẽ thấy ngọt và rất mát.</br></br>\r\n\r\n<b> 2. Đậu xanh: </b> Đậu xanh thanh nhiệt giải độc, rất lợi tiểu và có tác dụng tuyệt vời trong việc chữa cảm nắng và giải khát. Nên ăn nhiều chè, cháo đậu xanh thì sẽ giải độc và tiêu viêm rất tốt. Tuy nhiên, khi chế biến đậu xanh bạn không nên nấu lâu quá, vì lâu quá sẽ làm cho hàm lượng acid hữu cơ cũng như là vitamin bị mất đi và giảm bớt tác dụng vốn có của nó. </br></br>\r\n\r\n<b> 3. Yến mạch: </b> Yến mạch có tác dụng giúp dạ dầy co bóp tốt, nhuận tràng, thông đại tiện nên giải độc rất tốt. Bạn hãy nghiền yến mạch nấu chín thành nước để uống hoặc khi uống cho thêm một số nước hoa quả khác như là táo nho, vừa cung cấp được thêm nhiều thành phần dinh dưỡng, vừa lợi đại tiểu tiện. </br></br>\r\n\r\n<b> 4. Ý dĩ: </b> Hạt ý dĩ có tác dụng thúc đẩy tuần hoàn máu, trao đổi nước trong cơ thể, phát huy tác dụng lợi tiểu, tiêu viêm, rất có ích trong việc cải thiện tình trạng của những người béo phì do phù nề. Uống nước ý dĩ là một trong những biện pháp giải độc khá tốt. Bạn hãy đun nhừ hạt ý dĩ rồi cho thêm ít đường vừa đủ vào nguấy đều. Loại nước này vừa giải độc lại vừa có tác dụng làm đẹp da.</br></br>\r\n\r\n<b> 5. Hạt kê: </b> Hạt kê không có trấu cám nên sẽ không làm kích thích thành ruột. Đặc biệt là hạt kê có nhiều chất xơ ôn hòa nên rất dễ tiêu hóa, giải độc rất tốt. Bạn có thể nấu cháo kê, cháo kê có tác dụng giải độc, thanh nhiệt, lợi tiểu, hàm lượng dinh dưỡng lại cao và đối với phụ nữ thì có tác dụng làm trắng da. </br></br>\r\n\r\n<b> 6. Gạo chưa giã: </b> Loại gạo này còn giữ nguyên các thành phần dinh dưỡng, có hàm lượng chất xơ phong phú, có tác dụng hút nước, hút mỡ và tạo cho bạn có cảm giác no bụng. Khi ăn loại gạo này sẽ làm cho đường ruột thông suốt, giải độc tốt, rất có ích cho những người hay bị táo bón. Hàng sáng ăn một bát cháo gạo chưa giã hoặc là một cốc sữa đậu lành pha với gạo chưa giã là cách giải độc tốt nhất cho cơ thể. </br></br>\r\n\r\n<b> 7. Đậu đỏ: </b> Đậu đỏ có tác dụng thúc đẩy sự co bóp của dạ dầy, giảm táo bón, lợi tiểu. Bạn hãy ngâm đậu đỏ một tối sau đó vớt ra rửa sạch cho vào nồi ninh nhừ thành chè không đường. Cứ cách một ngày ăn một bát chè không đường này thì giải độc rất tốt. </br></br>\r\n\r\n<b> 8. Cà rốt: </b> Cà rốt có tác dụng cải thiện tình trạng táo bón của cơ thể. Cà rốt có chứa hàm lượng carontine- phong phú, có thể bài trừ được chất độc. Tuy nhiên, khi chọn lựa cần chú ý rằng cà rốt tươi mới có tác dụng giải độc tốt nhất. Bạn có thể chế biến thành nước ép cà rốt, nếu thích thì cho pha thêm mật ong, nước chanh...vừa ngon vừa giải khát lại vừa giải độc. </br></br>\r\n\r\n<b> 9. Sơn dược (một vị thuốc nam): </b> Sơn dược có tác dụng điều chỉnh hệ thống tiêu hóa của cơ thể, làm giảm bớt sự tích tụ của lớp mỡ ở dưỡi da, tránh hiện tượng béo phì và làm tăng được chức năng của hệ thống miễn dịch. Ăn sống sơn dược sẽ có hiệu quả tốt nhất. Rửa sạch sơn dược và cà rốt, cắt thành miếng rồi cho ép thành nước uống, vừa ngon, vừa bổ cho dạ dầy, đường ruột. </br></br>\r\n\r\n<b> 10. Ngưu bàng (một vị thuốc nam): </b> Ngưu bàng có tác dụng thúc đẩy toàn hoàn máu, trao đổi chất và điều chỉnh chức năng của hệ thống đường ruột. Ngưu bàng chứa nhiều chất xơ nên có tác dụng giữ nước trong cơ thể, làm mềm phân, rất có ích cho việc giải độc, chữa táo bón. Bạn có thể chế biến ngưu bành thành nước giải khát thay cho nước trà, uống lúc nào cũng được và cần phải uống thường xuyên, lâu dài. </br></br>\r\n\r\n<b> 11. Măng lau: </b> Măng chứa nhiều chất dinh dưỡng như kali, asparagine có tác dụng lợi tiểu, đào thải được lượng nước thừa trong cơ thể, giải độc rất tốt. Mầm măng lau tươi chứa nhiều vitamin a, rất tốt cho cơ thể và dễ chế biến thành các món ăn ngon miệng. </br></br>\r\n\r\n<b> 12. Củ sen: </b> Củ sen có tác dụng lợi tiểu, và đẩy các chất phế thải ra ngoài cơ thể để làm sạch máu. Củ sen được chế biến nóng lạnh tùy thích. Có thể ép thành nước và cho thêm một ít mật ong để uống, cũng có thể nấu lên thành chè rồi uống, hoặc nấu canh xương... </br></br>\r\n\r\n<b> 13. Củ cải: </b> Củ cải có tác dụng lợi tiểu rất tốt. Củ cải chứa nhiều chất xơ nên rất tốt cho những người hay bị táo bón, đồng thời củ cải còn có tác dụng làm giảm béo. Nếu muốn củ cải giải độc có hiệu quả tốt nhất là ăn sống, có thể ép thành nước hoặc là làm sa lát. </br></br>\r\n\r\n<b> 14. Cải cúc: </b> Cải cúc chứa nhiều vitamin a, có tác dụng bảo vệ gan và đào thải các chất độc ra ngoài cơ thể. Bạn có thể chế biến thành các món canh hợp khẩu vị để ăn hàng ngày. \r\n</br></br>\r\n<b> 15. Lá củ đậu: </b> Chất xơ trong lá củ đậu rất nhiều, lại không có vị đắng chát, khi ăn dễ làm cho ta có cảm giác no bụng, lại thúc đẩy được sự co bóp của dạ dầy, phòng chống được căn bệnh táo bón. Rửa sạch lá củ đậu rồi cho nhúng qua nước đang đun sôi. Sau đó trộn lẫn với tỏi đã băm nhỏ và ít dầu oliu, như vậy bạn đã có một món sa lát vừa bổ vừa ngon miệng. </br></br>\r\n\r\n<b> 16. Lá củ cải: </b> Loại rau này có chứa hàm lượng vitamin và xơ vô cùng phong phú, có tác dụng khiến bạn ăn ngon, đường ruột co bóp tốt và cải thiện được tình trạng táo bón của cơ thể. Ngoài nấu canh thì bạn có thể ép lá rau củ cải thành nước. Khi ép nên cho thêm ít mật ong, như vậy vừa giải độc mà lại rất bổ. </br></br>\r\n\r\n<b> 17. Xuyên thất: </b> Lá cây xuyên thất có những thành phần dinh dưỡng làm giảm lượng đường trong máu và chữa trị căn bệnh táo bón mãn tính. Cho lá xuyên thất, cà chua, quả kiwi vào xay lẫn để uống hàng ngày, vừa ngon vừa bổ. </br></br>\r\n\r\n<b> 18. Giấm: </b> Giấm ăn có tác dụng tăng cường sự trao đổi chất trong cơ thể, thải các chất acid có hại ra ngoài và giải tỏa mệt mỏi, ngoài ra cũng có tác dụng lợi tiểu, thông ruột. Sáng tối mỗi ngày sau khi ăn cơm thì nên uống một chút giấm ăn, như vậy sẽ rất có ích cho sức khỏe.', 1, 6, 0, 49, '2010-07-23 03:46:45', 62, '', '2010-07-31 09:34:12', 62, 0, '0000-00-00 00:00:00', '2010-07-23 03:46:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 4, '', '', 0, 21, 'robots=\nauthor='),
(134, 'Chân giò ninh măng ', 'chan-gio-ninh-mng-', '', '<table width="100%" border="0" align="left">\r\n  <tr>\r\n<td width="14%" height="110" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/changioninhmang.jpg" alt="" width="140" height="108" /></td>\r\n    <td width="84%" align="left" valign="top"><strong>Chân giò ninh măng - món ăn chữa bệnh \r\n</strong><br />\r\n    Chân giò, món ăn, thúc đẩy, quá trình, mộc nhĩ, chữa bệnh, măng, ninh, năng, chống, sức... \r\n<br /></td>\r\n  </tr>\r\n  <tr>\r\n    <td height="25" colspan="2"><hr color="#9fbe18" /></td>\r\n  </tr>\r\n</table>\r\n', '\r\n<h1><strong>Chân giò ninh măng - món ăn chữa bệnh \r\n</strong></h1> <br />\r\n<img src="images/stories/changioninhmang.jpg" alt="" width="500" height="350" /> </br></br>\r\n\r\nMăng không phải là món ăn vô bổ như nhiều người nghĩ mà có tác dụng tiêu thực giải độc, hỗ trợ tiêu hóa. Chân giò thúc đẩy quá trình tạo máu. Món chân giò ninh măng, vốn quen thuộc trong ngày Tết, nếu được ăn ở mức vừa phải sẽ có lợi cho sức khỏe. </br></br>\r\n\r\nTrước đây, mâm cỗ ngày Tết của nhiều gia đình không thể thiếu món chân giò ninh măng. Tuy nhiên, món này ngày nay không được ưa chuộng như trước do xu hướng lược bỏ những món ăn quá béo ngậy trên mâm cơm ngày thường cũng như mâm cỗ. Thực ra, món ăn này có giá trị độc đáo về dinh dưỡng, phòng chống bệnh tật, bảo vệ và nâng cao sức khỏe con người. </br></br>\r\n\r\nNhiều người cho rằng măng là một thức ăn vô bổ, thậm chí nghĩ rằng ăn nhiều măng sẽ “hại máu”. Nhưng kỳ thực, đây là loại thực phẩm rất có giá trị, nhất là hiện nay khi con người có xu hướng ham đồ tinh chế mà bỏ quên các thực phẩm nhiều chất xơ.  </br></br>\r\n\r\nTheo dinh dưỡng học cổ truyền, măng vị ngọt hơi đắng, tính hơi hàn, có công dụng hóa đàm hạ khí, thanh nhiệt trừ phiền, tiêu thực giải độc. Nó thường được dùng để làm thức ăn và làm thuốc cho những người bị cảm mạo phong nhiệt, ho do phế nhiệt có nhiều đờm vàng, phù thũng do viêm thận, suy tim, sởi và thủy đậu ở trẻ em, ăn uống chậm tiêu, tiểu tiện bất lợi, đại tiện không thông... </br></br>\r\n\r\nKết quả nghiên cứu hiện đại cho thấy, măng khá giàu đạm với 16 loại acid amin, chứa nhiều canxi, phốt pho, sắt, vitamin nhóm B, C, mangan và rất nhiều chất xơ. Măng có tác dụng thúc đẩy nhu động ruột, trợ giúp tiêu hóa, phòng chống có hiệu quả tình trạng béo phì, xơ vữa động mạnh, tăng huyết áp, táo bón, ung thư đại tràng và ung thư vú. Một số nghiên cứu gần đây cho thấy, với hàm lượng mangan khá phong phú và một loại đường đa có trong thành phần, măng có khả năng nhất định trong việc phòng ung chống ung thư. </br></br>\r\n\r\nCòn về chân giò, có người nghĩ rằng, nó chẳng qua chỉ lắm bì nhiều xương, làm sao có nhiều chất bổ mà phải bàn. Kỳ thực không phải như vậy. Nhiều công trình nghiên cứu của Trung Quốc đã chứng minh rằng: Người già và người gầy yếu nếu thường xuyên ăn móng giò sẽ cải thiện được chức năng tích nước của các tế bào mô, thúc đẩy quá trình tạo hemoglobin và hồng cầu. </br></br>\r\n\r\nCác phụ gia và gia vị trong món chân giò ninh măng cũng tốt cho sức khỏe, như hành khô, hành tươi, miến, mắm, muối, hạt tiêu, mì chính... và đặc biệt là mộc nhĩ đen. Kết quả nghiên cứu hiện đại cho thấy, mộc nhĩ đen có khả năng ức chế quá trình ngưng tập tiểu cầu, phòng chống đông máu do nghẽn mạch, ngăn cản sự hình thành các mảng xơ vữa trong lòng huyết quản. Bởi vậy, với những người bị tăng huyết áp, xơ vữa động mạch, thiểu năng tuần hoàn não, thiểu năng động mạch vành..., mộc nhĩ là một trong những thực phẩm lý tưởng. </br></br>\r\n\r\nMặt khác, chất keo thực vật vốn có khá nhiều trong mộc nhĩ có tác dụng làm sạch dạ dày và ruột, chống lão hóa, kháng khuẩn, chống phóng xạ và ức chế một số chủng tế bào ung thư. Bởi vậy, nhiều chuyên gia dinh dưỡng coi mộc nhĩ là một trong những thực phẩm có công năng trường thọ. </br></br>\r\n\r\n<p align="right"><i>(Theo Sức Khỏe & Đời Sống)</i> </p>', 1, 6, 0, 49, '2010-07-31 08:14:58', 62, '', '2010-07-31 08:42:19', 62, 0, '0000-00-00 00:00:00', '2010-07-31 08:14:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 3, '', '', 0, 9, 'robots=\nauthor='),
(133, 'KHÁCH HÀNG NÓI GÌ', 'khach-hang-noi-gi', '', '<div class="ct_lf">\r\n				\r\n            <div class="yk_details_title"><strong></strong>Hạnh phúc gia đình trong bữa ăn </div>\r\n            <div class="yk_details">\r\n           		<div>\r\n<p><strong><img src="images/stories/buacom.jpg" alt="1"width="500" height="375" />\r\n           		  <p>Nhờ có Liễu Minh cung cấp thực phẩm tươi sạch, vệ sinh mà chúng ta có những món ngon như thế này. </p>\r\n				              <div class="yk_details_title"><strong></strong>Khỏe mạnh đi dã ngoại cùng gia đình thật là vui </div>\r\n       		  </div>\r\n                \r\n                <img src="images/stories/giadinh.jpg" alt="1"width="500" height="375" />\r\n                <div>\r\n                  <p>Nhờ ăn uống đảm bảo mà sức khỏe của gia đình mình ai cũng tốt. Hè này nhà mình đi dã ngoại thật là vui và hạnh phúc. </p>\r\n                  <div class="yk_details_title"><strong></strong>Mẹ cho con với! Ngon quá! </div>\r\n\r\n              </div>\r\n                <img src="images/stories/gia-dinh.jpg" alt="1"width="500" height="375" />\r\n                <div>Thực phẩm này mẹ mua ở Liễu Minh rất tươi ngon an toàn vệ sinh mẹ yên tâm cho con ăn.\r\n                  <div class="yk_details_title"><strong></strong>Chia sẻ cùng mọi người </div>\r\n				  <img src="images/stories/hanhphuc.jpg" alt="1"width="500" height="375" />\r\n                  <p>Gia đình mình được hạnh phúc như thế này là do được ăn uống đảm bảo. Mà mình lại không tốn nhiều thời gian để mua sắm thực phẩm. Mình có Liễu Minh luôn cung cấp thực phẩm tươi, vệ sinh, nhờ đó nhà mình luôn được những bữa ăn ngon và mọi người cảm thấy yêu nhau hơn. </p>\r\n                </div>\r\n                <div></div>\r\n            </div>\r\n                \r\n                \r\n               \r\n          </div>', '', 1, 6, 0, 45, '2010-07-27 01:32:41', 62, '', '2010-08-03 10:04:02', 62, 0, '0000-00-00 00:00:00', '2010-07-27 01:32:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 59, 'robots=\nauthor='),
(131, 'GIỚI THIỆU', 'gii-thiu', '', '<img src="images/stories/intro.gif" alt="" />', '', 1, 0, 0, 0, '2010-07-23 03:54:48', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-07-23 03:54:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 29, 'robots=\nauthor='),
(132, 'LIÊN HỆ', 'lien-h', '', '<img src="images/stories/lacvien2.jpg" alt="" width="500" height="400"/> </br>\r\n<p><b>Cửa hàng Thực Phẩm Liễu Minh</b></br>Địa chỉ :Quầy số 1 Khu lô lều chợ Hôm Đức Viên, Hai Bà Trưng , Hà Nội</br>\r\nSố điện thoại : 04. 3822.9546</br>\r\nNhà riêng: 04. 3644.6641 Mobile: 0913.063.093', '', 1, 0, 0, 0, '2010-07-23 03:56:31', 62, '', '2010-07-28 07:22:22', 62, 0, '0000-00-00 00:00:00', '2010-07-23 03:56:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 30, 'robots=\nauthor='),
(135, 'Canh gan heo dưỡng mắt ', 'canh-gan-heo-dng-mt-', '', '<table width="100%" border="0" align="left">\r\n  <tr>\r\n<td width="14%" height="110" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/canhganheo.jpg" alt="" width="140" height="108" /></td>\r\n    <td width="84%" align="left" valign="top"><strong>Canh gan heo dưỡng mắt \r\n</strong><br />\r\n    Gan heo vị ngọt đắng, tính bình, không độc, có tác dụng dưỡng huyết bổ gan, làm sáng mắt... \r\n<br /></td>\r\n  </tr>\r\n  <tr>\r\n    <td height="25" colspan="2"><hr color="#9fbe18" /></td>\r\n  </tr>\r\n</table>\r\n', '\r\n<h1><strong>Canh gan heo dưỡng mắt </strong></h1> <br />\r\nThịt heo không những là loại thực phẩm giàu dinh dưỡng mà các bộ phận tim, gan, cật, phổi, giò heo... còn là nguồn cung cấp nhiều vị thuốc quý. </br></br>\r\n\r\n\r\nGan heo vị ngọt đắng, tính bình, không độc, có tác dụng dưỡng huyết bổ gan, làm sáng mắt... </br></br>\r\n\r\n\r\n<img src="images/stories/canhganheo.jpg" alt="" width="500" height="400" /> </br></br>\r\n\r\nMón canh gan heo giúp phòng trị yếu thị lực; viễn thị; quáng gà do thiếu dinh dưỡng, rất thích hợp cho những người thường xuyên làm việc trên máy vi tính. Một món canh khác là canh phổi heo. Phổi heo vị ngọt, tính bình, không độc, có tác dụng thanh nhiệt bổ phổi, trị ho, tan đàm.', 1, 6, 0, 49, '2010-07-31 08:55:01', 62, '', '2010-08-04 09:08:06', 62, 0, '0000-00-00 00:00:00', '2010-07-31 08:55:01', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 2, '', '', 0, 6, 'robots=\nauthor='),
(136, 'Cật heo xào hẹ bổ thận, tăng sinh lực ', 'ct-heo-xao-h-b-thn-tng-sinh-lc-', '', '<table width="100%" border="0" align="left">\r\n  <tr>\r\n<td width="14%" height="110" align="center" valign="middle" bgcolor="#CCFF00"><img src="images/stories/catheo.jpg" alt="" width="140" height="108" /></td>\r\n    <td width="84%" align="left" valign="top"><strong>Cật heo xào hẹ bổ thận, tăng sinh lực </strong><br />\r\n\r\nCật heo vị ngọt, tính bình, không độc, có tác dụng điều chỉnh chức năng thận, trị đau lưng, di tinh, mồ hôi trộm, ù tai... \r\n\r\n<br /></td>\r\n  </tr>\r\n  <tr>\r\n    <td height="25" colspan="2"><hr color="#9fbe18" /></td>\r\n  </tr>\r\n</table>\r\n', '\r\n<h1><strong>Chân giò ninh măng - món ăn chữa bệnh \r\n</strong></h1> <br />\r\nThịt heo không những là loại thực phẩm giàu dinh dưỡng mà các bộ phận tim, gan, cật, phổi, giò heo... còn là nguồn cung cấp nhiều vị thuốc quý. </br> </br>\r\n\r\nCật heo vị ngọt, tính bình, không độc, có tác dụng điều chỉnh chức năng thận, trị đau lưng, di tinh, mồ hôi trộm, ù tai... </br> </br>\r\n\r\n<img src="images/stories/catheo.jpg" alt="" width="500" height="350" /> </br> </br>\r\n\r\nMón ăn phòng trị sa dạ dày, đau dạ dày do lạnh, đặc biệt là những lúc ăn uống đồ lạnh quá nhiều từ các bữa tiệc liên hoan, tổng kết</br> </br>\r\n<img src="images/stories/catheo_ghe.jpg" alt="" width="500" height="350" /> </br> </br>', 1, 6, 0, 49, '2010-07-31 08:59:17', 62, '', '2010-07-31 09:05:11', 62, 0, '0000-00-00 00:00:00', '2010-07-31 08:59:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 8, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_jaem_log`
--

CREATE TABLE IF NOT EXISTS `jos_jaem_log` (
  `id` int(11) NOT NULL auto_increment,
  `ext_id` varchar(50) default NULL,
  `check_date` datetime default NULL,
  `check_info` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ext_id` (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_jaem_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_jaem_services`
--

CREATE TABLE IF NOT EXISTS `jos_jaem_services` (
  `id` int(11) NOT NULL auto_increment,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL default 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL default '0',
  `ws_core` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_jaem_services`
--

INSERT INTO `jos_jaem_services` (`id`, `ws_name`, `ws_mode`, `ws_uri`, `ws_user`, `ws_pass`, `ws_default`, `ws_core`) VALUES
(1, 'Local Service', 'local', '', '', '', 1, 1),
(2, 'JoomlArt Updates', 'remote', 'http://update.joomlart.com/service/', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_attachments`
--

CREATE TABLE IF NOT EXISTS `jos_k2_attachments` (
  `id` int(11) NOT NULL auto_increment,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_attachments`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_categories`
--

CREATE TABLE IF NOT EXISTS `jos_k2_categories` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL default '0',
  `plugins` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_k2_categories`
--

INSERT INTO `jos_k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`) VALUES
(1, 'danh mục hàng', 'danh-muc-hang', '<p>danh mục sản phẩm công ty liễu minh food</p>', 0, 0, 0, 0, 1, '', 'inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n', 1, ''),
(2, 'menu1', 'menu1', '', 0, 0, 1, 0, 2, '', 'inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n', 1, ''),
(3, 'content2', 'content2', '', 0, 0, 1, 0, 4, '', 'inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=rorder\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n', 1, ''),
(4, 'Các món ăn chế biến từ thịt lợn', 'các-món-ăn-chế-biến-từ-thịt-lợn', '', 0, 0, 1, 0, 1, '', 'inheritFrom=0\ntheme=\nnum_leading_items=0\nnum_leading_columns=3\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=3\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=3\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n', 0, ''),
(5, 'Chả mực Hạ Long', 'chả-mực-hạ-long', '', 0, 0, 1, 0, 2, '', 'inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n', 0, ''),
(6, 'Nem đông lạnh các loại', 'nem-đông-lạnh-các-loại', '', 0, 0, 1, 0, 3, '', 'inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=0\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=0\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n', 0, ''),
(7, 'Chả cá', 'chả-cá', '', 0, 0, 1, 0, 4, '', 'inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=0\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n', 0, ''),
(8, 'Chả cá', 'chả-cá', '', 0, 0, 1, 0, 8, '', 'inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_comments`
--

CREATE TABLE IF NOT EXISTS `jos_k2_comments` (
  `id` int(11) NOT NULL auto_increment,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `jos_k2_extra_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_extra_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `jos_k2_extra_fields_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_extra_fields_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_items`
--

CREATE TABLE IF NOT EXISTS `jos_k2_items` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) default NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL default '0',
  `introtext` text NOT NULL,
  `fulltext` text NOT NULL,
  `video` text,
  `gallery` varchar(255) default NULL,
  `extra_fields` text character set utf8 collate utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `featured` smallint(6) NOT NULL default '0',
  `featured_ordering` int(11) NOT NULL default '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `jos_k2_items`
--

INSERT INTO `jos_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`) VALUES
(1, 'bạn có biết', 'ban-co-biet', 3, 1, '<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong></p>\r\n<p>Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy, hương vị rất đặc trưng các bạn ạ...</p>', '', NULL, NULL, '[]', '', '2010-07-21 04:53:24', 62, '', 0, '0000-00-00 00:00:00', '2010-07-21 07:00:47', 62, '2010-07-21 04:53:24', '0000-00-00 00:00:00', 1, 0, 1, 0, 1, '', '', '', '', 1, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(2, 'bạn có thể', 'ban-co-the', 3, 1, '<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong> <br /> Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy,                      hương vị rất đặc trưng các bạn ạ...</p>', '', NULL, NULL, '[]', '', '2010-07-21 05:04:41', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2010-07-21 05:04:41', '0000-00-00 00:00:00', 1, 0, 3, 0, 11, '', '', '', '', 4, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(3, 'khách hàng nói gì', 'khach-hang-noi-gi', 3, 1, '<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong> <br /> Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy,                      hương vị rất đặc trưng các bạn ạ...</p>\r\n<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong> <br /> Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy,                      hương vị rất đặc trưng các bạn ạ...</p>', '', NULL, NULL, '[]', '', '2010-07-21 05:08:41', 62, '', 62, '2010-07-22 03:41:24', '2010-07-22 02:12:00', 62, '2010-07-21 05:08:41', '0000-00-00 00:00:00', 1, 0, 2, 0, 12, '', '', '', '', 9, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=0\ncatItemDateCreated=0\ncatItemRating=\ncatItemImage=0\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=\ncatItemCommentsAnchor=0\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=0\nitemAuthorImage=0\nitemAuthorDescription=0\nitemAuthorURL=0\nitemAuthorEmail=0\nitemAuthorLatest=0\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(4, 'giới thiệu', 'gioi-thieu', 3, 0, '<p><img src="images/stories/food/intro.gif" border="0" alt="gioi thieu " /></p>', '', NULL, NULL, '[]', '', '2010-07-21 05:14:18', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2010-07-21 05:14:18', '0000-00-00 00:00:00', 1, 0, 4, 0, 4, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(5, 'list1', 'list1', 2, 0, '<div class="pic_1"><img src="images/stories/pic_1.gif" border="0" /><br />\r\n<div class="txt_pic_2">Nem cua bể</div>\r\n<div class="value_txt">\r\n<div>giá sản phẩm :</div>\r\n</div>\r\n</div>\r\n<p> </p>', '', NULL, NULL, '[]', '', '2010-07-21 05:34:54', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2010-07-21 05:34:54', '0000-00-00 00:00:00', 1, 0, 1, 1, 1, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(6, 'lis2', 'list2', 3, 0, '<div class="pic_2"><img src="images/stories/pic_2.gif" border="0" /></div>\r\n<div class="txt_pic_2">Nem cua bể</div>\r\n<div class="value_txt">\r\n<div>giá sản phẩm :</div>\r\n</div>', '', NULL, NULL, '[]', '', '2010-07-21 05:42:18', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2010-07-21 05:42:18', '0000-00-00 00:00:00', 1, 0, 5, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(7, 'lis2', 'list2', 3, 1, '<div class="pic_2"><img src="images/stories/pic_2.gif" border="0" /></div>\r\n<div class="txt_pic_2">Nem cua bể</div>\r\n<div class="value_txt">\r\n<div>giá sản phẩm :</div>\r\n</div>', '', NULL, NULL, '[]', '', '2010-07-21 05:44:30', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2010-07-21 05:44:30', '0000-00-00 00:00:00', 1, 0, 6, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(8, 'list3', 'list3', 2, 0, '<div class="pic_3"><img src="images/stories/pic_3.gif" border="0" />\r\n<div class="txt_pic_2">Nem cua bể</div>\r\n<div class="value_txt">\r\n<div>giá sản phẩm :</div>\r\n</div>\r\n</div>', '', NULL, NULL, '[]', '', '2010-07-21 05:44:36', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2010-07-21 05:44:36', '0000-00-00 00:00:00', 1, 0, 2, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(9, 'danh muc hang', 'danh-muc-hang', 3, 1, '<div class="list_1">\r\n<div class="pic_1">\r\n<div class="txt_pic_1"><img src="images/stories/pic_1.gif" border="0" width="144" height="125" />Nem cua bể</div>\r\n</div>\r\n<div class="pic_1"><img src="images/stories/pic_2.gif" border="0" width="143" height="103" />\r\n<div class="txt_pic_1">Nem cua bể</div>\r\n</div>\r\n<div class="pic_2"><img src="images/stories/pic_3.gif" border="0" width="142" height="128" />\r\n<div class="txt_pic_1">Nem cua bể</div>\r\n</div>\r\n</div>', '', NULL, NULL, '[]', '', '2010-07-21 07:09:24', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2010-07-21 07:09:24', '0000-00-00 00:00:00', 1, 0, 6, 0, 0, '', '', '', '', 1, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(10, 'mỡ nước ', 'mo-nuoc', 4, 1, 'Mỡ nước sạch </br>\r\n<b>Giá bán: 30.000d/kg</b> </br></br>\r\n', '\r\n<img src="images/stories/mo-nuoc.jpg" alt="" width="500" height="375" /></br></br>\r\nMỡ nước sạch. Được rán từ thịt mỡ của lợn đã qua kiểm dịch\r\n</br></br>', NULL, NULL, '[]', '', '2010-07-21 07:55:50', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 09:02:01', 62, '2010-07-21 07:55:50', '0000-00-00 00:00:00', 0, 0, 1, 1, 10, '', '', '', '', 40, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(11, 'giả cầy', 'gia-cay', 4, 1, 'Giả cầy thơm phưng phức </br>\r\n<b>Giá bán: 60.000d/kg</b> </br></br>\r\n', '\r\n<img src="images/stories/giacay2.jpg" alt="" width="500" height="375" /></br></br>\r\nGiả cầy là món ăn yêu thích của mọi thành viên trong gia đình bạn, nhưng bạn rất bận và không có thời gian để chế biến. Hãy gọi cho chúng tôi, chúng tôi sẽ sơ chế, tẩm ướp giúp bạn. Và chỉ với 30 phút đun, bạn đã có một món giả cầy ngon tuyệt.\r\n</br></br>\r\n<img src="images/stories/giacay.jpg" alt="" width="500" height="375" /></br></br>', NULL, NULL, '[]', '', '2010-07-21 07:56:34', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 01:34:35', 62, '2010-07-21 07:56:34', '0000-00-00 00:00:00', 0, 0, 2, 1, 8, '', '', '', '', 93, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(12, 'chả xiên nướng', 'cha-xien-nuong', 4, 1, 'Chả xiên nướng thơm ngon hấp dẫn  </br>\r\n<b>Giá bán: 6000d/cai</b> </br>\r\n', '\r\n<img src="images/stories/thitxiennuong2.jpg" alt="" width="500" height="375" /> </br> </br>\r\n<b>Thử làm kiểu nhà tớ nhé:</b></br>\r\n- Thịt nạc vai, chỗ hơi có tí mỡ, hoặc chỗ thịt mà ngoài hàng họ gọi là đầu rồng: 300 gr, thải mỏng vừa độ 3-4mm</br>\r\n- tỏi đập dập: 1 củ</br>\r\n- dầu hào: 2 thìa cà phê (tsp)</br>\r\n- nước mắm ngon: 1/2 thìa cà phê</br>\r\n- mật ong: 1/2 thìa cà phê</br>\r\n- Rượu trắng 1/2 thìa cà phê</br>\r\n- ít vừng rang thơm</br>\r\n- que xiên nướng = tre mua ngoài hàng </br></br>\r\n\r\n<img src="images/stories/thitxiennuong.jpg" alt="" width="500" height="375" /> </br> </br>\r\nThịt rửa sạch, dùng giấy/khăn xô sạch thấm khô rồi thái mỏng khoảng 3-4mm, ướp tỏi, nước mắm, dầu hào, rượu rồi xiên que. Mỗi que chỉ xiên 6-7 miếng, các miếng thịt hơi thưa trên que chứ đừng dình chặt nhau quá trên que xiên, lúc nướng nó lâu chín. Xiên xong thì kê các xiên thịt lên cái bát to rồi quết mật ong pha chút nước, nhè nhẹ in ít thôi. Cẩn thận quết nhiều quá lúc nướng nó cháy thùi lùi mà không thèm chín bên trong nhé. Nướng trên than hoa và quay quay đảo đảo cho chín đều như nướng chả là ngon nhất, nếu không thì nướng trong lò nướng hoặc bếp ga cũng được. Khi thịt chín vàng thơm, nghe nhà hàng xóm lao xao thì rắc thêm ít vừng rang lên cho thêm phần hấp dẫn, ăn nóng với dưa chuột gọt vỏ chẻ dọc làm 4 thì chẹp chẹp.</br> </br>\r\n\r\nMón này có thể làm cách khác với gia vị ướp tương tự, hoặc thay tỏi = hành củ bằm nhuyễn, có thể dùng thịt gà, thịt bò, tôm tươi bóc vỏ, mực 1 nắng, khi xiên có thể kèm 1 miếng ớt ngọt loại các màu vàng/xanh/đỏ, 1 miếng hành tây, hay đậu bắp nướng ngon cực. </br> </br>\r\n\r\nChúc cả nhà thành công với món BBQ xiên nướng', NULL, NULL, '[]', '', '2010-07-21 07:56:57', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 01:33:26', 62, '2010-07-21 07:56:57', '0000-00-00 00:00:00', 0, 0, 3, 1, 7, '', '', '', '', 29, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(13, 'chả mực hạ long', 'chả-mực-hạ-long', 5, 1, 'Chả mực Hạ Long - đậm đà hương vị biển  </br>\r\n<b>Giá bán:100.000/kg</b> </br>\r\n', '\r\n<img src="images/stories/cm.jpg" alt="" width="500" height="375" /></br></br>\r\n\r\nChả mực khi mới rán xong có màu vàng ruộm, mùi thơm nức, vị đậm đà, cắn vào thấy vị bùi, thơm của mực giã, nhưng vẫn còn cả cảm giác giòn sần sật. Món ngon này không cầu kỳ về nước chấm, chỉ cần một chút muối trắng hoặc mắm nguyên chất bỏ thêm ít hạt tiêu để giữ nguyên được mùi vị vốn đã rất hấp dẫn của chả mực. Đó là cái tinh tế của món ăn vừa xa xỉ vừa dân dã này. </br></br>\r\n\r\nMỗi lần trở lại Hạ Long, tôi lại đi dạo quanh trên phố nhìn ra Vịnh để tận hưởng cái hương vị biển của nơi này. Đặc biệt là khi hoàng hôn xuống, trên dọc con đường Hạ Long sẽ bắt gặp những hàng rong bán xôi - chả mực. Chỉ cần một chiếc ghế nhỏ, vị thực khách có thể thưởng thức được cả không khí mát lành của Vịnh và cái ngon cái ngậy của món xôi - chả mực. Cái nóng hổi, vừa ăn vừa thổi của xôi nếp, cái ngây ngấy, giòn giai của chả mực hòa quyện giữa 2 mùi thơm của cơm nếp và mùi hơi tanh mặn nồng của chả làm món ăn này đắt khách lạ thường. </br></br>\r\n\r\n\r\nChả mực ngon nhất vẫn là ăn cùng với xôi trắng. Hạt xôi mềm, thơm hương nếp mới quyện với mùi chả vừa béo vừa ngọt. Mới ngửi đã thấy khó mà cưỡng lại được sức hút của món này. Đây là món ăn xa xỉ mà gần gũi như chính món ăn quê hương tôi vậy. </br></br>\r\nCái vị thơm, vị mặn của chả mực có sức lôi kéo thực khách đến lạ. Bà bán hàng rong mới đầu chỉ có mình tôi là khách, mấy phút sau đã kín chỗ. Lân la mãi mới được bà chia sẻ công thức làm món ngon này. Có lẽ bà chia sẻ cho tôi vì "thấy cô ăn ngon miệng quá, mà hình như cô hay ăn món này?". Đúng vậy, mỗi năm trở lại Hạ Long chưa lần nào tôi cưỡng lại được món ăn này. \r\nTrước đây vào các bữa giỗ, chả mực thường được làm để dùng kèm với xôi trắng. Sau những món luộc, món nước... Ngày nay nó trở thành đặc sản của vùng du lịch nổi tiếng Vịnh Hạ Long. </br></br>\r\n<img src="images/stories/chamuc2.jpg" alt="" width="500" height="375"/> </br></br>\r\n\r\nBà vừa bán hàng vừa tỉ tê kể cho tôi nghe bí quyết làm chả mực. Cách chế biến chả mực đòi hỏi sự khéo tay, sự tỉ mỉ, bền bỉ, kinh nghiệm và nhất là sự chăm chỉ của người làm. Muốn làm được món chả mực ngon trước tiên là khâu lựa những con mực có mai thật dầy, tươi, trên lưng còn có những vân nhỏ mầu ghi như khẽ chuyển động. Việc "giải phẫu" cũng rất tỉ mỉ phải bỏ phần ruột và bọng mực, bóc sạch da, giữ phần vây giòn ở hai bên con mực. Phần vây này cần thiết để cho món mực có độ giòn, ngon. Rửa lại nước cho thật sạch và xẻ mực thành những miếng lớn, khoảng 5-6 cm, để mực ráo nước. Muốn mực ngon, giòn và dậy mùi thì phải dùng cối đá lớn giã bằng tay chứ không xay. Mực được bỏ từng miếng một, lý tưởng nhất là giã hơi rối, vừa đủ nhuyễn để bắt dính, vừa có những phần miếng chưa giã kỹ, khi ăn miếng mực giòn hơn. Phần vây mực xắt ngắn, giã thật rối, lẫn vào phần thịt mực. Vừa giã, vừa thả thêm vào đó hạt tiêu vỡ để hạt tiêu được thấm đều vào thịt mực và vì sau khi giã, mực sẽ bắt dính chắc, rất khó trộn. </br></br>\r\n\r\nKhi giã xong mực, cho thêm ít hành băm nhỏ, chút nước mắn vài thìa mỡ nước trộn thật đều tay liên tục khoảng 2 phút cho mực ngấm đều các gia vị. \r\nTiếp theo là khâu tạo dáng cho viên chả mực. Tùy thuộc và thẩm mỹ và độ cầu kỳ của người làm để tạo thành những chiếc chả mực to, nhỏ, dày, mỏng và kiểu dáng như thế nào. Trước khi nặn mực cần có một bát nước lã, một chút dầu ăn xoa đều vào 2 tay cho khỏi dính. Dùng thìa lấy từng ít thịt mực cho vào lòng bàn tay vo tròn và ấn dẹt xuống, nếu khéo tay bạn có thể tạo ra những miếng chả mực hình bông cúc nhìn rất đẹp mắt.</br></br>\r\n\r\nRán chả cũng rất cầu kỳ, phải dùng chảo sâu lòng, có chiếc vỉ kim loại được gác trên miệng chảo, để cho những miếng chả đã rán được dóc dầu ăn. Cho dầu già nửa chảo rán để khi thả, miến chả phải nổi. Bật to lửa và để dầu nóng dần từ từ cho lửa trung bình thì thả mực vào rán, lật đều. Lửa cho món chả mực luôn phải đều đặn và không quá mạnh, không quá yếu, rán chả mực cũng "kén lửa" như phồng tôm vậy. Thịt mực tươi ngon thì ngay từ phút đầu được thả vào dầu nóng và bắt nhiệt, chả đã bắt đầu tỏa mùi thơm nức mũi, rất quyến rũ. Khi chả vàng, lấy ra, gác lên vỉ cho ráo mỡ (nếu không vớt gác lên vỉ khi ăn sẽ rất ngấy). </br></br>\r\n<img src="images/stories/chamuc3.jpg" alt="" width="500" height="375"/> </br></br>\r\n\r\n Dùng nước mắn nguyên chất chấm chả mực để giữ được hương vị cúa món ăn khoái khẩu này</br></br>\r\n\r\nChả mực khi mới rán xong có màu vàng ruộm, mùi thơm nức, vị đậm đà, cắn vào thấy vị bùi, thơm của mực giã, nhưng vẫn còn cả cảm giác giòn sần sật. Món ngon này không cầu kỳ về nước chấm, chỉ cần một chút muối trắng hoặc mắn nguyên chất bỏ thêm ít hạt tiêu để giữ nguyên được mùi và vị vốn đã rất hấp dẫn của chả mực. Đó là cái tinh tế của món ăn vừa xa xỉ vừa dân dã này.</br></br>\r\n\r\n\r\nChả mực dùng với xôi nếp đã trở thành một món đặc sản nổi tiếng của người dân đất Quảng. Chính vì vậy mà trong thành phố Hạ Long có dãy phố chuyên làm chả mực, bánh cuốn và được gọi với cái tên đầy ẩm thực Phố "Chả mực bánh cuốn".\r\nHơn 2 giờ đồng hồ ngồi nghe bà vừa làm vừa chia sẻ, thấy bà quá bận rộn vì đông khách, tôi muốn phụ giúp mà cứ lóng ngóng không biết làm như thế nào. Bà làm rất nhanh nhẹn, thuần thục, thi thoảng có những giọt mồ hôi lăn dài từ trán xuống, tôi biết bán rong vừa là nghề mưu sinh vừa là nghề đã ăn vào máu vào thịt và là sở thích của người phụ nữ này. Ngồi gần Vịnh, thi thoảng có cơn gió nhẹ từ vịnh đổ "cái mặn của biển" vào mà lòng người nhẹ nhàng lắm. Tôi yêu biển, yêu thiên nhiên trác tuyệt mà tạo hóa đã thiên vị dành cho Hạ Long và còn thích thú hơn nữa với món ăn khoái khẩu đậm đà hương vị biển chả mực này.', NULL, NULL, '[]', '', '2010-07-21 07:57:29', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 01:32:15', 62, '2010-07-21 07:57:29', '0000-00-00 00:00:00', 0, 0, 1, 1, 6, '', '', '', '', 10, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(14, 'nem cua bể', 'nem-cua-bể', 6, 1, 'Nem cua bể tươi</br>\r\n<b>Giá bán: 100.000/kg</b></br>\r\n', '\r\n<img src="images/stories/nemcuabe3.jpg" alt="" width="500" height="375"/> </br></br>\r\nNét đặc biệt của món ăn này, thành phần chủ đạo là ở thịt cua. Cua bể không cần to nhưng phải chọn con tươi, chắc để thịt cua được thơm ngon. \r\nĐể làm Nem cua bể, người làm ra thành phẩm phải rất kỳ công trong khâu lựa chọn cua. Cua được chọn làm Nem dứt khoát phải là cua tươi, mình dầy. Đã gọi là Nem thì không thể thiếu các nguyên liệu bắt buộc khác như: nấm hương, mộc nhĩ, thịt nạc vai, lòng đỏ trứng gà, hành lá, miến ... cùng các loại gia vị được tẩm ướp trong quá trình chế biến, nhưng với Nem cua thì thịt cua đóng vai trò quyết định và được xem là thành phần chính để tạo nên một hương vị rất riêng của Nem.<img src="images/stories/icon_keel.gif" alt="" /></br></br>\r\n\r\nĐể có được những chiếc Nem thơm ngon, đạt tiêu chuẩn, đòi hỏi phải có kỹ thuật chế biến khéo, trong đó khâu bảo quản nguyên liệu nhất là thịt cua rất khắt khe, bởi tác động của môi trường bên ngoài, thịt rất dễ hỏng, biến màu, mất mùi vị. Do vậy, khi làm Nem phải cuốn thật nhanh và bảo quản ngay nếu chưa rán luôn (cua chỉ được làm và gỡ thịt trước đó một lúc). <img src="images/stories/icon_keel.gif" alt="" /> </br></br>\r\n\r\nCông đoạn rán Nem cũng phải lưu ý: để Nem ngập trong mỡ sôi già, để vàng mặt thì đổi bên không liên tục đảo sẽ nát vỏ bánh đa và điều chỉnh lửa cho phù hợp để Nem chín vàng đều, không bị lốm đốm cháy. Có như vậy, khi nem chín, thịt cua mới trắng và hấp dẫn.<img src="images/stories/icon_keel.gif" alt="" /></br></br>\r\n\r\nMách nhỏ với các bác một mẹo nhỏ trước khi rán Nem: Bôi một lớp thật mỏng nước bia (uống) ra bên ngoài vỏ bánh đa để khi rán được một màu vàng óng và giòn (mẹo này em đã học lỏm được tại một nhà hàng mà nhà em vẫn hay cung cấp đó ah). <img src="images/stories/icon_keel.gif" alt="" /></br></br>\r\n\r\nNem cua thường được ăn kèm với bún chấm nước mắm tạo vị chua chua, ngọt ngọt và các loại rau xà lách, mùi, thơm để tôn thêm hương vị đậm đà của Nem cua bể.\r\n<img src="images/stories/icon_keel.gif" alt="" /></br>', NULL, NULL, '[]', '', '2010-07-21 07:58:24', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 01:05:10', 62, '2010-07-21 07:58:24', '0000-00-00 00:00:00', 0, 0, 1, 1, 5, '', '', '', '', 31, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(15, 'nem dế', 'nem-dế', 6, 1, 'Nem nướng Nha Trang đã có mặt tại Hà Nội rồi nè! </br>\r\n', '\r\nNếu như bạn nào đã từng đến Nha Trang và được thưởng thức món nem nướng ở đây thì chắc hẳn sẽ không thể quên được mùi vị của nó. Đây gần như là món ăn ngon nhất ở Nha Trang đấy các bạn ạ và cũng rất ít nơi có bán món ăn này. Ngay cả ở Sài Gòn, ngay gần với Nha Trang mà cũng mới chỉ có một hàng nem nướng Nha Trang thôi. Vậy mà ở Hà Nội của chúng mình cũng đã có một hàng nem nướng Nha Trang rồi nhé! </br></br>\r\nĐược cái anh chủ cửa hàng này “chịu chơi” lắm nhá! Tất cả những nguyên liệu chính của món nem nướng, như nem hay nước chấm đều được chuyển thẳng từ Nha Trang ra Hà Nội đó! Thế nên, nếu đã từng ăn ở Nha Trang thì các bạn sẽ thấy mùi vị nem nướng tại Hà Nội phải giống đến 99% so với ở Nha Trang cơ đấy. </br></br>\r\n<img src="images/stories/100618doisongnemnuong1.jpg" alt="" /></br>\r\nThêm vào đó, giá cả của món nem nướng tại cửa hàng này cũng khá là “dễ chịu”, nếu chỉ có ý định ăn chơi thì hai người có thể ăn chung một suất với giá là 35k và còn được ngồi trong không gian quán “ngon lành” cộng thêm điều hòa mát rười rượi nữa. Với những ngày nóng nực thế này thì đây ắt là một địa chỉ tốt để ăn uống đúng hem? </br>\r\n\r\nTuy gọi là nem nướng nhưng món này không chỉ đơn thuần giống như nem chua nướng mà tụi mình vẫn ăn đâu. Về cơ bản thì nó gần giống như món nem cuốn nhưng thành phần bên trong thì “hay ho” và “thú vị” hơn nhiều. Một suất nem sẽ gồm có nem nướng lụi này, bánh tráng chiên giòn này và cùng rất nhiều loại rau ăn kèm như: xà lách, kinh giới, mùi tàu, tía tô, chuối xanh, cà rốt, dưa chuột, dứa hoặc xoài xanh nữa… Và nếu để ý kĩ, bạn sẽ nhận thấy, chủ nhà hàng đã khéo léo thay húng quế theo đúng nguyên gốc bằng lá bạc hà, ăn thấy thú vị lắm và đôi khi còn hay hơn cả khi ăn với húng quế các bạn ạ. </br>\r\n\r\nChuyển đến phần măm măm nè! Các bạn chỉ cần dùng bánh đa nem, cuốn thật chặt các nguyên liệu có ở trên rùi chấm vào nước sốt và thưởng thức thui! Tất cả các cảm giác mềm, giòn, dai, xốp dường như đang hiện hữu và hòa quyện lại với nhau trong mùi vị rất đặc trưng của nước sốt… một chút mặn, một chút ngọt và rất là thơm… </br>\r\n<img src="images/stories/100618doisongnemnuong2.jpg" alt="" /> </br>\r\nĐể bọn tớ mách nhỏ cho các bạn mấy “bí kíp” khi ăn nem nướng nghen. Đầu tiên là ở phần cuốn nem, vừa cuốn các bạn vừa bóp nhẹ cho phần bánh tráng nướng hơi vỡ vụn ra thì chiếc nem sẽ gọn và dễ ăn hơn. Bí kíp thứ hai là cố gắng chấm thật nhiều nước sốt nha! Chiếc nem có bám nhiều nước sốt thì mới thực sự là ngon đấy!</br>\r\n \r\n\r\nVà một điều cuối cùng, bọn tớ muốn nói rằng: Nếu ai đã từng ăn món này ở Nha Trang rồi thì hãy qua đây ăn để chấm điểm xem hàng này có được như ở Nha Trang hay không? Còn với bạn nào chưa được ăn món này thì cứ đến thử đi, đảm bảo là sẽ không phải hối hận đâu! Các bạn nhớ là đến 202 Hàng Bông - cạnh hàng xôi, các bạn nhìn lên tầng 2 là thấy quán nem nướng đấy nhá! </br>\r\n\r\nThông tin cơ bản về cửa hàng Tên quán: Nem nướng Nha Trang. Địa chỉ: Tầng 2, 202 Hàng Bông, đầu ngõ Cấm Chỉ, gần Cửa Nam. Giờ mở cửa: từ 10h30 sáng tới 9h30 tối Giá cả: 35k/ 1 suất.', NULL, NULL, '[]', '', '2010-07-21 07:59:04', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 01:03:35', 62, '2010-07-21 07:59:04', '0000-00-00 00:00:00', 0, 0, 2, 1, 4, '', '', '', '', 26, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(16, 'nem hải sản', 'nem-hải-sản', 6, 1, 'Cùng thưởng thức hương vị của hải sản sóng sánh trong nước sốt và cuộn bằng nem chiên xù.\r\n', '\r\n<img src="images/stories/nemhaisan1.jpg" alt="" width="500" height="375" />\r\n</br><b>Nguyên liệu:</b></br>\r\n\r\n100gr tôm, 100gr mực, 100gr thịt cua, 1 củ hành tây, 1 củ hành khô, gừng tươi, 1 quả trứng gà, dầu ăn, gia vị, sốt mayonnaise, hạt tiêu, bột cà mì, bánh đa nem.</br></br>\r\n\r\n<b>Cách làm: </b></br>\r\n\r\n- Mực rửa sạch, dùng rượu và gừng tẩy hết mùi tanh.</br>\r\n\r\n- Hấp chín tôm và mực. Bóc vỏ tôm, thái nhỏ tôm và mực. </br>\r\n\r\n- Ướp riêng từng loại thịt cua, mực, tôm với gia vị, hạt tiêu. </br>\r\n\r\n- Hành tây thái nhỏ như hải sản. Hành khô thái mỏng.</br>\r\n\r\n- Trứng gà đánh tan. </br>\r\n\r\n- Phi thơm hành khô, cho mực và tôm vào xào trước, cho tiếp thịt cua, đảo nhẹ tay, cho tiếp hành tây vào xào chín, nêm gia vị, hạt tiêu vừa ăn. </br>\r\n\r\n- Cho phần nhân ra rổ lọc mắt nhỏ để nhân hoàn toàn ráo nước và nhanh nguội. Khi nhân đã nguội cho thêm sốt mayonnaise vào trộn cùng. </br>\r\n\r\n- Dùng bánh đa nem gói thành từng chiếc nhỏ vừa ăn. Lăn nem qua trứng gà, lăn tiếp qua bột cà mì.</br>\r\n\r\n- Đun nóng dầu, cho nem vào rán vàng. </br>\r\n\r\n- Xếp nem ra đĩa, chấm với sốt mayonnaise hoặc sốt cà chua.</br></br>\r\n\r\n<img src="images/stories/nemhaisan2.jpg" alt="" width="500" height="400" />', NULL, NULL, '[]', '', '2010-07-21 07:59:26', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 08:59:55', 62, '2010-07-21 07:59:26', '0000-00-00 00:00:00', 0, 0, 3, 1, 3, '', '', '', '', 19, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(17, 'chả cá thác lác', 'chả-cá-thác-lác', 7, 1, 'Chả cá thác lạc thơm ngon.</br> \r\n<b>Giá bán:100.000/kg </b>\r\n', '\r\n<img src="images/stories/chacathaclac.jpg" alt="" width="500" height="375"/>\r\n <p>C&#225; th&#225;c l&#225;c &#273;&#227; &#273;&#225;nh ch&#7843; xong, cho l&#234;n ch&#7843;o chi&#234;n th&#224;nh t&#7915;ng mi&#7871;ng v&#7915;a b&#7857;ng b&#224;n tay, &#273;&#7915;ng qu&#225; d&#224;y c&#361;ng &#273;&#7915;ng qu&#225; m&#7887;ng; v&#7899;t ra &#273;&#7875; ngu&#7897;i, x&#7855;t l&#225;t theo chi&#7873;u d&#7885;c hay chi&#7873;u ngang t&#249;y th&#237;ch. B&#7855;c n&#7891;i n&#432;&#7899;c &#273;&#7911; d&#249;ng, &#273;&#7907;i &#273;&#7871;n l&#250;c s&#244;i gi&#224; th&#236; cho ch&#7843; c&#225; th&#225;c l&#225;c chi&#234;n v&#224; h&#7865; c&#7855;t kh&#250;c v&#224;o c&#249;ng l&#250;c; n&#234;m n&#7871;m v&#7915;a mi&#7879;ng, ch&#7901; n&#432;&#7899;c s&#244;i m&#7897;t d&#7841;o n&#7919;a th&#236; nhanh tay nh&#7855;c xu&#7889;ng, k&#7867;o h&#7865; m&#7873;m qu&#225; s&#7869; m&#7845;t ngon. &#8220;Nh&#7899; r&#7855;c th&#234;m ti&#234;u l&#234;n t&#244; canh &#273;&#7845;y, con g&#225;i&#8221;... </p>', NULL, NULL, '[]', '', '2010-07-21 07:59:55', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 00:52:32', 62, '2010-07-21 07:59:55', '0000-00-00 00:00:00', 0, 0, 1, 1, 2, '', '', '', '', 34, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '');
INSERT INTO `jos_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`) VALUES
(18, 'chả cá thu', 'chả-cá-thu', 7, 1, 'Chả cá thu thơm ngon. </br>\r\n<b>Giá bán:100.000/kg</b>\r\n', '\r\n<img src="images/stories/chacathu.jpg" alt="" width="500" height="375"/>\r\n<p>Ch&#7843; c&#225; thu:<br />\r\nC&#225; thu l&#7885;c n&#7841;c ra, xay   nhuy&#7877;n<br />\r\nTh&#234;m &#237;t m&#7905; ph&#7847;n th&#225;i h&#7841;t l&#7921;u<br />\r\n&#432;&#7899;p m&#236; ch&#237;nh, gia v&#7883;, &#273;&#432;&#7901;ng, th&#236; l&#224;   th&#225;i nh&#7887;, h&#7841;t ti&#234;u --&gt; &#273;&#7875; 1 l&#250;c<br />\r\ntr&#7897;n v&#224;o kho&#7843;ng 100g b&#7897;t m&#236; (tu&#7923; l&#432;&#7907;ng c&#225;   m&#224; gia gi&#7843;m)<br />\r\nCh&#225;o &#259;n li&#7873;n vifon (2 g&#243;i) &#273;&#7893; ra khay<br />\r\nC&#225;i h&#7895;n h&#7907;p tr&#234;n: vi&#234;n   th&#224;nh vi&#234;n tr&#242;n, &#273;&#432;&#7901;ng k&#237;nh kho&#7843;ng 2,5cm, l&#259;n v&#224;o b&#7897;t ch&#225;o &#259;n li&#7873;n cho h&#7841;t ch&#225;o   v&#7909;n b&#225;m v&#224;o th&#7853;t nhi&#7873;u<br />\r\n&#272;&#7893; d&#7847;u v&#224;o ch&#7843;o (x&#226;m x&#7845;p m&#7863;t vi&#234;n ch&#7843;), &#273;un n&#243;ng   gi&#224;<br />\r\nChi&#234;n vi&#234;n ch&#7843; cho &#273;&#7871;n khi vi&#234;n ch&#7843; ng&#7843; v&#224;ng th&#236; v&#7899;t ra &#273;&#7875; r&#225;o<br />\r\nc&#243; th&#7875;   &#259;n kh&#244;ng, ho&#7863;c &#259;n v&#7899;i m&#7855;m<br />\r\nCh&#7843; c&#225; thu r&#7845;t ngon, dai v&#224; th&#417;m<br />\r\nCh&#250;c ban th&#224;nh   c&#244;ng! </p>', NULL, NULL, '[]', '', '2010-07-21 08:00:31', 62, '', 0, '0000-00-00 00:00:00', '2010-08-04 00:49:54', 62, '2010-07-21 08:00:31', '0000-00-00 00:00:00', 0, 0, 2, 1, 1, '', '', '', '', 29, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(19, 'chả cá đồng', 'chả-cá-đồng', 7, 1, 'Chả cá đồng thơm ngon.\r\nGiá bán:100.000/kg\r\n', '\r\n<img src="images/stories/chacadong.jpg" alt="" width="500" height="375"/>\r\nCách làm:\r\nCá rửa sạch, lau khô, thái miếng vuông hoặc chữ nhật.</br>\r\nGiềng giã nhỏ, vắt lấy nước cốt.  Cho các gia vị: mẻ, mắm tôm, nghệ, nước mắm, nước cốt riềng ướp chung với cá khoảng 1h.  Trong khi ướp cá, chuẩn bị các nguyên liệu khác.</br>\r\nHành và thìa là rửa sạch, cắt khúc 3cm.  Đầu hành tước nhỏ.</br>\r\nLạc rang thơm, sàng sẩy sạch vỏ.</br>\r\nLuộc bún nếu dùng bún khô.</br>\r\nPha mắm tôm với nước cốt chanh, đường, hạt tiêu, ớt sao cho vừa miệng.\r\nCá xếp lên vỉ nướng vàng.  Trước khi nướng dùng chổi phết 1 lớp dầu cho khỏi khô. Lưu ý cá chín khá nhanh.</br>\r\nChuẩn bị một chiếc chảo nhỡ, cho chút dầu ăn.  Cho cá đã nướng vào chảo, đặt lên bếp giữ nóng.  Khi dùng, cho thêm thìa là và hành lá.</br>\r\nDùng kèm với bún, chấm mắm tôm.</br></br>\r\n\r\nEm có thể ra chợ hỏi. Ở HN hầu hết các chợ lớn một chút đều có một vài hàng bán hoặc nhận đặt cá lăng theo yêu cầu khách hàng.', NULL, NULL, '[]', '', '2010-07-21 08:00:49', 62, '', 0, '0000-00-00 00:00:00', '2010-08-03 10:21:04', 62, '2010-07-21 08:00:49', '0000-00-00 00:00:00', 0, 0, 3, 1, 9, '', '', '', '', 38, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=0\nitemImgSize=\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(20, '[Copy of] khách hàng nói gì', 'khach-hang-noi-gi', 3, 1, '<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong> <br /> Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy,                      hương vị rất đặc trưng các bạn ạ...</p>\r\n<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong> <br /> Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy,                      hương vị rất đặc trưng các bạn ạ...</p>', '', NULL, NULL, '[]', '', '2010-07-22 03:44:12', 62, '', 62, '2010-07-22 03:41:24', '0000-00-00 00:00:00', 62, '2010-07-21 05:08:41', '0000-00-00 00:00:00', 1, 0, 2, 0, 12, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=0\ncatItemDateCreated=0\ncatItemRating=\ncatItemImage=0\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=\ncatItemCommentsAnchor=0\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=0\nitemAuthorImage=0\nitemAuthorDescription=0\nitemAuthorURL=0\nitemAuthorEmail=0\nitemAuthorLatest=0\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(21, '[Copy of] bạn có thể', 'ban-co-the', 3, 1, '<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong> <br /> Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy,                      hương vị rất đặc trưng các bạn ạ...</p>', '', NULL, NULL, '[]', '', '2010-07-22 03:44:45', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2010-07-21 05:04:41', '0000-00-00 00:00:00', 1, 0, 3, 0, 11, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(22, '[Copy of] bạn có biết', 'ban-co-biet', 3, 1, '<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong></p>\r\n<p>Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy, hương vị rất đặc trưng các bạn ạ...</p>', '', NULL, NULL, '[]', '', '2010-07-22 03:44:45', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 62, '2010-07-21 04:53:24', '0000-00-00 00:00:00', 1, 0, 1, 0, 1, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(23, 'bạn có biết', 'ban-co-biet', 3, 1, '<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong></p>\r\n<p>Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy, hương vị rất đặc trưng các bạn ạ...</p>', '', NULL, NULL, '[]', '', '2010-07-22 03:45:00', 62, '', 0, '0000-00-00 00:00:00', '2010-07-22 03:45:34', 62, '2010-07-21 04:53:24', '0000-00-00 00:00:00', 1, 0, 1, 0, 1, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(24, 'bạn có thể', 'ban-co-the', 3, 1, '<p><strong>Thơm ngon với phomat Thụy Sĩ chiên giòn</strong> <br /> Món ăn này có tên là Malakoff, đến từ đất nước Thụy  Sĩ đấy,                      hương vị rất đặc trưng các bạn ạ...</p>', '', NULL, NULL, '[]', '', '2010-07-22 03:45:04', 62, '', 0, '0000-00-00 00:00:00', '2010-07-22 03:45:24', 62, '2010-07-21 05:04:41', '0000-00-00 00:00:00', 1, 0, 3, 0, 11, '', '', '', '', 1, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(25, 'Nem cua bể', 'nem-cua-bể', 1, 1, '', '', NULL, NULL, '[]', '', '2010-07-22 06:20:06', 62, '', 0, '0000-00-00 00:00:00', '2010-07-22 17:40:51', 62, '2010-07-22 06:20:06', '0000-00-00 00:00:00', 1, 0, 1, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(26, 'Nem cua bể', 'nem-cua-bể', 1, 1, '', '', NULL, NULL, '[]', '', '2010-07-22 06:20:18', 62, '', 0, '0000-00-00 00:00:00', '2010-07-22 17:40:37', 62, '2010-07-22 06:20:18', '0000-00-00 00:00:00', 1, 0, 2, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', ''),
(27, 'Nem cua bể', 'nem-cua-bể', 1, 1, '', '', NULL, NULL, '[]', '', '2010-07-22 06:20:30', 62, '', 0, '0000-00-00 00:00:00', '2010-07-22 17:40:14', 62, '2010-07-22 06:20:30', '0000-00-00 00:00:00', 1, 0, 3, 0, 0, '', '', '', '', 1, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_rating`
--

CREATE TABLE IF NOT EXISTS `jos_k2_rating` (
  `itemID` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_tags`
--

CREATE TABLE IF NOT EXISTS `jos_k2_tags` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `jos_k2_tags_xref` (
  `id` int(11) NOT NULL auto_increment,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_tags_xref`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_users`
--

CREATE TABLE IF NOT EXISTS `jos_k2_users` (
  `id` int(11) NOT NULL auto_increment,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) default NULL,
  `gender` enum('m','f') NOT NULL default 'm',
  `description` text NOT NULL,
  `image` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `group` int(11) NOT NULL default '0',
  `plugins` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `jos_k2_user_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_k2_user_groups`
--

INSERT INTO `jos_k2_user_groups` (`id`, `name`, `permissions`) VALUES
(1, 'Registered', 'frontEdit=0\nadd=0\neditOwn=0\neditAll=0\npublish=0\ncomment=1\ninheritance=0\ncategories=all\n\n'),
(2, 'Site Owner', 'frontEdit=1\nadd=1\neditOwn=1\neditAll=1\npublish=1\ncomment=1\ninheritance=1\ncategories=all\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=section&layout=blog&id=6', 'component', 0, 0, 20, 0, 37, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=1\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=Lieu Minh Food\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', -2, 0, 20, 1, 20, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', -2, 0, 20, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(11, 'othermenu', 'joomla-home', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla! Documentation', 'joomla-documentation', 'http://docs.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'othermenu', 'Joomla! Community', 'joomla-community', 'http://community.joomla.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'othermenu', 'Joomla! Magazine', 'joomla-community-magazine', 'http://community.joomla.org/magazine.html', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(16, 'othermenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 6, 'menu_image=-1\n\n', 0, 0, 0),
(17, 'othermenu', 'Administrator', 'administrator', 'administrator/', 'url', 0, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'keyconcepts', 'Content Layouts', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'Joomla! Overview', 'joomla-overview', 'index.php?option=com_content&view=article&id=19', 'component', -2, 0, 20, 0, 22, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', 'What''s New in 1.5?', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 1, 23, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(40, 'keyconcepts', 'Extensions', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', -2, 0, 20, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(43, 'keyconcepts', 'Example Pages', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'ExamplePages', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'ExamplePages', 'Section Table', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'ExamplePages', 'Category Blog', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'ExamplePages', 'Category Table', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 1, 25, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\ntarget=\nlink_icons=\npage_title=Weblinks\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', -2, 0, 11, 1, 26, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_limit=1\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\npage_title=Newsfeeds\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=The News\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(53, 'mainmenu', 'Typography', 'typography', 'index.php?option=com_content&view=article&id=49', 'component', -2, 0, 20, 0, 28, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(54, 'mainmenu', 'Layouts', 'layouts', 'index.php?option=com_content&view=category&layout=blog&id=35', 'component', -2, 0, 20, 0, 29, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=3\nnum_columns=3\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(55, 'mainmenu', 'Navigations', 'navigations', 'index.php?option=com_content&view=category&layout=blog&id=34', 'component', -2, 0, 20, 0, 30, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=3\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(56, 'mainmenu', 'Styles', 'styles', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 0, 31, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(57, 'mainmenu', 'Wrapper (Full width)', 'wrapper-full-width', 'index.php?option=com_wrapper&view=wrapper', 'component', -2, 0, 17, 1, 32, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'url=http://www.google.com\nscrolling=auto\nwidth=100%\nheight=500\nheight_auto=0\nadd_scheme=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(58, 'mainmenu', 'Split menu', 'split-menu', '?ja_menu=split', 'url', -2, 0, 0, 1, 33, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(59, 'mainmenu', 'CSS menu', 'css-menu', '?ja_menu=css', 'url', -2, 0, 0, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(60, 'mainmenu', 'Moo menu', 'moo-menu', '?ja_menu=moo', 'url', -2, 0, 0, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(61, 'mainmenu', 'Content + Col', 'content-col', 'index.php?option=com_content&view=article&id=5', 'component', -2, 0, 20, 1, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(62, 'mainmenu', 'Content + Left', 'content--left', 'index.php?option=com_content&view=article&id=18', 'component', -2, 0, 20, 1, 36, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(63, 'mainmenu', 'With all Extra modules', 'with-all-extra-modules', 'index.php?option=com_content&view=article&id=20', 'component', -2, 0, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(64, 'othermenu', 'JoomlArt Forums', 'joomlart-forums', 'http:/www.joomlart.com', 'url', 0, 0, 0, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(65, 'mainmenu', 'Football', 'football', 'index.php?option=com_content&view=category&layout=blog&id=36', 'component', -2, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=3\nnum_columns=3\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(66, 'mainmenu', 'Golf', 'golf', 'index.php?option=com_content&view=category&layout=blog&id=39', 'component', -2, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=3\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(67, 'mainmenu', 'Tennis', 'tennis', 'index.php?option=com_content&view=category&layout=blog&id=37', 'component', -2, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=3\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(68, 'mainmenu', 'Rugby', 'rugby', 'index.php?option=com_content&view=category&layout=blog&id=40', 'component', -2, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=3\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(69, 'mainmenu', 'Hockey', 'hockey', 'index.php?option=com_content&view=category&layout=blog&id=38', 'component', -2, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=3\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(70, 'mainmenu', 'Motorsport', 'motorsport', 'index.php?option=com_content&view=category&layout=blog&id=41', 'component', -2, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=3\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(71, 'mainmenu', 'Default color', 'default-color', '?ja_color=deafult', 'url', -2, 0, 0, 1, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(72, 'mainmenu', 'Blue color', 'blue-color', '?ja_color=blue&ja_bgimg=0', 'url', -2, 0, 0, 1, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(73, 'mainmenu', 'Black color', 'black-color', '?ja_color=black&ja_bgimg=0', 'url', -2, 0, 0, 1, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(74, 'mainmenu', 'Red color', 'red-color', '?ja_color=red&ja_bgimg=0', 'url', -2, 0, 0, 1, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(75, 'mainmenu', 'Yellow color', 'yellow-color', '?ja_color=yellow&ja_bgimg=0', 'url', -2, 0, 0, 1, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(76, 'mainmenu', 'Athletics', 'default-color', '?ja_color=athletics', 'url', -2, 0, 0, 1, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(77, 'mainmenu', 'Blue Watersport', 'blue-watersport', '?ja_color=blue&ja_bgimg=1', 'url', -2, 0, 0, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(78, 'mainmenu', 'Black Xgame', 'black-xgame', '?ja_color=black&ja_bgimg=1', 'url', -2, 0, 0, 1, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(79, 'mainmenu', 'Red boxing', 'red-boxing', '?ja_color=red&ja_bgimg=1', 'url', -2, 0, 0, 1, 35, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(80, 'mainmenu', 'Yellow Athletics', 'yellow-athletics', '?ja_color=yellow&ja_bgimg=1', 'url', -2, 0, 0, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(81, 'mainmenu', 'Athletics and Background', 'athletics-and-background', '?ja_color=athletics&ja_bgimg=1', 'url', -2, 0, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(84, 'bottommenu', 'THỰC PHẨM SẠCH', 'thc-phm-sch', 'index.php?option=com_k2&view=itemlist&layout=category', 'component', 1, 0, 35, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=4|3|5|6|7|8\ncatCatalogMode=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatFeedLink=1\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(82, 'bottommenu', 'TRANG CHỦ', 'trang-ch', 'index.php?option=com_content&view=section&id=6', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=0\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(83, 'bottommenu', 'GIỚI THIỆU', 'gii-thiu', 'index.php?option=com_content&view=article&id=131', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(85, 'bottommenu', 'BẠN CÓ THỂ', 'bn-co-th', 'index.php?option=com_k2&view=itemlist&layout=category', 'component', 1, 0, 35, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=4|5|7\ncatCatalogMode=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatFeedLink=1\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(86, 'bottommenu', 'LIÊN HỆ', 'lien-h', 'index.php?option=com_content&view=article&id=132', 'component', 1, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(87, 'bottommenu', 'KHÁCH HÀNG', 'khach-hang', 'index.php?option=com_content&view=article&id=133', 'component', 1, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(88, 'danh-muc-hang', 'Các món ăn chế biến từ thịt lợn', 'cac-mon-n-ch-bin-t-tht-ln', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=4', 'component', 1, 0, 35, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=4\nfeedLink=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(89, 'danh-muc-hang', 'Chả mực Hạ Long', 'ch-mc-h-long', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=5', 'component', 1, 0, 35, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=5\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(90, 'danh-muc-hang', 'Nem đông lạnh các loại', 'nem-ong-lnh-cac-loi', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=6', 'component', 1, 0, 35, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=6\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(91, 'danh-muc-hang', 'Chả cá', 'ch-ca', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=7', 'component', 1, 0, 35, 0, 5, 62, '2010-07-21 09:08:36', 0, 0, 0, 0, 'categories=7\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(92, 'danh-muc-hang', 'Chả cá', 'ch-ca', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=7', 'component', -2, 0, 35, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=7\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(93, 'danh-muc-hang', 'mỡ nước', 'm-nc', 'index.php?option=com_k2&view=item&layout=item&id=10', 'component', 1, 88, 35, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(94, 'danh-muc-hang', 'giả cầy', 'gi-cy', 'index.php?option=com_k2&view=item&layout=item&id=11', 'component', 1, 88, 35, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(95, 'danh-muc-hang', 'chả xiên nướng', 'ch-xien-nng', 'index.php?option=com_k2&view=item&layout=item&id=12', 'component', 1, 88, 35, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(96, 'danh-muc-hang', 'nem cua bể', 'nem-cua-b', 'index.php?option=com_k2&view=item&layout=item&id=14', 'component', 1, 90, 35, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(97, 'danh-muc-hang', 'nem dế', 'nem-d', 'index.php?option=com_k2&view=item&layout=item&id=15', 'component', 1, 90, 35, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(98, 'danh-muc-hang', 'nem hải sản', 'nem-hi-sn', 'index.php?option=com_k2&view=item&layout=item&id=16', 'component', 1, 90, 35, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(99, 'danh-muc-hang', 'chả cá thác lác', 'ch-ca-thac-lac', 'index.php?option=com_k2&view=item&layout=item&id=17', 'component', 1, 91, 35, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(100, 'danh-muc-hang', 'chả cá thu', 'ch-ca-thu', 'index.php?option=com_k2&view=item&layout=item&id=18', 'component', 1, 91, 35, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(101, 'danh-muc-hang', 'chả cá đồng', 'ch-ca-ng', 'index.php?option=com_k2&view=item&layout=item&id=19', 'component', 1, 91, 35, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(102, 'bottommenu', '223', '223', 'index.php?option=com_content&view=category&id=50', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=10\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(103, 'bottommenu', '223', '223', 'index.php?option=com_content&view=category&id=50', 'component', -2, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=10\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(104, 'bottommenu', '111', '111', 'index.php?option=com_content&view=category&layout=blog&id=50', 'component', -2, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(105, 'bottommenu', 'BẠN CÓ BIẾT', 'ban-co-biet', 'index.php?option=com_content&view=category&layout=blog&id=49', 'component', 1, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=1\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=1\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'othermenu', 'Resources', 'Additional links'),
(5, 'ExamplePages', 'Example Pages', 'Example Pages'),
(6, 'keyconcepts', 'Key Concepts', 'This describes some critical information for new Users.'),
(7, 'bottommenu', 'Bottom Menu', 'bottom menu create'),
(8, 'danh-muc-hang', 'left-menu', 'danh muc hang');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu hilite1\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Polls', '', 0, 'user8', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(17, 'User Menu', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, ''),
(18, 'Login Form', '', 0, 'ja-login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', 1, 0, ''),
(62, 'contact us', '<p align="center">PK - DESIGNERS</p>\r\n<p align="center"><strong>joommasters-abcdeffhxdhd</strong> <br /> street:truong dinh 245/...../..... , HN</p>\r\n<p style="padding-top: 1px;" align="center"><strong><a href="http://www.joommasters.com/">Visit joommaster</a></strong> <br /> mail@@joommasters.com <br /> tel:.242859763760396830693 <br /> fax: 35296486298629682096286</p>', 0, 'user1', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(20, 'Statistics', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=0\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(21, 'Who''s Online', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=\n\n', 0, 0, ''),
(23, 'Archive', '', 15, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Sections', '', 16, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Highlight module', '', 0, 'user5', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 1, 'catid=3\nlayout=default\nimage=1\nlink_titles=\nshowLastSeparator=1\nreadmore=0\nitem_title=0\nitems=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(26, 'Related Items', '', 17, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 0, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=20\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(28, 'Random Image', '', 5, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Bottom Menu', '', 0, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=bottommenu\nmenu_style=horiz_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=-nav\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=-1\nindent_image2=-1\nindent_image3=-1\nindent_image4=-1\nindent_image5=-1\nindent_image6=-1\nspacer=\\|\nend_spacer=\n\n', 1, 0, ''),
(30, 'Banners', '', 1, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(32, 'Wrapper', '', 18, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 0, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 19, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, '', 1, 0, ''),
(38, 'Advertisement', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 1, 'target=1\ncount=4\ncid=0\ncatid=14\ntag_search=0\nordering=0\nheader_text=Featured Links:\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\nmoduleclass_sfx=_text\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(39, 'Example Pages', '', 14, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(40, 'Key Concepts', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, ''),
(44, 'JA Slideshow2', '', 0, 'ja-slideshow', 0, '0000-00-00 00:00:00', 1, 'mod_jaslideshow2', 0, 0, 1, 'moduleclass_sfx=\nsource=images\nsource-articles-display_model=modcats\nsource-articles-display_model-modarts-with_keyword=featured\nsource-articles-display_model-modcats-category=\nsource-articles-sort_order_field=created\nsource-articles-sort_order=DESC\nsource-articles-max_items=5\nsource-images-orderby=0\nsource-images-sort=0\nfolder=images/stories/slideshow\ndescription=[desc img="sl-1.jpg" url="#"]\\n<h3>EndWar Exclusive Theater of War Hands-On </h3>\\n<p>Augue neque rutrum elit vitae nec in pretium et faucibus In. Felis non sit Phasellus hac dictumst Pellentesque Proin eu leo Phasellus. Magna eros consequat eu eu dui vel consequat ipsum dolor ipsum. Tempus quis id massa nisl ac.</p>\\n[/desc]\\n[desc img="sl-2.jpg" url="#"]\\n<h3>EndWar Exclusive Theater</h3>\\n<p>Vestibulum mauris ut sed laoreet Nulla et molestie nisl. Ridiculus eu id pretium Curabitur risus pellentesque Vestibulum mauris metus turpis. Ornare Nulla in velit ante nisl tempor ultrices ac porta habitant.</p>\\n[/desc]\\n[desc img="sl-3.jpg" url="#"]\\n<h3>War Hands-On </h3>\\n<p>Curabitur tristique ipsum libero In dapibus laoreet leo Cum elit pede. Augue turpis sem Suspendisse quis Vivamus nulla consequat Vestibulum magna Ut. Orci gravida dignissim.</p>\\n[/desc]\\n[desc img="sl-4.jpg" url="#"]\\n<h3>Sweet Strawberry</h3>\\n<p>Ullamcorper In accumsan wisi ligula auctor consequat sit purus at Nulla. Interdum tortor interdum auctor sit et sodales Sed in hendrerit urna. Quis convallis pharetra purus ut risus vel Sed consequat id ipsum.</p>\\n[/desc]\nautoplay=1\nmainWidth=620\nmainHeight=257\nstartItem=1\nanimation=fade\ncontainer=0\nduration=300\neffect=Fx.Transitions.linear\ninterval=5000\nanimationRepeat=yes\nshowdesc=\nreadmoretext=Readmore\ntitle_max_chars=200\nmaxchars=255\ndescOpacity=0.8\nshowdescwhen=mouseover\nmasker-alignment=bottom\nmasker-width=auto\nmasker-height=auto\nmasker-transition-style=opacity\nmarker-transition=Fx.Transitions.linear\nnavigation=\nsource-articles-navwidth=240\nsource-articles-navheight=80\nnavigation-alignment=horizontal\nshowItem=4\nnav_showthumb=1\nthumbWidth=60\nthumbHeight=60\nthumbSpace=4:4\nthumbOpacity=0.8\nsource-articles-nav_showdate=1\nsource-articles-nav_showdesc=1\nsource-articles-nav_descmaxlength=40\ncontrol=1\noverlapOpacity=0.6\nenable_cache=1\ncache_time=30\nopen_target=parent\nsource-articles-images-thumbnail_mode=crop\nsource-articles-images-thumbnail_mode-resize-use_ratio=1\n\n', 0, 0, ''),
(45, 'JA Tabs', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_jatabs', 0, 0, 0, 'moduleclass_sfx=_tabs\ntype=modules\nmodules-position=ja-tabs\nmodule-modulename=mod_search, mod_login\narticlesIDs-ids=1, 2, 3, 4\ncategoryID-catid=10\ncontent-content=[tab title=''Title tab 1'']This is tab content 1[/tab]  [tab title=''Title tab 2'']This is tab content 2[/tab]  [tab title=''Title tab 3'']This is tab content 3[/tab]  [tab title=''Title tab 4'']This is tab content 4[/tab]\nstyle=opal\nHeight=auto\nWidth=100%\nposition=top\ntHeight=38\ntWidth=\nanimType=animMoveHor\nmouseType=click\najax=false\nview=introtext\nduration=1000\ncolors=\n\n', 0, 0, ''),
(46, 'Top stories', '<img src="images/stories/demo/sam-1.jpg" alt="Sample image" class="img-border" />\r\n\r\n\r\n<strong style="display: block; margin-top: 10px;"><a href="#" title="Sample link">Risus semper non tellus tortor</a></strong>\r\nConvallis quis mauris dolor Phasellus Suspendisse nunc velit Cras ligula ligula.\r\n<a style="margin-top: 10px;" href="#" title="Readon" class="readon">Read more...</a>', 0, 'ja-tabs', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(47, 'Fannation', '<img src="images/stories/demo/sam-17.jpg" alt="Sample image" class="img-border" />\r\n\r\n\r\n<strong style="display: block; margin-top: 10px;"><a href="#" title="Sample link">Nonummy pede Maecenas</a></strong>\r\nPretium auctor faucibus consectetuer dictumst quis amet nibh lacus aliquam nunc.\r\n<a style="margin-top: 10px;" href="#" title="Readon" class="readon">Read more...</a>', 2, 'ja-tabs', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(58, 'Contributors', '<div style="height: 200px; overflow: auto;">\r\n\r\n<div class="ja-innerdiv clearfix">\r\n<img src="images/stories/demo/sam-30.jpg" alt="" align="left" class="img-border" />\r\n<span class="title"><a href="#" title="Sample link">Felis et leo Proin Nullam</a></span>\r\nLeo Sed congue interdum metus Nam neque sed magnis est massa. eu odio Curabitur id lorem elit.\r\n</div>\r\n\r\n<div class="ja-innerdiv clearfix">\r\n<img src="images/stories/demo/sam-31.jpg" alt="" align="left" class="img-border" />\r\n<span class="title"><a href="#" title="Sample link">Nullam Vestibulum</a></span>\r\nFusce lacus non dui fames malesuada Nullam Vestibulum justo et.\r\n</div>\r\n\r\n<div class="ja-innerdiv clearfix">\r\n<img src="images/stories/demo/sam-32.jpg" alt="" align="left" class="img-border" />\r\n<span class="title"><a href="#" title="Sample link">Fusce lacus non dui fames</a></span>\r\nVestibulum id convallis vel id Aliquam facilisi montes Curabitur nibh nibh.\r\n</div>\r\n\r\n<div class="ja-innerdiv clearfix">\r\n<img src="images/stories/demo/sam-33.jpg" alt="" align="left" class="img-border" />\r\n<span class="title"><a href="#" title="Sample link">Fusce lacus non dui</a></span>\r\nFusce lacus non dui fames malesuada Nullam Vestibulum justo et.\r\n</div>\r\n\r\n</div>', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(51, 'Banner quang cao', '<p><img src="images/stories/quang-cao.jpg" border="0" alt="Sample image" /></p>', 7, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=_blank\n\n', 0, 0, ''),
(53, 'Last video', '<p>\r\n<object width="263" height="230" type="application/x-shockwave-flash" data="http://www.youtube.com/v/tcakCa5JFAY&amp;hl=en&amp;fs=1">\r\n<param name="movie" value="http://www.youtube.com/v/tcakCa5JFAY&amp;hl=en&amp;fs=1" />\r\n<param name="quality" value="high" />\r\n<param name="allowFullScreen" value="true" />\r\n<param name="allowscriptaccess" value="always" />\r\n</object>\r\n</p>', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(56, 'đối tác tiêu biểu', '', 0, 'right', 62, '2010-07-22 04:34:39', 0, 'mod_ja_contentslide', 0, 0, 1, 'moduleclass_sfx=\ncatid=51\nsort_order_field=created\nsort_order=DESC\nnumElem=4\nmaxitems=10\nlink_titles=1\nnumchar=40\nxheight=100\nxwidth=160\nshowimages=1\niheight=100\niwidth=130\nauto=1\ndirection=up\nmode=virtical\ndelaytime=0\nanimationtime=2000\nshowtitle=0\nshowbutton=0\nshowreadmore=0\nshowintrotext=0\nenable_cache=1\ncache_time=300\nmootools=0\nsource-articles-images-thumbnail_mode=crop\nsource-articles-images-thumbnail_mode-resize-use_ratio=0\n\n', 0, 0, ''),
(57, 'All categories', '', 0, 'ja-news', 0, '0000-00-00 00:00:00', 1, 'mod_janews', 0, 0, 1, 'moduleclass_sfx=\nhiddenClasses=\nordering=ordering\ncatorsec=1\ncatid=36\\n37\\n38\\n39\\n40\\n41\nshowcattitle=1\nintroitems=0\nlinkitems=4\nmaxchars=0\nshowimage=1\nalign=left\nautoresize=1\nshowcontentfrontpage=1\nwidth=100\nheight=100\ncols=2\nshowreadmore=0\n\n', 0, 0, ''),
(65, 'Ask US', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: center;" colspan="2"><textarea class="text_box" cols="34" rows="8">type your message here</textarea></td>\r\n</tr>\r\n<tr>\r\n<td><input class="inputbox" size="23" type="text" value="your email" /></td>\r\n<td><input class="button" name="send" type="submit" value="send" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 'user7', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(64, 'contributors_new', '', 20, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_jaslideshow2', 0, 0, 1, 'moduleclass_sfx=\nsource=images\nsource-articles-display_model=modcats\nsource-articles-display_model-modarts-with_keyword=featured\nsource-articles-display_model-modcats-category=\nsource-articles-sort_order_field=created\nsource-articles-sort_order=DESC\nsource-articles-max_items=5\nsource-images-orderby=0\nsource-images-sort=0\nfolder=images/stories/fruit\ndescription=\nautoplay=1\nmainWidth=225\nmainHeight=240\nstartItem=0\nanimation=fade\ncontainer=0\nduration=400\neffect=Fx.Transitions.Quad.easeInOut\ninterval=5000\nanimationRepeat=yes\nshowdesc=\nreadmoretext=Readmore\ntitle_max_chars=200\nmaxchars=255\ndescOpacity=0.8\nshowdescwhen=mouseover\nmasker-alignment=bottom\nmasker-width=auto\nmasker-height=auto\nmasker-transition-style=opacity\nmarker-transition=Fx.Transitions.linear\nnavigation=\nsource-articles-navwidth=200\nsource-articles-navheight=80\nnavigation-alignment=horizontal\nshowItem=4\nnav_showthumb=1\nthumbWidth=60\nthumbHeight=60\nthumbSpace=3:3\nthumbOpacity=0.8\nsource-articles-nav_showdate=1\nsource-articles-nav_showdesc=1\nsource-articles-nav_descmaxlength=40\ncontrol=0\noverlapOpacity=0.4\nenable_cache=1\ncache_time=30\nopen_target=parent\nsource-articles-images-thumbnail_mode=crop\nsource-articles-images-thumbnail_mode-resize-use_ratio=1\n\n', 0, 0, ''),
(63, 'mod_mainmenu', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=bottommenu', 0, 0, ''),
(66, 'logo_right', '<div class="logo_right">\r\n<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="190" height="62" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0">\r\n<param name="src" value="images/banners/jrd021810.swf" /><embed type="application/x-shockwave-flash" width="172" height="87" src="templates/lesson1/images/STD.swf" wmode="transparent"></embed>\r\n</object>\r\n<br /><br /></div>', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(67, 'main_menu', '', 0, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=vert_indent\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=6\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(70, 'san pham ban chay nhat', '', 0, 'user2', 0, '0000-00-00 00:00:00', 0, 'mod_ja_contentslide', 0, 0, 0, 'moduleclass_sfx=\ncatid=42\nsort_order_field=created\nsort_order=DESC\nnumElem=3\nmaxitems=10\nlink_titles=1\nnumchar=50\nxheight=170\nxwidth=140\nshowimages=1\niheight=158\niwidth=165\nauto=0\ndirection=left\nmode=horizontal\ndelaytime=5000\nanimationtime=1000\nshowtitle=1\nshowbutton=0\nshowreadmore=1\nshowintrotext=0\nenable_cache=1\ncache_time=300\nmootools=0\nsource-articles-images-thumbnail_mode=crop\nsource-articles-images-thumbnail_mode-resize-use_ratio=0\n\n', 0, 0, ''),
(76, 'danh muc hang', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=\nmenu_style=vert_indent\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(72, 'san pham ban chay', '<div class="img-1 "><img class="caption" src="images/stories/food/100618doisongnemnuong1.jpg" border="0" alt="1" title="nem cua be" width="150" height="126" align="left" style="float: left;" /></div>\r\n<div class="img-2 "><img class="caption" src="images/stories/food/100618doisongnemnuong2.jpg" border="0" alt="nem cua be" title="nem cua be" width="150" height="126" align="left" style="float: left;" /></div>\r\n<div class="img-3 "><img class="caption" src="images/stories/food/pic_1.gif" border="0" alt="nem cua be" title="nem cua be" width="150" height="126" align="left" /></div>\r\n<p> </p>', 0, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(74, 'adress', '<p>Quầy số 1 khu lô lều chợ Hôm Đức Viên,Hai Bà Trưng,Hà Nội - Số điện thoại: 04-3822-9546 - Nhà riêng: 04.3644-6641 - Mobile: 0913.063.093.</p>', 1, 'debug', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(88, 'DANH MỤC HÀNG', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=danh-muc-hang\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(89, 'DANH MỤC HÀNG', '', 26, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=danh-muc-hang\nmenu_style=vert_indent\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(77, 'K2 Comments', '', 21, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_k2_comments', 0, 0, 1, 'comments_limit=5\ncomments_word_limit=10\ncommenterName=1\ncommentAvatar=1\ncommentAvatarWidthSelect=custom\ncommentAvatarWidth=50\ncommentDate=1\ncommentDateFormat=absolute\ncommentLink=1\nitemTitle=1\nitemCategory=1\nfeed=1\ncommenters_limit=5\ncommenterAvatar=1\ncommenterAvatarWidthSelect=custom\ncommenterAvatarWidth=50\ncommenterLink=1\ncommenterCommentsCounter=1\ncommenterLatestComment=1\n', 0, 0, ''),
(78, 'DANH MỤC HÀNG', '', 0, 'topcontent', 0, '0000-00-00 00:00:00', 0, 'mod_k2_content', 0, 0, 1, 'moduleclass_sfx=\ngetTemplate=Default\nsource=filter\ncatfilter=0\ngetChildren=0\nitemCount=3\nitemsOrdering=\nFeaturedItems=1\npopularityRange=\nvideosOnly=0\nitem=0\nitemTitle=1\nitemAuthor=0\nitemAuthorAvatar=0\nitemAuthorAvatarWidthSelect=custom\nitemAuthorAvatarWidth=50\nuserDescription=0\nitemIntroText=0\nitemIntroTextWordLimit=\nitemImage=1\nitemImgSize=Small\nitemVideo=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemAttachments=0\nitemTags=0\nitemCategory=0\nitemDateCreated=0\nitemHits=0\nitemReadMore=0\nitemExtraFields=0\nitemCommentsCounter=0\nfeed=0\nitemPreText=\nitemCustomLink=0\nitemCustomLinkURL=http://\nitemCustomLinkTitle=\nK2Plugins=1\nJPlugins=1\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(79, 'K2 Login', '', 23, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_k2_login', 0, 0, 1, 'name=1\nuserAvatar=1\nuserAvatarWidthSelect=custom\nuserAvatarWidth=50\n', 0, 0, ''),
(80, 'K2 Tools', '', 24, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_k2_tools', 0, 0, 1, 'archiveItemsCounter=1\nauthorItemsCounter=1\nauthorAvatar=1\nauthorAvatarWidthSelect=custom\nauthorAvatarWidth=50\nauthorLatestItem=1\ncategoriesListItemsCounter=1\nwidth=20\nmin_size=75\nmax_size=300\ncloud_limit=30\n', 0, 0, ''),
(81, 'K2 Users', '', 25, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_k2_users', 0, 0, 1, 'getTemplate=Default\nfilter=1\nordering=1\nlimit=4\nuserName=1\nuserAvatar=1\nuserAvatarWidthSelect=custom\nuserAvatarWidth=50\nuserDescription=1\nuserURL=1\nuserFeed=1\nuserItemCount=1\n', 0, 0, ''),
(82, 'K2 QuickIcons (admin)', '', 99, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 0, 2, 1, 'modCSSStyling=1\nmodLogo=1\n', 0, 1, ''),
(83, 'Liên kết website', '<p><center><strong>Dinh dưỡng</strong><br /> <a href="http://www.dinhduong.com.vn/">www.dinhduong.com.vn </a></center></p>\r\n<p><center><strong>Sức khỏe cộng đồng </strong><br /> \r\n<a href="http://www.suckhoecongdong.com">www.suckhoecongdong.com</a></center></p>\r\n<p><center><strong>Ẩm thực </strong><br /> <a href="http://www.amthuc.com.vn">www.amthuc.com.vn</a></center></p>\r\n<p style="text-align: center;"><a href="http://cmtsolution.com.vn"><img src="images/stories/logocmt.gif" border="0" width="160" /></a></p>', 4, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(85, 'thống kê lượt truy cập', '', 12, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_vvisit_counter', 0, 0, 1, 'moduleclass_sfx=\nmode=simple\ninitialvalue=0\ndigit_type=blushdw\nnumber_digits=7\nstats_type=0\nwidthtable=90\ntoday=Today\nyesterday=Yesterday\nweek=This week\nlweek=Last week\nmonth=This month\nlmonth=Last month\nall=All days\nautohide=1\nhrline=1\nbeginday=\nonline=We have\nguestip=Your IP\nguestinfo=Yes\nformattime=Today: %b %d, %Y\nissunday=0\ncache_time=15\npretext=\nposttext=\n\n', 0, 0, ''),
(87, 'main gioi thieu', '', 0, 'user5', 62, '2010-07-22 02:24:12', 1, 'mod_k2_content', 0, 0, 0, 'moduleclass_sfx=\ngetTemplate=Default\nsource=filter\ncatfilter=1\ncategory_id=3\ngetChildren=0\nitemCount=5\nitemsOrdering=\nFeaturedItems=1\npopularityRange=\nvideosOnly=0\nitem=0\nitemTitle=1\nitemAuthor=1\nitemAuthorAvatar=1\nitemAuthorAvatarWidthSelect=custom\nitemAuthorAvatarWidth=50\nuserDescription=1\nitemIntroText=1\nitemIntroTextWordLimit=\nitemImage=1\nitemImgSize=Small\nitemVideo=1\nitemVideoCaption=1\nitemVideoCredits=1\nitemAttachments=1\nitemTags=1\nitemCategory=1\nitemDateCreated=1\nitemHits=1\nitemReadMore=1\nitemExtraFields=0\nitemCommentsCounter=1\nfeed=1\nitemPreText=\nitemCustomLink=0\nitemCustomLinkURL=http://\nitemCustomLinkTitle=\nK2Plugins=1\nJPlugins=1\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(90, 'title_2', '<div class="title_2"><img src="images/stories/bg_t_2a.gif" border="0" align="left" /> <span>\r\n<div>DANH MỤC HÀNG</div>\r\n</span> <img src="images/stories/bg_t_2b.gif" border="0" align="left" /> <a href="index.php?option=com_content&amp;view=category&amp;layout=blog&amp;id=50&amp;Itemid=104">Xem tất cả sản phẩm bán chạy</a><img src="images/stories/arrow.jpg" border="0" style="float:left; margin-left:5px;padding-top:15px;" /></div>', 0, 'user6', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(92, 'ĐỐI TÁC TIÊU BIỂU', '<marquee height="390" onmouseover="this.stop()" onmouseout="this.start()" direction="up" scrolldelay="10" scrollamount="2">\r\n                        <img src="images/banner_lieuminh-food.jpg"/>\r\n                        </marquee>', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(93, 'Most Read Content with thumbnails', '', 0, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_mostreadthumb', 0, 0, 1, 'moduleclass_sfx=\nshow_front=1\nuseThumbnails=1\nthumbnailWidth=140\nthumbnailHeight=126\ncount=3\ncatid=50\nsecid=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(95, 'Banner', '<object width="960" height="251" border="0" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">\r\n<param value="images/banners/banner1.swf" name="movie"/>\r\n<param value="transparent" name="wmode"/>\r\n<embed width="960" height="251" wmode="transparent" loop="true" pluginspage="http://www.macromedia.com/go/get/flashplayer" src="images/banners/banner1.swf" type="application/x-shockwave-flash"/>\r\n</object>', 2, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(96, 'TOp', '<p>\r\n<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="167" height="60" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" border="0">\r\n<param name="movie" value="images/banners/STD.swf" />\r\n<param name="wmode" value="transparent" /> <embed type="application/x-shockwave-flash" width="167" height="60" src="images/banners/STD.swf" wmode="transparent" loop="true" pluginspage="http://www.macromedia.com/go/get/flashplayer"></embed>\r\n</object>\r\n</p>', 0, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(97, 'Footer', '<p><strong>Copyright © 2010 lienminhfood.om | Cửa hàng Thực Phẩm Liễu Minh</strong> <br /> Quầy số 1 Khu lô lều chợ Hôm Đức Viên, Hai Bà Trưng , Hà Nội - Số điện thoại : 04. 3822.9546 - Nhà riêng: 04. 3644.6641 - Mobile: 0913.063.093</p>', 3, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(98, 'DANH MỤC HÀNG', '<table width="100%"border="0" align="center">\r\n  <tr>\r\n<td width="165" height="127" align="center" valign="middle" ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_k2&view=item&layout=item&id=14&Itemid=96"><img src="/lieuminh/images/stories/pic_1.gif" width="164" height="125" /> </a>\r\n</td>\r\n<td width="165" height="127" align="center" valign="middle" ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_k2&view=item&layout=item&id=11&Itemid=94"><img src="/lieuminh/images/stories/changionaugiacay.jpg" width="164" height="125" /> </a>\r\n</td>\r\n<td width="165" height="127" align="center" valign="middle" ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_k2&view=itemlist&layout=category&task=category&id=7&Itemid=91"><img src="/lieuminh/images/stories/chacathaclac.jpg" width="164" height="125" /> </a>\r\n</td>\r\n  </tr>\r\n  <tr>\r\n<td width="165" height="10" align="center" valign="middle" ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_k2&view=item&layout=item&id=14&Itemid=96"> Nem cua bể </a>\r\n</td>\r\n<td width="165" height="10" align="center" valign="middle" ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_k2&view=item&layout=item&id=11&Itemid=94"> Giả cầy chân giò</a>\r\n</td>\r\n<td width="165" height="10" align="center" valign="middle" ><a href="http://demo.joommasters.com/lieuminh/index.php?option=com_k2&view=itemlist&layout=category&task=category&id=7&Itemid=91"> Chả cá </a>\r\n</td>\r\n  </tr>\r\n  <tr>\r\n    <td colspan="3"><hr color="#42830b" height="1px"> </br></td>\r\n  </tr>\r\n</table>', 0, 'topcontent', 62, '2010-08-11 01:08:19', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 1),
(1, 66),
(16, 1),
(16, 63),
(17, 0),
(18, 0),
(20, 67),
(20, 68),
(21, 0),
(25, 1),
(27, 0),
(29, 0),
(30, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(38, 65),
(38, 66),
(38, 67),
(38, 68),
(38, 69),
(38, 70),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(44, 1),
(44, 63),
(45, 1),
(45, 11),
(45, 12),
(45, 13),
(45, 14),
(45, 15),
(45, 16),
(45, 18),
(45, 20),
(45, 24),
(45, 28),
(45, 29),
(45, 30),
(45, 38),
(45, 40),
(45, 43),
(45, 44),
(45, 45),
(45, 46),
(45, 47),
(45, 51),
(45, 52),
(45, 53),
(45, 61),
(45, 63),
(46, 0),
(47, 0),
(51, 0),
(53, 0),
(56, 0),
(57, 1),
(58, 11),
(58, 12),
(58, 13),
(58, 14),
(58, 15),
(58, 16),
(58, 18),
(58, 20),
(58, 24),
(58, 28),
(58, 29),
(58, 30),
(58, 38),
(58, 40),
(58, 43),
(58, 44),
(58, 45),
(58, 46),
(58, 47),
(58, 51),
(58, 52),
(58, 54),
(58, 56),
(58, 65),
(58, 66),
(58, 67),
(58, 68),
(58, 71),
(58, 72),
(58, 73),
(58, 74),
(58, 75),
(58, 76),
(62, 1),
(63, 0),
(64, 1),
(65, 0),
(66, 0),
(67, 0),
(70, 0),
(72, 1),
(72, 82),
(74, 0),
(76, 0),
(77, 0),
(78, 82),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(85, 0),
(87, 1),
(87, 82),
(88, 0),
(89, 0),
(90, 1),
(90, 82),
(92, 0),
(93, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 82);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(6, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'JA Tabs for Joomla! 1.5', 'ja_tabs', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'style=default\n'),
(35, 'Search - K2', 'k2', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n'),
(36, 'System - K2', 'k2', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(37, 'User - K2', 'k2', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(38, 'System - Vinaora Visitors Counter', 'vvisit_counter', 'system', 0, -100, 1, 0, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 14, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 4),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 1),
(5, 14, '', 0),
(6, 14, '', 2),
(7, 14, '', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14),
(12, '2009-02-26 08:36:10', 4, 14),
(13, '2009-03-10 01:55:03', 1, 14),
(14, '2009-03-11 14:23:53', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(6, 'lieuminh', '', 'lieuminh', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 7, 0, 65, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1289255574', '7e8e5e705f48c9c79155d78f884fa130', 1, 0, '', 0, 0, 'FhjrQpT1JA6XixEJkx_fVvz3HfMU-wn32wNVPuaM2Kej2FIlFGn5v-9UBuzerfWUUXN6eBGz5fyYS4mCNzcRpPj4OHFVpPr0rhiZeUcaNOjopA06CbuN7CgUtQeYeyytgfsxhBcXECo_Z5M3vDjiHb0bWwJXBchx_vH4z5hVHdXVOxKLIvmWGoDh3r7yDTriMTAm1EPaqNfXDpZPG0hU_8NJ1BgEZEy3oHRm11tsNTynDy5HHl_GO-8Olc6yWM0ifGHYVJEqPwBlQd8_7DTgoAKUyqRRYMxGVRLuc5iavahjjQMxzl3NIguDfal4ZzAZ6mt4bADRKsGFitadmUKBIfbs0bGoQHmp8PazlHevzK80bT6bQzFdwA4sCMUq2b6gk6CSfiSIz-5z2fgd76zjIEDNkQgzBUrithtQwJjVJ0pI1R_dH2AuIMjVRz1aa8QWNqFcf4TPfdmgBmNa6_R-9e2B7pSSdB06pFRWWQPYjkuNr3wBUf5TOe1YXfMmMxgrOsyWZgTh30PMOVk32lGxIVAFze3ymuGQwpTi0NxeiFBOO1qcWK7RCdCf7Ktt1jBnvMaQsBmySg3y6unjOYhj8flcoEIhcvaQlNvgVuiprMc3ISevi5Iyuw4JmVKfOmJr_xGRlNHiDpONYlu8TCo7kRNHwbG-E-aPL6GFeB-bmqSn1-rs0e87MpoMGoGLfnbo4VDjQptBi7j649Njxqx67k1M_R_ftvUEdpdIisf7IXXexMSbWmlJBYmlS2vJu8YaryW_K795FD38zaBZR6t-as1V6K4EtbZf7GLT9wfyh19Rs1QVCmQyPfcMyrgR0Qr6tcFbL3nHIXXOrjYI1-A6MCPM-aUCu1nUTla3xKuaBCuqzoPXvHqZTER1h4ynrmqK_GjCBphDwUqGfqAV1BP1bjxwK1ujF4wdX4KgekscVtgG3vtK1nZiGNDcxmqtIiGiqzIODF4Ji2zUzHM5n8teeZWasx6ELyNgqkzSAUjVcad2CR54ErZb3T1G_2o4hCZSruHC7FDnquHo5W5y1rur-j3w_ev-ZluDAvtA8DH5HclsF8JYexhvP4BrzE76nmlLCTlZ1XGge8vLXq4cuVpJAqP6Q0fXCHFStaECRKxoauZ2D_U85Sz7qPv2zqFUMjNgf0nI7SQ7QQVYlpZOsrhsU2mrWDNUa-OMkXEOb_BR0ij1eQa6OENLqjKI-NmRyP_Cg9sLd-i-50rYp7Smy8oNn4bP-JxJ2_Hyo_uTZ53r2vrz7UVqAzYEKNwo69WTu-D8v4wRqrByIurkLJsLx7hX8TR4tGWQRleEXZDPcT5JyimRstQZMX6ikbFjJFLZ6WPrMrVjvjtVB5DAc_qeH_BCyTMxA8Vey3BVVSSrQs3prmEMe9KjBdtBDkGHZrAiZMQH9rz8tJHM1o0Mt5d7F3Ik1ISBEjNzVVnvj14GAVMu2lS4qczZzZhI3pcDDF0w-p8TSZoXjUSmMxCwHJuiVvV6XiWe3fSdT8f7p5qkypI1U9rxkAVuUfoJBadMajPfwmfzDAGY5lg53B518Nnhm5mA1Q..'),
('', '1289285535', '7166124b4a7d2a11c5f7a68f98c1b30e', 1, 0, '', 0, 0, 'MK0Rj3DZCuZrUcopkMaFCuiw3z1JLtG4WF2By6pmOmTOsBqc-eKsSWhNQP9jsgf7Ur6nrIrGrhyTiai56dwzUGb7-MUcs3TU74IrWziQJwOEqhX5snGZRzQNvqMvkwaPtnqJJDJyTyhzH7hBSzmjBD86zhbI043TTeENBLDau7RGjDl7XIB_cKA6rTf4X7gkNGyXNODe1zvGEh2ewthYTPiiIz9DUR0aIBPeq5iLlOO78PGrUYwDxHAc5CRCpOhf9LKfcBVLyHt1BR-Y8VRJfMq6dT2h8H1zpoy_6vappEVgwStkdlx2CQTNwdxyr_mNU91aRRgQwcIDU09g614lQF_kyI28smH01NC1t6Rt1Ji5Ss-HIhUU02ObsjFMkjAfz67BJ5sEbBkNzElILRrRc5vkY448gLUe_qx_c20e-cyzRE1pwbcenMmFZmjRqV22nX-xxUvnGRuzIPOsRSHEwtgn9l1G4jj47Suh7EakKS3L2tYiQD8EO0dF3eV-O77pHOubgT0XtEx7j_dalcRVGKsztSPnXIsJZ2EQBEmBFruhTABETC4NNVQnFaXJhnFaBLyTa0-q3_-qVuykjxsUydzNlIcrHsJnWuww_uap_ERKFoOkZqTcG8Py0wxJ_dL75r1geWl0LCMTrVFGbdfkjE2Lj7Zj5iUJDXjqdn-KYwigWQiwOU3VoOo_hAu7unjcU7FsEgnajSSU5i5Ff048BlYrwrzm_wZym_r3iEp3xrx4QBEtdcEyZDLW2QK8FHsP-n5yRwa9c3rv36S930UnrcrOZFVYBtUl6UhDuuCupcVGSYaRNVs1wE7zWQzvBJV5KSJyDd6iW_nhnmPx3BwctLF5cjiZ5TA1dWVMb2OqwQJuc4fkrgFAAm6FkWybLuQtqwU4t8-VavX7WLF8Utqx_2HFuFWXalrmnmbcKSdvOvs2dts_A7ZDrZxwhU_GRgwvep7sPy5oDnUd58rS8bWLnAoQIBUFnMhy4rPbkK6XfqBj2f9t3-uJlXYjmK67uvqH5h4gs8m6JAz_CG1pYnPmiTl4hvkTPZZZTb9zO4Hpg03f4HSKWu9LeV1dxnu60OvpFpxpwtwhrUpraVvBK4fpFPUL42Y8acab9r-_NVnIWuz31GaXigZv634KBFtOw7PG2NwdtO_GKE9G2Druf2n1XxSq5nryA25t1_SUlrljOS4nOWL-kt0KBzvn96-_G5_AZvciZQxeOGh52MyaDyYEyk-EYgaDSC1nzIvZRxpzwTeOkxgy2FO8pdlg1kjGIA6n6r22hbMd6U9rFJujrECZPrU8REv4HTDLfGj8pJF2Ykxc5CnIxLUc6YqGQyqL5ylqrwiy56Kl-5uAeNqeXe_JGBoebby4JLxauP07Kgxo_hdo8TwD4Ajgx4Th598bOspQT68MIZMAUsBR9YnGDGocfhXWgfzdxyZ-vqE2zzvYYpuxXSM_f7aQzFageIdZ9NoUP7ZjY-Ojw9jICRf4FwIygaU5TPb_kygpVewUoB0QYFFbcbWQfWas5WjrI5M9BBQfem0Or_djQ5k8OfCCRR1hIhjnpC85WUVmHWYKPMSxUGY.'),
('', '1289285644', 'bb73b1f0ee5f803e254f32dbe3fb2d0a', 1, 0, '', 0, 0, 'yb95ICdNLSBbMjytKj3aShqHabnugY0zq4vur7Z4m37FolWo8-ESHIBWEZ_DPleiv19MVbgSCDhrNruBO0VaGsK2DkwR-AktQCrmmRRtPl4ch-2aFYv0xjKVnZDERophD3CBMU9Ejct_LIX34y3da6l8VZLlffA0y_CvEA8UEHB16fZXgRL8G_695P6h7GNTXlOFBPfwopdTC8cx9sfjjuMfFMM_MA4KPoNYiOjLCKaXAwJUa4uwT87Z8YulmxH7UMhPQdtMP7qDtQ3Mz3SEZ3-PFJtQxQM318Ohd-JucThOtBxuJRywsztYynklOY3Z3SNVmaQttg4CmIrhW4rqRLpo7YmINzsQ0if7-Gs_FZuEp7kMAK9F3hOCd7ufkdbUtZxJZap_RZg1AgtcgVk8vy9PXoBCyHD3eTha29zSzvB2A_e6Z5FwhF1HvSWSIQOosrC5a4AMkIEKKRxXY1cegrJF3TY4Cj-homMpL-Tl7rB8HmTi1NaHMIg_hMwDmW8DnepH6zSo_IJqgNGd_tYAVVVbt5w00q4X86db_spegXtncb3gteImEj8AcaoGj2wt0rtrVAqecNMjXG5uj9hpPUGLSQ4dzZqWd3IZFAI_3CuJJI6lXkyHz5y08cXS0qG7OnKg0Zc-YDg6VK01-eEOyi2itD-cilw4HVQFjxhXZvhYgygbitF1FHep-pDWlqgh3Mq5rK5ohq1HNpZdelwJDs9CgUAzh2-3_zi0Fi7atJStta40KVuJjn_bfVxHwRyMFqiAzoxyGvo6Fx467dgLptuFAXPLofGwrub7Uearc-3YhWv9HEkB3fPhPqQsezG0A7v6T_aCWy8mP2Uz2lXLt4T1V3qmTheoXkUE8luTHW65kbbDlhfFqid5YhNnI8-HsVCGTI4G5lVZHGeLAS4suyTefZ7CrNkAub-5kLu_PVcGT-HnCQt-M9k9W9E1NWG5fDvUW8wAJBgiUur9rE2BL1Zy01yGg1r52cd4iKpImLVs7qgVJPed0bdWyoXFztyMVOrBOQHCVmg0gP3FCWX1aozlHVl2QfZwitP-p8iBrmUfgsB-MYSPeyZjigo_UwwKK8zb4ot5wIAdUY9DWPxY2KbSqGsuyFR1tauRJ7k9B2hjF_j1Ly9p-YNAP3mkdRNZfPu3okBko1123YL5STDA8iIZPAqipSAbDqVLZsP7BAKKMj6Abk_YYJ5jdLassNviuLdAErbwBQ9CT_C2gaWy9PbhO4z4iO2yAOXSfXFPqtKK5_bl8rgySgdASf9dRh9Z8q-nIoHsUgSeVYlD-7HY8dMX2fjebDMIQpmNR5oY-cCtrAfauNBVrMOyl20Dh9hWvjSdFPdg2p4-4C4tGDaA92wcjdRPt22JnleLWV6qdqZQXkbuX7RBuwGi2-sZWVAzVK166dyUtVT7oeYnnnb_2yFJVZI25ktFIY4XwWHdQQlEqi0CxA6_xOAV0M0RNJ8DnyViYdJlnnK4VmhL64OrhHOxTUbLBEtNf-9r2aBrUFO6wQgoCyU9f-i3HYUxo59kZsVzYDPynt3eDe2-Q_RBEg..');

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_stats_agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('jms_lieuminh', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'admin@yahoo.com', '902bb3472e9aaee6638eccfd1b530677:vWWbYUhFpRuYhtQ6VfOQ7ex8TjVTQcVk', 'Super Administrator', 0, 1, 25, '2010-07-14 10:33:31', '2010-10-29 02:39:24', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vvcounter_logs`
--

CREATE TABLE IF NOT EXISTS `jos_vvcounter_logs` (
  `time` int(10) unsigned NOT NULL,
  `visits` mediumint(8) unsigned NOT NULL default '0',
  `guests` mediumint(8) unsigned NOT NULL default '0',
  `members` mediumint(8) unsigned NOT NULL default '0',
  `bots` mediumint(8) unsigned NOT NULL default '0',
  UNIQUE KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_vvcounter_logs`
--

INSERT INTO `jos_vvcounter_logs` (`time`, `visits`, `guests`, `members`, `bots`) VALUES
(1279684736, 2, 1, 1, 0),
(1279684800, 0, 0, 0, 0),
(1279685750, 0, 0, 0, 0),
(1279687369, 1, 1, 0, 0),
(1279688400, 0, 0, 0, 0),
(1279689348, 0, 0, 0, 0),
(1279690276, 0, 0, 0, 0),
(1279691229, 1, 1, 0, 0),
(1279692000, 1, 1, 0, 0),
(1279693000, 0, 0, 0, 0),
(1279693947, 1, 1, 0, 0),
(1279694865, 0, 0, 0, 0),
(1279695600, 0, 0, 0, 0),
(1279696637, 0, 0, 0, 0),
(1279697544, 0, 0, 0, 0),
(1279698551, 0, 0, 0, 0),
(1279699200, 0, 0, 0, 0),
(1279700126, 1, 1, 0, 0),
(1279701166, 0, 0, 0, 0),
(1279702102, 0, 0, 0, 0),
(1279702800, 1, 0, 1, 0),
(1279703781, 0, 0, 0, 0),
(1279705305, 1, 0, 1, 0),
(1279706241, 1, 0, 1, 0),
(1279706400, 0, 0, 0, 0),
(1279707327, 0, 0, 0, 0),
(1279708483, 0, 0, 0, 0),
(1279728000, 0, 0, 0, 0),
(1279729904, 1, 1, 0, 0),
(1279731477, 1, 0, 1, 0),
(1279731600, 0, 0, 0, 0),
(1279732525, 1, 1, 0, 0),
(1279733867, 0, 0, 0, 0),
(1279734897, 1, 0, 1, 0),
(1279735200, 0, 0, 0, 0),
(1279736319, 0, 0, 0, 0),
(1279737253, 0, 0, 0, 0),
(1279738166, 1, 0, 1, 0),
(1279738800, 0, 0, 0, 0),
(1279739761, 0, 0, 0, 0),
(1279740666, 1, 1, 0, 0),
(1279741584, 1, 1, 0, 0),
(1279742400, 1, 1, 0, 0),
(1279743380, 0, 0, 0, 0),
(1279745143, 1, 1, 0, 0),
(1279746000, 0, 0, 0, 0),
(1279746912, 1, 0, 1, 0),
(1279760400, 0, 0, 0, 0),
(1279763878, 1, 1, 0, 0),
(1279764000, 1, 1, 0, 0),
(1279764919, 0, 0, 0, 0),
(1279765835, 0, 0, 0, 0),
(1279766930, 0, 0, 0, 0),
(1279767600, 1, 0, 1, 0),
(1279768718, 1, 0, 1, 0),
(1279769649, 1, 0, 1, 0),
(1279770712, 0, 0, 0, 0),
(1279771200, 0, 0, 0, 0),
(1279772107, 0, 0, 0, 0),
(1279773045, 0, 0, 0, 0),
(1279773987, 0, 0, 0, 0),
(1279774800, 0, 0, 0, 0),
(1279775715, 0, 0, 0, 0),
(1279776618, 0, 0, 0, 0),
(1279777543, 1, 0, 1, 0),
(1279778400, 0, 0, 0, 0),
(1279779351, 0, 0, 0, 0),
(1279780252, 0, 0, 0, 0),
(1279781168, 0, 0, 0, 0),
(1279782000, 0, 0, 0, 0),
(1279782901, 0, 0, 0, 0),
(1279783802, 2, 1, 1, 0),
(1279784705, 2, 1, 1, 0),
(1279785600, 1, 1, 0, 0),
(1279786672, 0, 0, 0, 0),
(1279792800, 0, 0, 0, 0),
(1279794350, 0, 0, 0, 0),
(1279807200, 0, 0, 0, 0),
(1279808314, 1, 1, 0, 0),
(1279810316, 0, 0, 0, 0),
(1279810800, 0, 0, 0, 0),
(1279813035, 0, 0, 0, 0),
(1279813935, 0, 0, 0, 0),
(1279814400, 0, 0, 0, 0),
(1279815507, 0, 0, 0, 0),
(1279816517, 0, 0, 0, 0),
(1279817420, 0, 0, 0, 0),
(1279818000, 0, 0, 0, 0),
(1279818917, 0, 0, 0, 0),
(1279819823, 0, 0, 0, 0),
(1279820737, 0, 0, 0, 0),
(1279821600, 0, 0, 0, 0),
(1279850400, 0, 0, 0, 0),
(1279851977, 1, 1, 0, 0),
(1279852927, 1, 0, 1, 0),
(1279853902, 0, 0, 0, 0),
(1279854000, 0, 0, 0, 0),
(1279854938, 0, 0, 0, 0),
(1279855841, 0, 0, 0, 0),
(1279856772, 0, 0, 0, 0),
(1279857600, 0, 0, 0, 0),
(1279859010, 1, 1, 0, 0),
(1279861200, 2, 2, 0, 0),
(1279862809, 1, 1, 0, 0),
(1279864800, 1, 1, 0, 0),
(1279865753, 1, 1, 0, 0),
(1279872000, 8, 6, 2, 0),
(1279874023, 2, 2, 0, 0),
(1279874928, 3, 2, 1, 0),
(1279875600, 0, 0, 0, 0),
(1279876528, 2, 1, 1, 0),
(1279877688, 2, 1, 1, 0),
(1279879099, 2, 1, 1, 0),
(1279879200, 0, 0, 0, 0),
(1279880290, 2, 1, 1, 0),
(1279881463, 2, 1, 1, 0),
(1279890000, 2, 1, 1, 0),
(1279892335, 1, 1, 0, 0),
(1280113200, 0, 0, 0, 0),
(1280114228, 1, 1, 0, 0),
(1280127600, 1, 1, 0, 0),
(1280128637, 1, 1, 0, 0),
(1280192400, 0, 0, 0, 0),
(1280193353, 2, 1, 1, 0),
(1280194253, 2, 1, 1, 0),
(1280195155, 2, 1, 1, 0),
(1280196000, 1, 1, 0, 0),
(1280197081, 1, 0, 1, 0),
(1280198039, 1, 0, 1, 0),
(1280199600, 1, 1, 0, 0),
(1280202060, 1, 1, 0, 0),
(1280206800, 0, 0, 0, 0),
(1280208266, 1, 1, 0, 0),
(1280214000, 0, 0, 0, 0),
(1280217238, 1, 1, 0, 0),
(1280217600, 0, 0, 0, 0),
(1280221200, 1, 1, 0, 0),
(1280222219, 2, 1, 1, 0),
(1280223228, 2, 1, 1, 0),
(1280224158, 4, 3, 1, 0),
(1280224800, 1, 1, 0, 0),
(1280225738, 3, 2, 1, 0),
(1280226657, 1, 0, 1, 0),
(1280235600, 1, 1, 0, 0),
(1280237419, 1, 1, 0, 0),
(1280242800, 1, 1, 0, 0),
(1280245417, 2, 2, 0, 0),
(1280246400, 0, 0, 0, 0),
(1280248856, 1, 1, 0, 0),
(1280264400, 0, 0, 0, 0),
(1280266337, 1, 1, 0, 0),
(1280271600, 1, 1, 0, 0),
(1280273744, 1, 1, 0, 0),
(1280275200, 1, 1, 0, 0),
(1280282400, 1, 1, 0, 0),
(1280285519, 1, 1, 0, 0),
(1280286000, 1, 0, 1, 0),
(1280287482, 2, 1, 1, 0),
(1280288388, 5, 4, 1, 0),
(1280289298, 7, 5, 2, 0),
(1280289600, 5, 3, 2, 0),
(1280290540, 6, 4, 2, 0),
(1280291701, 3, 2, 1, 0),
(1280292674, 3, 2, 1, 0),
(1280293200, 1, 1, 0, 0),
(1280296327, 3, 2, 1, 0),
(1280296800, 2, 1, 1, 0),
(1280300036, 2, 1, 1, 0),
(1280300400, 1, 1, 0, 0),
(1280301325, 2, 1, 1, 0),
(1280302275, 2, 1, 1, 0),
(1280304000, 1, 1, 0, 0),
(1280305771, 1, 1, 0, 0),
(1280306773, 3, 2, 1, 0),
(1280307600, 1, 1, 0, 0),
(1280308506, 2, 1, 1, 0),
(1280310251, 2, 1, 1, 0),
(1280311159, 5, 4, 1, 0),
(1280311200, 0, 0, 0, 0),
(1280312106, 3, 2, 1, 0),
(1280313094, 5, 3, 2, 0),
(1280314274, 3, 2, 1, 0),
(1280365200, 2, 2, 0, 0),
(1280366269, 2, 1, 1, 0),
(1280367195, 2, 1, 1, 0),
(1280368800, 1, 0, 1, 0),
(1280370547, 1, 1, 0, 0),
(1280371924, 2, 1, 1, 0),
(1280372400, 1, 1, 0, 0),
(1280375682, 3, 2, 1, 0),
(1280376000, 0, 0, 0, 0),
(1280378270, 1, 0, 1, 0),
(1280379575, 3, 2, 1, 0),
(1280379600, 0, 0, 0, 0),
(1280380669, 4, 3, 1, 0),
(1280386800, 1, 1, 0, 0),
(1280388480, 2, 1, 1, 0),
(1280389380, 2, 1, 1, 0),
(1280390400, 2, 1, 1, 0),
(1280391356, 2, 1, 1, 0),
(1280392464, 2, 1, 1, 0),
(1280397600, 3, 3, 0, 0),
(1280398717, 1, 0, 1, 0),
(1280404800, 1, 1, 0, 0),
(1280408400, 1, 1, 0, 0),
(1280409824, 2, 2, 0, 0),
(1280412000, 2, 2, 0, 0),
(1280413248, 1, 1, 0, 0),
(1280415600, 0, 0, 0, 0),
(1280418697, 1, 1, 0, 0),
(1280451600, 0, 0, 0, 0),
(1280453579, 1, 1, 0, 0),
(1280458800, 2, 1, 1, 0),
(1280460792, 2, 2, 0, 0),
(1280469600, 0, 0, 0, 0),
(1280473158, 1, 1, 0, 0),
(1280473200, 0, 0, 0, 0),
(1280474308, 1, 0, 1, 0),
(1280475258, 2, 1, 1, 0),
(1280476498, 2, 1, 1, 0),
(1280476800, 1, 0, 1, 0),
(1280477767, 2, 1, 1, 0),
(1280478913, 3, 2, 1, 0),
(1280479999, 2, 1, 1, 0),
(1280480400, 1, 1, 0, 0),
(1280481730, 3, 2, 1, 0),
(1280482654, 2, 1, 1, 0),
(1280484000, 0, 0, 0, 0),
(1280494800, 1, 1, 0, 0),
(1280497287, 1, 1, 0, 0),
(1280498400, 2, 2, 0, 0),
(1280502000, 1, 1, 0, 0),
(1280505363, 1, 1, 0, 0),
(1280530800, 0, 0, 0, 0),
(1280533367, 1, 1, 0, 0),
(1280534400, 0, 0, 0, 0),
(1280535368, 1, 1, 0, 0),
(1280538000, 0, 0, 0, 0),
(1280540739, 1, 1, 0, 0),
(1280541600, 2, 1, 1, 0),
(1280544570, 1, 1, 0, 0),
(1280548800, 0, 0, 0, 0),
(1280549705, 2, 1, 1, 0),
(1280551086, 3, 2, 1, 0),
(1280551994, 3, 2, 1, 0),
(1280552400, 2, 1, 1, 0),
(1280553523, 4, 3, 1, 0),
(1280556000, 1, 0, 1, 0),
(1280557808, 1, 1, 0, 0),
(1280559600, 1, 1, 0, 0),
(1280561391, 1, 1, 0, 0),
(1280562901, 1, 1, 0, 0),
(1280563200, 1, 1, 0, 0),
(1280564218, 2, 1, 1, 0),
(1280565249, 2, 1, 1, 0),
(1280566150, 2, 1, 1, 0),
(1280566800, 2, 1, 1, 0),
(1280568177, 3, 2, 1, 0),
(1280569110, 2, 1, 1, 0),
(1280570400, 2, 1, 1, 0),
(1280584800, 2, 2, 0, 0),
(1280586113, 1, 1, 0, 0),
(1280592000, 0, 0, 0, 0),
(1280594278, 1, 1, 0, 0),
(1280595600, 0, 0, 0, 0),
(1280602800, 1, 1, 0, 0),
(1280604472, 1, 1, 0, 0),
(1280605803, 1, 1, 0, 0),
(1280617200, 0, 0, 0, 0),
(1280620800, 1, 1, 0, 0),
(1280623772, 1, 1, 0, 0),
(1280631600, 0, 0, 0, 0),
(1280633782, 1, 1, 0, 0),
(1280649600, 0, 0, 0, 0),
(1280652567, 1, 1, 0, 0),
(1280671200, 0, 0, 0, 0),
(1280674800, 1, 1, 0, 0),
(1280676541, 1, 1, 0, 0),
(1280685600, 1, 1, 0, 0),
(1280687563, 1, 1, 0, 0),
(1280700000, 0, 0, 0, 0),
(1280700991, 1, 1, 0, 0),
(1280703600, 0, 0, 0, 0),
(1280707200, 1, 1, 0, 0),
(1280708799, 1, 1, 0, 0),
(1280709802, 1, 1, 0, 0),
(1280714400, 1, 1, 0, 0),
(1280717470, 1, 1, 0, 0),
(1280725200, 3, 3, 0, 0),
(1280727795, 1, 1, 0, 0),
(1280728800, 0, 0, 0, 0),
(1280731613, 1, 1, 0, 0),
(1280736000, 0, 0, 0, 0),
(1280737695, 2, 2, 0, 0),
(1280739600, 0, 0, 0, 0),
(1280742514, 1, 1, 0, 0),
(1280743200, 0, 0, 0, 0),
(1280746059, 2, 2, 0, 0),
(1280746800, 0, 0, 0, 0),
(1280749514, 1, 1, 0, 0),
(1280750400, 0, 0, 0, 0),
(1280753630, 2, 2, 0, 0),
(1280754000, 0, 0, 0, 0),
(1280755093, 1, 1, 0, 0),
(1280757045, 1, 1, 0, 0),
(1280757600, 1, 1, 0, 0),
(1280758520, 2, 2, 0, 0),
(1280761200, 0, 0, 0, 0),
(1280762132, 2, 2, 0, 0),
(1280764800, 0, 0, 0, 0),
(1280766334, 1, 1, 0, 0),
(1280768245, 2, 2, 0, 0),
(1280768400, 0, 0, 0, 0),
(1280771771, 2, 2, 0, 0),
(1280793600, 1, 1, 0, 0),
(1280796009, 1, 1, 0, 0),
(1280800800, 1, 1, 0, 0),
(1280804164, 1, 1, 0, 0),
(1280804400, 1, 1, 0, 0),
(1280811600, 2, 1, 1, 0),
(1280814876, 1, 1, 0, 0),
(1280815200, 1, 1, 0, 0),
(1280817470, 1, 1, 0, 0),
(1280818418, 2, 1, 1, 0),
(1280818800, 1, 0, 1, 0),
(1280819709, 2, 1, 1, 0),
(1280820638, 2, 1, 1, 0),
(1280822267, 2, 1, 1, 0),
(1280822400, 1, 1, 0, 0),
(1280823374, 2, 1, 1, 0),
(1280824326, 2, 1, 1, 0),
(1280825228, 2, 1, 1, 0),
(1280826000, 1, 1, 0, 0),
(1280826915, 3, 2, 1, 0),
(1280829435, 3, 2, 1, 0),
(1280829600, 0, 0, 0, 0),
(1280830536, 2, 1, 1, 0),
(1280840400, 2, 1, 1, 0),
(1280880000, 1, 1, 0, 0),
(1280882367, 1, 1, 0, 0),
(1280883268, 2, 1, 1, 0),
(1280883600, 1, 1, 0, 0),
(1280885032, 2, 1, 1, 0),
(1280886036, 2, 1, 1, 0),
(1280887200, 1, 1, 0, 0),
(1280888207, 2, 1, 1, 0),
(1280894400, 0, 0, 0, 0),
(1280895914, 1, 1, 0, 0),
(1280896893, 3, 3, 0, 0),
(1280905200, 1, 1, 0, 0),
(1280906900, 1, 0, 1, 0),
(1280908724, 2, 1, 1, 0),
(1280908800, 0, 0, 0, 0),
(1280909826, 1, 0, 1, 0),
(1280912139, 2, 1, 1, 0),
(1280912400, 1, 0, 1, 0),
(1280916000, 1, 1, 0, 0),
(1280930400, 1, 1, 0, 0),
(1280966400, 1, 1, 0, 0),
(1280969054, 1, 1, 0, 0),
(1280970000, 0, 0, 0, 0),
(1280972742, 1, 1, 0, 0),
(1280977200, 2, 1, 1, 0),
(1280980457, 1, 1, 0, 0),
(1280980800, 0, 0, 0, 0),
(1281002400, 1, 1, 0, 0),
(1281003694, 1, 0, 1, 0),
(1281056400, 1, 1, 0, 0),
(1281058960, 1, 1, 0, 0),
(1281207600, 0, 0, 0, 0),
(1281210333, 1, 1, 0, 0),
(1281322800, 0, 0, 0, 0),
(1281325724, 1, 1, 0, 0),
(1281326400, 1, 1, 0, 0),
(1281344400, 0, 0, 0, 0),
(1281434400, 0, 0, 0, 0),
(1281435357, 1, 1, 0, 0),
(1281488400, 0, 0, 0, 0),
(1281578400, 0, 0, 0, 0),
(1281579847, 1, 1, 0, 0),
(1281650400, 0, 0, 0, 0),
(1281652070, 1, 1, 0, 0),
(1281675600, 1, 1, 0, 0),
(1281678242, 1, 1, 0, 0),
(1281751200, 0, 0, 0, 0),
(1281754367, 1, 1, 0, 0),
(1281754800, 0, 0, 0, 0),
(1281757730, 1, 1, 0, 0),
(1281758400, 0, 0, 0, 0),
(1281759791, 1, 1, 0, 0),
(1281798000, 0, 0, 0, 0),
(1281801330, 1, 1, 0, 0),
(1281855600, 0, 0, 0, 0),
(1281858558, 1, 1, 0, 0),
(1281873600, 0, 0, 0, 0),
(1282028400, 0, 0, 0, 0),
(1282029802, 1, 1, 0, 0),
(1282068000, 0, 0, 0, 0),
(1282107600, 1, 1, 0, 0),
(1282186800, 1, 1, 0, 0),
(1282188200, 1, 1, 0, 0),
(1282233600, 0, 0, 0, 0),
(1282236856, 1, 1, 0, 0),
(1282276800, 0, 0, 0, 0),
(1282278141, 1, 1, 0, 0),
(1282280008, 2, 2, 0, 0),
(1282294800, 1, 1, 0, 0),
(1282297746, 9, 9, 0, 0),
(1282309200, 1, 1, 0, 0),
(1282310569, 1, 1, 0, 0),
(1282312264, 1, 1, 0, 0),
(1282312800, 0, 0, 0, 0),
(1282323600, 1, 1, 0, 0),
(1282324564, 1, 1, 0, 0),
(1282330800, 0, 0, 0, 0),
(1282332158, 1, 1, 0, 0),
(1282333770, 1, 1, 0, 0),
(1282341600, 0, 0, 0, 0),
(1282344626, 1, 1, 0, 0),
(1282352400, 0, 0, 0, 0),
(1282354089, 1, 1, 0, 0),
(1282356000, 0, 0, 0, 0),
(1282357307, 1, 1, 0, 0),
(1282363200, 0, 0, 0, 0),
(1282365028, 1, 1, 0, 0),
(1282366800, 0, 0, 0, 0),
(1282368716, 1, 1, 0, 0),
(1282370400, 0, 0, 0, 0),
(1282372814, 1, 1, 0, 0),
(1282381200, 0, 0, 0, 0),
(1282382842, 1, 1, 0, 0),
(1282392000, 0, 0, 0, 0),
(1282393119, 1, 1, 0, 0),
(1282402800, 0, 0, 0, 0),
(1282406109, 1, 1, 0, 0),
(1282514400, 0, 0, 0, 0),
(1282517004, 1, 1, 0, 0),
(1282528800, 0, 0, 0, 0),
(1282531945, 1, 1, 0, 0),
(1282546800, 1, 1, 0, 0),
(1282548877, 1, 1, 0, 0),
(1282582800, 0, 0, 0, 0),
(1282597200, 1, 1, 0, 0),
(1282600605, 1, 1, 0, 0),
(1282791600, 0, 0, 0, 0),
(1282794630, 1, 1, 0, 0),
(1282903200, 0, 0, 0, 0),
(1282960800, 1, 1, 0, 0),
(1282962595, 1, 1, 0, 0),
(1282964400, 0, 0, 0, 0),
(1283004000, 1, 1, 0, 0),
(1283006242, 1, 1, 0, 0),
(1283025600, 1, 1, 0, 0),
(1283027769, 1, 1, 0, 0),
(1283148000, 0, 0, 0, 0),
(1283150792, 1, 1, 0, 0),
(1283259600, 0, 0, 0, 0),
(1283262283, 1, 1, 0, 0),
(1283313600, 1, 1, 0, 0),
(1283316143, 1, 1, 0, 0),
(1283439600, 0, 0, 0, 0),
(1283442204, 1, 1, 0, 0),
(1283497200, 0, 0, 0, 0),
(1283499360, 1, 1, 0, 0),
(1283508000, 1, 1, 0, 0),
(1283569200, 1, 1, 0, 0),
(1283655600, 0, 0, 0, 0),
(1283702400, 1, 1, 0, 0),
(1283703330, 1, 1, 0, 0),
(1283824800, 0, 0, 0, 0),
(1283828332, 1, 1, 0, 0),
(1283828400, 0, 0, 0, 0),
(1283846400, 2, 1, 1, 0),
(1283864400, 1, 1, 0, 0),
(1283867461, 1, 1, 0, 0),
(1283871600, 1, 1, 0, 0),
(1283874880, 1, 1, 0, 0),
(1283932800, 0, 0, 0, 0),
(1283935139, 1, 1, 0, 0),
(1283936400, 0, 0, 0, 0),
(1283938683, 1, 1, 0, 0),
(1284048000, 0, 0, 0, 0),
(1284087600, 1, 1, 0, 0),
(1284090074, 1, 1, 0, 0),
(1284112800, 1, 1, 0, 0),
(1284177600, 1, 1, 0, 0),
(1284179246, 1, 1, 0, 0),
(1284184800, 0, 0, 0, 0),
(1284186021, 1, 1, 0, 0),
(1284242400, 0, 0, 0, 0),
(1284244335, 1, 1, 0, 0),
(1284246000, 0, 0, 0, 0),
(1284248868, 1, 1, 0, 0),
(1284253200, 0, 0, 0, 0),
(1284256800, 1, 1, 0, 0),
(1284292800, 1, 1, 0, 0),
(1284343200, 1, 1, 0, 0),
(1284346062, 1, 1, 0, 0),
(1284346800, 3, 3, 0, 0),
(1284348997, 1, 1, 0, 0),
(1284472800, 0, 0, 0, 0),
(1284474658, 1, 1, 0, 0),
(1284523200, 1, 1, 0, 0),
(1284526377, 2, 2, 0, 0),
(1284552000, 0, 0, 0, 0),
(1284555373, 1, 1, 0, 0),
(1284602400, 0, 0, 0, 0),
(1284605379, 1, 1, 0, 0),
(1284613200, 0, 0, 0, 0),
(1284614130, 1, 1, 0, 0),
(1284681600, 0, 0, 0, 0),
(1284703200, 1, 1, 0, 0),
(1284705220, 1, 1, 0, 0),
(1284714000, 1, 1, 0, 0),
(1284717107, 1, 1, 0, 0),
(1284728400, 0, 0, 0, 0),
(1284731937, 1, 1, 0, 0),
(1284764400, 0, 0, 0, 0),
(1284767063, 1, 1, 0, 0),
(1284793200, 0, 0, 0, 0),
(1284872400, 1, 1, 0, 0),
(1284875272, 1, 1, 0, 0),
(1284886800, 0, 0, 0, 0),
(1284888268, 2, 2, 0, 0),
(1284889803, 1, 1, 0, 0),
(1284890400, 1, 1, 0, 0),
(1284891560, 2, 2, 0, 0),
(1284901200, 0, 0, 0, 0),
(1284902700, 1, 1, 0, 0),
(1284904418, 1, 1, 0, 0),
(1284919200, 0, 0, 0, 0),
(1284921498, 1, 1, 0, 0),
(1284922800, 0, 0, 0, 0),
(1284924214, 1, 1, 0, 0),
(1284925884, 2, 2, 0, 0),
(1284933600, 0, 0, 0, 0),
(1284936842, 1, 1, 0, 0),
(1284951600, 0, 0, 0, 0),
(1284953740, 1, 1, 0, 0),
(1284966000, 0, 0, 0, 0),
(1284967427, 1, 1, 0, 0),
(1284984000, 1, 1, 0, 0),
(1284986795, 1, 1, 0, 0),
(1284998400, 0, 0, 0, 0),
(1285034400, 1, 1, 0, 0),
(1285052400, 1, 1, 0, 0),
(1285053958, 1, 1, 0, 0),
(1285063200, 0, 0, 0, 0),
(1285064218, 1, 1, 0, 0),
(1285074000, 1, 1, 0, 0),
(1285075567, 1, 1, 0, 0),
(1285146000, 0, 0, 0, 0),
(1285148365, 1, 1, 0, 0),
(1285203600, 0, 0, 0, 0),
(1285206412, 1, 1, 0, 0),
(1285225200, 0, 0, 0, 0),
(1285293600, 1, 1, 0, 0),
(1285294508, 1, 1, 0, 0),
(1285297200, 0, 0, 0, 0),
(1285308000, 1, 1, 0, 0),
(1285311350, 1, 1, 0, 0),
(1285401600, 0, 0, 0, 0),
(1285430400, 1, 1, 0, 0),
(1285433033, 1, 1, 0, 0),
(1285444800, 0, 0, 0, 0),
(1285448090, 1, 1, 0, 0),
(1285491600, 0, 0, 0, 0),
(1285642800, 0, 0, 0, 0),
(1285645048, 1, 1, 0, 0),
(1285668000, 0, 0, 0, 0),
(1285671283, 1, 1, 0, 0),
(1285682400, 0, 0, 0, 0),
(1285725600, 1, 1, 0, 0),
(1285728470, 1, 1, 0, 0),
(1285732800, 0, 0, 0, 0),
(1285734973, 1, 1, 0, 0),
(1286056800, 0, 0, 0, 0),
(1286058441, 1, 1, 0, 0),
(1286060400, 0, 0, 0, 0),
(1286061451, 1, 1, 0, 0),
(1286082000, 0, 0, 0, 0),
(1286084887, 1, 1, 0, 0),
(1286103600, 0, 0, 0, 0),
(1286106344, 1, 1, 0, 0),
(1286247600, 0, 0, 0, 0),
(1286254800, 1, 1, 0, 0),
(1286334000, 2, 2, 0, 0),
(1286335401, 1, 1, 0, 0),
(1286589600, 0, 0, 0, 0),
(1286592327, 1, 1, 0, 0),
(1286625600, 0, 0, 0, 0),
(1286628439, 1, 1, 0, 0),
(1286661600, 1, 1, 0, 0),
(1286663414, 1, 1, 0, 0),
(1286712000, 0, 0, 0, 0),
(1286713310, 1, 1, 0, 0),
(1286758800, 0, 0, 0, 0),
(1286762052, 1, 1, 0, 0),
(1286769600, 0, 0, 0, 0),
(1286770810, 1, 1, 0, 0),
(1286772632, 1, 1, 0, 0),
(1286780400, 0, 0, 0, 0),
(1286782813, 1, 1, 0, 0),
(1286784000, 0, 0, 0, 0),
(1286786986, 1, 1, 0, 0),
(1286834400, 0, 0, 0, 0),
(1286836392, 1, 1, 0, 0),
(1286848800, 0, 0, 0, 0),
(1286851677, 2, 2, 0, 0),
(1286946000, 0, 0, 0, 0),
(1286947881, 2, 2, 0, 0),
(1286953200, 0, 0, 0, 0),
(1286954114, 1, 1, 0, 0),
(1286955485, 1, 1, 0, 0),
(1287115200, 0, 0, 0, 0),
(1287118425, 1, 1, 0, 0),
(1287129600, 0, 0, 0, 0),
(1287130891, 1, 1, 0, 0),
(1287399600, 0, 0, 0, 0),
(1287478800, 1, 1, 0, 0),
(1287481869, 2, 2, 0, 0),
(1287482400, 1, 1, 0, 0),
(1287483675, 1, 1, 0, 0),
(1287489600, 0, 0, 0, 0),
(1287493098, 2, 2, 0, 0),
(1287493200, 0, 0, 0, 0),
(1287494748, 1, 1, 0, 0),
(1287496484, 1, 1, 0, 0),
(1287500400, 0, 0, 0, 0),
(1287502038, 1, 1, 0, 0),
(1287511200, 0, 0, 0, 0),
(1287513672, 1, 1, 0, 0),
(1287514800, 0, 0, 0, 0),
(1287516323, 1, 1, 0, 0),
(1287517998, 1, 1, 0, 0),
(1287543600, 0, 0, 0, 0),
(1287545847, 1, 1, 0, 0),
(1287565200, 0, 0, 0, 0),
(1287590400, 1, 1, 0, 0),
(1287615600, 2, 2, 0, 0),
(1287618017, 1, 1, 0, 0),
(1287626400, 0, 0, 0, 0),
(1287628130, 1, 1, 0, 0),
(1287687600, 0, 0, 0, 0),
(1287688592, 1, 1, 0, 0),
(1287853200, 0, 0, 0, 0),
(1287855082, 1, 1, 0, 0),
(1287997200, 0, 0, 0, 0),
(1287998893, 1, 1, 0, 0),
(1288004400, 1, 1, 0, 0),
(1288007609, 1, 1, 0, 0),
(1288065600, 0, 0, 0, 0),
(1288159200, 0, 0, 0, 0),
(1288160681, 1, 1, 0, 0),
(1288234800, 0, 0, 0, 0),
(1288238374, 1, 1, 0, 0),
(1288238400, 0, 0, 0, 0),
(1288239959, 1, 1, 0, 0),
(1288317600, 0, 0, 0, 0),
(1288318635, 1, 1, 0, 0),
(1288319625, 2, 1, 1, 0),
(1288321200, 2, 2, 0, 0),
(1288324800, 1, 1, 0, 0),
(1288326862, 1, 1, 0, 0),
(1288404000, 0, 0, 0, 0),
(1288406234, 1, 1, 0, 0),
(1288414800, 1, 1, 0, 0),
(1288416018, 1, 1, 0, 0),
(1288418400, 0, 0, 0, 0),
(1288419785, 1, 1, 0, 0),
(1288443600, 0, 0, 0, 0),
(1288445743, 1, 1, 0, 0),
(1288497600, 0, 0, 0, 0),
(1288501160, 1, 1, 0, 0),
(1288584000, 0, 0, 0, 0),
(1288586528, 1, 1, 0, 0),
(1288587600, 0, 0, 0, 0),
(1288589658, 1, 1, 0, 0),
(1288594800, 0, 0, 0, 0),
(1288596950, 1, 1, 0, 0),
(1288652400, 0, 0, 0, 0),
(1288655004, 1, 1, 0, 0),
(1288681200, 0, 0, 0, 0),
(1288688400, 1, 1, 0, 0),
(1288699200, 1, 1, 0, 0),
(1288701528, 1, 1, 0, 0),
(1288706400, 1, 1, 0, 0),
(1288709037, 2, 2, 0, 0),
(1288710000, 0, 0, 0, 0),
(1288713600, 1, 1, 0, 0),
(1288715444, 1, 1, 0, 0),
(1288716745, 1, 1, 0, 0),
(1288738800, 0, 0, 0, 0),
(1288740815, 1, 1, 0, 0),
(1288814400, 0, 0, 0, 0),
(1288817137, 1, 1, 0, 0),
(1288843200, 0, 0, 0, 0),
(1288844709, 1, 1, 0, 0),
(1288868400, 1, 1, 0, 0),
(1288870842, 1, 1, 0, 0),
(1288911600, 0, 0, 0, 0),
(1288913346, 1, 1, 0, 0),
(1289138400, 0, 0, 0, 0),
(1289139656, 1, 1, 0, 0),
(1289152800, 0, 0, 0, 0),
(1289155058, 1, 1, 0, 0),
(1289188800, 0, 0, 0, 0),
(1289191681, 1, 1, 0, 0),
(1289253600, 0, 0, 0, 0),
(1289255575, 1, 1, 0, 0),
(1289282400, 0, 0, 0, 0),
(1289285536, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');
