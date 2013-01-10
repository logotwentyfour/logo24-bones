<?php
// create custom plugin settings menu
add_action('admin_menu', 'ja_rt_create_menu');


function ja_rt_create_menu() {
	add_options_page('Read Time Settings', 'Read Time', 'administrator', __FILE__, 'ja_rt_settings_page');
}


function ja_rt_settings_page() {

	if($_POST['ja_rt_save'] == 'true'){

		$wpm 	= $_POST['ja-rt-wpm'];
		$prefix	= $_POST['ja-rt-prefix'];
		$suffix	= $_POST['ja-rt-suffix'];
		
		update_option( 'ja_rt_wpm', $wpm );
		update_option( 'ja_rt_prefix', $prefix );
		update_option( 'ja_rt_suffix', $suffix );
	}
	
	$wpm_val 	= get_option('ja_rt_wpm');
	$prefix_val	= get_option('ja_rt_prefix');
	$suffix_val	= get_option('ja_rt_suffix');
?>
	<style>
		.row { margin-bottom: 5px; }
		.col1 { width: 150px; margin-right: 10px; float: left; }
		.col2 { width: 300px; margin-right: 10px; float: left; }
		.clear { clear: both; }
		.alnkURL { width: 197px; }
		#prefix { width: 300px}
	</style>
<div class="wrap">
<h2>Read Time Plugin</h2>
<p>This is a <b>beta</b> version of this plug-in. Please email all feedback to <a href="mailto:jarntz@gmail.com">jarntz@gmail.com</a>. Thank you for testing!</p>
<p><em>Like this plugin? Help support it <a href="http://www.jeremyarntz.com/plugins/donate/" target="_new">by donating to the developer</a>. 
Donations help cover the cost of maintaining and developing new plugin features. Every donation is appreciated!</em></p>
	<form method="post" action="">
		<div class="row">
			<div class="col1">
				WPM:
			</div>
			<div class="col2">
				<input type="text" name="ja-rt-wpm" value="<?php echo $wpm_val; ?>" />
			</div>
			<div class="clear"></div>
		</div>
		
		<div class="row">
			<div class="col1">
				Prefix:
			</div>
			<div class="col2">
				<input type="text" id="prefix" name="ja-rt-prefix" value="<?php echo $prefix_val; ?>" />
			</div>
			<div class="clear"></div>
		</div>
		
		<div class="row">
			<div class="col1">
				Suffix:
			</div>
			<div class="col2">
				<input type="text" id="prefix" name="ja-rt-suffix" value="<?php echo $suffix_val; ?>" />
			</div>
			<div class="clear"></div>
		</div>
		
		<input type="hidden" name="ja_rt_save" value="true" />
		<div class="row">
			<input type="submit" name="Submit" class="button-primary" value="<?php esc_attr_e('Save Changes') ?>" />
		</div>
	</form>
</div>
<?php } ?>
