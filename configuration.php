<?php
//ini_set("memory_limit","128M"); 
class JConfig {
	var $offline = '0';
	var $editor = 'none';
	var $list_limit = '20';
	var $helpurl = 'http://help.joomla.org';
	var $debug = '0';
	var $debug_lang = '0';
	var $sef = '0';
	var $sef_rewrite = '0';
	var $sef_suffix = '0';
	var $feed_limit = '10';
	var $feed_email = 'author';
	var $secret = 'HgZgY74ARuKbHNL6';
	var $gzip = '0';
	var $error_reporting = '-1';
	var $xmlrpc_server = '0';
	var $log_path = '\\httpdocs\\rauxanh\\logs';
	var $tmp_path = '\\tmp';
	var $live_site = '';
	var $force_ssl = '0';
	var $offset = '0';
	var $caching = '0';
	var $cachetime = '15';
	var $cache_handler = 'file';
	var $memcache_settings = array();
	var $ftp_enable = '0';
	var $ftp_host = '127.0.0.1';
	var $ftp_port = '21';
	var $ftp_user = '';
	var $ftp_pass = '';
	var $ftp_root = '';
	var $dbtype = 'mysql';
	var $host = 'localhost';
	var $user = 'asv';
	var $db = 'asvdb';
	var $dbprefix = 'rauxanh_';
	var $mailer = 'mail';
	var $mailfrom = 'lieuminhfood@yahoo.com';
	var $fromname = 'nguyen ha giang';
	var $sendmail = '/usr/sbin/sendmail';
	var $smtpauth = '0';
	var $smtpsecure = 'none';
	var $smtpport = '25';
	var $smtpuser = '';
	var $smtppass = '';
	var $smtphost = 'localhost';
	var $MetaAuthor = '1';
	var $MetaTitle = '1';
	var $lifetime = '1500';
	var $session_handler = 'database';
	var $password = 'asv123456';
	var $sitename = 'RAU XANH';
	var $MetaDesc = 'Joomla! - the dynamic portal engine and content management system';
	var $MetaKeys = 'joomla, Joomla';
	var $offline_message = 'This site is down for maintenance. Please check back again soon.';
}
?>