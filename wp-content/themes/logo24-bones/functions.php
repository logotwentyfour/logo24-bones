<?php
/*
Author: Eddie Machado
URL: htp://themble.com/bones/

This is where you can drop your custom functions or
just edit things like thumbnail sizes, header images, 
sidebars, comments, ect.
*/

/************* INCLUDE NEEDED FILES ***************/

/*
1. library/bones.php
    - head cleanup (remove rsd, uri links, junk css, ect)
	- enqueueing scripts & styles
	- theme support functions
    - custom menu output & fallbacks
	- related post function
	- page-navi function
	- removing <p> from around images
	- customizing the post excerpt
	- custom google+ integration
	- adding custom fields to user profiles
*/
require_once('library/bones.php'); // if you remove this, bones will break

/************* THUMBNAIL SIZE OPTIONS *************/

// Thumbnail sizes
add_image_size( 'bones-thumb-600', 600, 150, true );
add_image_size( 'bones-thumb-300', 300, 100, true );
/* 
to add more sizes, simply copy a line from above 
and change the dimensions & name. As long as you
upload a "featured image" as large as the biggest
set width or height, all the other sizes will be
auto-cropped.

To call a different size, simply change the text
inside the thumbnail function.

For example, to call the 300 x 300 sized image, 
we would use the function:
<?php the_post_thumbnail( 'bones-thumb-300' ); ?>
for the 600 x 100 image:
<?php the_post_thumbnail( 'bones-thumb-600' ); ?>

You can change the names and dimensions to whatever
you like. Enjoy!
*/

/************* ACTIVE SIDEBARS ********************/

// Sidebars & Widgetizes Areas
function bones_register_sidebars() {
    register_sidebar(array(
    	'id' => 'blog',
    	'name' => 'Blog',
    	'description' => 'For the blog index and show.',
    	'before_widget' => '<div id="%1$s" class="widget %2$s">',
    	'after_widget' => '</div>',
    	'before_title' => '<h4 class="widgettitle">',
    	'after_title' => '</h4>',
    ));
    
    /* 
    to add more sidebars or widgetized areas, just copy
    and edit the above sidebar code. In order to call 
    your new sidebar just use the following code:
    
    Just change the name to whatever your new
    sidebar's id is, for example:
    
    register_sidebar(array(
    	'id' => 'sidebar2',
    	'name' => 'Sidebar 2',
    	'description' => 'The second (secondary) sidebar.',
    	'before_widget' => '<div id="%1$s" class="widget %2$s">',
    	'after_widget' => '</div>',
    	'before_title' => '<h4 class="widgettitle">',
    	'after_title' => '</h4>',
    ));
    
    To call the sidebar in your template, you can just copy
    the sidebar.php file and rename it to your sidebar's name.
    So using the above example, it would be:
    sidebar-sidebar2.php
    
    */
} // don't remove this bracket!

/************* COMMENT LAYOUT *********************/
		
// Comment Layout
function bones_comments($comment, $args, $depth) {
   $GLOBALS['comment'] = $comment; ?>
	<li>
		<article>
			<header class="comment-author vcard">
				<?php printf(__('<cite class="fn">%s</cite>'), get_comment_author_link()) ?> on
				<time datetime="<?php echo comment_time('Y-m-j'); ?>"><a href="<?php echo htmlspecialchars( get_comment_link( $comment->comment_ID ) ) ?>"><?php comment_time('F jS, Y'); ?> </a></time> wrote:
				<?php edit_comment_link(__('(Edit)', 'bonestheme'),'  ','') ?>
			</header>
			<?php if ($comment->comment_approved == '0') : ?>
       			<div class="alert info">
          			<p><?php _e('Your comment is awaiting moderation.', 'bonestheme') ?></p>
          		</div>
			<?php endif; ?>
			<section>
				<?php comment_text() ?>
			</section>
		</article>
    <?php # </li> is added by WordPress automatically ?>
<?php
} // don't remove this bracket!

/************* SEARCH FORM LAYOUT *****************/

// Search Form
function bones_wpsearch($form) {
    $form = '<form role="search" method="get" id="searchform" action="' . home_url( '/' ) . '" >
    <label class="screen-reader-text" for="s">' . __('Search for:', 'bonestheme') . '</label>
    <input type="text" value="' . get_search_query() . '" name="s" id="s" placeholder="'.esc_attr__('Search the Site...','bonestheme').'" />
    <input type="submit" id="searchsubmit" value="'. esc_attr__('Search') .'" />
    </form>';
    return $form;
} // don't remove this bracket!

// CUSTOM ADMIN LOGIN HEADER LOGO
function my_custom_login_logo()
{
    echo '<style  type="text/css"> #login { padding-top: 57px } .login h1 a {  background-image:url(' . get_bloginfo('template_directory') . '/library/images/logo-admin.gif); height: 150px; width: 150px; background-size: 100% 100%; padding-bottom: 0; margin: 0 auto 1em auto; } </style>';
}
add_action('login_head',  'my_custom_login_logo');

// Admin footer modification
function remove_footer_admin ()
{
    echo '<span id="footer-thankyou">A <a href="http://logo24.com">Logo24</a> Production</span>';
}
add_filter('admin_footer_text', 'remove_footer_admin');

// Add new 'Phone' textfield to General Settings
$new_general_setting = new new_general_setting();
 
class new_general_setting {
    function new_general_setting( ) {
        add_filter( 'admin_init' , array( &$this , 'register_fields' ) );
    }
    function register_fields() {
        register_setting( 'general', 'phone', 'esc_attr' );
        add_settings_field('phone', '<label for="phone">'.__('Phone' , 'phone' ).'</label>' , array(&$this, 'fields_html') , 'general' );

    }
    function fields_html() {
        $value = get_option( 'phone', '' );
        echo '<input type="text" id="phone" name="phone" value="' . $value . '" />';
    }
}

// Add new 'Street' textfield to General Settings
$new_general_setting2 = new new_general_setting2();
 
class new_general_setting2 {
    function new_general_setting2( ) {
        add_filter( 'admin_init' , array( &$this , 'register_fields' ) );
    }
    function register_fields() {
        register_setting( 'general', 'street', 'esc_attr' );
        add_settings_field('street', '<label for="street">'.__('Street' , 'street' ).'</label>' , array(&$this, 'fields_html') , 'general' );

    }
    function fields_html() {
        $value = get_option( 'street', '' );
        echo '<input type="text" id="street" name="street" value="' . $value . '" />';
    }
}

// Add new 'Street line 2' textfield to General Settings
$new_general_setting3 = new new_general_setting3();
 
class new_general_setting3 {
    function new_general_setting3( ) {
        add_filter( 'admin_init' , array( &$this , 'register_fields' ) );
    }
    function register_fields() {
        register_setting( 'general', 'street2', 'esc_attr' );
        add_settings_field('street2', '<label for="street2">'.__('Street line 2' , 'street2' ).'</label>' , array(&$this, 'fields_html') , 'general' );

    }
    function fields_html() {
        $value = get_option( 'street2', '' );
        echo '<input type="text" id="street2" name="street2" value="' . $value . '" />';
    }
}

// Add new 'Town/City' textfield to General Settings
$new_general_setting4 = new new_general_setting4();
 
class new_general_setting4 {
    function new_general_setting4( ) {
        add_filter( 'admin_init' , array( &$this , 'register_fields' ) );
    }
    function register_fields() {
        register_setting( 'general', 'town', 'esc_attr' );
        add_settings_field('town', '<label for="town">'.__('Town/City' , 'town' ).'</label>' , array(&$this, 'fields_html') , 'general' );

    }
    function fields_html() {
        $value = get_option( 'town', '' );
        echo '<input type="text" id="town" name="town" value="' . $value . '" />';
    }
}

// Add new 'County/State' textfield to General Settings
$new_general_setting5 = new new_general_setting5();
 
class new_general_setting5 {
    function new_general_setting5( ) {
        add_filter( 'admin_init' , array( &$this , 'register_fields' ) );
    }
    function register_fields() {
        register_setting( 'general', 'county', 'esc_attr' );
        add_settings_field('county', '<label for="county">'.__('County/State' , 'county' ).'</label>' , array(&$this, 'fields_html') , 'general' );

    }
    function fields_html() {
        $value = get_option( 'county', '' );
        echo '<input type="text" id="county" name="county" value="' . $value . '" />';
    }
}

// Add new 'Postal Code' textfield to General Settings
$new_general_setting = new new_general_setting6();
 
class new_general_setting6 {
    function new_general_setting6( ) {
        add_filter( 'admin_init' , array( &$this , 'register_fields' ) );
    }
    function register_fields() {
        register_setting( 'general', 'postal-code', 'esc_attr' );
        add_settings_field('postal-code', '<label for="postal-code">'.__('Postal Code' , 'postal-code' ).'</label>' , array(&$this, 'fields_html') , 'general' );

    }
    function fields_html() {
        $value = get_option( 'postal-code', '' );
        echo '<input type="text" id="postal-code" name="postal-code" value="' . $value . '" />';
    }
}

// Add new 'Country' textfield to General Settings
$new_general_setting7 = new new_general_setting7();
 
class new_general_setting7 {
    function new_general_setting7( ) {
        add_filter( 'admin_init' , array( &$this , 'register_fields' ) );
    }
    function register_fields() {
        register_setting( 'general', 'country', 'esc_attr' );
        add_settings_field('country', '<label for="country">'.__('Country' , 'country' ).'</label>' , array(&$this, 'fields_html') , 'general' );

    }
    function fields_html() {
        $value = get_option( 'country', '' );
        echo '<input type="text" id="country" name="country" value="' . $value . '" />';
    }
}


?>
