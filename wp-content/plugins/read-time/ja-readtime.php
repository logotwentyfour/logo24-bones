<?php 
/* 
Plugin Name: Read Time Plugin
Plugin URI: http://www.jeremyarntz.com/plugins/wordpress/read-time/
Description:  
Version: 0.7
Author: Jeremy Arntz
Author URI: http://jeremyarntz.com
*/ 

function read_time(){
	
	// get the data
	$wpm 		= get_option('ja_rt_wpm');
	$prefix		= get_option('ja_rt_prefix');
	$suffix		= get_option('ja_rt_suffix');
	$content	= get_the_content();
	
	// get the word count
	$word_count = str_word_count ($content, 0);
	
	// calculate the read time
	$read_time 	= $word_count / $wpm;
	
	// figure out the phrasing
	if($read_time < 1){
		
		// if this is less than a minute
		$read_text = "less than a minute";
	
	}elseif($read_time == 1){
	
		// or exactly a minute
		$read_text = "1 minute";
	
	}else{
	
		// or greater than a minute
		$read_text = ceil($read_time)." minutes";
	
	}


	echo '<div id="read-time"> '.$prefix.' <span id="read-time-text">'.$read_text.'</span>'.$suffix.'</div>';
}

/* Runs when plugin is activated */
register_activation_hook(__FILE__,'ja_rt_install'); 

/* Runs on plugin deactivation*/
register_deactivation_hook( __FILE__, 'ja_rt_remove' );

function ja_rt_install() {
	add_option('ja_rt_wpm', '250', '', 'yes');
	add_option('ja_rt_prefix', 'The estimated time to read this article is', '', 'yes');
	add_option('ja_rt_suffix', '', '', 'yes');
}

function ja_rt_remove() {
	/* Deletes the database field */
	delete_option('ja_rt_wpm');
	delete_option('ja_rt_prefix');
	delete_option('ja_rt_suffix');
}

include('ja-readtime-admin.php');
?>