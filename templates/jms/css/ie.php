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

$template_path = dirname( dirname( $_SERVER['REQUEST_URI'] ) );
global $color;
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

#ja-slideshow .maskDesc .ja-slide-desc {
	width: 97%;
}

#ja-container, #ja-container-fr, #ja-container-fl, #ja-container-f {
	width: 100%;
}

#ja-botsl {
	zoom: 1;
}
<?php
/*IE 6*/
if ($iev == 6) {
?>
#ja-mainbody {
	width: 67.5%;
}
#ja-colwrap .ja-innerpad {
	padding-left: 0;
}

#ja-colwrap {
	width: 31%;
}

#ja-contentheading .componentheading,
.moduletable h3,
.moduletable_text h3,
.moduletable_menu h3 {
	width: 100%;
}

div.column1 .contentpaneopen,
div.column2 .contentpaneopen,
div.column3 .contentpaneopen {
	padding: 0;
}

.img_caption.left {
	padding: 0;
    margin: 0;
}

#ja-bdbgwrap {
	position: absolute;
	z-index: 1;
	top: 0;
	left: 0;
	text-align: center;
}

#ja-bdbg {
	width: 100px;
}

#ja-header,
#ja-topsl,
#ja-pathway,
#ja-container,
#ja-container-fr,
#ja-container-fl,
#ja-container-f,
#ja-footer {
	position: relative;
	z-index: 2;
}

#ja-topsl {
  zoom: 1;
}

h1.logo a {
 	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/logo.png', sizingMethod='image');
 	background-image: none;
}


p.stickynote {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/icon-sticky.png', sizingMethod='crop');
 	background-image: none;
	width: 89%;
}

p.download {
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/icon-download.png', sizingMethod='crop');
 	background-image: none;
	width: 89%;
}

#ja-cssmenu li ul {
 	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo $template_path;?>/images/trans-bg.png', sizingMethod='scale');
 	background-image: none;
}

#ja-cssmenu li li{
  background: url(<?php echo $template_path;?>/images/blank.png)!important;
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
	background-image: url(<?php echo $template_path;?>/images/mainnav-active.gif) !important;
	color: #FFFFFF !important;
}

#ja-cssmenu li ul a {
	width: 185px !important;
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
#ja-wrapper, #ja-topslwrap, #ja-topsl {
	width: 100%;
}
<?php
}
?>
