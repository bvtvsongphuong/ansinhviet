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

require_once (dirname(__FILE__).DS.'helper.php');

$cache = & JFactory :: getCache('mostreadthumb');
$cache->setCaching( 1 );

//because of joomla fail module caching, add css in here and cache output of module myself
modMostReadThumbHelper::addStyleSheet();

$list = $cache->call(array( 'modMostReadThumbHelper', 'init'), $params );

//$list = modMostReadThumbHelper::getList($params);
require(JModuleHelper::getLayoutPath('mod_mostreadthumb'));