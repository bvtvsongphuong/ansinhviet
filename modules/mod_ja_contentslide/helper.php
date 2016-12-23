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

class modJaContentslideHelper {
	/**
	 * get instance of modJaContentslideHelper
	 */
	function getInstance(){
		static $__instance = null;
		if( !$__instance ){
			$__instance = new modJaContentslideHelper();
		}
		return $__instance;
	}
	/**
	 * get Total contents by category.
	 *
	 * @params object.
	 */
	 function getTotalContents( $catid=0 ){
	 	global $mainframe; 

		$my     = &JFactory::getUser();
		$db	    = &JFactory::getDBO();
		
		$aid	= $my->get( 'aid', 0 );
		
		$date =& JFactory::getDate();
		$now  = $date->toMySQL();
		
		$query 	= 	" SELECT COUNT(a.id)"
					. "\n FROM #__content AS a"
					. "\n WHERE a.state = 1"
					. "\n AND ( a.publish_up = " . $db->Quote( $db->getNullDate() ) . " OR a.publish_up <= " . $db->Quote( $now ) . " )"
					. "\n AND ( a.publish_down = " . $db->Quote( $db->getNullDate() ) . " OR a.publish_down >= " . $db->Quote( $now ) . " )"
					. ( ( !$mainframe->getCfg( 'shownoauth' ) ) ? "\n AND a.access <= " . (int) $aid : '' )
					;
		if( $catid ) { 
			$query .= ' AND a.catid IN ('.$catid.') ';
		}

		$db->setQuery( $query );
	
		return $db->loadResult();
	}
	
	
	function articleLink( $contn ){
		global $mainframe; 
		
		$string = '';
		
		$Itemid =  $mainframe->getItemid( $contn->id );
		// Blank itemid checker for SEF
		if ($Itemid == NULL) {
			$Itemid = '';
		} else {
			$Itemid = '&amp;Itemid='. $Itemid;
		}
		//$link =	JRoute::_( ContentHelperRoute::getArticleRoute ( $contn->slug, 
		//														 $contn->catslug, 
		//														 $contn->sectionid ) );

		$link =	ContentHelperRoute::getArticleRoute ( $contn->slug, 
																 $contn->catslug, 
																 $contn->sectionid );

		return $link;															 
	}
	/**
	 *
	 */
	function getListArticles( $catid, $params ){
		global $mainframe; 
	 	$db	    = &JFactory::getDBO();
		
		$my = &JFactory::getUser();

		$aid	= $my->get( 'aid', 0 );
		$date =& JFactory::getDate();
		$now  = $date->toMySQL();
		$query 	= 	'SELECT a.*,cc.description as catdesc, cc.title as cattitle,s.description as secdesc, s.title as sectitle,' .
					' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
					' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":",cc.id,cc.alias) ELSE cc.id END as catslug,'.
					' CASE WHEN CHAR_LENGTH(s.alias) THEN CONCAT_WS(":", s.id, s.alias) ELSE s.id END as secslug'
					. "\n FROM #__content AS a".
					' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
					' INNER JOIN #__sections AS s ON s.id = a.sectionid'
					. "\n WHERE a.state = 1"
					. "\n AND ( a.publish_up = " . $db->Quote( $db->getNullDate() ) . " OR a.publish_up <= " . $db->Quote( $now  ) . " )"
					. "\n AND ( a.publish_down = " . $db->Quote( $db->getNullDate() ) . " OR a.publish_down >= " . $db->Quote( $now  ) . " )"
					. ( ( !$mainframe->getCfg( 'shownoauth' ) ) ? "\n AND a.access <= " . (int) $aid : '' )
					;
		if( $catid ) {
			$query .= ' AND a.catid IN ('.$catid.') ';
		}
	
		// order by 
		if( $params->get('sort_order_field', 'created') != "random" ){
			$orderBy = "a." . $params->get('sort_order_field', 'created') . ' ' . $params->get('sort_order', 'DESC');
		} else {
			$orderBy = " RAND() ";
		}
		$query .= ' ORDER BY ' . $orderBy;
		$query .=  ' LIMIT ' . $params->get('maxitems', 10);
		$db->setQuery($query);
		$data =  $db->loadObjectlist();
		
		
		$thumbnailMode = $params->get( 'source-articles-images-thumbnail_mode', 'crop' );
		$aspect 	   = $params->get( 'source-articles-images-thumbnail_mode-resize-use_ratio', '1' );
		$crop = $thumbnailMode == 'crop' ? true:false;
		$jaimage = JAImage::getInstance();
		
		
		foreach( $data as $i => $row ) {
			
			$data[$i]->text 	= $data[$i]->introtext;
			$mainframe->triggerEvent( 'onPrepareContent', array( &$data[$i], &$params, 0 ) , true );
			$data[$i]->introtext = $data[$i]->text; 
							
			$image = modJaContentslideHelper::parseImages( $data[$i], $params );
			if( $image ) { 
				$data[$i]->image = modJaContentslideHelper::renderImage( $row->title,
																		 $image, 
																		 $params, 
																		 $params->get( 'iwidth' ),
																		 $params->get( 'iheight' ) ) ;
			}
			else {
				$data[$i]->image = '';
			}
		}
		return $data;
	}
	
	/**
	 * parser a image in the content of article.
	 */
	function parseImages( &$row, $params ){
		$text =  $row->introtext.$row->fulltext;
		$regex = "/\<img.+src\s*=\s*\"([^\"]*)\"[^\>]*\>/";
		preg_match ($regex, $text, $matches); 
		$images = (count($matches)) ? $matches : array();
		if (count($images)){
			return $images[1];
		}
		return ;
	}
	function renderImage( $title, $image, $params, $width = 0, $height = 0, $attrs='', $returnURL=false ) {
		global $database, $_MAMBOTS, $current_charset;
		if ( $image ) {
			$title = strip_tags( $title ); 
			$thumbnailMode = $params->get( 'source-articles-images-thumbnail_mode', 'crop' );
			$aspect 	   = $params->get( 'source-articles-images-thumbnail_mode-resize-use_ratio', '1' );
			$crop = $thumbnailMode == 'crop' ? true:false;
			$jaimage = JAImage::getInstance();
			if( $thumbnailMode != 'none' && $jaimage->sourceExited($image) ) {
				$imageURL = $jaimage->resize( $image, $width, $height, $crop, $aspect );
				if( $returnURL ){
					return JURI::base().$imageURL;
				}
				if ( $imageURL != $image && $imageURL ) {
					$width = $width ? "width=\"$width\"" : "";
					$height = $height ? "height=\"$height\"" : "";
					$image = "<img src=\"".JURI::base()."$imageURL\"  alt=\"{$title}\" title=\"{$title}\" $width $height $attrs />";
				} else {
					$image = "<img $attrs src=\"".JURI::base()."$image\"  $attrs  alt=\"{$title}\" title=\"{$title}\" />";
				}
			} else {
				if( $returnURL ){
					return JURI::base().$image;
				}
				$width = $width ? "width=\"$width\"" : "";
				$height = $height ? "height=\"$height\"" : "";
				$image = "<img $attrs src=\"$image\" alt=\"{$title}\"   title=\"{$title}\" $width $height />";	
			}	
		} else {
			$image = '';	
		} 
		// clean up globals
		return $image;
	}
	/**
	 * get content listing.
	 */
	 function getList( $catid, $start=0, $numberE=1, $useajax = 1){
	 
	 	global $mainframe; 
		
	 	$db	    = &JFactory::getDBO();
		
		$my = &JFactory::getUser();

		$aid	= $my->get( 'aid', 0 );
		$date =& JFactory::getDate();
		$now  = $date->toMySQL();
		$query 	= 	'SELECT a.*,cc.description as catdesc, cc.title as cattitle,s.description as secdesc, s.title as sectitle,' .
					' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
					' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":",cc.id,cc.alias) ELSE cc.id END as catslug,'.
					' CASE WHEN CHAR_LENGTH(s.alias) THEN CONCAT_WS(":", s.id, s.alias) ELSE s.id END as secslug'
					. "\n FROM #__content AS a".
					' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
					' INNER JOIN #__sections AS s ON s.id = a.sectionid'
					. "\n WHERE a.state = 1"
					. "\n AND ( a.publish_up = " . $db->Quote( $db->getNullDate() ) . " OR a.publish_up <= " . $db->Quote( $now  ) . " )"
					. "\n AND ( a.publish_down = " . $db->Quote( $db->getNullDate() ) . " OR a.publish_down >= " . $db->Quote( $now  ) . " )"
					. ( ( !$mainframe->getCfg( 'shownoauth' ) ) ? "\n AND a.access <= " . (int) $aid : '' )
					;
		if( $catid ) {
			$query .= ' AND a.catid IN ('.$catid.') ';
		}
		if( $useajax ) {
			$query .=  ' LIMIT '.$start.','.$numberE;

		}	

		$db->setQuery($query);
		
		return $db->loadObjectlist();
	}
	/**
	 *
	 *
	 */
	function loadContents($catid, $start=0, $numberE=1, $useajax = 1){
		$content = modJaContentslideHelper::getList( $catid, $start, $numberE, $useajax );
		return isset( $content[0] ) ? $content[0]: null; 
	}
	/**
	 *
	 *
	 */
	 function replaceImage( &$row, $maxchars, $showimage, $width = 0, $height = 0 ) {
		// expression to search for
				
		$row->introtext1 = strip_tags($row->introtext);
		if ($maxchars && strlen ($row->introtext) > $maxchars) {
			$row->introtext1 = substr ($row->introtext1, 0, $maxchars) . "...";
		}
		// clean up globals
		return $row->image;
	}
	/**
	 *
	 */
	 function processImage ( &$row, $width, $height ) {
		/* for 1.5 - don't need to use image parameter */
		return 0;
		/* End 1.5 */
	}	 
	/**
	 * load javascript files: processing override js, load js compress or not.
	 */
	function javascript( $params  ){
	
		$document =& JFactory::getDocument();
		// if load mootools lib.
		if( $params->get('mootools') ) {
			$document->addScript( JURI::base().'modules/mod_ja_contentslide/js/mootools.v1.1.pak.js' );
		}
		$document->addScript( JURI::base().'modules/mod_ja_contentslide/assets/js/ja_contentslide.js' );
	}	
	/**
	 * load css files: processing override css
	 */	 
	function css( $params ){
	
		global $mainframe;
		
		$document =& JFactory::getDocument();
		
		$cssFile  = 'ja_contentslide.css';
	
		if( file_exists(JPATH_SITE.DS.'templates'.DS.$mainframe->getTemplate().DS.'css'.DS.$cssFile) ) {
			$document->addStyleSheet( JURI::base().'templates/'.$mainframe->getTemplate().'/css/'.$cssFile );
		} else { 
			$document->addStyleSheet( JURI::base().'modules/mod_ja_contentslide/assets/css/'.$cssFile );
		}
	}
	/**
	 * check overrider layout.
	 */
	function getLayoutPath($module, $layout = 'default') {
		
		global $mainframe;

		// Build the template and base path for the layout
		$tPath = JPATH_BASE.DS.'templates'.DS.$mainframe->getTemplate().DS.'html'.DS.$module.DS.$layout.'.php';
		$bPath = JPATH_BASE.DS.'modules'.DS.$module.DS.'tmpl'.DS.$layout.'.php';

		// If the template has a layout override use it
		if (file_exists($tPath)) {
			return $tPath;
		} else {
			return $bPath;
		}
	}
}
?>