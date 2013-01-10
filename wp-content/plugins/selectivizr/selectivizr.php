<?php
/*
Plugin Name: Selectivizr for WordPress
Plugin URI: http://www.ramoonus.nl/wordpress/selectivizr/
Description: Selectivizr is a JavaScript utility that emulates CSS3 pseudo-classes and attribute selectors in Internet Explorer 6-8. 
Version: 1.0.3
Author: Ramoonus
Author URI: http://www.ramoonus.nl/
*/

// init
function rw_selectivizr() {
	echo '<!--[if (gte IE 6)&(lte IE 8)]>'; // if IE6-IE8
	echo '<script type="text/javascript" src="'; 
	echo plugins_url();
	echo '/selectivizr/js/selectivizr.js?ver=1.0.2"></script>'; // load JS
	echo '<![endif]-->';  //endif
} 
// load
add_action('wp_head', 'rw_selectivizr');
?>