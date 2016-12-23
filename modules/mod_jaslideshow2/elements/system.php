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
defined( '_JEXEC' ) or die();

class JElementSystem extends JElement
{
	/*
	 * Section name
	 *
	 * @access	protected
	 * @var		string
	 */
	var	$_name = 'System';
	function fetchElement($name, $value, &$node, $control_name)	{
		$options = $this->getSystems();
			
		return JHTML::_('select.genericlist',  $options, ''.$control_name.'['.$name.']', 'class="inputbox"', 'keys', 'value', $value, $control_name.$name );		
	}
	
	/**
	 * get systems
	 */
	function getSystems(){
		$data[] =  array( 'keys'  => 'addthis',
						  'value' => 'AddThis.Com' );
		$data[] =  array( 'keys'  => 'addtoany',
						  'value' => 'AddToAny.Com' );
		return $data;					  					  
	}
	
}

?>
