<?php header("Content-type: text/css"); ?>
/*
# ------------------------------------------------------------------------
# JA Opal Template for  Joomla 1.5
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
<?php
$template_path = dirname (dirname( dirname( $_SERVER['REQUEST_URI'] ) ) );
function ieversion() {
  ereg('MSIE ([0-9]\.[0-9])',$_SERVER['HTTP_USER_AGENT'],$reg);
  if(!isset($reg[1])) {
    return -1;
  } else {
    return floatval($reg[1]);
  }
}
$iev = ieversion();
?>
<?php /*All IE*/ ?>

<?php
/*IE 6*/
if ($iev == 6) {
?>

h1.logo a {
 	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/blue/logo.png', sizingMethod='image');
 	background-image: none;
}

#ja-cssmenu li ul a:hover, 
#ja-cssmenu li ul a:active, 
#ja-cssmenu li ul a:focus, 
#ja-cssmenu ul li:hover, 
#ja-cssmenu ul li.sfhover, 
#ja-cssmenu ul li.havesubchildsfhover, 
#ja-cssmenu ul li.havesubchild-activesfhover, 
#ja-cssmenu ul ul li:hover, 
#ja-cssmenu ul ul li.sfhover, 
#ja-cssmenu ul ul li.havesubchildsfhover, 
#ja-cssmenu ul ul li.havesubchild-activesfhover {
	background: #061E3A !important;
}

#ja-cssmenu li ul {
 	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/blue/trans-bg.png', sizingMethod='scale');
 	background-image: none;
}

<?php
}
?>


<?php
/*IE 7*/
if ($iev == 7) {
?>

<?php
}
?>


<?php
/*IE 8*/
if ($iev == 8) {
?>

<?php
}
?>
