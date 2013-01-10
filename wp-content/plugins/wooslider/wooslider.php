<?php
/*
Plugin Name: WooSlider
Plugin URI: http://woothemes.com/
Description: Add responsive sliders to your website using shortcodes, template tags or widgets, to showcase custom slides, blog posts or other content in a responsive animated slider.
Version: 1.0.5
Author: WooThemes
Author URI: http://woothemes.com/
License: GPL version 2 or later - http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
*/
/*  Copyright 2012  WooThemes  (email : info@woothemes.com)

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License, version 2, as 
    published by the Free Software Foundation.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/
	
    if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

	require_once( 'classes/class-wooslider.php' );
	if ( ! is_admin() ) require_once( 'inc/wooslider-template.php' );

	global $wooslider;
	$wooslider = new WooSlider( __FILE__ );
	$wooslider->version = '1.0.5';
?>