<?php 
/*------------------------------------------------------------------------
 # $JA#PRODUCT_NAME$ - Version $JA#VERSION$ - Licence Owner $JA#OWNER$
 # ------------------------------------------------------------------------
 # Copyright (C) 2004-2009 J.O.O.M Solutions Co., Ltd. All Rights Reserved.
 # @license - Copyrighted Commercial Software
 # Author: J.O.O.M Solutions Co., Ltd
 # Websites: http://www.joomlart.com - http://www.joomlancers.com
 # This file may not be redistributed in whole or significant part.
 # JA Bookmark Plugin is a module using for Display icons for your online social networking sites.
-------------------------------------------------------------------------*/   

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die( 'Restricted access' );

class JElementCategory extends JElement
{
	/*
	 * Category name
	 *
	 * @access	protected
	 * @var		string
	 */
	var	$_name = 'Category';
	
	var $_controlName = '';
	/**
	 * fetch Element 
	 */
	function fetchElement($name, $value, &$node, $control_name){
		$this->_controlName = $name; 
		$db = &JFactory::getDBO();
		$query = 'SELECT * FROM #__sections WHERE published=1';
		$db->setQuery( $query );
		$sections = $db->loadObjectList();
		$categories=array();
		$categories[0]->id = '';
		$categories[0]->title = JText::_("Select All");
		foreach ($sections as $section) {
			$optgroup = JHTML::_('select.optgroup',$section->title,'id','title');
			$query = 'SELECT id,title FROM #__categories WHERE published=1 AND section='.$section->id;
			$db->setQuery( $query );
			$results = $db->loadObjectList();
			array_push($categories,$optgroup);
			foreach ($results as $result) {
				array_push($categories,$result);
			}
		}
		$optgroup = JHTML::_('select.optgroup',JText::_("Uncategorized"),'id','title');
		array_push($categories,$optgroup);
		$uncategorised=array();
		$uncategorised['id'] = '0';
		$uncategorised['title'] = JText::_("Uncategorized");
		array_push($categories,$uncategorised);
		
		$out = JHTML::_('select.genericlist',  $categories, ''.$control_name.'['.$name.'][]', 'class="inputbox" style="width:95%;" multiple="multiple" size="10"', 'id', 'title', $value );

		return $out;
	}
	

}

?>
