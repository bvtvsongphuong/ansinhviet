<?php
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

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>">

<head>
<jdoc:include type="head" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/template.css" type="text/css" />

</head>
<body>
<div class="all">
	<!---Heder-->

    <div class="clear">
	</div>
		<jdoc:include type="modules" name="banner" />
	<div id="content"> 
    	<!--- Left-->
    	<div class="menu_adve">
			<jdoc:include type="modules" name="left" style="rounded"/>
        </div>
        <!--- Content-->        
        <div class="ct">
            <!--- Content Left-->
            <div class="ct_lf">
				<?php if ( $this->countModules('topcontent') ) { ?>
				<div id="topcontent">
					<jdoc:include type="modules" name="topcontent" style="xhtml"/>
				</div>
				
				<?php } ?>				
            	<jdoc:include type="component"  />				
			</div>	
            <div class="ct_rg">
   	
                <jdoc:include type="modules" name="right" style="rounded"/>
            </div>					

		</div>
      	     <!--- Content right-->

		<div class="phancach">
		</div>
	</div>


               
   
    <!--menu 2-->
    <div class="menu2">
	<jdoc:include type="modules" name="user3"  />
    </div>
    <!--Footer-->
    <div id="footer">
    	<jdoc:include type="modules" name="footer" />
    </div>
    
</div>
</body>

</html>