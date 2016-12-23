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
defined('_JEXEC') or die('Restricted access'); ?>
<div>
<!-- Most read articles with thumbnails by Cedric Walter - www.waltercedric.com -->
<?php foreach ($list as $item) : ?>
     <div id="mostreadthumbentry">  
        <span id='mostreadthumb_image'>
			<?php 
			if ($item->image != null)
			{  ?>
	        	<a href="<?php echo $item->link; ?>">
				   <img id="mostreadthumb_thumb" align="left" src="<?php echo JURI :: base()."/modules/mod_mostreadthumb/timthumb.php?src=".$item->image."&amp;w=".$params->get('thumbnailWidth')."&amp;h=".$params->get('thumbnailHeight')."&amp;zc=1"?>">
				</a>			
			<?php 
			} 	?>
		</span>
		<span id="mostreadthumb_title">
			<a href="<?php echo $item->link; ?>"><?php echo $item->text; ?></a>
		</span>
	</div>
	<div style="clear:both;"></div>
<?php endforeach; ?>
<center><small><a href="http://www.waltercedric.com">Most Read Article</a></small></center>
</div>