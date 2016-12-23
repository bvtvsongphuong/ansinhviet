<?php
/**
 * @version		1.5.0
 * @package		most read module with thumbails
 * @copyright	Copyright (C) 2010 Cedric Walter from www.waltercedric.com. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 *
 * relatedThumbsArticles is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.

 * Author: Cedric Walter
 * Email: cedric.walter@gmail.com
 * Web: http://www.waltercedric.com
 **/

// no direct access
defined('_JEXEC') or die('Restricted access');

require_once (JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');

class modMostReadThumbHelper
{
	
	function init($params)
	{
		global $mainframe;

		$db			=& JFactory::getDBO();
		$user		=& JFactory::getUser();

		$count		= intval($params->get('count', 5));
		$catid		= trim($params->get('catid'));
		$secid		= trim($params->get('secid'));
		$show_front	= $params->get('show_front', 1);
		$aid		= $user->get('aid', 0);

		$contentConfig = &JComponentHelper::getParams( 'com_content' );
		$access		= !$contentConfig->get('show_noauth');

		$nullDate	= $db->getNullDate();
		$date =& JFactory::getDate();
		$now  = $date->toMySQL();

		if ($catid) {
			$ids = explode( ',', $catid );
			JArrayHelper::toInteger( $ids );
			$catCondition = ' AND (cc.id=' . implode( ' OR cc.id=', $ids ) . ')';
		}
		if ($secid) {
			$ids = explode( ',', $secid );
			JArrayHelper::toInteger( $ids );
			$secCondition = ' AND (s.id=' . implode( ' OR s.id=', $ids ) . ')';
		}

		//Content Items only
		$query = 'SELECT a.*,' .
			' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
			' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug'.
			' FROM #__content AS a' .
			' LEFT JOIN #__content_frontpage AS f ON f.content_id = a.id' .
			' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
			' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
			' WHERE ( a.state = 1 AND s.id > 0 )' .
			' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )' .
			' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'.
			($access ? ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid : '').
			($catid ? $catCondition : '').
			($secid ? $secCondition : '').
			($show_front == '0' ? ' AND f.content_id IS NULL' : '').
			' AND s.published = 1' .
			' AND cc.published = 1' .
			' ORDER BY a.hits DESC';
		
		error_log($query);
		$db->setQuery($query, 0, $count);
		$rows = $db->loadObjectList();

		$i		= 0;
		$lists	= array();
		foreach ( $rows as $row )
		{
			if($row->access <= $aid)
			{
				$lists[$i]->link = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid));
			} else {
				$lists[$i]->link = JRoute::_('index.php?option=com_user&view=login');
			}
			
			$lists[$i]->image = modMostReadThumbHelper::getImage($row->introtext, $params); 
			
			$lists[$i]->text = htmlspecialchars( $row->title );
			$i++;
		}

		return $lists;
	}
	
	function addStyleSheet(){
	   $document =& JFactory::getDocument();
	   $document->addStyleSheet('modules/mod_mostreadthumb/tmpl/css.css');
	}
	
	
	/**
	 * Try to extract the first images from $fulltext, if not found return a default
	 *
	 * @param $fulltext
	 * @return unknown_type
	 */
	function getImage($html, &$params) {
		$param_useThumbnails= intval($params->get('useThumbnails',1));
		if (!$param_useThumbnails)
		{
			return null;
		}

		$image= $params->get('defaultImage',"/modules/mod_mostreadthumb/tmpl/default.jpg");

		//cant use a DOM XML parser, not all code is XHTML, do a string index of before a regexp which cost more time
		if (strpos($html, "img")) {
			//$pattern = "/img.*src=[\"']?([^\"']?.*)[\"']?/i";
			$pattern = "/\<img.+?src=\"(.+?)\".+?\/>/";
			preg_match_all($pattern, $html, $images);
			$image = $images[1][0];
		}
		return $image;
	}
	
	
}
