<?php
/*
Plugin Name: Disable Admin Bar
Plugin URI: http://planetozh.com/blog/2010/10/how-to-remove-wordpress-admin-bar/
Description: Disable the Admin Bar.
Author: Ozh
Version: 1.1
Author URI: http://ozh.org/
*/

add_filter( 'show_admin_bar', '__return_false' );

/* A neat trick is to put this single file (not its parent directory) in
   the wp-content/mu-plugins directory (create it if not exists) so you
   won't even have to enable it, it will be loaded by default.
*/