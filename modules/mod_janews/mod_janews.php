<?php
/*------------------------------------------------------------------------
 # JA Teline II for joomla 1.5 - Version testing - Licence Owner JOOM
 # ------------------------------------------------------------------------
 # Copyright (C) 2004-2009 J.O.O.M Solutions Co., Ltd. All Rights Reserved.
 # @license - Copyrighted Commercial Software
 # Author: J.O.O.M Solutions Co., Ltd
 # Websites: http://www.joomlart.com - http://www.joomlancers.com
 # This file may not be redistributed in whole or significant part.
 -------------------------------------------------------------------------*/

// no direct access
defined ( '_JEXEC' ) or die ( 'Restricted access' );
require_once (JPATH_SITE . DS . 'modules' . DS . 'mod_janews' . DS . 'helper.php');

$catorsec 	  		  = trim ( $params->get ( 'catorsec' ) );
$catid 		  		  = trim ( $params->get ( 'catid' ) );
$showheadline 		  = intval ( trim ( $params->get ( 'showheadline', 0 ) ) );
$cols 		  		  = intval ( trim ( $params->get ( 'cols', 2 ) ) );
$ordering 	  		  = trim ( $params->get ( 'ordering', 'created desc' ) );
$showcontentfrontpage = intval ( trim ( $params->get ( 'showcontentfrontpage', 1 ) ) );
$showreadmore 		  = trim ( $params->get ( 'showreadmore', '0' ) );

$mainframe 			  = & JFactory::getApplication ( 'site' );
$jaimage 			  = JAImage::getInstance();
$helper 			  = new modJaNewsHelper ( $module, $params );

// Include the syndicate functions only once
if (!defined ('_MODE_JAMODNEWS_ASSETS_')) {
	define ('_MODE_JAMODNEWS_ASSETS_', 1);
	if (is_file(JPATH_SITE.DS.'templates'.DS.$mainframe->getTemplate().DS.'css'.DS.'ja.news.css'))
	JHTML::stylesheet('ja.news.css','templates/'.$mainframe->getTemplate().'/css/');
	else JHTML::stylesheet('ja.news.css','modules/'.$module->module.'/assets/');

	JHTML::script('ja.news.js','modules/'.$module->module.'/assets/');
}

if ( $cols > 0 ) {
	if ($catid) {
		$catids = preg_split ( '/[\n,]|<br \/>/', $catid );
	} else {
		$catids = modJaNewsHelper::getAllCatIds ( $catorsec );
	}
	$introitems = intval ( trim ( $params->get ( 'introitems', 1 ) ) );
	$linkitems = intval ( trim ( $params->get ( 'linkitems', 0 ) ) );
	//Get data
	$contents = $themes = array ();
	for($i = 0; $i < count ( $catids ); $i ++) {
		$temp = preg_split ('/:/', $catids [$i]);
		if (isset ( $temp [0] ))
			$catid = $temp [0];
		if ($catid) {
			
			// integrated with the ja user setting
			$group = ($catorsec) ? "c-".$catid:"s-".$catid;
			$s_introitems = $helper->getUserSetting ( $group, 'introitems', $introitems );
			$s_linkitems  = $helper->getUserSetting ( $group, 'linkitems', $linkitems );
			
			$rows = modJaNewsHelper::getList ( $catorsec, 
											   $catid, 
											   $s_linkitems + $s_introitems, 
											   $ordering, 
											   $showcontentfrontpage 
			);
			
			if (count ( $rows )) {
				$contents[] = $rows;
				$themes[]   = isset ( $temp [1] ) ? $temp [1] : '';
			}
		}
	}
	
	$path = JModuleHelper::getLayoutPath ( 'mod_janews', 'blog' );
	if (file_exists ( $path )) {
		require ($path);
	}
}
?>