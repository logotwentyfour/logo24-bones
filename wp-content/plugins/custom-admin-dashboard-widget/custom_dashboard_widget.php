<?php
/**
 * @package Custom_Dashboard_Widget
 * @version 1.0
 */
/*
Plugin Name: Custom Dashboard Widget
Plugin URI: 
Description: Allows you to put custom HTML content in a widget for your dashboard. I like to put my phpMyAdmin and Webmail links here for easy access.
Author: Matthew Moses
Version: 1.0
Author URI: http://www.matthew-moses.com
*/

function custom_dashboard_widget() {
	$title = "Custom Content";
	if(strlen(get_option('custom_dashboard_widget_title')) > 0) {
		$title = stripslashes(get_option('custom_dashboard_widget_title'));
	}
	if(current_user_can('level_10')) {
		$title .= "<span class='postbox-title-action'><a href='options-general.php?page=custom_dashboard_widget' class='edit-box open-box'>Configure</a></span>";
	}
	wp_add_dashboard_widget('custom_dashboard_widget', $title, 'custom_dashboard_widget_get_content');
}

// Hook it in to the dashboard setup action
add_action('wp_dashboard_setup', 'custom_dashboard_widget');

// Hook in the admin options page
add_action('admin_menu', 'custom_dashboard_widget_admin');


function custom_dashboard_widget_get_content() {
	$content = get_option('custom_dashboard_widget_content');
	if(strlen($content) == 0) {
		if(current_user_can('level_10')) {
			$content = "You should <a href='options-general.php?page=custom_dashboard_widget'>define</a> your custom content to go here.";
		} else {
			$content = "You should ask your admin to put some custom content here.";
		}
	}
	echo stripslashes($content);
}

function custom_dashboard_widget_admin() {

	// Create menu link
	add_options_page("Custom Dashboard Widget Options", "Custom Dashboard Widget", "level_10", "custom_dashboard_widget", "custom_dashboard_widget_admin_page");
	
	// Register settings function
	add_action('admin_init', 'custom_dashboard_widget_register_settings');
}

function custom_dashboard_widget_admin_page() {

?>
	<div class="wrap">
		<div id="icon-options-general" class="icon32"><br /></div><h2>Custom Dashboard Widget Settings</h2>
	</div>
<?php
	// Check permissions before continuing
	if(!current_user_can('level_10')) {
		wp_die(__('You do not have sufficient permissions to access this page.'));
	}
	
	if($_POST) {
		update_option('custom_dashboard_widget_title', trim($_POST['custom_dashboard_widget_title']));
		update_option('custom_dashboard_widget_content', trim($_POST['custom_dashboard_widget_content']));
?>	
		<div id="message" class="updated">
			<p><strong><?php _e('Settings saved.') ?></strong></p>
		</div>
<?php	
	}
?>


	<form method="post" action="options-general.php?page=custom_dashboard_widget">
		
		<table class="form-table">
			<tr>
				<td>Widget Custom Title:</td>
				<td><input style="width: 500px;" type="text" name="custom_dashboard_widget_title" value="<?php echo stripslashes(get_option('custom_dashboard_widget_title')); ?>" /></td>
			</tr>
			<tr>
				<td>Widget Custom Content:</td>
				<td><textarea style="width: 500px; height: 300px;" name="custom_dashboard_widget_content"><?php echo stripslashes(get_option('custom_dashboard_widget_content')); ?></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<ul>
						<li>* HTML allowed - Use caution<br /></li>
						<li>* Note: All users that have permission to view the Admin Dashboard will see this content.</li>
				</td>
			</tr>
		</table>
		<input type="submit" class="button-primary" value="<?php _e('Save Options'); ?>" />
	</form>
	
<?php

}

function custom_dashboard_widget_register_settings() {
	// Register settings
	register_setting('custom_dashboard_widget_group', 'custom_dashboard_widget_title');
	register_setting('custom_dashboard_widget_group', 'custom_dashboard_widget_content');

}

function custom_dashboard_widget_title_display() {

	echo "<input style=\"width: 500px;\" type=\"text\" name=\"custom_dashboard_widget_title\" value=\"" . get_option('custom_dashboard_widget_title') . "\" />";

}

?>