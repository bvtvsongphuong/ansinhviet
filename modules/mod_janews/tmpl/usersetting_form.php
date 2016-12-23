<?php
/*
# ------------------------------------------------------------------------
# JA News module for Joomla 1.5
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
	JPlugin::loadLanguage( 'mod_janews' );
	
	require_once dirname(dirname(__FILE__)).DS.'helper.php';
	$helper = new modJaNewsHelper( $module, $params);
	$group = JRequest::getVar( 'group' );
	$showimage = $helper->getUserSetting( $group, 'showimage' );
	$introitems = $helper->getUserSetting( $group, 'introitems' );
	$linkitems = $helper->getUserSetting( $group, 'linkitems' );

?>
<form class="ja-usersetting-form" method="get" action="index.php" >
	<input type="hidden" name="group" value="groupid:<?php echo $group; ?>" />

	<ul class="options-img">
		<li>
			<label id="paramsshowimage-lbl" for="paramsshowimage" class="hasTip" title="<?php echo JTEXT::_('INTRO ITEMS NUMBER OF INTRO ITEMS.');?>"><?php echo JTEXT::_('SHOW IMAGE');?></label>
		</li>
		<li>
			<input type="radio" name="params[showimage]" id="paramsshowimage1<?php echo $group; ?>" value="1" <?php if ($showimage) echo "checked=\"checked\"";?> class="radio" />
			<label for="paramsshowimage1<?php echo $group; ?>"><?php echo JTEXT::_('SHOW')?></label>
		</li>
		<li>
			<input type="radio" name="params[showimage]" id="paramsshowimage0<?php echo $group; ?>" value="0" <?php if (!$showimage) echo "checked=\"checked\"";?> class="radio" />
			<label for="paramsshowimage0<?php echo $group; ?>"><?php echo JTEXT::_('HIDE')?></label>
		</li>
	</ul>
    
	<ul class="options-content">
		<li>
			<label id="paramsintroitems-lbl" for="paramsintroitems<?php echo $group; ?>" class="hasTip" title="<?php echo JTEXT::_('INTRO ITEMS NUMBER OF INTRO ITEMS.');?>"><?php echo JTEXT::_('INTRO ITEMS')?></label>
			<input type="text" maxlength="2" name="params[introitems]" id="paramsintroitems<?php echo $group; ?>" value="<?php echo $introitems;?>" class="inputbox" />
		</li>
		<li>
			<label id="paramslinkitems-lbl" for="paramslinkitems<?php echo $group; ?>" class="hasTip" title="<?php echo JTEXT::_('LINK ITEMS NUMBER OF LINK ITEMS.');?>"><?php echo JTEXT::_('LINK ITEMS');?></label>
			<input type="text"  maxlength="2" name="params[linkitems]" id="paramslinkitems<?php echo $group; ?>" value="<?php echo $linkitems;?>" class="inputbox" />
		</li>
	</ul>
	
	<p class="actions">
		<input type="button" class="button ja-submit" name="ja-submit" value="<?php echo JTEXT::_('SAVE');?>" />
		<input type="button" class="button ja-cancel" name="ja-cancel" value="<?php echo JTEXT::_('CANCEL');?>" />
	</p>
</form>