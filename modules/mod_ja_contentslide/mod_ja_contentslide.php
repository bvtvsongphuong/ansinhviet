<?php
/*
# ------------------------------------------------------------------------
# JA Contenslider module for Joomla 1.5
# ------------------------------------------------------------------------
# Copyright (C) 2004-2010 JoomlArt.com. All Rights Reserved.
# @license - PHP files are GNU/GPL V2. CSS / JS are Copyrighted Commercial,
# bound by Proprietary License of JoomlArt. For details on licensing, 
# Please Read Terms of Use at http://www.joomlart.com/terms_of_use.html.
# Author: JoomlArt.com
# Websites:  http://www.joomlart.com -  http://www.joomlancers.com
# Redistribution, Modification or Re-licensing of this file in part of full, 
# is bound by the License applied. 
# ------------------------------------------------------------------------
*/ 

// no direct access
defined('_JEXEC') or die('Restricted accessd');

	
	// Include the syndicate functions only once
	require_once (dirname(__FILE__).DS.'helper.php');
	require_once (dirname(__FILE__).DS.'jaimage.php');
	global $mainframe;
	

	// using setting params
	$xheight 		= 	$params->get( 'xheight', 400 );
	$xwidth 		= 	$params->get( 'xwidth', 400 );
	$iheight 		= 	$params->get( 'iheight', 80 );
	$iwidth 		= 	$params->get( 'iwidth', 80 ); 
	$numElem 		= 	$params->get( 'numElem', 4 ); 
	
	$showtitle	 	= 	$params->get( 'showtitle', 0 ); 
	$showimages 	= 	$params->get( 'showimages', 0 ); // echo $showimages; die;
	$showreadmore 	= 	$params->get( 'showreadmore', 0 );
	$showintrotext 	= 	$params->get( 'showintrotext', 0 );
	$link_titles 	= 	$params->get( 'link_titles', 0 );
	$numChar 		= 	$params->get( 'numchar', 0 );
	
	$auto 			= 	$params->get( 'auto', 0 );
	$direction 		=	$params->get( 'direction', 'left' );
	$delaytime 		= 	$params->get( 'delaytime', 5000 );
	$animationtime 	= 	$params->get( 'animationtime', 1000 );
	$maxitems 		=    $params->get( 'maxitems', 10 );
	$numberjump 	= 	1;
	$useajax 		= 	0;
	$mode 			= 	$params->get( 'mode','horizontal' );

	$catid = $params->get ( 'catid', '' );	 
	if(  $catid != '' ){
		if (! is_array ( $catid ) ) {
			$catid = preg_split ( '/,/', $catid );
		}
		$catid 	= 	'"' . implode ( '","', $catid ) . '"'; 
	} 

	if($params->get( 'mode' ) == 'virtical'){
		$mode = 'vertical';
	}
	// if enabled cache data
	if ( $params->get('enable_cache', 1 ) ) {
		$cache =& JFactory::getCache();
		$cache->setCaching( true );
		$cache->setLifeTime( $params->get( 'cache_time', 30 ) * 60 );	
		$contents = $cache->get( array( (modJaContentslideHelper::getInstance()) , 'getListArticles' ), array( $catid, $params ) ); 
	} else {
		$contents = modJaContentslideHelper::getListArticles( $catid, $params );
	}					
	
	$total = count( $contents );
	/* load javascript. */ 
	modJaContentslideHelper::javascript( $params );
	/* load css. */ 
	modJaContentslideHelper::css( $params );
	
	require( JModuleHelper::getLayoutPath('mod_ja_contentslide') );
